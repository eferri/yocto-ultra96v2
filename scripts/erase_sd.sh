#!/usr/bin/env bash
set -eu
source ./scripts/common.sh

echo "Erasing bootfs ..."
sudo rm -f "$BOOTFS/*" "$BOOTFS/.*"

echo "Erasing rootfs ..."
sudo rm -f "$ROOTFS/*" "$ROOTFS/.*"

echo "Syncing ..."
sync

echo "Done!"
