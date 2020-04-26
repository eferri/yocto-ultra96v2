#!/usr/bin/env bash
set -eu
DIR="$(git rev-parse --show-toplevel)"

SDDEV="/dev/sda"

IMG_PATH="$DIR/build/tmp/deploy/images/ultra96v2"
PMU_PATH="$DIR/build/pmutmp/deploy/images/zynqmp-pmu"
PRE_BUILT="$DIR/pre-built"
BOOTFS="$DIR/build/mount/boot"
ROOTFS="$DIR/build/mount/rootfs"

echo "Erasing partitions..."
sudo rm -f "$BOOTFS/*" "$BOOTFS/.*" "$ROOTFS/*" "$ROOTFS/.*"

# echo "Building image"
# cp "$PMU_PATH"/pmu-firmware-zynqmp-pmu.elf "$PRE_BUILT"/pmufw.elf
# cp "$IMG_PATH"/arm-trusted-firmware.elf "$PRE_BUILT"/bl31.elf
# cp "$IMG_PATH"/u-boot.elf "$PRE_BUILT"/

# (
#     cd "$PRE_BUILT"
#     bootgen -arch zynqmp -image ./build_boot.bif -o i ./boot.bin -w on
#     cp ./boot.bin "$IMG_PATH"/
# )

echo "Writing Boot FS..."
sudo cp "$IMG_PATH"/boot.bin "$BOOTFS/"
sudo cp "$IMG_PATH"/u-boot.bin "$BOOTFS/"
sudo cp "$IMG_PATH"/atf-uboot.ub "$BOOTFS/"
sudo cp "$IMG_PATH"/Image "$BOOTFS/"
sudo cp "$IMG_PATH"/zynqmp-zcu100-revC.dtb "$BOOTFS/"
sudo cp "$IMG_PATH"/uEnv.txt "$BOOTFS/"

echo "Writing Root FS..."
sudo tar x -C "$ROOTFS" -f "$IMG_PATH/core-image-minimal-ultra96v2.tar.gz"

echo "Syncing changes..."
sync

echo "Done!"
exit