# $NetBSD: Makefile,v 1.130 2015/03/09 18:47:18 tron Exp $

DISTNAME=	wireshark-1.10.13
CATEGORIES=	net
MASTER_SITES=	https://www.wireshark.org/download/src/
EXTRACT_SUFX=	.tar.bz2

OWNER=		tron@NetBSD.org
HOMEPAGE=	http://www.wireshark.org/
COMMENT=	Network protocol analyzer
LICENSE=	gnu-gpl-v2

CONFLICTS+=		ethereal-[0-9]*

USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake perl pkg-config yacc lex

USE_LIBTOOL=		yes
SHLIBTOOL_OVERRIDE=	# empty
CHECK_PORTABILITY_SKIP+=packaging/macosx/*/*

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-static=no
CONFIGURE_ARGS+=	--enable-threads
CONFIGURE_ARGS+=	--with-ssl=${SSLBASE:Q}
CONFIGURE_ARGS+=	--with-pcap=${BUILDLINK_PREFIX.libpcap}
CONFIGURE_ARGS+=	--with-zlib=${BUILDLINK_PREFIX.zlib}
CONFIGURE_ARGS+=	--with-pcre=${BUILDLINK_PREFIX.pcre}
CONFIGURE_ENV+=		ac_cv_path_YACCDUMMY=${TOOLS_PATH.yacc}
CONFIGURE_ENV+=		ac_cv_path_LEXDUMMY=${TOOLS_PATH.lex}

PTHREAD_OPTS+=		require

PYTHON_FOR_BUILD_ONLY=	yes
PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # not yet ported as of 1.10.5
REPLACE_PYTHON+=	help/faq.py
REPLACE_PYTHON+=	tools/asn2deb
REPLACE_PYTHON+=	tools/asn2wrs.py
REPLACE_PYTHON+=	tools/dfilter-test.py
REPLACE_PYTHON+=	tools/ftsanity.py
REPLACE_PYTHON+=	tools/html2text.py
REPLACE_PYTHON+=	tools/idl2deb
REPLACE_PYTHON+=	tools/indexcap.py
REPLACE_PYTHON+=	tools/make-dissector-reg.py
REPLACE_PYTHON+=	tools/make-tap-reg.py
REPLACE_PYTHON+=	tools/msnchat
REPLACE_PYTHON+=	tools/ncp2222.py
REPLACE_PYTHON+=	tools/netscreen2dump.py
REPLACE_PYTHON+=	tools/pkt-from-core.py
REPLACE_PYTHON+=	tools/rdps.py

.include "../../mk/bsd.prefs.mk"
.include "options.mk"

.if !empty(MACHINE_PLATFORM:MDarwin-[567].*-*)
USE_BUILTIN.libpcap=	no
.endif

# wireshark no longer builds with NetBSD 3.x provided zlib
BUILDLINK_API_DEPENDS.zlib=zlib>=1.2.1

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../net/libpcap/buildlink3.mk"
.include "../../devel/libsmi/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../security/gnutls/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"

.include "../../lang/python/application.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
