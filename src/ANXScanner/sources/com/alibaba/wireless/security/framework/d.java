package com.alibaba.wireless.security.framework;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import com.ali.auth.third.core.model.SystemMessageConstants;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.wireless.security.SecExceptionCode;
import com.alibaba.wireless.security.framework.utils.UserTrackMethodJniBridge;
import com.alibaba.wireless.security.framework.utils.c;
import com.alibaba.wireless.security.framework.utils.f;
import com.alibaba.wireless.security.open.SecException;
import com.alibaba.wireless.security.open.initialize.ISecurityGuardPlugin;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import mtopsdk.common.util.SymbolExpUtil;
import org.json.JSONException;
import org.json.JSONObject;

public class d implements ISGPluginManager {
    private static String[] n = new String[]{"armeabi", "armeabi-v7a", "x86", "arm64-v8a", "x86_64"};
    private static String o = null;
    private static volatile boolean p = true;
    HashMap<Class, Object> a = new HashMap();
    c b = null;
    private Context c;
    private final HashMap<String, c> d = new HashMap();
    private IRouterComponent e = null;
    private boolean f = true;
    private String g = null;
    private String h = null;
    private b i = null;
    private boolean j = false;
    private File k = null;
    private File l = null;
    private File m = null;

    private static class a {
        File a;
        File b;
        File c;
        boolean d;

        public a(File file, File file2, File file3, boolean z) {
            this.a = file;
            this.b = file2;
            this.c = file3;
            this.d = z;
        }
    }

    private int a(String str, String str2) {
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        int length = split.length < split2.length ? split.length : split2.length;
        for (int i = 0; i < length; i++) {
            int parseInt = Integer.parseInt(split[i]);
            int parseInt2 = Integer.parseInt(split2[i]);
            if (parseInt > parseInt2) {
                return 1;
            }
            if (parseInt < parseInt2) {
                return -1;
            }
        }
        return 0;
    }

    private PackageInfo a(String str, a aVar, String str2) throws SecException {
        PackageInfo packageArchiveInfo;
        try {
            packageArchiveInfo = this.c.getPackageManager().getPackageArchiveInfo(aVar.a.getAbsolutePath(), 133);
        } catch (Throwable th) {
            a(100043, 199, "getPackageArchiveInfo failed", "" + th, c(aVar.a.getAbsolutePath() + ""), aVar.c != null ? c(aVar.c.getAbsolutePath()) : "", str2);
            if (aVar.a.exists() && !b(aVar.a)) {
                aVar.a.delete();
            }
            packageArchiveInfo = null;
        }
        if (packageArchiveInfo != null) {
            return packageArchiveInfo;
        }
        a(100043, 199, "packageInfo == null", str + "[" + str2 + "]", c(aVar.a.getAbsolutePath()), aVar.c != null ? c(aVar.c.getAbsolutePath()) : "", c());
        throw new SecException(199);
    }

