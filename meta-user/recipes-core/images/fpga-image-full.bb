DESCRIPTION = "Basic image"

require recipes-core/images/petalinux-image-common.inc 

IMAGE_FEATURES += "\
    package-management \
"

COMMON_INSTALL += "\
    wilc \
    wilc3000-fw \
"