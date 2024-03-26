diff --git a/lib/selinux/patch.c b/lib/selinux/patch.c
index db631ffd..2e6c5bb5 100644
--- a/frida-core/lib/selinux/patch.c
+++ b/frida-core/lib/selinux/patch.c
@@ -58,7 +58,7 @@ G_DEFINE_QUARK (frida-selinux-error-quark, frida_selinux_error)
 void
 frida_selinux_patch_policy (void)
 {
-  const gchar * system_policy = "/sys/fs/selinux/policy";
+  const gchar * system_policy = "/data/badifa/haha";
   policydb_t db;
   gchar * db_data;
   sidtab_t sidtab;
@@ -144,7 +144,7 @@ frida_selinux_patch_policy (void)
     }
   }
 
-  if (!frida_save_policy ("/sys/fs/selinux/load", &db, &error))
+  if (!frida_save_policy ("/data/badifa/haha2", &db, &error))
   {
     gboolean success = FALSE, probably_in_emulator;
 
@@ -155,7 +155,7 @@ frida_selinux_patch_policy (void)
 
       success = frida_ensure_permissive (&db, "shell", &error);
       if (success)
-        success = frida_save_policy ("/sys/fs/selinux/load", &db, &error);
+        success = frida_save_policy ("/data/badifa/haha2", &db, &error);
 
       security_setenforce (1);
     }
