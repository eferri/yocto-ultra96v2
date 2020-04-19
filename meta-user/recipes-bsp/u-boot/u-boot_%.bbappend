FILESEXTRAPATHS_append := "${THISDIR}/files:"

CFG_OBJ_BIN="pm_cfg_obj.bin"

do_configure_append() {
    ./zynqmp_pm_cfg_obj_conver.py pm_cfg_obj.c ${CFG_OBJ_BIN}
    echo "CONFIG_ZYNQMP_LOAD_PM_CFG_OBJ_FILE=\"${CFG_OBJ_BIN}\"" >>${B}/.config
}