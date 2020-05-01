#!/usr/bin/env bash
set -eu
source ./scripts/common.sh

echo "Mounting..."
sync
sudo mkdir -p "$BOOTFS" "$ROOTFS" || true
sudo mount "${SDDEV}1" "$BOOTFS" || true
sudo mount "${SDDEV}2" "$ROOTFS" || true

echo "Done!"
exit