$NetBSD$

--- setup.py.orig	2015-03-07 18:31:16.000000000 +0000
+++ setup.py
@@ -55,6 +55,4 @@ setup( name = 'lea',
                       'leapp_console',
                       'leapp_translator',
                       'license' ] ,
-       data_files = [('.', [ 'COPYING',
-                             'COPYING.LESSER' ] ) ],
       )
