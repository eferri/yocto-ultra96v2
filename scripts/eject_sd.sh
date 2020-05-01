#!/usr/bin/env bash
set -eu
source ./scripts/common.sh

echo "Syncing..."
sync

echo "Unmounting..."
sudo umount "$ROOTFS"
sudo umount "$BOOTFS"

echo "Ejecting..."
sudo udisksctl power-off -b /dev/sda

echo "Done!"
exit