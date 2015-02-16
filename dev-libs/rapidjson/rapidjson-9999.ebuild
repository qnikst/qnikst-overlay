# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2

DESCRIPTION="A fast JSON parser/generator for C++ with both SAX/DOM style API"
HOMEPAGE="https://github.com/miloyip/rapidjson"
SRC_URI=""
EGIT_REPO_URI="https://github.com/miloyip/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""

src_install() {
 mkdir -p "${D}/usr/include/"
 cp -r include/rapidjson "${D}/usr/include/"
}
