# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Conduit bindings for zeromq3-haskell"
HOMEPAGE="https://github.com/NicolasT/zeromq3-conduit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/conduit:=[profile?]
		dev-haskell/lifted-base:=[profile?]
		dev-haskell/monad-control:=[profile?]
		dev-haskell/mtl:=[profile?]
		dev-haskell/resourcet:=[profile?]
		dev-haskell/transformers:=[profile?]
		dev-haskell/zeromq3-haskell:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"