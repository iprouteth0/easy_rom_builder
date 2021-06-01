#! /bin/bash

## Device Tree
git clone $DEVTREEURL device/$DEVICEMFG/$DEVICECODENAME
if [[ $USESCOMMONTREE = 0 ]]
then
git clone $DEVICECOMMONTREE $DEVICECOMMONPATH
elif [[ ! $USESCOMMONTREE = 0 ]]
then
echo "common trees not enabled"
fi

## Vendor Tree
if [[ $UVTP = 0 ]]
then
git clone $VENDTREEURL $VENDORTREEPATH
elif [[ ! $UVTP = 0 ]]
then
git clone $VENDTREEURL vendor/$DEVICEMFG/$DEVICECODENAME
fi

## Kernel Sources:  
git clone $KERNELSRCURL kernel/$DEVICEMFG/$DEVICESOC


## match device tree files to rom tree
cp device/$DEVICEMFG/$DEVICECODENAME/lineage_$DEVICECODENAME.mk device/$DEVICEMFG/$DEVICECODENAME/$ROMNAME\_$DEVICECODENAME.mk
sed -i "s|vendor/lineage/config|vendor/$VENDOR_CONFIG/config|" device/$DEVICEMFG/$DEVICECODENAME/$ROMNAME\_$DEVICECODENAME.mk
sed -i "s|lineage|$ROMNAME|" device/$DEVICEMFG/$DEVICECODENAME/$ROMNAME\_$DEVICECODENAME.mk
sed -i "s|lineage|$ROMNAME|" device/$DEVICEMFG/$DEVICECODENAME/AndroidProducts.mk
#echo "WITH_GAPPS := true" >> device/$DEVICEMFG/$DEVICECODENAME/$ROMNAME\_$DEVICECODENAME.mk


if [[ -d "vendor/$VENDOR_CONFIG/config" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/config/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/$DEVICEMFG/$DEVICECODENAME/$ROMNAME\_$DEVICECODENAMEE.mk
fi
fi

if [[ -d "vendor/$VENDOR_CONFIG/configs" ]]
then
if [[ ! -f "vendor/$VENDOR_CONFIG/configs/common_full_phone.mk" ]]
then
    sed -i "s|common_full_phone.mk|common.mk|" device/$DEVICEMFG/$DEVICECODENAME/$ROMNAME\_$DEVICECODENAME.mk
fi
fi
