# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

GOLANG_PKG_IMPORTPATH="github.com/${PN//-cli}"
GOLANG_PKG_VERSION="9594d39b82743a3a59dcf4fcefa3aba8a3ae8296"
GOLANG_PKG_HAVE_TEST=1

inherit golang-single

DESCRIPTION="SyncThing command-line interface"
HOMEPAGE="http://syncthing.net"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86 arm"
