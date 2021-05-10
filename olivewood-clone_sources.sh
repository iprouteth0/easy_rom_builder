#! /bin/bash


## Device Tree
git clone https://github.com/iprouteth0/device_xiaomi_olivewood-1 device/xiaomi/olivewood
git clone https://github.com/Xiaomi-SDM439-Development/android_device_xiaomi_sdm439 device/xiaomi/sdm439-common

## Vendor Tree
git clone https://github.com/Evolution-X-Devices/vendor_xiaomi vendor/xiaomi
git clone https://github.com/iprouteth0/vendor_xiaomi_olivewood_64 vendor/xiaomi/olivewood

git clone https://github.com/Stargazer19/hardware_qcom_display-caf-msm8937 hardware/qcom-caf/msm8937/display
git clone https://github.com/Stargazer19/hardware_qcom_media-caf-msm8937 hardware/qcom-caf/msm8937/media
git clone https://github.com/Stargazer19/hardware_qcom_audio-caf-msm8937 hardware/qcom-caf/msm8937/audio 
cp hardware/qcom-caf/msm8996/Android.* hardware/qcom-caf/msm8937/
cat $THIDIR/device_mk_changes-msm8937.txt >> device/xiaomi/olivewood/device.mk


echo "TARGET_KERNEL_CLANG_COMPILE=true" >> device/xiaomi/olivewood/BoardConfig.mk
## Kernel Sources:  
##  For second kernel source link, add the following;
##
##  Add this to BoardConfig.mk or BoardConfigCommon.mk:
##
##  TARGET_KERNEL_CLANG_COMPILE := true
#git clone https://github.com/MiCode/Xiaomi_Kernel_OpenSource/tree/olivewood-p-oss -b olivewood-p-oss kernel/xiaomi/sdm439
echo "Please choose which kernel source you would like to use:"
echo "1 for Joel's a10 kernel"
echo "2 for Joel's a11 kernel
echo "3 for cherry kernel"
echo "4 for RALegacy kernel"
read KERNEL_CHOICE
rm -rf kernel/xiaomi/sdm439
if [[ $KERNEL_CHOICE = 1 ]]
then
git clone https://github.com/iprouteth0/android_kernel_xiaomi_sdm439 kernel/xiaomi/sdm439
elif [[ $KERNEL_CHOICE = 2 ]]
then git clone https://github.com/Xiaomi-SDM439-Development/android_kernel_xiaomi_sdm439 kernel/xiaomi/sdm439
elif [[ $KERNEL_CHOICE = 3 ]]
then git clone https://github.com/iprouteth0/kernel_cherry_sdm439 kernel/xiaomi/sdm439
elif [[ $KERNEL_CHOICE = 4 ]]
then git clone https://github.com/iprouteth0/RALegacy_kernel_sdm439 kernel/xiaomi/sdm439
elif [[ ! $KERNEL_CHOICE  =~ [1-4] ]]
then git clone https://github.com/iprouteth0/android_kernel_xiaomi_sdm439 kernel/xiaomi/sdm439
fi

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
