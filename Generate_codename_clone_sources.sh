#! /bin/bash

#functions
devicetree() {
#
export DEVTREEURL=$(dialog --title "name" --inputbox "Enter device tree git url:" 0 0 )
echo "you entered $DEVTREEURL"
read
}

vendortree() {
#
export VENDTREEURL=$(dialog --title "name" --inputbox "Enter device tree git url:" 0 0 )
echo "you entered $VENDTREEURL"
read
}

kernelsources() {
#
export KERNELSRCURL=$(dialog --title "name" --inputbox "Enter device tree git url:" 0 0 )
echo "you entered $KERNELSRCURL"
read
}

devicecodename() {
#
export DEVICECODENAME=$(dialog --title "name" --inputbox "Enter device codename:" 0 0 )
echo "you entered $DEVICECODENAME"
read
}

devicemfg() {
#
export DEVICEMFG=$(dialog --title "name" --inputbox "Enter device manufacturer:" 0 0 )
echo "you entered $DEVICEMFG"
read
}

devicesoc() {
#
export DEVICESOC=$(dialog --title "name" --inputbox "Enter device System on Chip, i.e. sdm845:" 0 0 )
echo "you entered $DEVICESOC"
read
}

devicecommontree() {
#
export USESCOMMONTREE=$(dialog --title "COMMON TREE"  --yesno "Does your device use common trees?" 0 0)
export DEVICECOMMONTREE=$(dialog --title "name" --inputbox "Enter device common tree git url.  Leave blank if not used" 0 0 )
echo "you entered $DEVICECOMMONTREE"
read
}

devicecommonpath() {
#
export DEVICECOMMONPATH=$(dialog --title "name" --inputbox "Enter device common tree path, i.e. device/xiaomi/sdm439-common" 0 0 )
echo "you entered $DEVICECOMMONPATH"
read
}

vendortreepath() {
#
export USESVENDORTREEPATH=$(dialog --title "VENDOR TREE PATH"  --yesno "use vendor tree path different from device codename such as a unified vendor tree?" 0 0)
export VENDORTREEPATH=$(dialog --title "name" --inputbox "Enter vendor tree path, i.e. vendor/xiaomi/olives" 0 0 )
echo "you entered $VENDORTREEPATH"
read
}

generate() {
# generate device sources script
mkdir tmp/
cp codename-clone_sources_template.txt tmp/
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
6 "device System on Chip"
7 "device common tree git url"
8 "device common tree path"
9 "vendor tree path"
10 "generate clone sources"
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
  clear
  BEGIN=$(date +%s)
  devicetree
  END=$(date +%s)
  clear
;;
#############################################################

2 )
  # vendor tree
  clear
  BEGIN=$(date +%s)
  vendortree
  END=$(date +%s)
  clear
;;
#############################################################

3 )
  # kernel sources
  clear
  BEGIN=$(date +%s)
  kernelsources
  END=$(date +%s)
  clear
;;
#############################################################

4 )
  # device codename
  clear
  BEGIN=$(date +%s)
  devicecodename
  END=$(date +%s)
  clear
;;
#############################################################

5 )
  # device manufacturer
  clear
  BEGIN=$(date +%s)
  devicemfg
  END=$(date +%s)
  clear
;;
#############################################################

6 )
  # device SoC
  clear
  BEGIN=$(date +%s)
  devicesoc
  END=$(date +%s)
  clear
;;
#############################################################

7 )
  # device common tree
  clear
  BEGIN=$(date +%s)
  devicecommontree
  END=$(date +%s)
  clear
;;
#############################################################

8 )
  # device common path
  clear
  BEGIN=$(date +%s)
  devicecommonpath
  END=$(date +%s)
  clear
;;
#############################################################

9 )
  # vendor tree path
  clear
  BEGIN=$(date +%s)
  vendortreepath
  END=$(date +%s)
  clear
;;
#############################################################

10 )
  # generate
  clear
  BEGIN=$(date +%s)
  generate
  END=$(date +%s)
  clear
;;
#############################################################


esac
done
