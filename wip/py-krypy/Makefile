# $NetBSD$

DISTNAME=	krypy-2.1.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/source/k/krypy/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	 https://github.com/andrenarchy/krypy
COMMENT=	Krylov subspace methods for linear systems
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-scipy>=0.12.1:../../math/py-scipy

USE_LANGUAGES=	# none

PYDISTUTILSPKG=	yes

.include "../../lang/python/extension.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
