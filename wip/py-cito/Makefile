# $NetBSD$

DISTNAME=	cito-1.9.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math
MASTER_SITES=	https://pypi.python.org/packages/source/c/cito/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/tunnell/cito
COMMENT=	Generic particle-physics software trigger with flash ADCs
#LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-scipy>=0.12.1:../../math/py-scipy

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
