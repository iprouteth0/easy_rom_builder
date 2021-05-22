 #! /bin/bash
mkdir tmp
cp codename-clone_sources_template.txt tmp/
#functions
devicetree() {
#
exec 3>&1
export DEVTREEURL=$(dialog --title "name" --inputbox "Enter device tree git url:" 0 0 2>&1 1>&3)
echo "you entered $DEVTREEURL"
exec 3>&-
read
}

vendortree() {
#
exec 3>&1
export VENDTREEURL=$(dialog --title "name" --inputbox "Enter device tree git url:" 0 0 2>&1 1>&3)
echo "you entered $VENDTREEURL"
exec 3>&-
read
}

kernelsources() {
#
exec 3>&1
export KERNELSRCURL=$(dialog --title "name" --inputbox "Enter device tree git url:" 0 0 2>&1 1>&3)
echo "you entered $KERNELSRCURL"
exec 3>&-
read
}

devicecodename() {
#
exec 3>&1
export DEVICECODENAME=$(dialog --title "name" --inputbox "Enter device codename:" 0 0 2>&1 1>&3)
echo "you entered $DEVICECODENAME"
exec 3>&-
read
}

devicemfg() {
#
exec 3>&1
export DEVICEMFG=$(dialog --title "name" --inputbox "Enter device manufacturer:" 0 0 2>&1 1>&3)
echo "you entered $DEVICEMFG"
exec 3>&-
read
}

devicesoc() {
#
exec 3>&1
export DEVICESOC=$(dialog --title "name" --inputbox "Enter device System on Chip, i.e. sdm845:" 0 0 2>&1 1>&3)
echo "you entered $DEVICESOC"
exec 3>&-
read
}

devicecommontree() {
#
exec 3>&1
export USESCOMMONTREE=$(dialog --title "COMMON TREE"  --yesno "Does your device use common trees?" 0 0 2>&1 1>&3)
if [[ $USESCOMMONTREE = 0 ]]
then
sed -i 'i/Device Tree/USESCOMMONTREE=0/' tmp/codename-clone_sources_template.txt
export DEVICECOMMONTREE=$(dialog --title "name" --inputbox "Enter device common tree git url.  Leave blank if not used" 0 0 2>&1 1>&3)
echo "you entered $DEVICECOMMONTREE"
read
else
echo "common tree nof selected"
fi
exec 3>&-
read
}

devicecommonpath() {
#
exec 3>&1
export DEVICECOMMONPATH=$(dialog --title "name" --inputbox "Enter device common tree path, i.e. device/xiaomi/sdm439-common" 0 0 2>&1 1>&3)
echo "you entered $DEVICECOMMONPATH"
exec 3>&-
read
}

vendortreepath() {
#
exec 3>&1
export UVTP=$(dialog --title "VENDOR TREE PATH"  --yesno "use vendor tree path different from device codename such as a unified vendor tree?" 0 0 2>&1 1>&3)
if [[ $UVTP = 0 ]]
then
sed -i 'i/Device Tree/UVTP=0/' tmp/codename-clone_sources_template.txt
export VENDORTREEPATH=$(dialog --title "name" --inputbox "Enter vendor tree path, i.e. vendor/xiaomi/olives" 0 0 2>&1 1>&3)
echo "you entered $VENDORTREEPATH"
read
else
echo "vendor tree path not selected"
fi
exec 3>&-
read
}

generate() {
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
}

devicemenu() {
#
. DeviceMenu.sh
}

rommenu() {
#
. RomMenu.sh
}




HEIGHT=30
WIDTH=50
CHOICE_HEIGHT=8
BACKTITLE="SOURCES SCRIPT"
TITLE="Sources script generator"
MENU="Choose one of the following options:"

OPTIONS=(
1 "device tree git url"
2 "vendor tree git url"
3 "kernel source git url"
4 "device codename"
5 "device manufacturer"
6 "device System on Chip (for kernel path)"
7 "device common tree git url (if used)"
8 "device common tree path"
9 "vendor tree path (used for unified vendor)"
10 "generate clone sources"
11 "back to device menu"
12 "back to rom menu"
)

while [[ ! $CHOICE = 0 ]]; do
    CHOICE=$(dialog --clear \
                    --backtitle "$BACKTITLE" \
                    --title "$TITLE" \
                    --menu "$MENU" \
                    $HEIGHT $WIDTH $CHOICE_HEIGHT \
                    "${OPTIONS[@]}" \
                    2>&1 >/dev/tty)



case $CHOICE in
1 )
  # device tree
  BEGIN=$(date +%s)
  devicetree
  END=$(date +%s)
;;
#############################################################

2 )
  # vendor tree
  BEGIN=$(date +%s)
  vendortree
  END=$(date +%s)
;;
#############################################################

3 )
  # kernel sources
  BEGIN=$(date +%s)
  kernelsources
  END=$(date +%s)
;;
#############################################################

4 )
  # device codename
  BEGIN=$(date +%s)
  devicecodename
  END=$(date +%s)
;;
#############################################################

5 )
  # device manufacturer
  BEGIN=$(date +%s)
  devicemfg
  END=$(date +%s)
;;
#############################################################

6 )
  # device SoC
  BEGIN=$(date +%s)
  devicesoc
  END=$(date +%s)
;;
#############################################################

7 )
  # device common tree
  BEGIN=$(date +%s)
  devicecommontree
  END=$(date +%s)
;;
#############################################################

8 )
  # device common path
  BEGIN=$(date +%s)
  devicecommonpath
  END=$(date +%s)
;;
#############################################################

9 )
  # vendor tree path
  BEGIN=$(date +%s)
  vendortreepath
  END=$(date +%s)
;;
#############################################################

10 )
  # generate
  BEGIN=$(date +%s)
  generate
  END=$(date +%s)
;;
#############################################################

11 )
 # device menu
  BEGIN=$(date +%s)
  devicemenu
  END=$(date +%s)
;;
#############################################################

12 )
 # rom menu
  BEGIN=$(date +%s)
  rommenu
  END=$(date +%s)
;;



esac
done
