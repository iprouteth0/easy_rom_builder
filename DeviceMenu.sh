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

clear

# Variables
SOURCE=~/Android/BuildScripts/ginna
SOURCE2=~/Android

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

adddevice() {
  # Add device to menu using scripts
  . AddDevice.sh
}

## section1

# ----------------------------------------------------------
menu=
until [ "$menu" = "0" ]; do
echo ""
echo "${red}=========================================================${reset}"
echo "${red}==${reset}${green}                Moto E 2020 Build Menu                ${reset}${red}==${reset}"
echo "${red}=========================================================${reset}"
echo "${red}==${reset}${yellow}   1 - Motorola E 2020 (ginna)                       ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   2 - Xiaomi 8A Dual (olivewood)                    ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   3 - Samsung beyond0qlte                           ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   4 - Samsung beyond1qlte                           ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   5 - Samsung beyond2qlte                           ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   6 - Samsung d1q                                   ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   7 - Samsung d2q                                   ${reset}${red}==${reset}"
## section2
echo "${red}==${reset}${yellow}   8 - Add Device to Menu                            ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   0 - Return To Main Menu                           ${reset}${red}==${reset}"
echo "${red}=========================================================${reset}"
echo ""
echo -n "Enter selection: "
read menu
echo ""

## section3

case ${menu} in
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
#############################################################
3 )
  # samsung beyond0qlte build menu
  clear
  BEGIN=$(date +%s)
  beyond0qlte
  END=$(date +%s)
  clear
;;
#############################################################
4 )
  # samsung beyond1qlte build menu
  clear
  BEGIN=$(date +%s)
  beyond1qlte
  END=$(date +%s)
  clear
;;
#############################################################
5 )
  # samsung beyond2qlte build menu
  clear
  BEGIN=$(date +%s)
  beyond2qlte
  END=$(date +%s)
  clear
;;
#############################################################
6 )
  # samsung d1q build menu
  clear
  BEGIN=$(date +%s)
  d1q
  END=$(date +%s)
  clear
;;
#############################################################
7 )
  # samsung d2q build menu
  clear
  BEGIN=$(date +%s)
  d2q
  END=$(date +%s)
  clear
;;
#############################################################
## section4
#############################################################
8 )
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
  . $THISDIR/RomMenu.sh
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
#############################################################
