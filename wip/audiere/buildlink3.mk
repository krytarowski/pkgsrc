# $NetBSD$

BUILDLINK_TREE+=	audiere

.if !defined(AUDIERE_BUILDLINK3_MK)
AUDIERE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.audiere+=	audiere>=1.9.4
BUILDLINK_PKGSRCDIR.audiere?=	../../wip/audiere

.endif	# AUDIERE_BUILDLINK3_MK

BUILDLINK_TREE+=	-audiere