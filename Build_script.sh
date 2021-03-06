#! /bin/bash
## Build script variables to set
SOURCEFILE=Android.bp

## Check if sources are present and download if not present
if [[ ! -d $ROMDIR ]]
then
mkdir $ROMDIR
cd $ROMDIR
else
cd $ROMDIR 
fi
if [[ ! -f $SOURCEFILE ]] 
then 
repo init -u $ROMGIT 
repo sync -j$(nproc --ignore=8)
	if [[ ! -d $DEVICEDIR ]]
	then
	. $THISDIR/$SOURCESCRIPT-clone_sources.sh 
	else
	echo "Device source already present"
	fi

## Build section sequence A
. build/envsetup.sh
make clobber
export USE_CCACHE=1
export LC_ALL=C
export WITHOUT_CHECK_API=true
#time brunch $DEVICENAME
lunch $ROMNAME\_$DEVICENAME-userdebug
make $ROMBUILD -j$(nproc --ignore=8)
cd ..
read


## Build section sequence B
else

	if [[ ! -d $DEVICEDIR ]]
        then
        . $THISDIR/$SOURCESCRIPT-clone_sources.sh
        else
        echo "Device source already present"
        fi

. build/envsetup.sh
make clobber
export USE_CCACHE=1
export LC_ALL=C
export WITHOUT_CHECK_API=true
#time brunch $DEVICENAME
lunch $ROMNAME\_$DEVICENAME-userdebug
make $ROMBUILD -j$(nproc --ignore=8)
cd ..
read
fi
