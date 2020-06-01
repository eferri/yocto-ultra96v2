DESCRIPTION = "Basic image"

require recipes-core/images/petalinux-image-common.inc 

IMAGE_FEATURES += "\
    package-management \
"

IMAGE_INSTALL += "\
    iw \
    wpa-supplicant \
    wilc \
    wilc3000-fw \
    xrt-dev \
    xrt \
    zocl \
    opencl-headers-dev \
    opencl-clhpp-dev \
"