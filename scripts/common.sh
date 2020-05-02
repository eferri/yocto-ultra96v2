#!/usr/bin/env bash
set -eu

DIR="$(git rev-parse --show-toplevel)"
SDDEV="/dev/sda"
BOOTFS="$DIR/mount/boot"
ROOTFS="$DIR/mount/rootfs"
IMG_PATH="$DIR/build/tmp/deploy/images/ultra96v2"
