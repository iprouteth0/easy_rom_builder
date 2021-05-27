#! /bin/bash

## Device Tree
git clone https://github.com/iprouteth0/device_xiaomi_olivewood device/xiaomi/olivewood

## Vendor Tree
git clone https://github.com/iprouteth0/vendor_xiaomi_olives vendor/xiaomi/olives

git clone https://github.com/Stargazer19/hardware_qcom_display-caf-msm8937 hardware/qcom-caf/msm8937/display
git clone https://github.com/Stargazer19/hardware_qcom_media-caf-msm8937 hardware/qcom-caf/msm8937/media
git clone https://github.com/Stargazer19/hardware_qcom_audio-caf-msm8937 hardware/qcom-caf/msm8937/audio 
cp hardware/qcom-caf/msm8996/Android.* hardware/qcom-caf/msm8937/
cat $THIDIR/device_mk_changes-msm8937.txt >> device/xiaomi/olivewood/device.mk

## kernel sources
git clone https://github.com/Xiaomi-SDM439-Development/android_kernel_xiaomi_sdm439 -b a11/clean-iwlan kernel/xiaomi/sdm439

## match device tree files to rom tree
cp device/xiaomi/olivewood/lineage_olivewood.mk device/xiaomi/olivewood/$ROMNAME\_olivewood.mk
sed -i "s|vendor/lineage/config|vendor/$VENDOR_CONFIG/config|" device/xiaomi/olivewood/$ROMNAME\_olivewood.mk
sed -i "s|lineage|$ROMNAME|" device/xiaomi/olivewood/$ROMNAME\_olivewood.mk
sed -i "s|lineage|$ROMNAME|" device/xiaomi/olivewood/AndroidProducts.mk
#echo "WITH_GAPPS := true" >> device/xiaomi/olivewood/$ROMNAME\_olivewood.mk


if [[ -d "vendor/$VENDOR_CONFIG/config" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/config/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/xiaomi/olivewood/$ROMNAME\_olivewood.mk
fi
fi

if [[ -d "vendor/$VENDOR_CONFIG/configs" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/configs/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/xiaomi/olivewood/$ROMNAME\_olivewood.mk
fi
fi
