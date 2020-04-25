#!/usr/bin/env bash
set -eu
DIR="$(git rev-parse --show-toplevel)"

SDDEV="/dev/sda"

IMG_PATH="$DIR/build/tmp/deploy/images/ultra96v2"
PMU_PATH="$DIR/build/pmutmp/deploy/images/zynqmp-pmu"
PRE_BUILT="$DIR/pre-built"
BOOTFS="$DIR/build/mount/boot"
ROOTFS="$DIR/build/mount/rootfs"

echo "Syncing..."
sync

echo "Unmounting..."
sudo umount "$ROOTFS"
sudo umount "$BOOTFS"

echo "Ejecting..."
sudo udisksctl power-off -b /dev/sda

echo "Done!"
exit