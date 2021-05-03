#! /bin/bash

echo "Please enter your device codename"
read CODENAME
echo "Please enter device menu number to use"
read MENUNUMBER
echo "Please enter device directory used for device tree"
read TREEDIR
export CODENAME
export MENUNUMBER
export TREEDIR
mkdir tmp/
cp addsection* tmp
sed -i "s|CODENAME|$CODENAME|" tmp/addsection1.txt
sed -i "s|CODENAME|$CODENAME|" tmp/addsection2.txt
sed -i "s|CODENAME|$CODENAME|" tmp/addsection4.txt
sed -i "s|MENUNUMBER|$MENUNUMBER|" tmp/addsection2.txt
sed -i "s|MENUNUMBER|$MENUNUMBER|" tmp/addsevtion4.txt
sed -i "s|TREEDIR|$TREEDIR|" tmp/addsection1.txt

sed -i '/section1/r tmp/addsection1.txt' DeviceMenu.sh
sed -i '/section2/r tmp/addsection2.txt' DeviceMenu.sh
sed -i '/section4/r tmp/addsection4.txt' DeviceMenu.sh
rm -rf tmp/
