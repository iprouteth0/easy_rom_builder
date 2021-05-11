#! /bin/bash


## device trees-common
git clone https://github.com/sm8150-samsung/android_device_samsung_sm8150-common device/samsung/sm8150-common

## device trees
if [[ $DEVICENAME = beyond2qlte ]]
then
git clone https://github.com/sm8150-samsung/android_device_samsung_beyond2qlte device/samsung/beyond2qlte
elif [[ $DEVICENAME = beyond1qlte ]]
then
git clone https://github.com/sm8150-samsung/android_device_samsung_beyond1qlte device/samsung/beyond1qlte
elif [[ $DEVICENAME = beyond0qlte ]]
then
git clone https://github.com/sm8150-samsung/android_device_samsung_beyond0qtle device/samsung/beyond0qlte
elif [[ $DEVICENAME = d2q ]]
then
git clone https://github.com/sm8150-samsung/android_device_samsung_d2q device/samsung/d2q
elif [[ $DEVICENAME = d1q ]]
then
git clone https://github.com/sm8150-samsung/android_device_samsung_d1q device/samsung/d1q
fi

## kernel tree
git clone https://github.com/sm8150-samsung/android_kernel_samsung_sm8150-common kernel/samsung/sm8150-common

## vendor tree
git clone https://github.com/sm8150-samsung/android_vendor_samsung_sm8150-common vendor/samsung/sm8150-common

git clone https://github.com/LineageOS/android_hardware_samsung hardware/samsung

LIBQSAP_SDK="system/qcom/softap"
if [[ ! -d $LIBQSAP_SDK ]]
then
git clone https://github.com/LineageOS/android_system_qcom.git -b lineage-18.1 system/qcom
else
echo "libqsap_sdk already present"
fi

LINEAGE_SDK="lineage-sdk"
if [[ ! -d $LINEAGE_SDK ]]
then
git clone https://github.com/LineageOS/android_lineage-sdk lineage-sdk/
else
echo "lineage-sdk already present"
fi

sed -i "s|vendor/lineage/config|vendor/$VENDOR_CONFIG/config|" device/samsung/$DEVICENAME/lineage_$DEVICENAME.mk
sed -i "s|lineage_$DEVICENAME|$ROMNAME\_$DEVICENAME|" device/samsung/$DEVICENAME/lineage_$DEVICENAME.mk
sed -i "s|lineage_|$ROMNAME\_|" device/samsung/$DEVICENAME/AndroidProducts.mk
cp device/samsung/$DEVICENAME/lineage.dependencies device/samsung/$DEVICENAME/$ROMNAME.dependencies
cp device/samsung/$DEVICENAME/lineage_$DEVICENAME.mk device/samsung/$DEVICENAME/$ROMNAME\_$DEVICENAME.mk
rm -rf vendor/qcom/opensource/power
git clone https://github.com/ArrowOS/android_vendor_qcom_opensource_power vendor/qcom/opensource/power
#cat device_mk_changes.txt >> device/samsung/$DEVICENAME/device.mk
#cat $THISDIR/device_mk_changes.txt >> device/samsung/$DEVICENAME/device.mk




if [[ -d "vendor/$VENDOR_CONFIG/config" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/config/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/samsung/$DEVICENAME/$ROMNAME\_$DEVICENAME.mk
fi
fi

if [[ -d "vendor/$VENDOR_CONFIG/configs" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/configs/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/samsung/$DEVICENAME/$ROMNAME\_$DEVICENAME.mk
fi
fi
