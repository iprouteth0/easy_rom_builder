#! /bin/bash

echo "Please enter the name of the rom"
read CALLROM
echo "Please enter device menu number to use"
read MENUNUMBER
echo "Please enter the GitHub url of the rom manifest and branch if desired"
read GITURL
echo "Please enter the make target of the rom.  Most often either bacon"
echo "or the name of the rom.  This is often specified on the git"
echo "manifest page.  If it is not specified, use bacon."
read MAKEROM
echo 'enter $ROMNAME here UNLESS your ROM uses a vendor directory'
echo "that is different than the ROM name.  Most often this is seen"
echo "with aosp ROMs.  Check the ROM vendor repository"
read VENDCONF
export CALLROM
export MENUNUMBER
export GITURL
export MAKEROM
export VENDCONF
mkdir tmp/
cp rom_addsection* tmp
sed -i "s|CALLROM|$CALLROM|g" tmp/rom_addsection1.txt
sed -i "s|CALLROM|$CALLROM|g" tmp/rom_addsection2.txt
sed -i "s|GITURL|$GITURL|g" tmp/rom_addsection1.txt
sed -i "s|MAKEROM|$MAKEROM|g" tmp/rom_addsection1.txt
sed -i "s|VENDCONF|$VENDCONF|g" tmp/rom_addsection1.txt
sed -i "s|MENUNUMBER|$MENUNUMBER|g" tmp/rom_addsection1.txt
sed -i "s|MENUNUMBER|$MENUNUMBER|g" tmp/rom_addsection2.txt
sed -i "s|MENUNUMBER|$MENUNUMBER|g" tmp/rom_addsection4.txt

sed -i '/section1/r tmp/rom_addsection1.txt' RomMenu.sh
sed -i '/section2/r tmp/rom_addsection2.txt' RomMenu.sh
sed -i '/section4/r tmp/rom_addsection4.txt' RomMenu.sh
rm -rf tmp/
