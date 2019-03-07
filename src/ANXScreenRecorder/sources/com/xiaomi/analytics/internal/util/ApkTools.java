package com.xiaomi.analytics.internal.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class ApkTools {
    private static final String ARMEABI = "armeabi";
    private static final String TAG = "ApkTools";

    /* JADX WARNING: Removed duplicated region for block: B:71:0x01c9 A:{SYNTHETIC, Splitter: B:71:0x01c9} */
    /* JADX WARNING: Removed duplicated region for block: B:101:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0194 A:{SYNTHETIC, Splitter: B:59:0x0194} */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x01c9 A:{SYNTHETIC, Splitter: B:71:0x01c9} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0194 A:{SYNTHETIC, Splitter: B:59:0x0194} */
    /* JADX WARNING: Removed duplicated region for block: B:101:? A:{SYNTHETIC, RETURN} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void extractSo(Context context, String apkPath, String soPath) {
        Exception e;
        Throwable th;
        ZipFile zfile = null;
        if (apkPath != null) {
            try {
                if (!apkPath.endsWith(File.separator)) {
                    apkPath = apkPath + File.separator;
                }
            } catch (Exception e2) {
                e = e2;
                try {
                    Log.e(ALog.addPrefix(TAG), "extractSo e", e);
                    if (zfile != null) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (zfile != null) {
                    }
                    throw th;
                }
            }
        }
        if (!(soPath == null || soPath.endsWith(File.separator))) {
            soPath = soPath + File.separator;
        }
        HashMap<String, String> soAbi = new HashMap();
        List<String> abilist = getAbiList(context);
        ZipFile zipFile = new ZipFile(apkPath);
        try {
            FileOutputStream fos;
            Enumeration<? extends ZipEntry> zList = zipFile.entries();
            byte[] buf = new byte[1024];
            Object fos2 = null;
            while (zList.hasMoreElements()) {
                try {
                    ZipEntry ze = (ZipEntry) zList.nextElement();
                    ALog.d(TAG, "ze.getName() = " + ze.getName());
                    if (ze.getName().startsWith("lib/") && !ze.isDirectory()) {
                        String zipname = getZipName(ze.getName());
                        String zipabi = getZipAbi(ze.getName());
                        String savedAbi = (String) soAbi.get(zipname);
                        if (!TextUtils.isEmpty(savedAbi)) {
                            int index = indexOf(abilist, zipabi);
                            if (index < 0) {
                                continue;
                            } else if (index >= indexOf(abilist, savedAbi)) {
                                continue;
                            }
                        }
                        ALog.d(TAG, "use abi " + zipabi);
                        soAbi.put(zipname, zipabi);
                        File file = new File(soPath + zipname);
                        if (file.exists()) {
                            file.delete();
                        }
                        InputStream is = null;
                        try {
                            fos = new FileOutputStream(file);
                            try {
                                InputStream is2 = new BufferedInputStream(zipFile.getInputStream(ze));
                                while (true) {
                                    try {
                                        int readLen = is2.read(buf, 0, 1024);
                                        if (readLen == -1) {
                                            break;
                                        }
                                        fos.write(buf, 0, readLen);
                                    } catch (Exception e3) {
                                        e = e3;
                                        is = is2;
                                        try {
                                            Log.e(ALog.addPrefix(TAG), "extractSo while e", e);
                                            IOUtil.closeSafely(is);
                                            IOUtil.closeSafely(fos);
                                            fos2 = null;
                                        } catch (Throwable th3) {
                                            th = th3;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        is = is2;
                                        IOUtil.closeSafely(is);
                                        IOUtil.closeSafely(fos);
                                        throw th;
                                    }
                                }
                                IOUtil.closeSafely(is2);
                                IOUtil.closeSafely(fos);
                            } catch (Exception e4) {
                                e = e4;
                                Log.e(ALog.addPrefix(TAG), "extractSo while e", e);
                                IOUtil.closeSafely(is);
                                IOUtil.closeSafely(fos);
                                fos2 = null;
                            }
                        } catch (Exception e5) {
                            e = e5;
                            fos = fos2;
                            Log.e(ALog.addPrefix(TAG), "extractSo while e", e);
                            IOUtil.closeSafely(is);
                            IOUtil.closeSafely(fos);
                            fos2 = null;
                        } catch (Throwable th5) {
                            th = th5;
                            fos = fos2;
                        }
                        fos2 = null;
                    }
                } catch (Exception e6) {
                    e = e6;
                    fos = fos2;
                    zfile = zipFile;
                    Log.e(ALog.addPrefix(TAG), "extractSo e", e);
                    if (zfile != null) {
                        try {
                            zfile.close();
                            return;
                        } catch (Exception e7) {
                            Log.e(ALog.addPrefix(TAG), "extractSo finally close file e", e7);
                            return;
                        }
                    }
                    return;
                } catch (Throwable th6) {
                    th = th6;
                    fos = fos2;
                    zfile = zipFile;
                    if (zfile != null) {
                        try {
                            zfile.close();
                        } catch (Exception e72) {
                            Log.e(ALog.addPrefix(TAG), "extractSo finally close file e", e72);
                        }
                    }
                    throw th;
                }
            }
            if (zipFile != null) {
                try {
                    zipFile.close();
                    fos = fos2;
                    zfile = zipFile;
                    return;
                } catch (Exception e722) {
                    Log.e(ALog.addPrefix(TAG), "extractSo finally close file e", e722);
                    fos = fos2;
                    zfile = zipFile;
                    return;
                }
            }
            zfile = zipFile;
        } catch (Exception e8) {
            e722 = e8;
            zfile = zipFile;
            Log.e(ALog.addPrefix(TAG), "extractSo e", e722);
            if (zfile != null) {
            }
        } catch (Throwable th7) {
            th = th7;
            zfile = zipFile;
            if (zfile != null) {
            }
            throw th;
        }
    }

    private static List<String> getAbiList(Context context) {
        List<String> abilist = new ArrayList();
        String appPrimary = getAppPrimaryAbi(context);
        if (!TextUtils.isEmpty(appPrimary)) {
            abilist.add(appPrimary);
        }
        String primary = SystemProperties.get("ro.product.cpu.abi", "");
        if (!TextUtils.isEmpty(primary)) {
            abilist.add(primary);
        }
        String secondary = SystemProperties.get("ro.product.cpu.abi2", "");
        if (!TextUtils.isEmpty(secondary)) {
            abilist.add(secondary);
        }
        String abilistProp = SystemProperties.get("ro.product.cpu.abilist", "");
        if (!TextUtils.isEmpty(abilistProp)) {
            String[] split = abilistProp.split(",");
            int i = 0;
            while (split != null && i < split.length) {
                if (!TextUtils.isEmpty(split[i])) {
                    abilist.add(split[i]);
                }
                i++;
            }
        }
        abilist.add(ARMEABI);
        return abilist;
    }

    private static String getAppPrimaryAbi(Context context) {
        try {
            ApplicationInfo ai = context.getApplicationInfo();
            Field field = Class.forName("android.content.pm.ApplicationInfo").getDeclaredField("primaryCpuAbi");
            field.setAccessible(true);
            return (String) field.get(ai);
        } catch (Throwable th) {
            return null;
        }
    }

    private static int indexOf(List<String> abilist, String abi) {
        int i = 0;
        while (abilist != null && i < abilist.size()) {
            if (!TextUtils.isEmpty(abi) && abi.equalsIgnoreCase((String) abilist.get(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private static String getZipName(String zipEntry) {
        if (zipEntry == null) {
            return zipEntry;
        }
        String[] split = zipEntry.split("/");
        if (split == null || split.length <= 0) {
            return zipEntry;
        }
        return split[split.length - 1];
    }

    private static String getZipAbi(String zipEntry) {
        if (zipEntry != null) {
            String[] split = zipEntry.split("/");
            if (split != null && split.length > 1) {
                return split[split.length - 2];
            }
        }
        return ARMEABI;
    }
}
