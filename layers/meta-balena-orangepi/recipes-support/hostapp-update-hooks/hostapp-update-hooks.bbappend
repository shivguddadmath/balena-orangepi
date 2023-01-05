FILESEXTRAPATHS_append := ":${THISDIR}/files"

HOSTAPP_HOOKS += "99-resin-uboot"

HOSTAPP_HOOKS_append_orangepi-4-lts = " \
    99-flash-bootloader \
"
