# $NetBSD: Makefile,v 1.39 2015/02/25 15:46:52 mef Exp $

DISTNAME=		avr-libc-1.8.1
PKGREVISION=		1
CATEGORIES=		cross
MASTER_SITES=		http://savannah.nongnu.org/download/avr-libc/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		makoto@ki.nu
HOMEPAGE=		http://savannah.nongnu.org/projects/avr-libc
COMMENT=		C and math library for Atmel AVR 8-bit microcontrollers
LICENSE=		modified-bsd

BUILD_DEPENDS+=		doxygen>=1.8.9.1.nb1:../../devel/doxygen
BUILD_DEPENDS+=		transfig-[0-9]*:../../print/transfig
BUILD_DEPENDS+=		tex-adjustbox-[0-9]*:../../print/tex-adjustbox
BUILD_DEPENDS+=		tex-collectbox-[0-9]*:../../print/tex-collectbox
BUILD_DEPENDS+=		tex-xkeyval-[0-9]*:../../print/tex-xkeyval
BUILD_DEPENDS+=		netpbm-[0-9]*:../../graphics/netpbm

USE_TOOLS+=		gmake perl
GNU_CONFIGURE=		yes
USE_GNU_CONFIGURE_HOST= no

CONFIGURE_ARGS+=	--build=${MACHINE_GNU_PLATFORM:Q}
CONFIGURE_ARGS+=	--host=avr
CONFIGURE_ARGS+=	--enable-doc
CONFIGURE_ARGS+=	--disable-versioned-doc
CONFIGURE_ARGS+=	CC=${PREFIX}/bin/avr-gcc
CONFIGURE_ARGS+=	CPPFLAGS="-I${PREFIX}/include -I${PREFIX}/avr/include"

#   In doc/examples/demo directory, we have sample Makefile both for
#   generating *.hex file at pkg installation time, and for installing
#   Makefile itself.  That Makefile should be for general purpose, meaning
#     OBJCOPY = avr-objcopy
#   line should be intact. While pkg installation time it should refer
#   wrapper ${LOCALBASE}/cross/bin files. See patch-doc_Makefile.in adding
#   related one line.

SUBST_CLASSES+=		demo
SUBST_STAGE.demo=	pre-configure
SUBST_MESSAGE.demo=	Add cross/bin on PATH for OBJCOPY (avr-objcopy) etc
SUBST_FILES.demo=	doc/Makefile.in
SUBST_SED.demo=		-e 's|@@@PATH@@@|${PREFIX}/bin:${PATH:Q}|g'

post-extract:
	${MKDIR} ${WRKSRC}/doc/api/latex_src
	${LN} -s ../../examples/largedemo/largedemo-setup.jpg ${WRKSRC}/doc/api/latex_src
	${LN} -s ../../examples/largedemo/largedemo-wiring.jpg ${WRKSRC}/doc/api/latex_src
	${LN} -s ../../examples/largedemo/largedemo-wiring2.jpg ${WRKSRC}/doc/api/latex_src
	${LN} -s ../../examples/stdiodemo/stdiodemo-setup.jpg ${WRKSRC}/doc/api/latex_src

post-install:
	${INSTALL_DATA} \
		${WRKSRC}/LICENSE \
		${WRKSRC}/AUTHORS \
		${DESTDIR}${PREFIX}/share/doc/avr-libc
	## delete following or similar files, which includes PATH at build time.
	##_usr_pkgsrc_cross_avr-libc_work_avr-libc-1.8.0_libc_string_.3
	${RM} ${DESTDIR}${PREFIX}/share/doc/avr-libc/man/man3/*${PKGVERSION_NOREV}*
.for f in Makefile demo.c demo.bin demo.hex demo.pdf demo.srec
	${INSTALL_DATA} ${WRKSRC}/doc/examples/demo/${f} \
		${DESTDIR}${PREFIX}/share/doc/avr-libc/examples/demo
.endfor

.include "../../cross/avr-binutils/buildlink3.mk"
.include "../../cross/avr-gcc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# Not to be overridden as --mandir=${PREFIX}, put the line here.
CONFIGURE_ARGS+=	--mandir=${PREFIX}/share/doc/avr-libc/man
