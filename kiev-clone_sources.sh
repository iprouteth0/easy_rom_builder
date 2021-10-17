#! /bin/bash


git clone https://github.com/iprouteth0/android_device_motorola_kiev device/motorola/kiev

git clone https://github.com/iprouteth0/android_device_motorola_sm7250-common device/motorola/sm7250-common

git clone https://github.com/iprouteth0/android_vendor_motorola_kiev vendor/motorola/kiev

git clone https://github.com/iprouteth0/android_vendor_motorola_sm7250-common vendor/motorola/sm7250-common

git clone https://github.com/iprouteth0/android_kernel_motorola_sm7250 kernel/motorola/sm7250
#git clone https://github.com/iprouteth0/android_kernel_motorola_sm7250 kernel/motorola/sm7250



sed -i "s|vendor/lineage/config|vendor/$VENDOR_CONFIG/config|" device/motorola/kiev/lineage_kiev.mk
sed -i "s|lineage_kiev|$ROMNAME\_kiev|" device/motorola/kiev/lineage_kiev.mk
sed -i "s|lineage_|$ROMNAME\_|" device/motorola/kiev/AndroidProducts.mk
cp device/motorola/kiev/lineage.dependencies device/motorola/kiev/$ROMNAME.dependencies
cp device/motorola/kiev/lineage_kiev.mk device/motorola/kiev/$ROMNAME\_kiev.mk



if [[ -d "vendor/$VENDOR_CONFIG/config" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/config/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/motorola/kiev/$ROMNAME\_kiev.mk
fi
fi

if [[ -d "vendor/$VENDOR_CONFIG/configs" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/configs/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/motorola/kiev/$ROMNAME\_kiev.mk
fi
fi
