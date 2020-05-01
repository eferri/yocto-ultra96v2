#!/usr/bin/env bash
set -eu

DIR="$(git rev-parse --show-toplevel)"
SDDEV="/dev/sda"
BOOTFS="$DIR/images/mount/boot"
ROOTFS="$DIR/images/mount/rootfs"
IMG_PATH="$DIR/build/tmp/deploy/linux"
