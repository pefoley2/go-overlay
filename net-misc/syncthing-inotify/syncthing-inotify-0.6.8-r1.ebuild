# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

GOLANG_PKG_IMPORTPATH="github.com/${PN//-inotify}"
GOLANG_PKG_ARCHIVEPREFIX="v"
GOLANG_PKG_LDFLAGS="-X main.Version=v${PV}"
GOLANG_PKG_HAVE_TEST=1

GOLANG_PKG_DEPENDENCIES=(
	"github.com/cenkalti/backoff:4dc77674ac"
	"github.com/zillode/notify:f06b1e3b79"
)

inherit systemd golang-single

DESCRIPTION="File watcher intended for use with Syncthing"
HOMEPAGE="http://syncthing.net"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="amd64 x86 arm"

src_install() {
	# Install the package
	golang-single_src_install

	# Install systemd services
	systemd_dounit "${S}"/etc/linux-systemd/system/${PN}@.service
	systemd_douserunit "${S}"/etc/linux-systemd/user/${PN}.service

	# Install OpenRC init.d file. Note that we use OpenRC's
	# multiplexed configuration file feature for syncthing.inotify,
	# which means that syncthing inotify uses the configuration file
	# from syncthing.
	newinitd "${FILESDIR}/${PN}.initd" syncthing.inotify
}
