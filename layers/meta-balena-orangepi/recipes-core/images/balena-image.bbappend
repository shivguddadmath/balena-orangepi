include balena-image.inc

BALENA_BOOT_PARTITION_FILES_append_orangepi-4-lts = " \
    extlinux/extlinux.conf:/extlinux/extlinux.conf \
    idbloader.bin:/ \
    u-boot.img:/ \
    trust.img:/ \
"
