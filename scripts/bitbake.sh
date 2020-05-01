#!/usr/bin/env bash

source "${PETALINUX}"/components/yocto/source/aarch64/environment-setup-aarch64-xilinx-linux
source "${PETALINUX}"/components/yocto/source/aarch64/layers/core/oe-init-build-env
export PATH="${PETALINUX}"/tools/hsm/bin:${PATH}
export BB_ENV_EXTRAWHITE="$BB_ENV_EXTRAWHITE PETALINUX"
bash