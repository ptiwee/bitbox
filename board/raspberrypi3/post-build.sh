#!/bin/sh

set -u
set -e


# Autorun attractmode
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE 'attract' ${TARGET_DIR}/etc/inittab || \
    sed -i 's/^tty1/#&/' ${TARGET_DIR}/etc/inittab
    grep -qE 'attract' ${TARGET_DIR}/etc/inittab || \
	sed -i '/tty1/a\tty1::respawn:/usr/bin/attract -f dejavu > /dev/console 2>&1 # Attract Mode' ${TARGET_DIR}/etc/inittab
fi

# Enable audio
grep -qE 'dtparam=audio=on' ${BASE_DIR}/images/rpi-firmware/config.txt || \
echo 'dtparam=audio=on' >> ${BASE_DIR}/images/rpi-firmware/config.txt

if [ ! -e ${TARGET_DIR}/etc/asound.conf ]; then
    echo 'defaults.pcm.card 1' >> ${TARGET_DIR}/etc/asound.conf
    echo 'defaults.ctl.card 1' >> ${TARGET_DIR}/etc/asound.conf
fi

# Increase GPU memory
grep -qE 'gpu_mem=256' ${BASE_DIR}/images/rpi-firmware/config.txt || \
sed -i 's/^gpu_mem/#&/' ${BASE_DIR}/images/rpi-firmware/config.txt
grep -qE 'gpu_mem=256' ${BASE_DIR}/images/rpi-firmware/config.txt || \
echo 'gpu_mem=256' >> ${BASE_DIR}/images/rpi-firmware/config.txt

# Disable splash
grep -qE 'disable_splash=1' ${BASE_DIR}/images/rpi-firmware/config.txt || \
echo 'disable_splash=1' >> ${BASE_DIR}/images/rpi-firmware/config.txt

# Disable warnings
grep -qE 'avoid_warnings=1' ${BASE_DIR}/images/rpi-firmware/config.txt || \
echo 'avoid_warnings=1' >> ${BASE_DIR}/images/rpi-firmware/config.txt

# Silent boot
grep -qE 'loglevel' ${BASE_DIR}/images/rpi-firmware/cmdline.txt || \
sed -i 's/$/ loglevel=0 quiet vt.global_cursor_default=0 logo.nologo/' ${BASE_DIR}/images/rpi-firmware/cmdline.txt

sed -i 's/console=tty1 //' ${BASE_DIR}/images/rpi-firmware/cmdline.txt

# Remove network for faster boot
if [ -e ${TARGET_DIR}/etc/init.d/S40network ]; then
    rm ${TARGET_DIR}/etc/init.d/S40network
fi
