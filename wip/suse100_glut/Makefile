# $NetBSD: Makefile,v 1.6 2008/09/03 09:45:59 obache Exp $

PKGNAME=	suse_glut-${SUSE_VERSION}
CATEGORIES=	emulators

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Linux compatibility package for GLUT

EMUL_MODULES.linux=	x11 glx

# This symlink is managed by ldconfig(8).
#CHECK_FILES_SKIP+=	${EMULDIR}/usr/${LINUX_LIBSUBDIR}/libglide.so.3

.include "../../emulators/suse100_linux/Makefile.common"
.include "../../mk/bsd.pkg.mk"
