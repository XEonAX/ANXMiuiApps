package com.xiaomi.mistatistic.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import com.xiaomi.mistatistic.sdk.controller.d;
import com.xiaomi.mistatistic.sdk.controller.g;
import com.xiaomi.mistatistic.sdk.controller.j;
import com.xiaomi.mistatistic.sdk.controller.l;
import com.xiaomi.mistatistic.sdk.controller.m;
import com.xiaomi.mistatistic.sdk.controller.r;
import com.xiaomi.mistatistic.sdk.controller.s;
import com.xiaomi.mistatistic.sdk.controller.t;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: MIStatsExceptionHandler */
public class b implements UncaughtExceptionHandler {
    private static int a = 1;
    private static boolean b = false;
    private final UncaughtExceptionHandler c;

    /* compiled from: MIStatsExceptionHandler */
    public static class a implements Serializable {
        public Throwable a;
        public String b;
        public String c;
        public String d;
        public String e;

        public a(Throwable th) {
            this.a = th;
            this.b = d.e();
            this.c = d.d();
            this.d = d.f();
            this.e = String.valueOf(System.currentTimeMillis());
        }

        public a() {
            this.a = null;
            this.b = d.e();
            this.c = d.d();
            this.d = d.f();
            this.e = null;
        }
    }

    public static boolean a() {
        return b;
    }

    public static void a(a aVar, boolean z) {
        j.a("MEH", "uploadException, isManually:" + z);
        if (!b) {
            return;
        }
        if (aVar == null || aVar.a == null) {
            j.d("MEH", "the throwable is null.");
        } else if (aVar.a.getStackTrace() == null || aVar.a.getStackTrace().length == 0) {
            j.d("MEH", "There is no useful call stack.");
        } else {
            Context a = d.a();
            if (!BuildSetting.isUploadDebugLogEnable(a)) {
                j.d("MEH", "not allowed to upload debug or exception log");
            } else if (s.a().b(4)) {
                Object obj;
                Writer stringWriter = new StringWriter();
                aVar.a.printStackTrace(new PrintWriter(stringWriter));
                String obj2 = stringWriter.toString();
                final Map treeMap = new TreeMap();
                final String str = BuildSetting.isTestNetworkEnabled() ? "http://test.data.mistat.xiaomi.srv/micrash" : "https://data.mistat.xiaomi.com/micrash";
                t.a(a, str, treeMap);
                treeMap.put("device_uuid", g.a(a));
                treeMap.put("device_os", "Android " + VERSION.SDK_INT);
                treeMap.put("device_model", Build.MODEL);
                treeMap.put("app_version", aVar.b);
                treeMap.put("app_channel", aVar.c);
                treeMap.put("app_start_time", aVar.d);
                treeMap.put("app_crash_time", aVar.e);
                treeMap.put("crash_exception_type", aVar.a.getClass().getName() + ":" + aVar.a.getMessage());
                String str2 = "crash_exception_desc";
                if (aVar.a instanceof OutOfMemoryError) {
                    obj = "OutOfMemoryError";
                } else {
                    String obj3 = obj2;
                }
                treeMap.put(str2, obj3);
                treeMap.put("crash_callstack", obj2);
                if (z) {
                    treeMap.put("manual", "true");
                }
                r.b.execute(new Runnable() {
                    public void run() {
                        try {
                            l.a(str, treeMap, new com.xiaomi.mistatistic.sdk.controller.l.b() {
                                public void a(String str) {
                                    j.a("MEH", "upload exception result: " + str);
                                }
                            });
                        } catch (Throwable e) {
                            j.a("MEH", "Error to upload the exception ", e);
                        }
                    }
                });
            }
        }
    }

    @SuppressLint({"NewApi"})
    public void uncaughtException(Thread thread, Throwable th) {
        j.a("MEH", "uncaughtException...");
        try {
            if (VERSION.SDK_INT >= 9) {
                StrictMode.setThreadPolicy(new Builder().build());
            }
            com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.a();
            if (!d()) {
                a(th);
            } else if (f()) {
                j.a("MEH", "crazy crash...");
            } else {
                a(new a(th), false);
            }
            if (this.c != null) {
                this.c.uncaughtException(thread, th);
            }
        } catch (Throwable e) {
            j.a("MEH", "uncaughtException exception", e);
        }
    }

