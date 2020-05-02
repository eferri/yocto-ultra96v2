#!/usr/bin/env bash
set -eu
source ./scripts/common.sh

echo "Syncing..."
sync

echo "Unmounting..."
sudo umount "$ROOTFS" || true
sudo umount "$BOOTFS" || true

echo "Ejecting..."
sudo udisksctl power-off -b /dev/sda || true

echo "Done!"
exit