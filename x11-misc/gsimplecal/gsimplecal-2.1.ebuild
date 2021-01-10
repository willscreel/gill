# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit autotools toolchain-funcs

DESCRIPTION="Gsimplecal is a lightweight calendar applet written in C++ using GTK."
HOMEPAGE="https://github.com/dmedvinsky/gsimplecal"
SRC_URI="https://github.com/dmedvinsky/${PN}/archive/v${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="
		x11-libs/gtk+:3
"
RDEPEND="${DEPEND}"
