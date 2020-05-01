#!/usr/bin/env bash
set -eu
source ./scripts/common.sh

echo "Erasing boot partitions..."
sudo rm -f "$BOOTFS/*" "$BOOTFS/.*"

echo "Creating BOOT.bin ..."

echo "Writing Boot FS..."
sudo cp "$IMG_PATH"/BOOT.BIN "$BOOTFS"
sudo cp "$IMG_PATH"/image.ub "$BOOTFS"
sudo cp "$IMG_PATH"/system.dtb "$BOOTFS"

echo "Syncing changes..."
sync

echo "Done!"
exit