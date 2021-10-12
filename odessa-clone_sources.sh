#! /bin/bash


git clone https://github.com/iprouteth0/android_device_motorola_odessa device/motorola/odessa

git clone https://github.com/iprouteth0/android_device_motorola_sm6150-common device/motorola/sm6150-common

git clone https://github.com/iprouteth0/vendor_motorola_odessa vendor/motorola/odessa

git clone https://github.com/iprouteth0/vendor_motorola_sm6150-common vendor/motorola/sm6150-common

git clone https://github.com/sm6150-motorola/android_kernel_motorola_sm6150 kernel/motorola/sm6150
#git clone https://github.com/iprouteth0/kernel_motorola_hanoip kernel/motorola/sm6150



sed -i "s|vendor/lineage/config|vendor/$VENDOR_CONFIG/config|" device/motorola/odessa/lineage_odessa.mk
sed -i "s|lineage_odessa|$ROMNAME\_odessa|" device/motorola/odessa/lineage_odessa.mk
sed -i "s|lineage_|$ROMNAME\_|" device/motorola/odessa/AndroidProducts.mk
cp device/motorola/odessa/lineage.dependencies device/motorola/odessa/$ROMNAME.dependencies
cp device/motorola/odessa/lineage_odessa.mk device/motorola/odessa/$ROMNAME\_odessa.mk



if [[ -d "vendor/$VENDOR_CONFIG/config" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/config/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/motorola/odessa/$ROMNAME\_odessa.mk
fi
fi

if [[ -d "vendor/$VENDOR_CONFIG/configs" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/configs/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/motorola/odessa/$ROMNAME\_odessa.mk
fi
fi
