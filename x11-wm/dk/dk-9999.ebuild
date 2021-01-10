# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3 toolchain-funcs

DESCRIPTION="A list based tiling window manager in the vein of dwm, bspwm, and xmonad."
HOMEPAGE="https://bitbucket.org/natemaia/dk"
EGIT_REPO_URI="https://bitbucket.org/natemaia/dk.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
		x11-base/xcb-proto
		x11-libs/xcb-util
		x11-libs/xcb-util-cursor
		x11-libs/xcb-util-keysyms
		x11-libs/xcb-util-wm
"
RDEPEND="
		${DEPEND}
		x11-misc/sxhkd
"

src_prepare() {
		eapply "${FILESDIR}/${PF}-doc-whitelist.patch"
}

src_compile() {
		emake CC="$(tc-getCC)"
}

src_install() {
		emake DESTDIR="${D}" PREFIX=/usr DOC="/usr/share/doc/${PF}" install
}