    private boolean f() {
        Context a = d.a();
        if (System.currentTimeMillis() - m.a(a, "crash_time", 0) > 300000) {
            m.b(a, "crash_count", 1);
            m.b(a, "crash_time", System.currentTimeMillis());
        } else {
            int a2 = m.a(a, "crash_count", 0);
            if (a2 == 0) {
                m.b(a, "crash_time", System.currentTimeMillis());
            }
            a2++;
            m.b(a, "crash_count", a2);
            if (a2 > 10) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0043 A:{SYNTHETIC, Splitter: B:18:0x0043} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0053 A:{SYNTHETIC, Splitter: B:24:0x0053} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(Throwable th) {
        Throwable e;
        ArrayList b = b();
        b.add(new a(th));
        if (b.size() > 5) {
            b.remove(0);
        }
        ObjectOutputStream objectOutputStream = null;
        ObjectOutputStream objectOutputStream2;
        try {
            objectOutputStream2 = new ObjectOutputStream(d.a().openFileOutput(".exceptiondetail", 0));
            try {
                objectOutputStream2.writeObject(b);
                if (objectOutputStream2 != null) {
                    try {
                        objectOutputStream2.close();
                    } catch (Throwable e2) {
                        j.a("MEH", "saveException exception", e2);
                    }
                }
            } catch (IOException e3) {
                e2 = e3;
                try {
                    j.a("", e2);
                    if (objectOutputStream2 == null) {
                    }
                } catch (Throwable th2) {
                    e2 = th2;
                    objectOutputStream = objectOutputStream2;
                    if (objectOutputStream != null) {
                    }
                    throw e2;
                }
            }
        } catch (IOException e4) {
            e2 = e4;
            objectOutputStream2 = null;
            j.a("", e2);
            if (objectOutputStream2 == null) {
                try {
                    objectOutputStream2.close();
                } catch (Throwable e22) {
                    j.a("MEH", "saveException exception", e22);
                }
            }
        } catch (Throwable th3) {
            e22 = th3;
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (Throwable e5) {
                    j.a("MEH", "saveException exception", e5);
                }
            }
            throw e22;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0031 A:{SYNTHETIC, Splitter: B:11:0x0031} */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0065 A:{SYNTHETIC, Splitter: B:32:0x0065} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0053 A:{SYNTHETIC, Splitter: B:25:0x0053} */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0038  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static ArrayList<a> b() {
        ArrayList<a> arrayList;
        Object obj;
        Throwable e;
        ArrayList<a> arrayList2 = new ArrayList();
        ObjectInputStream objectInputStream = null;
        ObjectInputStream objectInputStream2;
        try {
            ArrayList<a> arrayList3;
            File filesDir = d.a().getFilesDir();
            if (filesDir != null) {
                File file = new File(filesDir, ".exceptiondetail");
                if (file.isFile()) {
                    objectInputStream2 = new ObjectInputStream(new FileInputStream(file));
                    try {
                        arrayList3 = (ArrayList) objectInputStream2.readObject();
                        objectInputStream = objectInputStream2;
                        if (objectInputStream == null) {
                            try {
                                objectInputStream.close();
                                arrayList = arrayList3;
                                obj = null;
                            } catch (Throwable e2) {
                                j.a("MEH", "loadException exception", e2);
                                arrayList = arrayList3;
                                obj = null;
                            }
                        } else {
                            arrayList = arrayList3;
                            obj = null;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        try {
                            j.a("MEH", "loadException exception", e);
                            obj = 1;
                            if (objectInputStream2 == null) {
                            }
                            if (obj != null) {
                            }
                            return arrayList;
                        } catch (Throwable th) {
                            e = th;
                            objectInputStream = objectInputStream2;
                            if (objectInputStream != null) {
                                try {
                                    objectInputStream.close();
                                } catch (Throwable e22) {
                                    j.a("MEH", "loadException exception", e22);
                                }
                            }
                            throw e;
                        }
                    }
                    if (obj != null) {
                        c();
                    }
                    return arrayList;
                }
            }
            arrayList3 = arrayList2;
            if (objectInputStream == null) {
            }
        } catch (Exception e4) {
            e = e4;
            objectInputStream2 = null;
            j.a("MEH", "loadException exception", e);
            obj = 1;
            if (objectInputStream2 == null) {
                try {
                    objectInputStream2.close();
                    arrayList = arrayList2;
                } catch (Throwable e222) {
                    j.a("MEH", "loadException exception", e222);
                    arrayList = arrayList2;
                }
            } else {
                arrayList = arrayList2;
            }
            if (obj != null) {
            }
            return arrayList;
        } catch (Throwable th2) {
            e = th2;
            if (objectInputStream != null) {
            }
            throw e;
        }
        if (obj != null) {
        }
        return arrayList;
    }

    public static void c() {
        new File(d.a().getFilesDir(), ".exceptiondetail").delete();
    }

    public static boolean d() {
        return a == 2;
    }

    public static boolean e() {
        return a != 1;
    }
}
