#! /bin/bash

git clone https://github.com/motoe7/android_device_motorola_ginna.git -b lineage-18.1 device/motorola/ginna &&
git clone https://github.com/motoe7/android_vendor_motorola_ginna.git -b lineage-18.1 vendor/motorola/ginna &&
git clone https://github.com/motoe7/android_kernel_motorola_sdm632.git -b lineage-18.1 kernel/motorola/sdm632
LIBQSAP_SDK="system/qcom/softap"
if [[ ! -d $LIBQSAP_SDK ]]
then
git clone https://github.com/LineageOS/android_system_qcom.git -b lineage-18.1 system/qcom
else
echo "libqsap_sdk already present"
fi



sed -i "s|vendor/lineage/config|vendor/$ROMNAME/config|" device/motorola/ginna/lineage_ginna.mk
#sed -i "s|common_full_phone.mk|common.mk|" device/motorola/ginna/lineage_ginna.mk
sed -i 's/BUILD_GMS/#BUILD_GMS/' device/motorola/ginna/lineage_ginna.mk
sed -i 's|$(call inherit-product, vendor/partner_gms/products/gms_go_2gb.mk)|#$(call inherit-product, vendor/partner_gms/products/gms_go_2gb.mk)|' device/motorola/ginna/lineage_ginna.mk
sed -i "s|lineage_ginna|$ROMNAME\_ginna|" device/motorola/ginna/lineage_ginna.mk
sed -i "s|lineage_|$ROMNAME\_|" device/motorola/ginna/AndroidProducts.mk
cp device/motorola/ginna/lineage.dependencies device/motorola/ginna/$ROMNAME.dependencies
cp device/motorola/ginna/lineage_ginna.mk device/motorola/ginna/$ROMNAME\_ginna.mk
rm -rf vendor/qcom/opensource/power
git clone https://github.com/ArrowOS/android_vendor_qcom_opensource_power vendor/qcom/opensource/powercat ~/scripts-backup/device_mk_changes.txt >> device/motorola/ginna/device.mk
cat $THISDIR/device_mk_changes.txt >> device/motorola/ginna/device.mk



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
