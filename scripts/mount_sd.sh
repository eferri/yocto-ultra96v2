#!/usr/bin/env bash
set -eu
DIR="$(git rev-parse --show-toplevel)"

SDDEV="/dev/sda"

IMG_PATH="$DIR/build/tmp/deploy/images/ultra96v2"
PMU_PATH="$DIR/build/pmutmp/deploy/images/zynqmp-pmu"
PRE_BUILT="$DIR/pre-built"
BOOTFS="$DIR/build/mount/boot"
ROOTFS="$DIR/build/mount/rootfs"

echo "Mounting..."
sync
sudo mkdir -p $BOOTFS $ROOTFS || true
sudo mount "${SDDEV}1" "$BOOTFS" || true
sudo mount "${SDDEV}2" "$ROOTFS" || true

echo "Done!"
exit