# $NetBSD: Makefile,v 1.13 2015/03/15 19:57:40 hiramatsu Exp $

DISTNAME=	pkg-config-1.1.6
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_RUBYGEMS}
EXTRACT_SUFX=	.gem

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://github.com/ruby-gnome2/pkg-config
COMMENT=	Pure Ruby implementation of pkg-config
LICENSE=	gnu-lgpl-v2.1

CONFLICTS+=	${RUBY_PKGPREFIX}-gnome2-glib<0.90.0

USE_RUBY_SETUP=		yes
USE_RUBY_SETUP_PKG=	yes

CONFIGURE_ARGS+=	--siteruby=${PREFIX}/${RUBY_VENDORLIB_BASE} \
			--siterubyver=${PREFIX}/${RUBY_VENDORLIB} \
			--siterubyverarch=${PREFIX}/${RUBY_VENDORARCHLIB}

#do-test:
#		cd ${WRKSRC} && ${SETENV} ${TEST_ENV} ${RUBY} test/run-test.rb

.include "../../lang/ruby/modules.mk"
.include "../../mk/bsd.pkg.mk"
