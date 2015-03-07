# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Atomatic theorem prover for satisfiability modulo theories (SMT)"
HOMEPAGE="http://cvc4.cs.nyu.edu/web/"
SRC_URI="http://cvc4.cs.nyu.edu/builds/src/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="sys-devel/gcc
	    sys-devel/automake
		app-shells/bash
		dev-libs/gmp
		dev-libs/antlr-c
		dev-libs/boost"
RDEPEND="${DEPEND}"

