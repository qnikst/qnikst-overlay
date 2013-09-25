# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit toolchain-funcs

DESCRIPTION="graph plotting library"
HOMEPAGE="http://www.stingergraph.com/"
SRC_URI="http://www.stingergraph.com/data/uploads/${PN}-r${PV}.tar.gz"

LICENSE="BSD3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"/${PN}-r${PV}

#src_prepare() { 
#	sed -e 's#include make\.inc##' \
#		-i 'Makefile'
#}

src_compile() {
#	emake CC="$(tc-getCC) -std=gnu9x" \
#		CFLAGS="${CFLAGS}" \
#		LDLIBS=-lm
	ln -s make.inc-gcc-openmp make.inc
	emake
}

