$NetBSD: patch-contrib_daemonchk.c,v 1.1 2014/04/02 10:22:37 he Exp $

Fix off-by-one vulnerabilities, ref. http://secunia.com/advisories/55976/

--- contrib/daemonchk.c.orig	2011-08-17 07:36:27.000000000 +0000
+++ contrib/daemonchk.c
@@ -174,7 +174,6 @@ static int process_cgivars(void) {
 
 		/* do some basic length checking on the variable identifier to prevent buffer overflows */
 		if(strlen(variables[x]) >= MAX_INPUT_BUFFER - 1) {
-			x++;
 			continue;
 			}
 		}
