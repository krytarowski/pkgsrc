# $NetBSD$

DISTNAME=	blessings-1.6
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	https://pypi.python.org/packages/source/b/blessings/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	https://github.com/erikrose/blessings
COMMENT=	Practical wrapper around terminal coloring, styling
LICENSE=	mit

USE_LANGUAGES=	# none

do-test:
	${RUN} cd ${WRKSRC}; ${SETENV} ${TEST_ENV} ${PYTHONBIN} test.py

DEPENDS+=	${PYPKGPREFIX}-multiprocessing>=2.6.2.1:../../devel/py-multiprocessing
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
