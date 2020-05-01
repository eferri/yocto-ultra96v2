#!/usr/bin/env bash
set -eu
source ./scripts/common.sh

echo "Erasing rootfs ..."
sudo rm -f "$ROOTFS/*" "$ROOTFS/.*"

echo "Writing Root FS..."
sudo tar -xvf "$IMG_PATH"/rootfs.tar.gz -C "$ROOTFS"

echo "Syncing changes..."
sync

echo "Done!"
exit