    /* JADX WARNING: Removed duplicated region for block: B:135:0x0563 A:{Splitter: B:86:0x046d, Catch:{ InstantiationException -> 0x0553, IllegalAccessException -> 0x069c, SecException -> 0x0563, all -> 0x0634, SecException -> 0x0274, all -> 0x014b }, ExcHandler: com.alibaba.wireless.security.open.SecException (r4_143 'e' com.alibaba.wireless.security.open.SecException)} */
    /* JADX WARNING: Missing block: B:135:0x0563, code:
            r4 = move-exception;
     */
    /* JADX WARNING: Missing block: B:136:0x0564, code:
            r12 = r4;
            r13 = new java.io.File(r11 + java.io.File.separator + r9);
     */
    /* JADX WARNING: Missing block: B:137:0x0587, code:
            if (r12.getErrorCode() == 103) goto L_0x0589;
     */
    /* JADX WARNING: Missing block: B:138:0x0589, code:
            r7 = "";
            r8 = r12.toString();
     */
    /* JADX WARNING: Missing block: B:139:0x0598, code:
            if (r31.length() == 0) goto L_0x059a;
     */
    /* JADX WARNING: Missing block: B:140:0x059a, code:
            r9 = r24;
     */
    /* JADX WARNING: Missing block: B:142:0x05a0, code:
            if (r29.c != null) goto L_0x05a2;
     */
    /* JADX WARNING: Missing block: B:143:0x05a2, code:
            r10 = "src:" + c(r29.c.getAbsolutePath());
     */
    /* JADX WARNING: Missing block: B:144:0x05c3, code:
            a(100043, 103, r7, r8, r9, r10, c(r13.getAbsolutePath()));
     */
    /* JADX WARNING: Missing block: B:147:0x05d6, code:
            if (r29.d == false) goto L_0x05d8;
     */
    /* JADX WARNING: Missing block: B:148:0x05d8, code:
            r27.b.a();
     */
    /* JADX WARNING: Missing block: B:150:0x05e3, code:
            if (r13.exists() != false) goto L_0x05e5;
     */
    /* JADX WARNING: Missing block: B:151:0x05e5, code:
            r13.delete();
     */
    /* JADX WARNING: Missing block: B:154:0x05ec, code:
            if (r29.d == false) goto L_0x05ee;
     */
    /* JADX WARNING: Missing block: B:155:0x05ee, code:
            r27.b.b();
     */
    /* JADX WARNING: Missing block: B:156:0x05f5, code:
            throw r12;
     */
    /* JADX WARNING: Missing block: B:157:0x05f6, code:
            r9 = r31 + "->" + r24;
     */
    /* JADX WARNING: Missing block: B:158:0x0612, code:
            r10 = "zipfile:" + c(r29.a.getAbsolutePath());
     */
    /* JADX WARNING: Missing block: B:164:0x0643, code:
            a(100043, 199, "native exception occurred", r12.toString(), "soName=" + r9 + ", authCode=" + r27.h + ", errorCode=" + r12.getErrorCode(), c(r29.a.getAbsolutePath()), c(r13.getAbsolutePath()));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private c a(String str, a aVar, Context context, String str2) throws SecException {
        Throwable e;
        String absolutePath = aVar.a.getAbsolutePath();
        String absolutePath2 = aVar.b.getAbsolutePath();
        String str3 = null;
        String str4 = null;
        Boolean valueOf = Boolean.valueOf(false);
        String str5 = null;
        Boolean valueOf2 = Boolean.valueOf(false);
        a aVar2 = new a(absolutePath2 + File.separator + str + "pkgInfo.config");
        String str6;
        String str7;
        c cVar;
        try {
            Boolean bool;
            String str8;
            Boolean valueOf3;
            Object obj;
            if (aVar2.a()) {
                try {
                    JSONObject b = aVar2.b();
                    str3 = b.getString("version");
                    str4 = b.getString("dependencies");
                    valueOf = Boolean.valueOf(Boolean.parseBoolean(b.getString("hasso")));
                    str5 = b.getString("pluginclass");
                    str6 = str4;
                    bool = valueOf;
                    str8 = str5;
                    valueOf3 = Boolean.valueOf(b.getBoolean("thirdpartyso"));
                    obj = 1;
                } catch (JSONException e2) {
                    str6 = str4;
                    bool = valueOf;
                    str8 = str5;
                    valueOf3 = valueOf2;
                    obj = null;
                } catch (Exception e3) {
                    str6 = str4;
                    bool = valueOf;
                    str8 = str5;
                    valueOf3 = valueOf2;
                    obj = null;
                }
            } else {
                str6 = null;
                bool = valueOf;
                str8 = null;
                valueOf3 = valueOf2;
                obj = null;
            }
            if (obj == null) {
                PackageInfo a = a(str, aVar, str2);
                str3 = a.versionName;
                str6 = a.applicationInfo.metaData.getString("dependencies");
                bool = Boolean.valueOf(a.applicationInfo.metaData.getBoolean("hasso", false));
                str8 = a.applicationInfo.metaData.getString("pluginclass");
                valueOf3 = Boolean.valueOf(a.applicationInfo.metaData.getBoolean("thirdpartyso", false));
                aVar2.a = a;
                aVar2.a(a, str);
            }
            String str9 = str3;
            Boolean bool2 = bool;
            bool = valueOf3;
            str7 = str + "(" + str9 + ")";
            if (a(str6, str2.length() == 0 ? str7 : str2 + "->" + str7, false)) {
                b(str, str9);
                String str10 = "";
                String str11 = "";
                if (bool2.booleanValue()) {
                    str10 = "libsg" + str + "so-" + str9 + ".so";
                    str11 = "sg" + str + "so-" + str9;
                    if (!a(absolutePath, absolutePath2, aVar.c, str10, aVar.d)) {
                        a(100043, 107, "", str6, str2.length() == 0 ? str7 : str2 + "->" + str7, aVar.c != null ? "src:" + c(aVar.c.getAbsolutePath()) : "zipfile:" + c(aVar.a.getAbsolutePath()), "");
                        throw new SecException(107);
                    }
                }
                String str12 = str10;
                if (str8 == null) {
                    a(100043, 199, "miss pluginclass", str6, str2.length() == 0 ? str7 : str2 + "->" + str7, aVar.c != null ? "src:" + c(aVar.c.getAbsolutePath()) : "zipfile:" + c(aVar.a.getAbsolutePath()), "");
                    throw new SecException(199);
                }
                String trim = str8.trim();
                ClassLoader b2 = b(absolutePath, absolutePath2, aVar.d);
                Class a2 = a(b2, trim);
                if (a2 == null) {
                    com.alibaba.wireless.security.framework.utils.a.b("load " + trim + " failed from plugin ");
                    a(100043, 199, "clazz == null", str6, str2.length() == 0 ? str7 : str2 + "->" + str7, aVar.c != null ? "src:" + c(aVar.c.getAbsolutePath()) : "zipfile:" + c(aVar.a.getAbsolutePath()), trim);
                    throw new SecException(199);
                }
                try {
                    ISecurityGuardPlugin iSecurityGuardPlugin = (ISecurityGuardPlugin) a2.newInstance();
                    cVar = new c(absolutePath, this, str, b2, aVar2, iSecurityGuardPlugin);
                    if (str.equalsIgnoreCase(getMainPluginName())) {
                        int i = 0;
                        if (this.f) {
                            i = 1;
                        }
                        if (this.j) {
                            i |= 2;
                        }
                        if (this.g != null && this.g.length() > 0) {
                            i |= 4;
                        }
                        if (f.a(this.c)) {
                            i |= 8;
                        }
                        int i2 = f.b(this.c) ? i | 16 : i;
                        str5 = "";
                        try {
                            str5 = this.i != null ? this.i.a().toString() : "";
                        } catch (Exception e4) {
                            str5 = "";
                        }
                        this.e = iSecurityGuardPlugin.onPluginLoaded(context, null, cVar, str11, Integer.valueOf(i2), str5, this.l.getAbsolutePath(), this.h);
                    } else {
                        SGPluginExtras.slot = 0;
                        iSecurityGuardPlugin.onPluginLoaded(context, this.e, cVar, str11, new Object[0]);
                    }
                    if (bool2.booleanValue() && !bool.booleanValue()) {
                        str5 = f.a(b2, str11);
                        this.e.doCommand(SystemMessageConstants.BIND_CANCEL_CODE, str, str9, str5);
                    }
                } catch (InstantiationException e5) {
                    e = e5;
                    cVar = null;
                    com.alibaba.wireless.security.framework.utils.a.a("", e);
                    SGPluginExtras.slot = 0;
                    return cVar;
                } catch (IllegalAccessException e6) {
                    e = e6;
                    cVar = null;
                    com.alibaba.wireless.security.framework.utils.a.a("", e);
                    SGPluginExtras.slot = 0;
                    return cVar;
                } catch (SecException e7) {
                }
                SGPluginExtras.slot = 0;
                return cVar;
            }
            a(100043, 199, "loadRequirements failed", str6, str2.length() == 0 ? str7 : str2 + "->" + str7, aVar.c != null ? "src:" + c(aVar.c.getAbsolutePath()) : "zipfile:" + c(aVar.a.getAbsolutePath()), "");
            throw new SecException(199);
        } catch (InstantiationException e8) {
            e = e8;
            com.alibaba.wireless.security.framework.utils.a.a("", e);
            SGPluginExtras.slot = 0;
            return cVar;
        } catch (IllegalAccessException e9) {
            e = e9;
            com.alibaba.wireless.security.framework.utils.a.a("", e);
            SGPluginExtras.slot = 0;
            return cVar;
        } catch (SecException e72) {
        } catch (SecException e10) {
            a(100043, 199, "isMeetReverseDependencies failed", str6, str2.length() == 0 ? str7 : str2 + "->" + str7, aVar.c != null ? "src:" + c(aVar.c.getAbsolutePath()) : "zipfile:" + c(aVar.a.getAbsolutePath()), "");
            throw e10;
        } catch (Throwable th) {
            SGPluginExtras.slot = 0;
        }
    }

    private File a(Context context) throws SecException {
        if (context == null) {
            a(100038, 116, "", "", "", "", "");
            throw new SecException(116);
        }
        String str = null;
        if (context != null) {
            try {
                String str2 = context.getApplicationInfo().sourceDir;
                if (str2 != null) {
                    File file = new File(str2);
                    if (file.exists()) {
                        str = (file.lastModified() / 1000) + "";
                    }
                }
            } catch (Throwable e) {
                Throwable th = e;
                a(100038, 115, "", "" + th, "", "", "");
                throw new SecException(th, 115);
            }
        }
        if (str == null) {
            throw new SecException(115);
        }
        this.l = context.getDir("SGLib", 0);
        if (this.l == null || !this.l.exists()) {
            a(100038, 109, "", "" + this.l, "", "", "");
            throw new SecException(109);
        }
        File file2 = new File(this.l.getAbsolutePath(), "app_" + str);
        if (!file2.exists()) {
            file2.mkdirs();
            if (!file2.exists()) {
                file2.mkdirs();
            }
        }
        if (p && file2.exists()) {
            p = false;
            a(this.l, "app_" + str);
        }
        if (file2.exists()) {
            return file2;
        }
        a(100038, 114, "", "", "", "", "");
        throw new SecException(114);
    }

    private File a(Context context, b bVar) {
        if (f.a(context) || bVar == null || bVar.b() == 0 || bVar.c() == null || bVar.c().length() <= 0) {
            return null;
        }
        File file = new File(this.k.getAbsolutePath() + File.separator + "libs" + File.separator + bVar.b() + File.separator + bVar.c());
        return !file.exists() ? null : file;
    }

    private File a(String str) {
        if (this.g != null) {
            return null;
        }
        String a = f.a(d.class.getClassLoader(), "sg" + str);
        return (a == null || a.length() <= 0) ? null : new File(a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x009c A:{SYNTHETIC, Splitter: B:32:0x009c} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0081 A:{Catch:{ all -> 0x00ad }} */
    /* JADX WARNING: Removed duplicated region for block: B:52:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0094 A:{SYNTHETIC, Splitter: B:29:0x0094} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00a3 A:{SYNTHETIC, Splitter: B:37:0x00a3} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private File a(String str, File file) {
        String str2;
        Throwable e;
        ZipFile zipFile;
        try {
            str2 = this.c.getApplicationInfo().sourceDir;
        } catch (Exception e2) {
            str2 = null;
        }
        if (str2 == null) {
            return null;
        }
        String str3 = "libsg" + str + ".so";
        ZipFile zipFile2;
        try {
            com.alibaba.wireless.security.framework.utils.a.b("Plugin not existed in the application library path, maybe installed in x86 phone, or the armeabi-v7a existed");
            zipFile2 = new ZipFile(str2);
            try {
                File a;
                for (String str4 : n) {
                    String str5 = "lib" + File.separator + str4 + File.separator + str3;
                    if (zipFile2.getEntry(str5) != null) {
                        o = str4;
                        a = a(str, file, zipFile2, str5);
                        break;
                    }
                }
                a = null;
                if (zipFile2 != null) {
                    try {
                        zipFile2.close();
                    } catch (Exception e3) {
                    }
                }
                return a;
            } catch (IOException e4) {
                e = e4;
                zipFile = zipFile2;
                try {
                    com.alibaba.wireless.security.framework.utils.a.a("getPluginFile throws exception", e);
                    if (e == null) {
                    }
                    a(100047, 3, e == null ? e.toString() : "", str, c(str2), "", "");
                    if (zipFile != null) {
                    }
                } catch (Throwable th) {
                    e = th;
                    zipFile2 = zipFile;
                }
            } catch (Throwable th2) {
                e = th2;
                if (zipFile2 != null) {
                }
                throw e;
            }
        } catch (IOException e5) {
            e = e5;
            zipFile = null;
            com.alibaba.wireless.security.framework.utils.a.a("getPluginFile throws exception", e);
            a(100047, 3, e == null ? e.toString() : "", str, c(str2), "", "");
            if (zipFile != null) {
                return null;
            }
            try {
                zipFile.close();
                return null;
            } catch (Exception e6) {
                return null;
            }
        } catch (Throwable th3) {
            e = th3;
            zipFile2 = null;
            if (zipFile2 != null) {
                try {
                    zipFile2.close();
                } catch (Exception e7) {
                }
            }
            throw e;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x004c A:{SYNTHETIC, Splitter: B:30:0x004c} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private File a(String str, File file, String str2, String str3) {
        Throwable e;
        ZipFile zipFile;
        if (str2 == null || str3 == null) {
            return null;
        }
        try {
            com.alibaba.wireless.security.framework.utils.a.b("Plugin not existed in the application library path, maybe installed in x86 phone, or the armeabi-v7a existed");
            ZipFile zipFile2 = new ZipFile(str2);
            try {
                File a = a(str, file, zipFile2, str3);
                if (zipFile2 == null) {
                    return a;
                }
                try {
                    zipFile2.close();
                    return a;
                } catch (Exception e2) {
                    return a;
                }
            } catch (IOException e3) {
                e = e3;
                zipFile = zipFile2;
            } catch (Throwable th) {
                e = th;
                zipFile = zipFile2;
                if (zipFile != null) {
                }
                throw e;
            }
        } catch (IOException e4) {
            e = e4;
            zipFile = null;
            try {
                com.alibaba.wireless.security.framework.utils.a.a("getPluginFile throws exception", e);
                a(100047, 3, e != null ? e.toString() : "", str, c(str2), "", "");
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (Exception e5) {
                        return null;
                    }
                }
                return null;
            } catch (Throwable th2) {
                e = th2;
            }
        } catch (Throwable th3) {
            e = th3;
            zipFile = null;
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (Exception e6) {
                }
            }
            throw e;
        }
    }

    private File a(String str, File file, ZipFile zipFile, String str2) throws IOException {
        if (zipFile == null || str2 == null) {
            return null;
        }
        ZipEntry entry = zipFile.getEntry(str2);
        if (entry == null) {
            return null;
        }
        com.alibaba.wireless.security.framework.utils.a.b("Plugin existed  in " + entry.getName());
        File file2 = new File(file, "libsg" + str + "_inner" + entry.getTime() + ".zip");
        if ((file2.exists() && file2.length() == entry.getSize()) || f.a(zipFile, entry, file2)) {
            com.alibaba.wireless.security.framework.utils.a.b("Extract success");
            return file2;
        }
        com.alibaba.wireless.security.framework.utils.a.b("Extract failed!!");
        return null;
    }

    private Class<?> a(ClassLoader classLoader, String str) {
        Class<?> cls;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            cls = Class.forName(str, true, classLoader);
        } catch (Throwable th) {
            a(100042, 199, "Class.forName failed", "" + th, str, classLoader.toString(), "");
            cls = null;
        }
        com.alibaba.wireless.security.framework.utils.a.b("    loadClassFromClassLoader( " + str + " ) used time: " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
        return cls;
    }

    private String a(Class<?> cls) {
        InterfacePluginInfo interfacePluginInfo = (InterfacePluginInfo) cls.getAnnotation(InterfacePluginInfo.class);
        return interfacePluginInfo == null ? null : interfacePluginInfo.pluginName();
    }

    private void a() throws SecException {
        this.k = a(this.c);
        if (this.k != null) {
            this.b = new c(this.c, this.k + File.separator + "lock.lock");
            this.i = b();
            this.m = a(this.c, this.i);
        }
    }

    private void a(int i, int i2, String str, String str2, String str3, String str4, String str5) {
        UserTrackMethodJniBridge.addUtRecord("" + i, i2, 0, com.alibaba.wireless.security.open.initialize.c.a(), 0, str, str2, str3, str4, str5);
    }

    private void a(File file) {
        if (file.isDirectory()) {
            String[] list = file.list();
            if (list != null) {
                for (String file2 : list) {
                    a(new File(file, file2));
                }
            }
        }
        file.delete();
    }

    private void a(final File file, final String str) {
        new Thread(new Runnable() {
            public void run() {
                int i = 0;
                try {
                    if (file != null && file.isDirectory()) {
                        File[] listFiles = file.listFiles();
                        if (listFiles != null && listFiles.length > 0) {
                            for (File file : listFiles) {
                                if (file.isDirectory() && file.getName().startsWith("app_") && !file.getName().equals(str)) {
                                    d.this.a(file);
                                } else if (file.getName().startsWith("libsg")) {
                                    file.delete();
                                }
                            }
                        }
                    }
                    if (d.this.c != null) {
                        File filesDir = d.this.c.getFilesDir();
                        if (filesDir != null && filesDir.isDirectory()) {
                            File[] listFiles2 = filesDir.listFiles();
                            if (listFiles2 != null && listFiles2.length > 0) {
                                int length = listFiles2.length;
                                while (i < length) {
                                    File file2 = listFiles2[i];
                                    if (file2.getName().startsWith("libsecuritysdk")) {
                                        file2.delete();
                                    }
                                    i++;
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                }
            }
        }).start();
    }

    /* JADX WARNING: Removed duplicated region for block: B:54:0x00da A:{SYNTHETIC, Splitter: B:54:0x00da} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00a9 A:{Catch:{ all -> 0x011c }} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00ce A:{SYNTHETIC, Splitter: B:48:0x00ce} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00d3 A:{SYNTHETIC, Splitter: B:51:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00f0 A:{SYNTHETIC, Splitter: B:63:0x00f0} */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00f5 A:{SYNTHETIC, Splitter: B:66:0x00f5} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00a9 A:{Catch:{ all -> 0x011c }} */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00da A:{SYNTHETIC, Splitter: B:54:0x00da} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00ce A:{SYNTHETIC, Splitter: B:48:0x00ce} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00d3 A:{SYNTHETIC, Splitter: B:51:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00f0 A:{SYNTHETIC, Splitter: B:63:0x00f0} */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00f5 A:{SYNTHETIC, Splitter: B:66:0x00f5} */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00da A:{SYNTHETIC, Splitter: B:54:0x00da} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00a9 A:{Catch:{ all -> 0x011c }} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00ce A:{SYNTHETIC, Splitter: B:48:0x00ce} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00d3 A:{SYNTHETIC, Splitter: B:51:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00f0 A:{SYNTHETIC, Splitter: B:63:0x00f0} */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00f5 A:{SYNTHETIC, Splitter: B:66:0x00f5} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00a9 A:{Catch:{ all -> 0x011c }} */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00da A:{SYNTHETIC, Splitter: B:54:0x00da} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00ce A:{SYNTHETIC, Splitter: B:48:0x00ce} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00d3 A:{SYNTHETIC, Splitter: B:51:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00f0 A:{SYNTHETIC, Splitter: B:63:0x00f0} */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00f5 A:{SYNTHETIC, Splitter: B:66:0x00f5} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(File file, File file2) {
        Throwable e;
        FileChannel fileChannel;
        FileChannel fileChannel2;
        boolean z;
        FileChannel fileChannel3;
        File file3 = new File(file2.getAbsolutePath() + ".tmp." + Process.myPid());
        try {
            FileChannel channel;
            if (file3.exists()) {
                file3.delete();
            }
            FileChannel channel2 = new FileInputStream(file).getChannel();
            try {
                channel = new FileOutputStream(file3).getChannel();
            } catch (Exception e2) {
                e = e2;
                fileChannel = null;
                fileChannel2 = channel2;
                try {
                    com.alibaba.wireless.security.framework.utils.a.a("", e);
                    if (e != null) {
                    }
                    a(100047, 2, e != null ? e.toString() : "", c(file.getAbsolutePath()), c(file2.getAbsolutePath()), c(file3.getAbsolutePath()), "");
                    z = false;
                    if (fileChannel2 != null) {
                    }
                    if (fileChannel != null) {
                    }
                    file3.delete();
                    return z;
                } catch (Throwable th) {
                    e = th;
                }
            } catch (Throwable th2) {
                e = th2;
                fileChannel = null;
                fileChannel2 = channel2;
                if (fileChannel2 != null) {
                }
                if (fileChannel != null) {
                }
                file3.delete();
                throw e;
            }
            try {
                channel.transferFrom(channel2, 0, channel2.size());
                channel2.close();
                fileChannel3 = null;
                try {
                    channel.close();
                    channel2 = null;
                } catch (Throwable e3) {
                    fileChannel = channel;
                    fileChannel2 = fileChannel3;
                    e = e3;
                    com.alibaba.wireless.security.framework.utils.a.a("", e);
                    if (e != null) {
                    }
                    a(100047, 2, e != null ? e.toString() : "", c(file.getAbsolutePath()), c(file2.getAbsolutePath()), c(file3.getAbsolutePath()), "");
                    z = false;
                    if (fileChannel2 != null) {
                    }
                    if (fileChannel != null) {
                    }
                    file3.delete();
                    return z;
                } catch (Throwable e32) {
                    fileChannel = channel;
                    fileChannel2 = fileChannel3;
                    e = e32;
                    if (fileChannel2 != null) {
                    }
                    if (fileChannel != null) {
                    }
                    file3.delete();
                    throw e;
                }
            } catch (Throwable e4) {
                fileChannel = channel;
                fileChannel2 = channel2;
                e = e4;
                com.alibaba.wireless.security.framework.utils.a.a("", e);
                if (e != null) {
                }
                a(100047, 2, e != null ? e.toString() : "", c(file.getAbsolutePath()), c(file2.getAbsolutePath()), c(file3.getAbsolutePath()), "");
                z = false;
                if (fileChannel2 != null) {
                }
                if (fileChannel != null) {
                }
                file3.delete();
                return z;
            } catch (Throwable e42) {
                fileChannel = channel;
                fileChannel2 = channel2;
                e = e42;
                if (fileChannel2 != null) {
                }
                if (fileChannel != null) {
                }
                file3.delete();
                throw e;
            }
            try {
                if (file3.length() != file.length()) {
                    z = false;
                } else if (!file2.exists()) {
                    z = file3.renameTo(file2);
                } else if (file2.length() == file.length()) {
                    z = true;
                } else {
                    file2.delete();
                    z = file3.renameTo(file2);
                }
                if (fileChannel3 != null) {
                    try {
                        fileChannel3.close();
                    } catch (Throwable e422) {
                        com.alibaba.wireless.security.framework.utils.a.a("", e422);
                    }
                }
                if (channel2 != null) {
                    try {
                        channel2.close();
                    } catch (Throwable e322) {
                        com.alibaba.wireless.security.framework.utils.a.a("", e322);
                    }
                }
                file3.delete();
            } catch (Exception e5) {
                e = e5;
                fileChannel = channel2;
                fileChannel2 = fileChannel3;
                com.alibaba.wireless.security.framework.utils.a.a("", e);
                a(100047, 2, e != null ? e.toString() : "", c(file.getAbsolutePath()), c(file2.getAbsolutePath()), c(file3.getAbsolutePath()), "");
                z = false;
                if (fileChannel2 != null) {
                    try {
                        fileChannel2.close();
                    } catch (Throwable e3222) {
                        com.alibaba.wireless.security.framework.utils.a.a("", e3222);
                    }
                }
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (Throwable e32222) {
                        com.alibaba.wireless.security.framework.utils.a.a("", e32222);
                    }
                }
                file3.delete();
                return z;
            } catch (Throwable th3) {
                e = th3;
                fileChannel = channel2;
                fileChannel2 = fileChannel3;
                if (fileChannel2 != null) {
                    try {
                        fileChannel2.close();
                    } catch (Throwable e322222) {
                        com.alibaba.wireless.security.framework.utils.a.a("", e322222);
                    }
                }
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (Throwable e3222222) {
                        com.alibaba.wireless.security.framework.utils.a.a("", e3222222);
                    }
                }
                file3.delete();
                throw e;
            }
        } catch (Exception e6) {
            e = e6;
            fileChannel = null;
            fileChannel2 = null;
            com.alibaba.wireless.security.framework.utils.a.a("", e);
            if (e != null) {
            }
            a(100047, 2, e != null ? e.toString() : "", c(file.getAbsolutePath()), c(file2.getAbsolutePath()), c(file3.getAbsolutePath()), "");
            z = false;
            if (fileChannel2 != null) {
            }
            if (fileChannel != null) {
            }
            file3.delete();
            return z;
        } catch (Throwable th4) {
            e = th4;
            fileChannel = null;
            fileChannel2 = null;
            if (fileChannel2 != null) {
            }
            if (fileChannel != null) {
            }
            file3.delete();
            throw e;
        }
        return z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:86:0x010a A:{SYNTHETIC, Splitter: B:86:0x010a} */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0111 A:{SYNTHETIC, Splitter: B:89:0x0111} */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x010a A:{SYNTHETIC, Splitter: B:86:0x010a} */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0111 A:{SYNTHETIC, Splitter: B:89:0x0111} */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x0106 A:{Splitter: B:22:0x0038, ExcHandler: all (th java.lang.Throwable)} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:83:0x0106, code:
            r0 = th;
     */
    /* JADX WARNING: Missing block: B:84:0x0107, code:
            r2 = r3;
     */
    /* JADX WARNING: Missing block: B:101:0x0121, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:102:0x0122, code:
            r8 = r0;
            r9 = r3;
            r0 = r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized boolean a(String str, String str2, File file, String str3, boolean z) {
        boolean z2;
        Throwable th;
        Throwable e;
        ZipFile zipFile;
        File file2;
        if (f.a(this.c) && VERSION.SDK_INT > 19) {
            z2 = true;
        } else if (this.g != null) {
            z2 = true;
        } else {
            if (file != null) {
                if (new File(file.getParent(), str3).exists()) {
                    z2 = true;
                } else {
                    str = file.getAbsolutePath();
                }
            }
            if (!z) {
                this.b.a();
            }
            ZipFile zipFile2 = null;
            try {
                File file3 = new File(str2, str3);
                if (file3.exists()) {
                    z2 = true;
                    if (!z) {
                        this.b.b();
                    }
                    if (zipFile2 != null) {
                        try {
                            zipFile2.close();
                        } catch (IOException e2) {
                        }
                    }
                } else {
                    ZipFile zipFile3 = new ZipFile(str);
                    try {
                        String[] strArr = n;
                        int length = strArr.length;
                        int i = 0;
                        while (i < length) {
                            ZipEntry entry = zipFile3.getEntry("lib" + File.separator + strArr[i] + File.separator + str3);
                            if (entry == null || entry.getSize() == 0) {
                                i++;
                            } else {
                                z2 = f.a(zipFile3, entry, file3);
                                if (!z) {
                                    this.b.b();
                                }
                                if (zipFile3 != null) {
                                    try {
                                        zipFile3.close();
                                    } catch (IOException e3) {
                                    }
                                }
                            }
                        }
                        if (!z) {
                            this.b.b();
                        }
                        if (zipFile3 != null) {
                            try {
                                zipFile3.close();
                            } catch (IOException e4) {
                            }
                        }
                    } catch (Throwable e5) {
                        String iOException;
                        th = e5;
                        zipFile = zipFile3;
                        file2 = file3;
                        if (th != null) {
                            try {
                                iOException = th.toString();
                            } catch (Throwable th2) {
                                e5 = th2;
                                zipFile3 = zipFile;
                                if (!z) {
                                }
                                if (zipFile3 != null) {
                                }
                                throw e5;
                            }
                        } else {
                            iOException = "";
                        }
                        a(100039, 107, iOException, c(), c(str), file2 != null ? c(file2.getAbsolutePath()) : "", file != null ? c(file.getAbsolutePath()) : "");
                        com.alibaba.wireless.security.framework.utils.a.a("", th);
                        if (!z) {
                            this.b.b();
                        }
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException e6) {
                            }
                        }
                        z2 = false;
                        return z2;
                    } catch (Throwable th3) {
                        e5 = th3;
                        if (z) {
                            this.b.b();
                        }
                        if (zipFile3 != null) {
                            try {
                                zipFile3.close();
                            } catch (IOException e7) {
                            }
                        }
                        throw e5;
                    }
                    z2 = false;
                }
            } catch (Throwable e52) {
                th = e52;
                zipFile = zipFile2;
                file2 = null;
            } catch (Throwable th4) {
            }
        }
        return z2;
    }

    private boolean a(String str, String str2, boolean z) throws SecException {
        if (str.trim().length() == 0) {
            return true;
        }
        int i;
        int indexOf;
        String[] split = str.split(";");
        int i2 = 0;
        while (true) {
            i = i2;
            if (i >= split.length) {
                return true;
            }
            String trim = split[i].trim();
            if (trim.length() != 0) {
                String[] split2 = trim.split(SymbolExpUtil.SYMBOL_COLON);
                if (split2.length != 2) {
                    a(100040, 199, "nameVersionPair.length != 2", trim, str2, "" + z, "" + i);
                    throw new SecException(199);
                }
                i2 = str2.indexOf(split2[0]);
                String str3;
                if (i2 >= 0) {
                    indexOf = str2.indexOf("(", i2);
                    i2 = str2.indexOf(")", i2);
                    if (indexOf < 0 || i2 < 0 || indexOf > i2) {
                        a(100040, 199, "indexLeftP < 0 || indexRightP < 0 || indexLeftP > indexRightP", "" + indexOf, "" + i2, "", "" + i);
                    } else {
                        trim = str2.substring(indexOf + 1, i2);
                        if (a(trim, split2[1]) < 0) {
                            String str4 = "version " + trim + " of " + split2[0] + " is not meet the requirement: " + split2[1];
                            str3 = str2.length() != 0 ? str4 + ", depended by: " + str2 : str4;
                            if (!z) {
                                a(100040, 113, "versionCompare(parentPluginVersion, nameVersionPair[1]) < 0", trim, split2[0], split2[1], "" + i);
                            }
                            throw new SecException(str3, 113);
                        }
                    }
                } else {
                    ISGPluginInfo iSGPluginInfo = (ISGPluginInfo) this.d.get(split2[0]);
                    if (iSGPluginInfo == null) {
                        ISGPluginInfo d;
                        Object obj;
                        try {
                            d = d(split2[0], str2, !z);
                            obj = null;
                        } catch (Throwable th) {
                            Throwable th2 = th;
                            d = iSGPluginInfo;
                            Throwable obj2 = th2;
                        }
                        if (d != null) {
                            iSGPluginInfo = d;
                        } else if (!z) {
                            if (obj2 instanceof SecException) {
                                throw ((SecException) obj2);
                            }
                            a(100040, 199, "throwable in loadPluginInner", "" + obj2, str, str2, "" + i);
                            throw new SecException(str2, 199);
                        }
                    }
                    if (a(iSGPluginInfo.getVersion(), split2[1]) < 0) {
                        String str5 = "version " + iSGPluginInfo.getVersion() + " of " + split2[0] + " is not meet the requirement: " + split2[1];
                        str3 = str2.length() != 0 ? str5 + ", depended by: " + str2 : str5;
                        if (!z) {
                            a(100040, 113, "versionCompare(dependPlugin.getVersion(), nameVersionPair[1]) < 0", iSGPluginInfo.getVersion(), split2[0], split2[1], "" + i);
                        }
                        throw new SecException(str3, 113);
                    }
                }
            }
            i2 = i + 1;
        }
        a(100040, 199, "indexLeftP < 0 || indexRightP < 0 || indexLeftP > indexRightP", "" + indexOf, "" + i2, "", "" + i);
        throw new SecException(199);
    }

    private b b() {
        File file = new File(this.k, "update.config");
        File file2 = new File(this.k, "init.config");
        b a;
        if (this.j) {
            a = b.a(file);
            if (a == null) {
                return b.a(file2);
            }
            try {
                this.b.a();
                file2.delete();
                file.renameTo(file2);
                return a;
            } finally {
                this.b.b();
            }
        } else {
            try {
                this.b.a();
                a = b.a(file2);
                return a;
            } finally {
                this.b.b();
            }
        }
    }

    private DexClassLoader b(String str, String str2, boolean z) {
        if (!z) {
            try {
                this.b.a();
            } catch (Throwable th) {
                if (!z) {
                    this.b.b();
                }
            }
        }
        String str3 = this.c.getApplicationInfo().nativeLibraryDir + File.pathSeparator + str2;
        if (this.g != null) {
            str3 = str3 + File.pathSeparator + this.g;
            com.alibaba.wireless.security.framework.utils.a.b("add path to native classloader " + str3);
        }
        if (o != null) {
            str3 = str3 + File.pathSeparator + this.c.getApplicationInfo().sourceDir + "!/lib/" + o;
        }
        DexClassLoader dexClassLoader = new DexClassLoader(str, str2, str3, d.class.getClassLoader());
        if (!z) {
            this.b.b();
        }
        return dexClassLoader;
    }

    private File b(String str) {
        String str2 = this.g;
        if (str2 == null) {
            try {
                str2 = this.c.getApplicationInfo().nativeLibraryDir;
            } catch (Exception e) {
            }
        }
        if (str2 != null && str2.length() > 0) {
            File file = new File(str2 + File.separator + "libsg" + str + ".so");
            if (file.exists()) {
                return file;
            }
        }
        return null;
    }

    private boolean b(File file) {
        try {
            return !file.getParentFile().getCanonicalPath().equals(file.getCanonicalFile().getParentFile().getCanonicalPath()) ? true : !file.getName().equals(file.getCanonicalFile().getName());
        } catch (Throwable e) {
            com.alibaba.wireless.security.framework.utils.a.a("", e);
            a(100047, 0, e != null ? e.toString() : "", file.getAbsolutePath(), "", "", "");
            return false;
        }
    }

    private boolean b(File file, File file2) {
        Object obj = null;
        try {
            Method declaredMethod;
            if (VERSION.SDK_INT >= 21) {
                declaredMethod = Class.forName("android.system.Os").getDeclaredMethod("symlink", new Class[]{String.class, String.class});
            } else {
                Field declaredField = Class.forName("libcore.io.Libcore").getDeclaredField(TUnionNetworkRequest.TUNION_KEY_OS);
                declaredField.setAccessible(true);
                obj = declaredField.get(null);
                declaredMethod = obj.getClass().getMethod("symlink", new Class[]{String.class, String.class});
            }
            declaredMethod.invoke(obj, new Object[]{file.getAbsolutePath(), file2.getAbsolutePath()});
            return true;
        } catch (Throwable e) {
            com.alibaba.wireless.security.framework.utils.a.a("create symbolic link( " + file2.getAbsolutePath() + " -> " + file.getAbsolutePath() + " ) failed", e);
            a(100047, 1, e != null ? e.toString() : "", file.getAbsolutePath(), file2.getAbsolutePath(), "" + VERSION.SDK_INT, "");
            return false;
        }
    }

    private boolean b(String str, String str2) throws SecException {
        for (Entry entry : this.d.entrySet()) {
            String str3 = (String) entry.getKey();
            c cVar = (c) entry.getValue();
            String a = cVar.a("reversedependencies");
            if (a != null) {
                String[] split = a.split(";");
                for (int i = 0; i < split.length; i++) {
                    String trim = split[i].trim();
                    if (trim.length() != 0) {
                        String[] split2 = trim.split(SymbolExpUtil.SYMBOL_COLON);
                        if (split2.length != 2) {
                            trim = str + "(" + str2 + ")";
                            str3 = str3 + "(" + cVar.getVersion() + ")";
                            String c = c(cVar.getPluginPath());
                            a(100041, 199, "nameVersionPair.length != 2", trim, str3, c, a);
                            throw new SecException(199);
                        } else if (split2[0].equalsIgnoreCase(str) && a(str2, split2[1]) < 0) {
                            trim = "plugin " + str + "(" + str2 + ") is not meet the reverse dependency of " + str3 + "(" + cVar.getVersion() + "): " + split2[0] + "(" + split2[1] + ")";
                            a(100041, 117, trim, d.class.getClassLoader().toString(), c(cVar.getPluginPath()), a, "" + i);
                            throw new SecException(trim, 117);
                        }
                    }
                }
                continue;
            }
        }
        return true;
    }

    private a c(String str, String str2, boolean z) throws SecException {
        File file;
        boolean z2;
        File a;
        a aVar;
        File file2 = null;
        File file3 = null;
        boolean z3 = false;
        if (this.m != null) {
            file2 = new File(this.m, "libsg" + str + ".so");
            if (file2.exists()) {
                file3 = d(this.m);
                z3 = file3 != this.m;
            } else {
                file2 = null;
            }
        }
        if (file3 == null) {
            file3 = d(this.k);
            file = file3;
            z2 = file3 != this.k;
        } else {
            file = file3;
            z2 = z3;
        }
        if (!z2) {
            this.b.a();
        }
        if (file2 == null) {
            try {
                a = a(str);
                if (!c(a)) {
                    a = null;
                }
            } catch (Throwable th) {
                if (!z2) {
                    this.b.b();
                }
            }
        } else {
            a = file2;
        }
        if (a != null) {
            String absolutePath = a.getAbsolutePath();
            if (absolutePath != null && absolutePath.contains("!/")) {
                String[] split = absolutePath.split("!/", 2);
                String str3 = split[0];
                String str4 = split[1];
                for (String str5 : n) {
                    if (("lib" + File.separator + str5 + File.separator + "libsg" + str + ".so").equals(str4)) {
                        o = str5;
                        a = a(str, file, str3, str4);
                        break;
                    }
                }
            }
        }
        if (a == null) {
            a = b(str);
        }
        file2 = (a == null && z) ? a(str, file) : a;
        if (file2 == null) {
            aVar = null;
            if (!z2) {
                this.b.b();
            }
        } else {
            if (file2.getAbsolutePath().endsWith(".zip")) {
                aVar = new a(file2, file, null, z2);
            } else if (f.a()) {
                aVar = new a(file2, file, file2, z2);
            } else {
                File file4 = new File(file, "libsg" + str + LoginConstants.UNDER_LINE + file2.lastModified() + ".zip");
                if (file4.exists() && b(file4) && !c(file4, file2)) {
                    aVar = new a(file4, file, file2, z2);
                } else {
                    file4.delete();
                    if (b(file2, file4)) {
                        aVar = new a(file4, file, file2, z2);
                    } else {
                        file4 = new File(file, "libsg" + str + "_cp" + file2.lastModified() + ".zip");
                        aVar = ((file4.exists() && file4.length() == file2.length()) || a(file2, file4)) ? new a(file4, file, file2, z2) : null;
                    }
                }
            }
            if (!z2) {
                this.b.b();
            }
        }
        return aVar;
    }

    private String c() {
        StringBuilder stringBuilder = new StringBuilder();
        File file = this.k;
        if (file != null && file.exists() && file.isDirectory()) {
            try {
                stringBuilder.append("[");
                File[] listFiles = file.listFiles();
                int i = 0;
                while (listFiles != null && i < listFiles.length) {
                    File file2 = listFiles[i];
                    if (file2.getName().startsWith("libsg") && (file2.getName().endsWith("zip") || file2.getName().endsWith(".so"))) {
                        stringBuilder.append(file2.getName());
                        stringBuilder.append("(");
                        stringBuilder.append(b(file2) + " , ");
                        stringBuilder.append(file2.length());
                        stringBuilder.append(") , ");
                    }
                    i++;
                }
                stringBuilder.append("]");
            } catch (Throwable th) {
            }
        } else {
            stringBuilder.append("not exists!");
        }
        return stringBuilder.toString();
    }

    private String c(String str) {
        String str2 = "";
        if (str == null || str.length() <= 0) {
            return str2;
        }
        File file = new File(str);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        if (b(file)) {
            stringBuilder.append("->");
            try {
                stringBuilder.append(file.getCanonicalPath());
            } catch (Exception e) {
            }
        }
        stringBuilder.append('[');
        stringBuilder.append("exists:" + file.exists() + ",");
        stringBuilder.append("size:" + file.length() + ",");
        stringBuilder.append("canRead:" + file.canRead() + ",");
        stringBuilder.append("canWrite:" + file.canWrite() + ",");
        stringBuilder.append("totalSpace:" + file.getTotalSpace() + ",");
        stringBuilder.append("freeSpace:" + file.getFreeSpace() + ",");
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    private boolean c(File file) {
        if (file == null) {
            return false;
        }
        try {
            String absolutePath = file.getAbsolutePath();
            return (absolutePath == null || absolutePath.length() <= 0) ? false : f.a(this.c) || !absolutePath.startsWith("/system/");
        } catch (Exception e) {
            return false;
        }
    }

    private boolean c(File file, File file2) {
        boolean z = false;
        try {
            return file.getCanonicalPath().equals(file2.getCanonicalPath());
        } catch (Throwable e) {
            com.alibaba.wireless.security.framework.utils.a.a("", e);
            a(100046, z, e != null ? e.toString() : "", file.getAbsolutePath(), file2.getAbsolutePath(), "", "");
            return z;
        }
    }

    private synchronized ISGPluginInfo d(String str, String str2, boolean z) throws SecException {
        ISGPluginInfo iSGPluginInfo;
        iSGPluginInfo = (c) this.d.get(str);
        if (iSGPluginInfo == null) {
            if (this.k == null || !this.k.exists()) {
                a();
            }
            a c = c(str, str2, z);
            if (c != null && c.a != null && c.a.exists()) {
                iSGPluginInfo = a(str, c, this.c, str2);
                if (iSGPluginInfo == null) {
                    a(100044, 110, "", str, str2, c.c != null ? "src:" + c(c.c.getAbsolutePath()) : "zipfile:" + c(c.a.getAbsolutePath()), "");
                    throw new SecException(str, 111);
                }
                this.d.put(str, iSGPluginInfo);
                String str3 = str + "(" + iSGPluginInfo.getVersion() + ")";
                final String a = iSGPluginInfo.a("weakdependencies");
                final String str4 = str2.length() == 0 ? str3 : str2 + "->" + str3;
                Looper myLooper = Looper.myLooper();
                if (myLooper == null || myLooper == Looper.getMainLooper()) {
                    com.alibaba.wireless.security.framework.utils.a.a("looper of current thread is null, try to create a new thread with a looper");
                    HandlerThread handlerThread = new HandlerThread("SGBackgroud");
                    handlerThread.start();
                    myLooper = handlerThread.getLooper();
                }
                new Handler(myLooper).postDelayed(new Runnable() {
                    public void run() {
                        try {
                            d.this.a(a, str4, true);
                        } catch (Throwable e) {
                            com.alibaba.wireless.security.framework.utils.a.a("load weak dependency", e);
                        }
                    }
                }, 60000);
            } else if (z) {
                String str5 = "plugin " + str + " not existed";
                String str6 = str2.length() != 0 ? str5 + ", depended by " + str2 : str5;
                a(100044, 110, "", str, str2, "", "");
                throw new SecException(str6, 110);
            } else {
                iSGPluginInfo = null;
            }
        }
        return iSGPluginInfo;
    }

    private File d(File file) {
        if (!file.exists() || !file.isDirectory() || !this.j) {
            return file;
        }
        File file2 = new File(file, "main");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return file2.exists() ? file2 : file;
    }

    public void a(Context context, String str, String str2, boolean z, Object... objArr) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this.c = context;
        this.h = str;
        this.j = f.c(this.c);
        this.f = z;
        UserTrackMethodJniBridge.init(this.c);
        if (!(str2 == null || str2.isEmpty())) {
            this.g = str2;
        }
        try {
            a();
        } catch (SecException e) {
        }
    }

    public synchronized <T> T getInterface(Class<T> cls) throws SecException {
        T cast;
        Object obj = this.a.get(cls);
        if (obj != null) {
            cast = cls.cast(obj);
        } else {
            String str = null;
            if (this.i != null) {
                str = this.i.d();
                if (str == null || str.length() == 0) {
                    str = this.i.a(cls.getName());
                }
            }
            if (str == null || str.length() == 0) {
                str = a((Class) cls);
            }
            if (str == null || str.length() == 0) {
                throw new SecException(SecExceptionCode.SEC_ERROR_INIT_NO_ANNOTATION);
            }
            ISGPluginInfo pluginInfo = getPluginInfo(str);
            if (pluginInfo == null) {
                throw new SecException(110);
            }
            Object obj2 = pluginInfo.getSGPluginEntry().getInterface(cls);
            if (obj2 == null) {
                a(100045, 112, "", cls.getName(), str + "(" + pluginInfo.getVersion() + ")", c(pluginInfo.getPluginPath()), "");
                throw new SecException(112);
            }
            this.a.put(cls, obj2);
            cast = cls.cast(obj2);
        }
        return cast;
    }

    public String getMainPluginName() {
        return "main";
    }

    public ISGPluginInfo getPluginInfo(String str) throws SecException {
        return d(str, "", true);
    }

    public IRouterComponent getRouter() {
        return this.e;
    }
}
