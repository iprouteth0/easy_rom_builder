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
  . Build_ginna.sh  
}

olivewood() {
  # olivewood Build menu
  . Build_olivewood.sh 
}

recovery() {
  # Recovery Build Menu
  cd ${SOURCE}
  . BuildMenu-Recoveries.sh  
}

# ----------------------------------------------------------
menu=
until [ "$menu" = "0" ]; do
echo ""
echo "${red}=========================================================${reset}"
echo "${red}==${reset}${green}                Moto E 2020 Build Menu               ${reset}${red}==${reset}"
echo "${red}=========================================================${reset}"
echo "${red}==${reset}${yellow}   1 - Motorola E 2020 (ginna)                       ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   2 - Xiaomi 8A Dual (olivewood)                    ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   3 - Recovery Menu                                 ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   0 - Return To Main Menu                           ${reset}${red}==${reset}"
echo "${red}=========================================================${reset}"
echo ""
echo -n "Enter selection: "
read menu
echo ""
case ${menu} in
1 )
  # ginna build menu
  clear
  BEGIN=$(date +%s)
  ginna
  END=$(date +%s)
  clear
;;
#############################################################

2 )
  # olivewood build menu
  clear
  BEGIN=$(date +%s)
  olivewood
  END=$(date +%s)
  clear
;;
#############################################################

3 )
  # Recovery Build Menu
  clear
  BEGIN=$(date +%s)
  recovery
  END=$(date +%s)
  clear
;;
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
