# $NetBSD$

BUILDLINK_TREE+=	py-fiat

.if !defined(PY_FIAT_BUILDLINK3_MK)
PY_FIAT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py-fiat+=	${PYPKGPREFIX}-fiat>=1.0.0
BUILDLINK_PKGSRCDIR.py-fiat?=	../../wip/py-fiat
.endif	# PY_FIAT_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-fiat