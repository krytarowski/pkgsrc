# $NetBSD$
#

DISTNAME=	ukncbtl-0.0.1
CATEGORIES=	emulators
MASTER_SITES=	http://ukncbtl.googlecode.com/files/

MAINTAINER=	shattered@NetBSD.org
HOMEPAGE=	http://code.google.com/p/ukncbtl/
COMMENT=	Emulator of 'UKNC', a Soviet school computer
LICENSE=	gnu-lgpl-v3

NO_CHECKSUM=	yes
SVN_REPOSITORIES=	ukncbtl-read-only
SVN_ROOT.ukncbtl-read-only=	http://ukncbtl.googlecode.com/svn/trunk/

WRKSRC=		${WRKDIR}/ukncbtl-read-only/src/UKNCBTL.Qt

USE_LANGUAGES=	c++
INSTALLATION_DIRS+=	bin share/ukncbtl

do-configure:
	cd ${WRKSRC} && ${SETENV} QTDIR=${QTDIR} ${QTDIR}/bin/qmake \
		QtUkncBtl.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/QtUkncBtl ${DESTDIR}${PREFIX}/bin
	(cd ${WRKDIR}/ukncbtl-read-only/lib/roms && for m in *.bin; do \
		${INSTALL_DATA} "$$m" ${DESTDIR}${PREFIX}/share/ukncbtl; done)

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../wip/mk/svn-package.mk"
.include "../../mk/bsd.pkg.mk"
