SUMMARY = "Recipe for building an external wilc Linux kernel module"
LICENSE = "GPLv3"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-3.0;md5=c79ff39f19dfec6d293b95dea7b07891"

inherit module

SRC_URI =  "git://github.com/linux4wilc/driver.git;protocol=git;branch=master"

SRCREV = "20ab626503feb4850632337b97128f1efd73ba80"

DEPENDS += "virtual/kernel"

S = "${WORKDIR}/git/wilc"

EXTRA_OEMAKE = ' \
		CONFIG_WILC=y \
		WLAN_VENDOR_MCHP=y \
		CONFIG_WILC_SDIO=m \
		CONFIG_WILC_SPI=n \
		CONFIG_WILC1000_HW_OOB_INTR=n \
		KERNEL_SRC="${STAGING_KERNEL_DIR}" \
		O=${STAGING_KERNEL_BUILDDIR} \
'

