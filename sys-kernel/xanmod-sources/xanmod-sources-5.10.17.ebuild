# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
ETYPE="sources"
K_WANT_GENPATCHES="base extras"
K_GENPATCHES_VER="1"
K_SECURITY_UNSUPPORTED="1"
K_NOSETEXTRAVERSION="1"

inherit kernel-2
detect_version

KEYWORDS="~amd64"
HOMEPAGE="https://xanmod.org"
IUSE=""

DESCRIPTION="The XanMod Kernel Sources"

XANMOD_URI="https://github.com/xanmod/linux/releases/download/"
SRC_URI="${KERNEL_URI} ${GENPATCHES_URI}
		${XANMOD_URI}/${OKV}-xanmod1/patch-${OKV}-xanmod1.xz"

UNIPATCH_LIST="${DISTDIR}/patch-${OKV}-xanmod1.xz"
UNIPATCH_STRICTORDER="yes"

pkg_setup() {
	kernel-2_pkg_setup
}

pkg_postrm() {
	kernel-2_pkg_postrm
}
