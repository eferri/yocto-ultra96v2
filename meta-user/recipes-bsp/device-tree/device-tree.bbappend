FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# Petalinux autoconfig creates this file and the given device tree expects it, so provide it here
SRC_URI_append_ultra96v2 = "file://system-conf.dtsi"
