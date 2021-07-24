#!/bin/bash
#
# Copyright (C) 2016 BeansTown106 for PureNexus Project
# Copyright (C) 2021 A-Team Digital Solutions
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#


# Colors
black=`tput setaf 0`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
magenta=`tput setaf 5`
cyan=`tput setaf 6`
white=`tput setaf 7`
reset=`tput sgr0`

#functions
ginna() {
  # ginna Build menu
  export DEVICEDIR="device/motorola/ginna"
  export DEVICENAME=ginna
  export SOURCESCRIPT=ginna
  . Build_script.sh  
}

olivewood() {
  # Olivewood Build menu
  export DEVICEDIR="device/xiaomi/olivewood"
  export DEVICENAME=olivewood
  export SOURCESCRIPT=olivewood
  . Build_script.sh 
}

olivelite() {
  # xiaomi olivelite Build menu
  export DEVICEDIR="device/xiaomi/olivelite"
  export DEVICENAME=olivelite
  export SOURCESCRIPT=olivelite
  . Build_script.sh 
}

cafebabe() {
  # xiaomi olives cafebabe trees
  export DEVICEDIR="device/xiaomi/olives"
  export DEVICENAME=olives
  export SOURCESCRIPT=cafebabe
  . Build_script.sh 
}

beyond0qlte() {
  # samsung beyond0qlte Build menu
  export DEVICEDIR="device/samsung/beyond0qlte"
  export DEVICENAME=beyond0qlte
  export SOURCESCRIPT=sm8150
  . Build_script.sh 
}

beyond1qlte() {
  # samsung beyond1qlte Build menu
  export DEVICEDIR="device/samsung/beyond1qlte"
  export DEVICENAME=beyond1qlte
  export SOURCESCRIPT=sm8150
  . Build_script.sh 
}

beyond2qlte() {
  # samsung beyond2qlte Build menu
  export DEVICEDIR="device/samsung/beyond2qlte"
  export DEVICENAME=beyond2qlte
  export SOURCESCRIPT=sm8150
  . Build_script.sh 
}

d1q() {
  # samsung d1q Build menu
  export DEVICEDIR="device/samsung/d1q"
  export DEVICENAME=d1q
  export SOURCESCRIPT=sm8150
  . Build_script.sh 
}

d2q() {
  # samsung d2q Build menu
  export DEVICEDIR="device/samsung/d2q"
  export DEVICENAME=d2q
  export SOURCESCRIPT=sm8150
  . Build_script.sh 
}

nio() {
  # Motorola edge s codename nio
  export DEVICEDIR="device/motorola/nio"
  export DEVICENAME=nio
  export SOURCESCRIPT=nio
  . Build_script.sh 
}

sofiar() {
  # Motorola G8 power codename sofiaR
  export DEVICEDIR="device/motorola/sofiar"
  export DEVICENAME=sofiar
  export SOURCESCRIPT=sofiar
  . Build_script.sh 
}


#section1

generatescript() {
#
. Generate_codename_clone_sources.sh
}

adddevice() {
  # Add device to menu using scripts
  . AddDevice.sh
}

###############

HEIGHT=30
WIDTH=50
CHOICE_HEIGHT=8
BACKTITLE="DEVICE MENU"
TITLE="Device Menu"
MENU="Choose one of the following options:"

OPTIONS=(
1 "Moto E 2020 (ginna)"                                             
2 "Xiaomi 8A Dual (olivewood)"
3 "Xiaomi 8A (olivelite)"
4 "Xiaomi Olives cafebabe trees"
5 "beyond0qlte"
6 "beyond1qlte"
7 "beyond2qlte"
8 "d1q"
9 "d2q"
10 "Motorola Edge S (codename nio)"
11 "Motorola G8 power"
#section2
98 "generate device sources script"
99 "Add device to menu"
0 "Go Back to Main"
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
  # Motorola ginna build menu
  clear
  BEGIN=$(date +%s)
  ginna
  END=$(date +%s)
  clear
;;
#############################################################

2 )
  # Xiaomi Olivewood build menu
  clear
  BEGIN=$(date +%s)
  olivewood
  END=$(date +%s)
  clear
;;
###############################################################

3 )
  # Xiaomi Olivelite build menu
  clear
  BEGIN=$(date +%s)
  olivelite
  END=$(date +%s)
  clear
;;

###############################################################

4 )
  # Xiaomi Olivelite build menu
  clear
  BEGIN=$(date +%s)
  cafebabe
  END=$(date +%s)
  clear
;;

#############################################################
5 )
  # samsung beyond0qlte build menu
  clear
  BEGIN=$(date +%s)
  beyond0qlte
  END=$(date +%s)
  clear
;;
#############################################################
6 )
  # samsung beyond1qlte build menu
  clear
  BEGIN=$(date +%s)
  beyond1qlte
  END=$(date +%s)
  clear
;;
#############################################################
7 )
  # samsung beyond2qlte build menu
  clear
  BEGIN=$(date +%s)
  beyond2qlte
  END=$(date +%s)
  clear
;;
#############################################################
8 )
  # samsung d1q build menu
  clear
  BEGIN=$(date +%s)
  d1q
  END=$(date +%s)
  clear
;;
#############################################################
9 )
  # samsung d2q build menu
  clear
  BEGIN=$(date +%s)
  d2q
  END=$(date +%s)
  clear
;;
#############################################################
10 )
  # Motorola edge s codename nio
  clear
  BEGIN=$(date +%s)
  nio
  END=$(date +%s)
  clear
;;
##############################################################
11 )
  # Motorola G8 power codename sofiaR
  clear
  BEGIN=$(date +%s)
  sofiar
  END=$(date +%s)
  clear
;;
##########################################################
# section4
#############################################################
98 )
  # generate device sources script
  clear
  BEGIN=$(date +%s)
  generatescript
  END=$(date +%s)
  clear
;;
###
99 )
  # Add device to build menu
  clear
  BEGIN=$(date +%s)
  adddevice
  END=$(date +%s)
  clear
;;
#############################################################
#############################################################
0 ) 
  # Return To Main Menu
#  cd ${SOURCE2}
  ./RomMenu.sh
;; 
* ) clear
    echo "Wrong Choice AssFace, 1-3 or 0 to Return to Main Menu"
    sleep 1
    echo " "
    echo "4"
    sleep 1
    echo "3"
    sleep 1
    echo "2"
    sleep 1
    echo "1"
    sleep 1
    clear
    esac
done
###########################################################


