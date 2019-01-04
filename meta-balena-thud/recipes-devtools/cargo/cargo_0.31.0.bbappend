FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://Cargo.lock"

# Use a fixed Cargo lock file to make sure the needed cargos compile for this version
cargo_common_do_configure_append() {
    cp ${WORKDIR}/Cargo.lock ${S}
}
