# $NetBSD: Makefile,v 1.26 2014/09/11 07:22:46 dholland Exp $

DISTNAME=		edb-1.0.5
CATEGORIES=		databases
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=enlightenment/}
PKGREVISION=		2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.enlightenment.org/Libraries/Edb/
COMMENT=		Database abstraction layer to Berkeley databases

GNU_CONFIGURE=		YES
USE_LIBTOOL=		YES
USE_LANGUAGES=		c c++
USE_NCURSES=		YES # putwin
PKGCONFIG_OVERRIDE=	edb.pc.in

CONFIGURE_ARGS+=	--enable-cxx --disable-gtk

.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
