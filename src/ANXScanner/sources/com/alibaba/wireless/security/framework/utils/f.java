package com.alibaba.wireless.security.framework.utils;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build.VERSION;
import android.os.Process;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class f {
    private static String[] a = new String[]{"armeabi", "armeabi-v7a", "x86", "arm64-v8a", "x86_64"};
    private static boolean b = true;
    private static boolean c = false;
    private static boolean d = true;
    private static boolean e = false;
    private static boolean f = true;
    private static boolean g = false;
    private static boolean h = true;
    private static boolean i = false;

    public static String a(ClassLoader classLoader, String str) {
        if (classLoader == null || str == null || "".equals(str)) {
            return null;
        }
        String a = a(classLoader, str, true);
        return a == null ? a(classLoader, str, false) : a;
    }

    private static String a(ClassLoader classLoader, String str, boolean z) {
        if (classLoader == null) {
            return null;
        }
        Method method;
        String str2;
        if (z) {
            try {
                method = classLoader.getClass().getMethod("findLibrary", new Class[]{String.class});
            } catch (Exception e) {
                return null;
            }
        }
        method = classLoader.getClass().getDeclaredMethod("findLibrary", new Class[]{String.class});
        if (method == null) {
            str2 = null;
        } else {
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            Object invoke = method.invoke(classLoader, new Object[]{str});
            str2 = invoke == null ? null : invoke instanceof String ? (String) invoke : null;
        }
        return str2;
    }

    public static boolean a() {
        return VERSION.SDK_INT > 27 || "P".equalsIgnoreCase(VERSION.RELEASE);
    }

    public static boolean a(Context context) {
        if (b) {
            boolean z;
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                z = (packageInfo == null || (packageInfo.applicationInfo.flags & 1) == 0 || (packageInfo.applicationInfo.flags & 128) != 0) ? false : true;
            } catch (Throwable th) {
                z = false;
            }
            c = z;
            b = false;
        }
        return c;
    }

    /* JADX WARNING: Removed duplicated region for block: B:56:0x00c0 A:{SYNTHETIC, Splitter: B:56:0x00c0} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00c5 A:{SYNTHETIC, Splitter: B:59:0x00c5} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x00d1 A:{SYNTHETIC, Splitter: B:65:0x00d1} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00d6 A:{SYNTHETIC, Splitter: B:68:0x00d6} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00c0 A:{SYNTHETIC, Splitter: B:56:0x00c0} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00c5 A:{SYNTHETIC, Splitter: B:59:0x00c5} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x00d1 A:{SYNTHETIC, Splitter: B:65:0x00d1} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00d6 A:{SYNTHETIC, Splitter: B:68:0x00d6} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00c0 A:{SYNTHETIC, Splitter: B:56:0x00c0} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00c5 A:{SYNTHETIC, Splitter: B:59:0x00c5} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x00d1 A:{SYNTHETIC, Splitter: B:65:0x00d1} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00d6 A:{SYNTHETIC, Splitter: B:68:0x00d6} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00c0 A:{SYNTHETIC, Splitter: B:56:0x00c0} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00c5 A:{SYNTHETIC, Splitter: B:59:0x00c5} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x00d1 A:{SYNTHETIC, Splitter: B:65:0x00d1} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00d6 A:{SYNTHETIC, Splitter: B:68:0x00d6} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(ZipFile zipFile, ZipEntry zipEntry, File file) {
        InputStream inputStream;
        InputStream inputStream2;
        Throwable th;
        boolean z = false;
        FileOutputStream fileOutputStream = null;
        if (zipFile == null || zipEntry == null || file == null) {
            return false;
        }
        File file2;
        try {
            FileOutputStream fileOutputStream2;
            file2 = new File(file.getAbsolutePath() + ".tmp." + Process.myPid());
            try {
                if (file2.exists()) {
                    file2.delete();
                }
                inputStream = zipFile.getInputStream(zipEntry);
            } catch (Exception e) {
                inputStream2 = null;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Exception e2) {
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception e3) {
                    }
                }
                file2.delete();
                if (!z) {
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e4) {
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception e5) {
                    }
                }
                file2.delete();
                throw th;
            }
            try {
                fileOutputStream2 = new FileOutputStream(file2);
            } catch (Exception e6) {
                inputStream2 = inputStream;
                if (inputStream2 != null) {
                }
                if (fileOutputStream != null) {
                }
                file2.delete();
                if (z) {
                }
            } catch (Throwable th3) {
                th = th3;
                if (inputStream != null) {
                }
                if (fileOutputStream != null) {
                }
                file2.delete();
                throw th;
            }
            try {
                byte[] bArr = new byte[8192];
                for (int read = inputStream.read(bArr); read != -1; read = inputStream.read(bArr)) {
                    fileOutputStream2.write(bArr, 0, read);
                }
                inputStream.close();
                inputStream = null;
                try {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    fileOutputStream2 = null;
                    if (file.exists() && file.length() == zipEntry.getSize()) {
                        z = true;
                    } else if (file2.exists() && file2.length() == zipEntry.getSize()) {
                        file.delete();
                        z = file2.renameTo(file);
                    }
                    if (null != null) {
                        try {
                            inputStream.close();
                        } catch (Exception e7) {
                        }
                    }
                    if (null != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (Exception e8) {
                        }
                    }
                    file2.delete();
                } catch (Exception e9) {
                    FileOutputStream fileOutputStream3 = fileOutputStream2;
                    inputStream2 = null;
                    fileOutputStream = fileOutputStream3;
                    if (inputStream2 != null) {
                    }
                    if (fileOutputStream != null) {
                    }
                    file2.delete();
                    if (z) {
                    }
                } catch (Throwable th4) {
                    th = th4;
                    inputStream = null;
                    fileOutputStream = fileOutputStream2;
                    if (inputStream != null) {
                    }
                    if (fileOutputStream != null) {
                    }
                    file2.delete();
                    throw th;
                }
            } catch (Exception e10) {
                fileOutputStream = fileOutputStream2;
                inputStream2 = inputStream;
                if (inputStream2 != null) {
                }
                if (fileOutputStream != null) {
                }
                file2.delete();
                if (z) {
                }
            } catch (Throwable th5) {
                th = th5;
                fileOutputStream = fileOutputStream2;
                if (inputStream != null) {
                }
                if (fileOutputStream != null) {
                }
                file2.delete();
                throw th;
            }
        } catch (Exception e11) {
            file2 = null;
            inputStream2 = null;
            if (inputStream2 != null) {
            }
            if (fileOutputStream != null) {
            }
            file2.delete();
            if (z) {
            }
        } catch (Throwable th6) {
            th = th6;
            file2 = null;
            inputStream = null;
            if (inputStream != null) {
            }
            if (fileOutputStream != null) {
            }
            file2.delete();
            throw th;
        }
        return (z || !file.exists() || file.length() <= 0 || file.length() != zipEntry.getSize()) ? z : true;
    }

    public static boolean b(Context context) {
        if (f) {
            boolean z;
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                z = (packageInfo == null || (packageInfo.applicationInfo.flags & 128) == 0) ? false : true;
            } catch (Throwable th) {
                z = false;
            }
            g = z;
            f = false;
        }
        return g;
    }

    public static boolean c(Context context) {
        if (h) {
            try {
                i = d(context).equals(context.getPackageName());
                h = false;
            } catch (Exception e) {
            }
        }
        return i;
    }

    public static String d(Context context) {
        String str = "";
        try {
            int myPid = Process.myPid();
            if (context != null) {
                for (RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                    if (runningAppProcessInfo.pid == myPid) {
                        return runningAppProcessInfo.processName != null ? runningAppProcessInfo.processName : "";
                    }
                }
            }
            return str;
        } catch (Throwable th) {
            return str;
        }
    }
}
