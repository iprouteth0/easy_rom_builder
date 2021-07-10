#! /bin/bash

mkdir borneo-workspace
cd borneo-workspace

git clone https://github.com/MotorolaMobilityLLC/kernel-msm -b MMI-QZBS30.Q4-43-43-2 kernel/

cd kernel/

git subtree add -P techpack/audio https://github.com/MotorolaMobilityLLC/vendor-qcom-opensource-audio-kernel -b MMI-QZBS30.Q4-43-43-2

git subtree add -P techpack/video https://github.com/MotorolaMobilityLLC/kernel-msm-4.19-techpack-video -b MMI-QZBS30.Q4-43-43-2

git subtree add -P techpack/display https://github.com/MotorolaMobilityLLC/kernel-msm-4.19-techpack-display -b MMI-QZBS30.Q4-43-43-2

git subtree add -P techpack/camera https://github.com/MotorolaMobilityLLC/kernel-msm-4.19-techpack-camera -b MMI-QZBS30.Q4-43-43-2

git subtree add -P drivers/staging/qcacld-3.0 https://github.com/MotorolaMobilityLLC/vendor-qcom-opensource-wlan-qcacld-3.0 -b MMI-QZBS30.Q4-43-43-2 

git subtree add -P drivers/staging/fw-api https://github.com/MotorolaMobilityLLC/vendor-qcom-opensource-wlan-fw-api -b MMI-QZBS30.Q4-43-43-2 

git subtree add -P drivers/staging/qca-wifi-host-cmn https://github.com/MotorolaMobilityLLC/vendor-qcom-opensource-wlan-qca-wifi-host-cmn -b MMI-QZBS30.Q4-43-43-2 


git clone https://github.com/MotorolaMobilityLLC/motorola-kernel-modules -b MMI-QZBS30.Q4-43-43-2
