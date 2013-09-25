# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit autotools eutils

MY_P=${P/_beta/b}
DESCRIPTION="open-source communication interface that aims to provide a simple and portable API"
HOMEPAGE="http://cci-forum.com/"
SRC_URI="http://cci-forum.com/wp-content/uploads/2013/08/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"/${MY_P}

src_prepare() {
	epatch "${FILESDIR}"/${P}-2030850d.patch
	epatch "${FILESDIR}"/${P}-accept.patch
}
