#!/usr/bin/env bash
set -eu
source ./scripts/common.sh

echo "Erasing root partition ..."
sudo rm -rf "$ROOTFS"/*

echo "Writing Root FS..."
sudo tar -xvf "$IMG_PATH"/fpga-image-full-ultra96v2.tar.gz -C "$ROOTFS"

echo "Syncing changes..."
sync

echo "Done!"
exit