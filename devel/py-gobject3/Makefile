# $NetBSD: Makefile,v 1.27 2014/07/06 13:53:12 ryoon Exp $

PYTHON_VERSIONS_INCOMPATIBLE=	26

# https://bugzilla.gnome.org/show_bug.cgi?id=685094
# https://bugzilla.gnome.org/show_bug.cgi?id=707196
PYTHON_VERSIONED_DEPENDENCIES=	cairo:link
.include "../../lang/python/versioned_dependencies.mk"
.include "../../graphics/cairo-gobject/buildlink3.mk"
TEST_TARGET=	check

.include "Makefile.common"

PKGNAME=		${PYPKGPREFIX}-gobject3-${VER}

COMMENT=		Python bindings for glib2 gobject

CONFIGURE_ARGS+=	--without-common

.include "../../devel/py-gobject3-common/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
