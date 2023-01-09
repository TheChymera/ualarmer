# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Minimalistic alarm clock for the command line."
HOMEPAGE="https://github.com/TheChymera/ualarmer/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

RDEPEND="
	app-misc/utimer
	media-video/mpv
	x11-themes/sound-theme-freedesktop
"

src_unpack() {
	cp -r -L "$DOTGENTOO_PACKAGE_ROOT" "$S"
}

src_install() {
	newbin bin/ualarmer.sh ualarmer
	einstalldocs
}
