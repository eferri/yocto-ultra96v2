#!/usr/bin/env bash
set -eu
source ./scripts/common.sh

echo "Erasing boot partition ..."
sudo rm -rf "$BOOTFS"/*

echo "Erasing root partition ..."
sudo rm -rf "$ROOTFS"/*

echo "Syncing ..."
sync

echo "Done!"
