FILESEXTRAPATHS_append := "${THISDIR}/files:"
SRC_URI =+ "file://zynqmp_pm_cfg_obj_convert.py"
SRC_URI =+ "file://pm_cfg_obj.c"

do_compile[mcdepends] = "multiconfig::pmu:pmu-firmware:do_deploy"

CFLAGS += "-DDEBUG -DCONFIG_LOGLEVEL=8"

CFG_OBJ_BIN="pm_cfg_obj.bin"
CFG_OBJ_PATH="${CFG_OBJ_BIN}"

do_configure_append() {
    ${WORKDIR}/zynqmp_pm_cfg_obj_convert.py ${WORKDIR}/pm_cfg_obj.c ${WORKDIR}/${CFG_OBJ_BIN}
    install -m 0777 ${WORKDIR}/${CFG_OBJ_BIN} ${DEPLOY_DIR_IMAGE}
    echo "CONFIG_ZYNQMP_LOAD_PM_CFG_OBJ_FILE=\"${CFG_OBJ_PATH}\"" >>${B}/.config
}