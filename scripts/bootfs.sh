#!/usr/bin/env bash
set -eu
source ./scripts/common.sh

echo "Erasing boot partition ..."
sudo rm -rf "$BOOTFS"/*

echo "Writing Boot FS..."
sudo cp "$IMG_PATH"/boot.bin "$BOOTFS"
sudo cp "$IMG_PATH"/Image "$BOOTFS"
sudo cp "$IMG_PATH"/system.dtb "$BOOTFS"
sudo cp "$IMG_PATH"/boot.scr "$BOOTFS"

echo "Syncing changes..."
sync

echo "Done!"
exit