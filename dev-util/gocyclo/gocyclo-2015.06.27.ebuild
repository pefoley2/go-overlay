# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

GOLANG_PKG_IMPORTPATH="github.com/fzipp"
GOLANG_PKG_VERSION="6acd4345c835499920e8426c7e4e8d7a34f1bb83"
GOLANG_PKG_HAVE_TEST=1

inherit golang-single

DESCRIPTION="Calculate cyclomatic complexities of functions in Go source code"
HOMEPAGE="https://${GOLANG_PKG_IMPORTPATH}/${PN}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
