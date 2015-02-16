$NetBSD: patch-config_rules.mk,v 1.2 2014/12/01 18:11:14 ryoon Exp $

--- config/rules.mk.orig	2014-11-21 03:37:23.000000000 +0000
+++ config/rules.mk
@@ -779,6 +779,7 @@ endif
 ifdef DTRACE_PROBE_OBJ
 EXTRA_DEPS += $(DTRACE_PROBE_OBJ)
 OBJS += $(DTRACE_PROBE_OBJ)
+EXCLUDED_OBJS += $(DTRACE_PROBE_OBJ)
 endif
 
 $(filter %.$(LIB_SUFFIX),$(LIBRARY)): $(OBJS) $(STATIC_LIBS_DEPS) $(filter %.$(LIB_SUFFIX),$(EXTRA_LIBS)) $(EXTRA_DEPS) $(GLOBAL_DEPS)
@@ -814,7 +815,7 @@ ifdef DTRACE_PROBE_OBJ
 ifndef DTRACE_LIB_DEPENDENT
 NON_DTRACE_OBJS := $(filter-out $(DTRACE_PROBE_OBJ),$(OBJS))
 $(DTRACE_PROBE_OBJ): $(NON_DTRACE_OBJS)
-	dtrace -G -C -s $(MOZILLA_DTRACE_SRC) -o $(DTRACE_PROBE_OBJ) $(NON_DTRACE_OBJS)
+	dtrace -x nolibs -G -C -s $(MOZILLA_DTRACE_SRC) -o $(DTRACE_PROBE_OBJ) $(NON_DTRACE_OBJS)
 endif
 endif
 endif
@@ -832,7 +833,7 @@ ifndef INCREMENTAL_LINKER
 endif
 ifdef DTRACE_LIB_DEPENDENT
 ifndef XP_MACOSX
-	dtrace -G -C -s $(MOZILLA_DTRACE_SRC) -o  $(DTRACE_PROBE_OBJ) $(shell $(EXPAND_LIBS) $(MOZILLA_PROBE_LIBS))
+	dtrace -x nolibs -G -C -s $(MOZILLA_DTRACE_SRC) -o  $(DTRACE_PROBE_OBJ) $(shell $(EXPAND_LIBS) $(MOZILLA_PROBE_LIBS))
 endif
 	$(EXPAND_MKSHLIB) $(SHLIB_LDSTARTFILE) $(OBJS) $(SUB_SHLOBJS) $(DTRACE_PROBE_OBJ) $(MOZILLA_PROBE_LIBS) $(RESFILE) $(LDFLAGS) $(WRAP_LDFLAGS) $(STATIC_LIBS) $(SHARED_LIBS) $(EXTRA_DSO_LDOPTS) $(MOZ_GLUE_LDFLAGS) $(EXTRA_LIBS) $(OS_LIBS) $(SHLIB_LDENDFILE) $(if $(LIB_IS_C_ONLY),,$(STLPORT_LIBS))
 	@$(RM) $(DTRACE_PROBE_OBJ)