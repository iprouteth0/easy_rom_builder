#! /bin/bash

## Device Tree
git clone https://github.com/Xiaomi-SDM439/android_device_xiaomi_olivelite device/xiaomi/olivelite
git clone https://github.com/mi-msm8937/android_device_xiaomi_sdm439-common device/xiaomi/sdm439-common
git cllne https://github.com/mi-msm8937/android_device_xiaomi_msm8937-common device/xiaomi/msm8937-common
## Vendor Tree
git clone https://github.com/mi-msm8937/proprietary_vendor_xiaomi_olives vendor/xiaomi/olives
git clone https://github.com/mi-msm8937/proprietary_vendor_xiaomi_msm8937-common vendor/xiaomi/msm8937-common
git clone https://github.com/mi-msm8937/proprietary_vendor_xiaomi_sdm439-common vendor/xiaomi/sdm439-common
## Kernel Sources:  
git clone https://github.com/PrishKernel/PrishKernel_SD439_64 kernel/xiaomi/sdm439


## match device tree files to rom tree
cp device/xiaomi/olivelite/lineage_olivelite.mk device/xiaomi/olivelite/$ROMNAME\_olivelite.mk
sed -i "s|vendor/lineage/config|vendor/$VENDOR_CONFIG/config|" device/olivelite/olivelite/$ROMNAME\_olivelite.mk
sed -i "s|lineage|$ROMNAME|" device/xiaomi/olivelite/$ROMNAME\_olivelite.mk
sed -i "s|lineage|$ROMNAME|" device/xiaomi/olivelite/AndroidProducts.mk
#echo "WITH_GAPPS := true" >> device/olivelite/olivelite/$ROMNAME\_olivelite.mk


if [[ -d "vendor/$VENDOR_CONFIG/config" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/config/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/olivelite/olivelite/$ROMNAME\_olivelite.mk
fi
fi

if [[ -d "vendor/$VENDOR_CONFIG/configs" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/configs/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/olivelite/olivelite/$ROMNAME\_olivelite.mk
fi
fi
