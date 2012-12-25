# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2

DESCRIPTION="A collection of Git extensions."
HOMEPAGE="https://github.com/nvie/gitflow"
SRC_URI="https://github.com/nvie/gitflow/archive/0.4.1.tar.gz"
EGIT_REPO_URI="git://github.com/nvie/gitflow.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-vcs/git"
RDEPEND="${DEPEND}"

src_prepare() {
	git submodule init && git submodule update
}

#src_configure() { }

src_install() {
	emake install prefix=${D}
}
