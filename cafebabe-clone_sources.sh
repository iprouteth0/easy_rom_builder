#! /bin/bash

git clone https://github.com/mi-msm8937/android_device_xiaomi_olives device/xiaomi/olives
git clone https://github.com/mi-msm8937/android_device_xiaomi_msm8937-common device/xiaomi/msm8937-common
git clone https://github.com/mi-msm8937/android_device_xiaomi_sdm439-common device/xiaomi/sdm439-common

git clone https://github.com/mi-msm8937/proprietary_vendor_xiaomi_olives vendor/xiaomi/olives
git clone https://github.com/mi-msm8937/proprietary_vendor_xiaomi_sdm439-common vendor/xiaomi/sdm439-common 
git clone https://github.com/mi-msm8937/proprietary_vendor_xiaomi_msm8937-common vendor/xiaomi/msm8937-common

git clone https://github.com/Xiaomi-SDM439-Development/android_kernel_xiaomi_sdm439 -ba11/clean-iwlan kernel/xiaomi/sdm439
#git clone https://github.com/mi-msm8937/android_kernel_xiaomi_msm8937 kernel/xiaomi/msm8937

## match device tree files to rom tree
cp device/xiaomi/olives/lineage_olives.mk device/xiaomi/olives/$ROMNAME\_olives.mk
sed -i "s|vendor/lineage/config|vendor/$VENDOR_CONFIG/config|" device/xiaomi/olives/$ROMNAME\_olives.mk
sed -i "s|lineage|$ROMNAME|" device/xiaomi/olives/$ROMNAME\_olives.mk
sed -i "s|lineage|$ROMNAME|" device/xiaomi/olives/AndroidProducts.mk
#echo "WITH_GAPPS := true" >> device/xiaomi/olives/$ROMNAME\_olives.mk
#cat ../device_mk_changes-msm8937.txt >> device/xiaomi/olives/device.mk

if [[ -d "vendor/$VENDOR_CONFIG/config" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/config/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/xiaomi/olives/$ROMNAME\_olives.mk
fi
fi

if [[ -d "vendor/$VENDOR_CONFIG/configs" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/configs/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/xiaomi/olives/$ROMNAME\_olives.mk
fi
fi
