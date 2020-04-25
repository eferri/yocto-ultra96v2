# build the "config" object into the PMU binary
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://0001-Load-XPm_ConfigObject-at-boot.patch;striplevel=5"
SRC_URI += "file://0002-Modify-topic-patch-for-2019.2.patch;striplevel=5;apply=n"

# Copy the default pm_cfg_obj.c (makefile uses wildcard and will pick it up automatically
do_configure_append() {
	sed 's!"pm_defs.h"!"../../../sw_services/xilpm/src/zynqmp/client/common/pm_defs.h"!' ../../zynqmp_fsbl/misc/pm_cfg_obj.c > pm_cfg_obj.c
	quilt import -p 5 ${WORKDIR}/0002-Modify-topic-patch-for-2019.2.patch
	quilt push
}

ULTRA96_VERSION = "2"
YAML_COMPILER_FLAGS_append_ultra96-zynqmp = "-DENABLE_MOD_ULTRA96 -DENABLE_SCHEDULER"
YAML_COMPILER_FLAGS_append_ultra96-zynqmp = "${@bb.utils.contains('ULTRA96_VERSION', '2', ' -DULTRA96_VERSION=2', ' -DULTRA96_VERSION=1', d)}"

YAML_SERIAL_CONSOLE_STDOUT_forcevariable = "psu_uart_1"
YAML_SERIAL_CONSOLE_STDIN_forcevariable = "psu_uart_1"
