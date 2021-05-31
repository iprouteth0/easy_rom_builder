 #!/bin/bash
rm -rf tmp
mkdir tmp
cp codename-clone_sources_template.txt tmp/


STARTCHOICE=$(dialog --checklist  "Choose toppings:" 10 40 2 \
       0 "Use common device tree?" on \
       1 "Use unified vendor tree?" on --separate-output --output-fd 1)


if [[ $STARTCHOICE = "0 1" ]]
then
#
echo both
sed -i '2 i\USESCOMMONTREE=0' tmp/codename-clone_sources_template.txt
sed -i '3 i\UVTP=0' tmp/codename-clone_sources_template.txt
elif [[ $STARTCHOICE = "0" ]]
then
#
echo common-device
sed -i '2 i\USESCOMMONTREE=0' tmp/codename-clone_sources_template.txt
elif [[ $STARTCHOICE = "1" ]]
then
#
echo unified-vendor
sed -i '3 i\UVTP=0' tmp/codename-clone_sources_template.txt
elif [[ $STARTCHOICE = "" ]] 
then
#
echo none
fi


dialog --backtitle "Generate codename-clone_sources.sh" --title "Device trees - Form" \
--form "\nFill in you device details.  Leave fields 7,8,9 blank if you device does not used" 25 107 18 \
"Device tree url:" 1 1 "" 1 40 60 200  \
"Vendor tree url:" 2 1 "" 2 40 60 200  \
"Kernel source url:" 3 1 "" 3 40 60 200  \
"Device codename:" 4 1 "" 4 40 60 200  \
"Device manufacturer:" 5 1 "" 5 40 60 200  \
"Device SoC (for kernel path):" 6 1 "" 6 40 60 200  \
"Device common tree (if used):" 7 1 "" 7 40 60 200  \
"Device common tree path:" 8 1 "" 8 40 60 200  \
"Vendor tree path (for unified vendor):" 9 1 "" 9 40 60 200 > /tmp/out.tmp 2>&1 >/dev/tty
# Start retrieving each line from temp file 1 by one with sed and declare variables as inputs
export DEVTREEURL=`sed -n 1p /tmp/out.tmp`
export VENDTREEURL=`sed -n 2p /tmp/out.tmp`
export KERNELSRCURL=`sed -n 3p /tmp/out.tmp`
export DEVICECODENAME=`sed -n 4p /tmp/out.tmp`
export DEVICEMFG=`sed -n 5p /tmp/out.tmp`
export DEVICESOC=`sed -n 6p /tmp/out.tmp`
export DEVICECOMMONTREE=`sed -n 7p /tmp/out.tmp`
export DEVICECOMMONPATH=`sed -n 8p /tmp/out.tmp`
export VENDORTREEPATH=`sed -n 9p /tmp/out.tmp`
# remove temporary file created
rm -f /tmp/out.tmp
#Write to output file the result
echo $DEVTREEURL , $VENDTREEURL , $KERNELSRCURL , $DEVICECODENAME, $DEVICEMFG, $DEVICESOC, $DEVICECOMMONTREE, $DEVICECOMMONPATH, $VENDORTREEPATH >> testfile


ENDCHOICE=$(dialog --checklist  "Generate?:" 10 40 2 \
       0 "Generate now?" on \
       1 "reuturn to rom menu?" on --separate-output --output-fd 1)



if [[ $ENDCHOICE = "0 1" ]] 
then 
# generate device sources script
sed -i "s|DEVICECODENAME|$DEVICECODENAME|g" tmp/codename-clone_sources_template.txt 
sed -i "s|DEVTREEURL|$DEVTREEURL|g" tmp/codename-clone_sources_template.txt 
sed -i "s|VENDTREEURL|$VENDTREEURL|g" tmp/codename-clone_sources_template.txt 
sed -i "s|KERNELSRCURL|$KERNELSRCURL|g" tmp/codename-clone_sources_template.txt 
sed -i "s|DEVICEMFG|$DEVICEMFG|g" tmp/codename-clone_sources_template.txt 
sed -i "s|DEVICESOC|$DEVICESOC|g" tmp/codename-clone_sources_template.txt 
sed -i "s|DEVICECOMMONTREE|$DEVICECOMMONTREE|g" tmp/codename-clone_sources_template.txt 
sed -i "s|DEVICECOMMONPATH|$DEVICECOMMONPATH|g" tmp/codename-clone_sources_template.txt 
sed -i "s|VENDORTREEPATH|$VENDORTREEPATH|g" tmp/codename-clone_sources_template.txt 
cp tmp/codename-clone_sources_template.txt $DEVICECODENAME-clone_sources.sh 
rm -rf tmp/
. DeviceMenu.sh
elif [[ $ENDCHOICE = "0" ]]
then
sed -i "s|DEVICECODENAME|$DEVICECODENAME|g" tmp/codename-clone_sources_template.txt
sed -i "s|DEVTREEURL|$DEVTREEURL|g" tmp/codename-clone_sources_template.txt
sed -i "s|VENDTREEURL|$VENDTREEURL|g" tmp/codename-clone_sources_template.txt
sed -i "s|KERNELSRCURL|$KERNELSRCURL|g" tmp/codename-clone_sources_template.txt
sed -i "s|DEVICEMFG|$DEVICEMFG|g" tmp/codename-clone_sources_template.txt
sed -i "s|DEVICESOC|$DEVICESOC|g" tmp/codename-clone_sources_template.txt
sed -i "s|DEVICECOMMONTREE|$DEVICECOMMONTREE|g" tmp/codename-clone_sources_template.txt
sed -i "s|DEVICECOMMONPATH|$DEVICECOMMONPATH|g" tmp/codename-clone_sources_template.txt
sed -i "s|VENDORTREEPATH|$VENDORTREEPATH|g" tmp/codename-clone_sources_template.txt
cp tmp/codename-clone_sources_template.txt $DEVICECODENAME-clone_sources.sh
rm -rf tmp/
elif [[ $ENDCHOICE = "1" ]]
then
. DeviceMenu.sh
elif [[ $ENDCHOICE = "" ]]
then
. Generate_codename-clone_sources.sh
fi
