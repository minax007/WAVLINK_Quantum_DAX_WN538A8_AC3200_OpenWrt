#!/bin/bash

echo 'Start including Phicomm K3 screen plug-in'
rm -rf package/lean/luci-app-k3screenctrl
git clone https://github.com/yangxu52/luci-app-k3screenctrl.git package/lean/luci-app-k3screenctrl
echo 'Including Phicomm K3 screen plug-in completed'

echo 'Start replacing the Phicomm K3 screen driver plug-in'
rm -rf package/lean/k3screenctrl
git clone https://github.com/yangxu52/k3screenctrl_build.git package/lean/k3screenctrl/
echo 'Replacing the Phicomm K3 screen driver plug-in completed'

#Firmware version options: 69027 / ac88u_16 / ac88u_19 / ac88u_20 / asus-dhd24 / ea9500_175339 / ea9500_179240 / k3 
FIRMWARE_VERSION='69027'
echo 'Start replacing WiFi FOSS driver by proprietary Broadcom driver'
wget -nv https://github.com/yangxu52/Phicomm-k3-Wireless-Firmware/raw/master/brcmfmac4366c-pcie.bin.${FIRMWARE_VERSION} -O package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
echo 'Replacing WiFi FOSS driver by proprietary Broadcom driver completed'
