#! /bin/bash


git clone https://github.com/moto-sm8250/android_device_motorola_nio device/motorola/nio

git clone https://github.com/moto-sm8250/android_device_motorola_sm8250-common device/motorola/sm8250-common

git clone https://github.com/moto-sm8250/android_vendor_motorola_nio vendor/motorola/nio

git clone https://github.com/moto-sm8250/android_kernel_motorola_sm8250 kernel/motorola/sm8250



sed -i "s|vendor/lineage/config|vendor/$VENDOR_CONFIG/config|" device/motorola/nio/lineage_nio.mk
sed -i "s|lineage_nio|$ROMNAME\_nio|" device/motorola/nio/lineage_nio.mk
sed -i "s|lineage_|$ROMNAME\_|" device/motorola/nio/AndroidProducts.mk
cp device/motorola/nio/lineage.dependencies device/motorola/nio/$ROMNAME.dependencies
cp device/motorola/nio/lineage_ginna.mk device/motorola/nio/$ROMNAME\_nio.mk



if [[ -d "vendor/$VENDOR_CONFIG/config" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/config/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/motorola/ginna/$ROMNAME\_ginna.mk
fi
fi

if [[ -d "vendor/$VENDOR_CONFIG/configs" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/configs/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/motorola/ginna/$ROMNAME\_ginna.mk
fi
fi
