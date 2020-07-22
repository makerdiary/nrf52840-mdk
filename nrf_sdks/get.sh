#!/bin/sh

NRF5_SDK=nRF5_SDK_15.2.0_9412b96
NRF5_SDK_ARCHIVE=${NRF5_SDK}.zip
NRF5_SDK_MAJOR=`echo ${NRF5_SDK} | sed -e "s/nRF5_SDK_\([0-9]*\)\..*/\1/g"`
NRF5_SDK_URL=https://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v${NRF5_SDK_MAJOR}.x.x/${NRF5_SDK_ARCHIVE}

echo ${NRF5_SDK_URL}

if [ ! -d ${NRF5_SDK} ]
then
    wget -c ${NRF5_SDK_URL}
    unzip ${NRF5_SDK_ARCHIVE} -d .
fi
