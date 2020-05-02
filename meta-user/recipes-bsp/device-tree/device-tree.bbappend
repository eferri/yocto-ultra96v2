FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append ="\
    file://system-user.dtsi \
    file://openamp.dtsi \
"

DT_PADDING_SIZE = "0x1000"
DEVICETREE_FLAGS += ""
YAML_CONSOLE_DEVICE_CONFIG_forcevariable = "psu_uart_1"
YAML_MAIN_MEMORY_CONFIG_forcevariable = "PSU_DDR_0"
YAML_DT_BOARD_FLAGS = "{BOARD avnet-ultra96-rev1}"
