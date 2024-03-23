sudo apt install nano
git clone https://gitlab.com/EdwinT2/avb_tool -b main out/host/linux-x86/bin
sudo chmod +rwx out/host/linux-x86/bin/avbtool
chmod a+x device/samsung/a21s/prebuilt/avb/mkbootimg
add_lunch_combo twrp_a21s-eng
