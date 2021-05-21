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

# Variables
SOURCE2=~/Android
export THISDIR=$(pwd)

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
rom1() {
  # project 404
	export ROMGIT=https://github.com/P-404/android_manifest
	export ROMNAME=p404
	export ROMDIR=$ROMNAME
	export ROMBUILD=p404
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}

rom2() {
  ## abc rom
	export ROMGIT=https://github.com/ezio84/abc_manifest
	export ROMNAME=abc
	export ROMDIR=$ROMNAME
	export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}

rom3() {
  ## AICP
        export ROMGIT=https://github.com/AICP/platform_manifest
        export ROMNAME=aicp
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom4() {
  ## Amy ROM
        export ROMGIT=https://github.com/amyROM/manifest
        export ROMNAME=abc
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom5() {
  ##  AOSiP
        export ROMGIT=https://github.com/AOSiP/platform_manifest
        export ROMNAME=aosip
	export ROMDIR=$ROMNAME
        export ROMBUILD=kronic
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom6() {
  ## Paranoid Android
        export ROMGIT=https://github.com/AOSPA/manifest
        export ROMNAME=pa
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}

rom7() {
  ## AOSPify
        export ROMGIT=https://github.com/Aospify/platform_manifest
        export ROMNAME=aosp
	export ROMDIR=aospify
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}

rom8() {
  ## AOSPExtended
        export ROMGIT=https://github.com/AospExtended/manifest
        export ROMNAME=aosp
	export ROMDIR=aex
        export ROMBUILD=aex
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom9() {
  ##  Andromeda
        export ROMGIT=https://github.com/AOSAP/platform_manifest
        export ROMNAME=aosap
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom10() {
  ##  Arrow OS
        export ROMGIT=https://github.com/ArrowOS/android_manifest
        export ROMNAME=arrow
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom11() {
  ##  project awaken
        export ROMGIT=https://github.com/Project-Awaken/android_manifest
        export ROMNAME=awaken
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom12() {
  ##  Baikal OS
        export ROMGIT=https://github.com/baikalos/manifest
        export ROMNAME=baikal
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom13() {
  ##  Benzo ROM
        export ROMGIT=https://github.com/BenzoRom/manifest.git
        export ROMNAME=benzo
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom14() {
  ## bliss
        export ROMGIT=https://github.com/BlissRoms/platform_manifest
        export ROMNAME=bliss
	export ROMDIR=$ROMNAME
        export ROMBUILD=blissify
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom15() {
  ##  calyx os
        export ROMGIT=https://github.com/CalyxOS/platform_manifest/tree/android11
        export ROMNAME=calyx
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom16() {
  ## Candy ROM
        export ROMGIT=https://github.com/CandyRoms/candy
        export ROMNAME=candy
	export ROMDIR=$ROMNAME
        export ROMBUILD=candy
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom17() {
  ## Carbon ROM
        export ROMGIT=https://github.com/CarbonROM/android
        export ROMNAME=carbon
	export ROMDIR=$ROMNAME
        export ROMBUILD=carbon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom18() {
  ##  Cesium
        export ROMGIT=git://github.com/CesiumOS/manifest.git
        export ROMNAME=cesium
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom19() {
  ##  cherish os
        export ROMGIT=https://github.com/CherishOS/android_manifest
        export ROMNAME=cherish
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom20() {
  ## Colt OS
        export ROMGIT=https://github.com/ColtOSTemp/platform_manifest
        export ROMNAME=colt
	export ROMDIR=$ROMNAME
        export ROMBUILD=colt
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom22() {
  ## Conquer OS
        export ROMGIT=https://github.com/ConquerAOSP/manifest
        export ROMNAME=conquer
	export ROMDIR=$ROMNAME
        export ROMBUILD=carthage
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom23() {
  ## Corvus
        export ROMGIT=https://github.com/Corvus-ROM/android_manifest
        export ROMNAME=corvus
	export ROMDIR=$ROMNAME
        export ROMBUILD=corvus
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom24() {
  ## crdroid
        export ROMGIT=https://github.com/crdroidandroid/android
        export ROMNAME=lineage
	export ROMDIR=crdroid
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom25() {
  ## Cygnus
        export ROMGIT=https://github.com/cygnus-rom/manifest
        export ROMNAME=cygnus
	export ROMDIR=$ROMNAME
        export ROMBUILD=cygnus
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom26() {
  ##  Descendant
        export ROMGIT=https://github.com/Descendant-XI/manifests
        export ROMNAME=descendant
	export ROMDIR=$ROMNAME
        export ROMBUILD=descendant
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom27() {
  ## Dirty Unicorns
        export ROMGIT=https://github.com/DirtyUnicorns/android_manifest
        export ROMNAME=du
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom28() {
  ##  DotOS 
        export ROMGIT=https://github.com/DotOS/manifest
        export ROMNAME=dot
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom29() {
  ## evox
        export ROMGIT=https://github.com/Evolution-X/manifest
        export ROMNAME=evolution
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom29() {
  ## explosive lobster
        export ROMGIT=https://github.com/ExplosiveLobster/platform_manifest
        export ROMNAME=lobster
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom30() {
  ## Freaky OS
        export ROMGIT=https://github.com/FreakyOS/manifest
        export ROMNAME=freaky
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom31() {
  ##  graphene os
        export ROMGIT=https://github.com/GrapheneOS/platform_manifest
        export ROMNAME=graphene
	export ROMDIR=$ROMNAME
        export ROMBUILD=""
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom32() {
  ## gzosp
        export ROMGIT=https://github.com/GZOSP/manifest
        export ROMNAME=gzosp
	export ROMDIR=$ROMNAME
        export ROMBUILD=gzosp
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom33() {
  ## halogen os
        export ROMGIT=https://git.halogenos.org/halogenOS/android_manifest
        export ROMNAME=aosp
	export ROMDIR=halogen
        export ROMBUILD="build full"
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom34() {
  ## havoc
        export ROMGIT=https://github.com/Havoc-OS/android_manifest
        export ROMNAME=havoc
	export ROMDIR=$ROMNAME
        export ROMBUILD= bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom35() {
  ##  hentai
        export ROMGIT=https://github.com/hentaiOS/platform_manifest
        export ROMNAME=hentai
	export ROMDIR=$ROMNAME
        export ROMBUILD=otapackage
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom36() {
  ##  hornbill os
        export ROMGIT=https://github.com/HornbillOS/manifest
        export ROMNAME=aosp
	export ROMDIR=hornbill
        export ROMBUILD=""
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom37() {
  ##  hycon
        export ROMGIT=https://github.com/HyconOS/manifest
        export ROMNAME=aosp
	export ROMDIR=hycon
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom38() {
  ##  kang os
        export ROMGIT=https://github.com/Kang-OS-R/android_manifest
        export ROMNAME=kangos
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom39() {
  ##  kraken
        export ROMGIT=https://github.com/AOSPK/manifest
        export ROMNAME=aosp
	export ROMDIR=kraken
        export ROMBUILD=""
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom40() {
  ##  komodo
        export ROMGIT=https://github.com/Komodo-OS-Rom/manifest
        export ROMNAME=komodo
	export ROMDIR=$ROMNAME
        export ROMBUILD=komodo
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom41() {
  ##  legion
        export ROMGIT=https://github.com/Project-LegionOS/manifest
        export ROMNAME=legion
	export ROMDIR=$ROMNAME
        export ROMBUILD=legion
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom42() {
  ##  lighthouse
        export ROMGIT=https://github.com/lighthouse-os/manifest
        export ROMNAME=lighthouse
	export ROMDIR=$ROMNAME
        export ROMBUILD=lighthouse
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom43() {
  ##  msm extended
        export ROMGIT=https://github.com/Project-Xtended/manifest
        export ROMNAME=xtended
	export ROMDIR=$ROMNAME
        export ROMBUILD=xtended
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom44() {
  ##  mallu
        export ROMGIT=https://github.com/MalluOS/android
        export ROMNAME=mallu
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom45() {
  ##  nitrogen
        export ROMGIT=https://github.com/nitrogen-project/android_manifest
        export ROMNAME=nitrogen
	export ROMDIR=$ROMNAME
        export ROMBUILD=otapackage
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom46() {
  ## nezuko
        export ROMGIT=https://github.com/NezukoOS/manifest
        export ROMNAME=nezuko
	export ROMDIR=nezuko
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom47() {
  ##  nusantara 
        export ROMGIT=https://github.com/NusantaraProject-ROM/android_manifest
        export ROMNAME=nad
	export ROMDIR=nusantara
        export ROMBUILD=nad
	export VENDOR_CONFIG=nusantara ; . DeviceMenu.sh
  read
}


rom48() {
  ## omni rom
        export ROMGIT=https://github.com/omnirom/android
        export ROMNAME=omni
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom49() {
  ##  palladium
        export ROMGIT=https://github.com/Palladium-OS/platform_manifest
        export ROMNAME=palladium
	export ROMDIR=$ROMNAME
        export ROMBUILD=palladium
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom50() {
  ##  pixel experience
        export ROMGIT=https://github.com/PixelExperience/manifest
        export ROMNAME=aosp
	export ROMDIR=pixelexperience
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom51() {
  ##  pixeldust
        export ROMGIT=https://github.com/pixeldust-project-caf/manifest
        export ROMNAME=pixeldust
	export ROMDIR=$ROMNAME
        export ROMBUILD=pixeldust
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom52() {
  ##  pixel extended
        export ROMGIT=https://github.com/PixelExtended/manifest
        export ROMNAME=aosp
	export ROMDIR=pixelextended
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom53() {
  ##  pixys
        export ROMGIT=https://github.com/PixysOS/manifest
        export ROMNAME=pixys
	export ROMDIR=$ROMNAME
        export ROMBUILD=pixys
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom54() {
  ##  potato
        export ROMGIT=https://github.com/PotatoProject/manifest
        export ROMNAME=potato
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom55() {
  ##  project fluid
        export ROMGIT=https://github.com/Project-Fluid/manifest
        export ROMNAME=fluid
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom56() {
  ##  project streak
        export ROMGIT=https://github.com/ProjectStreak/platform_manifest
        export ROMNAME=streak
	export ROMDIR=$ROMNAME
        export ROMBUILD=streak
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom57() {
  ## protonaosp
        export ROMGIT=https://github.com/ProtonAOSP/android_manifest
        export ROMNAME=proton
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom58() {
  ##  reloaded
        export ROMGIT=https://github.com/ReloadedOS/android_manifest/tree/r
        export ROMNAME=reloaded
	export ROMDIR=$ROMNAME
        export ROMBUILD=reloaded
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom59() {
  ##  revenge os
        export ROMGIT=https://github.com/RevengeOS/android_manifest
        export ROMNAME=revengeos
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom60() {
  ##  rohie
        export ROMGIT=https://github.com/RohieOS/manifest
        export ROMNAME=aosp
	export ROMDIR=rohie
        export ROMBUILD=rohie
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom61() {
  ##  sakura
        export ROMGIT=https://github.com/ProjectSakura/android
        export ROMNAME=lineage
	export ROMDIR=sakura
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom62() {
  ## spark
        export ROMGIT=https://github.com/Spark-Rom/manifest
        export ROMNAME=spark
	export ROMDIR=$ROMNAME
        export ROMBUILD=spark
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom63() {
  ## spice os
        export ROMGIT=https://github.com/SpiceOS/android
        export ROMNAME=spiceos
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom64() {
  ##  stag
        export ROMGIT=https://github.com/StagOS/manifest
        export ROMNAME=stag
	export ROMDIR=$ROMNAME
        export ROMBUILD=stag
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom65() {
  ## statix os
        export ROMGIT=https://github.com/StatiXOS/android_manifest
        export ROMNAME=statix
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom66() {
  ## stormbreaker
        export ROMGIT=https://github.com/StormBreakerOSS/platform_manifest
        export ROMNAME=stormbreaker
	export ROMDIR=$ROMNAME
        export ROMBUILD=storm-prod
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom67() {
  ## styx
        export ROMGIT=https://github.com/StyxProject/manifest
        export ROMNAME=styx
	export ROMDIR=$ROMNAME
        export ROMBUILD=styx-ota
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom68() {
  ## superior
        export ROMGIT=https://github.com/SuperiorOS/manifest
        export ROMNAME=superior
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom69() {
  ## syberia
        export ROMGIT=https://github.com/syberia-project/manifest
        export ROMNAME=syberia
	export ROMDIR=$ROMNAME
        export ROMBUILD=syberia
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom70() {
  ##  TenX
        export ROMGIT=https://github.com/TenX-OS/manifest_TenX
        export ROMNAME=aosp
	export ROMDIR=tenx
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom71() {
  ##  titanium
        export ROMGIT=https://github.com/TitaniumOS/manifest
        export ROMNAME=titanium
	export ROMDIR=$ROMNAME
        export ROMBUILD=titanium
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom72() {
  ##  vortex
        export ROMGIT=https://github.com/Vortex-OS/manifest
        export ROMNAME=vortex
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom73() {
  ##  wave os
        export ROMGIT=https://github.com/Wave-Project/manifest
        export ROMNAME=wave
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom74() {
  ##  yaap
        export ROMGIT=https://github.com/yaap/manifest
        export ROMNAME=yaap
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}


rom75() {
  ## zenx
        export ROMGIT=https://github.com/Zeus-OS/android_manifest
        export ROMNAME=zues
	export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
	export VENDOR_CONFIG=$ROMNAME ; . DeviceMenu.sh
  read
}

rom76() {
  ## octavi is
        export ROMDIR="https://github.com/Octavi-OS/platform_manifest"
        export ROMNAME=octavi
        export ROMDIR=$ROMNAME
        export ROMBUILD=bacon
        export VENDOR_CONFIG=gzosp ; . DeviceMenu.sh
  read
}

##section1


#  until [ "$menu" = "0" ]; do


HEIGHT=30
WIDTH=50
CHOICE_HEIGHT=8
BACKTITLE="ROM-MENU"
TITLE="ROM Menu"
MENU="Choose one of the following options:"

OPTIONS=(
1 "404"
2 "abc"
3 "aicp"
4 "amy"
5 "aosip"
6 "aospa"
7 "aospify"
8 "aex"
9 "andromeda"
10 "arrow"
11 "awaken"
12 "baikal"
13 "benzo"
14 "bliss"
15 "calyx"
16 "candy"
17 "carbon"
18 "cesium"
19 "cherish"
20 "colt os"
21 "conquer"
22 "corvus"
23 "crdroid"
24 "cygnus"
25 "descendant"
26 "dirty unicorns"
27 "dot os"
28 "evolution x"
29 "explosive lobster"
30 "freaky os"
31 "graphene"
32 "gzosp"
33 "halogen os"
34 "havoc"
35 "hentai os"
36 "hornbill os"
37 "hycon os"
38 "kang os"
39 "kraken"
40 "komodo"
41 "legion"
42 "lighthouse"
43 "msm xtended"
44 "mallu os"
45 "nitrogen os"
46 "nezuko"
47 "nusantara"
48 "omnirom"
49 "palladium"
50 "pixel experience"
51 "pixeldust"
52 "pixel extended"
53 "pixys"
54 "potato"
55 "project fluid"
56 "project streak"
57 "proton aosp"
58 "reloaded os"
59 "revenge os"
60 "rohie os"
61 "sakura"
62 "spark rom"
63 "spice os"
64 "stag os"
65 "statix"
66 "stormbreaker"
67 "styx"
68 "superior"
69 "syberia"
70 "tenx os"
71 "titanium os"
72 "vortex os"
73 "wave os"
74 "yaap"
75 "zenx"
76 "octavi"
77 "setup build environment"
78 "exit build menu"
##section2

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
  # 
  clear
  BEGIN=$(date +%s)
  rom1
  END=$(date +%s)
  echo "${green}Android 9 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

2 )
  # 
  clear
  BEGIN=$(date +%s)
  rom2
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

3 )
  # 
  clear
  BEGIN=$(date +%s)
  rom3
  END=$(date +%s)
  echo "${green}Android 11 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

4 )
  # 
  clear
  BEGIN=$(date +%s)
  rom4
  END=$(date +%s)
  echo "${green}Recoveries Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

5 )
  # 
  clear
  BEGIN=$(date +%s)
  rom5
  END=$(date +%s)
  echo "${green}ToolKits Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

6 )
  # 
  clear
  BEGIN=$(date +%s)
  rom6
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

7 )
  # 
  clear
  BEGIN=$(date +%s)
  rom7
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

8 )
  # 
  clear
  BEGIN=$(date +%s)
  rom8
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

9 )
  # #
  clear
  BEGIN=$(date +%s)
  rom9
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

10 )
  # #
  clear
  BEGIN=$(date +%s)
  rom10
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

11 )
  # #
  clear
  BEGIN=$(date +%s)
  rom11
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

12 )
  # #
  clear
  BEGIN=$(date +%s)
  rom12
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

13 )
  # #
  clear
  BEGIN=$(date +%s)
  rom13
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

14 )
  # #
  clear
  BEGIN=$(date +%s)
  rom14
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

15 )
  # #
  clear
  BEGIN=$(date +%s)
  rom15
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

16 )
  # #
  clear
  BEGIN=$(date +%s)
  rom16
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

17 )
  # #
  clear
  BEGIN=$(date +%s)
  rom17
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

18 )
  # #
  clear
  BEGIN=$(date +%s)
  rom18
  END=$(date +%s)
  echo "${green}Android 10 Roms Deleted!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  read
  clear
;;
#############################################################
#############################################################

19 )
  # #
  clear
  BEGIN=$(date +%s)
  rom19
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

20 )
  # #
  clear
  BEGIN=$(date +%s)
  rom20
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

21 )
  # #
  clear
  BEGIN=$(date +%s)
  rom21
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

22 )
  # #
  clear
  BEGIN=$(date +%s)
  rom22
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

23 )
  # #
  clear
  BEGIN=$(date +%s)
  rom23
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

24 )
  # #
  clear
  BEGIN=$(date +%s)
  rom24
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

25 )
  # #
  clear
  BEGIN=$(date +%s)
  rom25
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

26 )
  # #
  clear
  BEGIN=$(date +%s)
  rom26
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

27 )
  # #
  clear
  BEGIN=$(date +%s)
  rom27
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

28 )
  # #
  clear
  BEGIN=$(date +%s)
  rom28
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

29 )
  # #
  clear
  BEGIN=$(date +%s)
  rom29
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

30 )
  # #
  clear
  BEGIN=$(date +%s)
  rom30
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

31 )
  # #
  clear
  BEGIN=$(date +%s)
  rom31
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

32 )
  # #
  clear
  BEGIN=$(date +%s)
  rom32
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

33 )
  # #
  clear
  BEGIN=$(date +%s)
  rom33
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

34 )
  # #
  clear
  BEGIN=$(date +%s)
  rom34
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

35 )
  # #
  clear
  BEGIN=$(date +%s)
  rom35
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

36 )
  # #
  clear
  BEGIN=$(date +%s)
  rom36
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

37 )
  # #
  clear
  BEGIN=$(date +%s)
  rom37
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

38 )
  # #
  clear
  BEGIN=$(date +%s)
  rom38
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

39 )
  # #
  clear
  BEGIN=$(date +%s)
  rom39
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

40 )
  # #
  clear
  BEGIN=$(date +%s)
  rom40
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

41 )
  # #
  clear
  BEGIN=$(date +%s)
  rom41
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

42 )
  # #
  clear
  BEGIN=$(date +%s)
  rom42
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

43 )
  # #
  clear
  BEGIN=$(date +%s)
  rom43
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

44 )
  # #
  clear
  BEGIN=$(date +%s)
  rom44
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

45 )
  # #
  clear
  BEGIN=$(date +%s)
  rom45
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

46 )
  # #
  clear
  BEGIN=$(date +%s)
  rom46
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

47 )
  # #
  clear
  BEGIN=$(date +%s)
  rom47
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

48 )
  # #
  clear
  BEGIN=$(date +%s)
  rom48
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

49 )
  # #
  clear
  BEGIN=$(date +%s)
  rom49
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

50 )
  # #
  clear
  BEGIN=$(date +%s)
  rom50
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

51 )
  # #
  clear
  BEGIN=$(date +%s)
  rom51
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

52 )
  # #
  clear
  BEGIN=$(date +%s)
  rom52
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

53 )
  # #
  clear
  BEGIN=$(date +%s)
  rom53
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

54 )
  # #
  clear
  BEGIN=$(date +%s)
  rom54
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

55 )
  # #
  clear
  BEGIN=$(date +%s)
  rom55
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

56 )
  # #
  clear
  BEGIN=$(date +%s)
  rom56
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

57 )
  # #
  clear
  BEGIN=$(date +%s)
  rom57
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

58 )
  # #
  clear
  BEGIN=$(date +%s)
  rom58
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

59 )
  # #
  clear
  BEGIN=$(date +%s)
  rom59
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

60 )
  # #
  clear
  BEGIN=$(date +%s)
  rom60
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

61 )
  # #
  clear
  BEGIN=$(date +%s)
  rom61
  END=$(date +%s)
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  echo "${green}Android 10 Roms Uploaded!!${reset}"
;;
#############################################################
#############################################################

62 )
  # #
  clear
  BEGIN=$(date +%s)
  rom62
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

63 )
  # #
  clear
  BEGIN=$(date +%s)
  rom63
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

64 )
  # #
  clear
  BEGIN=$(date +%s)
  rom64
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

65 )
  # #
  clear
  BEGIN=$(date +%s)
  rom65
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

66 )
  # #
  clear
  BEGIN=$(date +%s)
  rom66
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

67 )
  # #
  clear
  BEGIN=$(date +%s)
  rom67
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

68 )
  # #
  clear
  BEGIN=$(date +%s)
  rom68
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

69 )
  # #
  clear
  BEGIN=$(date +%s)
  rom69
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

70 )
  # #
  clear
  BEGIN=$(date +%s)
  rom70
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

71 )
  # #
  clear
  BEGIN=$(date +%s)
  rom71
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

72 )
  # #
  clear
  BEGIN=$(date +%s)
  rom72
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

73 )
  # #
  clear
  BEGIN=$(date +%s)
  rom73
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

74 )
  # #
  clear
  BEGIN=$(date +%s)
  rom74
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

75 )
  # #
  clear
  BEGIN=$(date +%s)
  rom75
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################
#############################################################

76 )
  # #
  clear
  BEGIN=$(date +%s)
  rom76
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
;;

##section4

esac

done
