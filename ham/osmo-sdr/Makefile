# $NetBSD: Makefile,v 1.2 2014/10/15 15:14:36 mef Exp $

DISTNAME=		osmo-sdr-0.1
CATEGORIES=		ham
MASTER_SITES+=		http://cgit.osmocom.org/osmo-sdr/snapshot/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://sdr.osmocom.org/trac/
COMMENT=		Small form-factor inexpensive SDR (Software Defined Radio)
LICENSE=		gnu-gpl-v2

USE_LANGUAGES=		c c++
USE_TOOLS=		cmake perl pkg-config tar
USE_CMAKE=		yes

#WRKSRC=		${WRKDIR}/osmo-sdr-0.1
# Suppress warning for developer
CMAKE_ARGS+=		-Wno-dev

REPLACE_PERL+=		utils/e4000_distance.pl
REPLACE_PERL+=		utils/e4000_pl.pl

CONFIGURE_DIRS=		software/libosmosdr
AUTO_MKDIRS=		yes

post-install:
	(cd ${WRKSRC}; tar cf - firmware fpga hardware utils | \
	(cd ${DESTDIR}${PREFIX}/share/osmo-sdr ; tar xf - ) )

.include	"../../devel/libusb1/buildlink3.mk"
.include	"../../mk/bsd.pkg.mk"
