# $NetBSD$
#

DISTNAME=	News-Newsrc-1.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	news perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=News/}

MAINTAINER=	imil@gcu.info
HOMEPAGE=	http://search.cpan.org/dist/News-Newsrc/
COMMENT=	Perl module to manage newsrc files

DEPENDS+=	p5-Set-IntSpan>=1.07:../../devel/p5-Set-IntSpan

PKG_DESTDIR_SUPPORT=	none

PERL5_PACKLIST=	auto/News/Newsrc/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
