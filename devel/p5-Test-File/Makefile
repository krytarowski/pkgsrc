# $NetBSD: Makefile,v 1.6 2015/01/28 02:16:31 mef Exp $
#

DISTNAME=		Test-File-1.41
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Test-File/
COMMENT=		Test file attributes
LICENSE=		${PERL5_LICENSE}

PERL5_PACKLIST=		auto/Test/File/.packlist

BUILD_DEPENDS+=		p5-Test-utf8>=0:../../devel/p5-Test-utf8

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
