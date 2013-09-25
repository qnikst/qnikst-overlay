# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit autotools eutils git-2

MY_P=${P/_beta/b}
DESCRIPTION="open-source communication interface that aims to provide a simple and portable API"
HOMEPAGE="http://cci-forum.com/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/CCI/cci.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="debug"

DEPEND="dev-lang/perl"
RDEPEND="${DEPEND}"

S="${WORKDIR}"/${MY_P}

#src_prepare() {
#	epatch "${FILESDIR}"/cci-0.1_beta4-accept.patch
#}

src_configure() {
	./autogen.pl
	econf \
		$(use_enable debug cci-debug)
}
