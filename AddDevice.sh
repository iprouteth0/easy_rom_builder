#!/bin/bash
dialog --backtitle "Add device to device menu" --title "Add device - Form" \
--form "\nAdd device to device menu" 15 80 7 \
"Codename:" 1 1 "" 1 25 40 30  \
"Menu number:" 2 1 "" 2 25 40 30  \
"Tree directory:" 3 1 "" 3 25 40 30 > /tmp/out.tmp \
2>&1 >/dev/tty
# Start retrieving each line from temp file 1 by one with sed and declare variables as inputs
export CODENAME=`sed -n 1p /tmp/out.tmp`
export MENUNUMBER=`sed -n 2p /tmp/out.tmp`
export TREEDIR=`sed -n 3p /tmp/out.tmp`
# remove temporary file created
rm -f /tmp/out.tmp
#Write to output file the result
#echo $CODENAME , $MENUNUMBER , $TREEDIR , >> testfile

mkdir tmp/
cp addsection* tmp
sed -i "s|CODENAME|$CODENAME|" tmp/addsection1.txt
sed -i "s|CODENAME|$CODENAME|" tmp/addsection2.txt
sed -i "s|CODENAME|$CODENAME|" tmp/addsection4.txt
sed -i "s|MENUNUMBER|$MENUNUMBER|" tmp/addsection2.txt
sed -i "s|MENUNUMBER|$MENUNUMBER|" tmp/addsection4.txt
sed -i "s|TREEDIR|$TREEDIR|" tmp/addsection1.txt

sed -i '/section1/r tmp/addsection1.txt' DeviceMenu.sh
sed -i '/section2/r tmp/addsection2.txt' DeviceMenu.sh
sed -i '/section4/r tmp/addsection4.txt' DeviceMenu.sh
rm -rf tmp/
