# Enable U-Boot boot-count support for recovery boot handling.
# Store the boot counter in the persistent U-Boot environment.

do_configure:append() {
    echo "CONFIG_BOOTCOUNT_LIMIT=y" >> ${B}/.config
    echo "CONFIG_BOOTCOUNT_ENV=y" >> ${B}/.config
    echo "# CONFIG_BOOTCOUNT_GENERIC is not set" >> ${B}/.config
    oe_runmake -C ${S} O=${B} olddefconfig
}
