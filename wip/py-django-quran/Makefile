# $NetBSD$

DISTNAME=	django-quran-0.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	www
MASTER_SITES=	http://pypi.python.org/packages/source/d/django-quran/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://github.com/idris/django-quran
COMMENT=	Quranic models and helpers for use in Django projects
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-django-[0-9]*:../../www/py-django

PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # not yet ported as of 0.1

USE_LANGUAGES=	# none

TEST_ENV+=	PYTHONPATH=${WRKSRC}/quran
do-test:
	${SETENV} ${TEST_ENV} ${PYTHONBIN} tests.py

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
