#! /bin/bash

## Device Tree
git clone https://github.com/whatthef84/android_device_motorola_sofiar-1 device/motorola/sofiar

## Vendor Tree
git clone https://github.com/whatthef84/android_vendor_motorola_sofiar-1 -b android-10 vendor/motorola/sofiar


## Kernel Sources:  
git clone https://github.com/b4ckup007/OdinKernel_Upstream kernel/motorola/trinket


## match device tree files to rom tree
cp device/motorola/sofiar/havoc_sofiar.mk device/motorola/sofiar/$ROMNAME\_sofiar.mk
sed -i "s|vendor/havoc/config|vendor/$VENDOR_CONFIG/config|" device/motorola/sofiar/$ROMNAME\_sofiar.mk
sed -i "s|havoc|$ROMNAME|" device/motorola/sofiar/$ROMNAME\_sofiar.mk
sed -i "s|havoc|$ROMNAME|" device/motorola/sofiar/AndroidProducts.mk
#echo "WITH_GAPPS := true" >> device/motorola/sofiar/$ROMNAME\_sofiar.mk


if [[ -d "vendor/$VENDOR_CONFIG/config" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/config/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/motorola/sofiar/$ROMNAME\_sofiar.mk
fi
fi

if [[ -d "vendor/$VENDOR_CONFIG/configs" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/configs/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/motorola/sofiar/$ROMNAME\_sofiar.mk
fi
fi
