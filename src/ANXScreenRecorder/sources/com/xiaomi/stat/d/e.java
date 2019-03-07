package com.xiaomi.stat.d;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.graphics.Point;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import android.provider.Settings.Global;
import android.provider.Settings.System;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.xiaomi.stat.C0001b;
import com.xiaomi.stat.I;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.UUID;

public class e {
    private static String A = null;
    private static String B = null;
    private static String C = null;
    private static String D = null;
    private static String E = null;
    private static Boolean F = null;
    private static String G = null;
    private static String H = null;
    private static String I = null;
    private static boolean J = false;
    private static final String a = "DeviceUtil";
    private static final int b = 15;
    private static final int c = 14;
    private static final String d = "";
    private static final long e = 7776000000L;
    private static final String f = "mistat";
    private static final String g = "device_id";
    private static final String h = "anonymous_id";
    private static Method i;
    private static Method j;
    private static Method k;
    private static Object l;
    private static Method m;
    private static String n = null;
    private static String o = null;
    private static String p = null;
    private static String q = null;
    private static String r = null;
    private static String s = null;
    private static String t = null;
    private static String u = null;
    private static String v = null;
    private static String w = null;
    private static String x = null;
    private static String y = null;
    private static String z = null;

    private static class a {
        private static final String a = "GAIDClient";

        private static final class a implements ServiceConnection {
            private static final int a = 30000;
            private boolean b;
            private IBinder c;

            private a() {
                this.b = false;
            }

            /* synthetic */ a(f fVar) {
                this();
            }

            public void onServiceConnected(ComponentName name, IBinder service) {
                synchronized (this) {
                    this.c = service;
                    notifyAll();
                }
            }

            public void onServiceDisconnected(ComponentName name) {
                this.b = true;
                this.c = null;
            }

            public IBinder a() throws InterruptedException {
                if (this.c != null) {
                    return this.c;
                }
                if (this.c == null && !this.b) {
                    synchronized (this) {
                        wait(30000);
                        if (this.c == null) {
                            throw new InterruptedException("Not connect or connect timeout to google play service");
                        }
                    }
                }
                return this.c;
            }
        }

        private static final class b implements IInterface {
            private IBinder a;

            public b(IBinder iBinder) {
                this.a = iBinder;
            }

            public IBinder asBinder() {
                return this.a;
            }

            public String a() throws RemoteException {
                if (this.a == null) {
                    return "";
                }
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    String readString = obtain2.readString();
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean a(boolean z) throws RemoteException {
                boolean z2 = true;
                if (this.a == null) {
                    return false;
                }
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    obtain.writeInt(z ? 1 : 0);
                    this.a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z2 = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z2;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        private a() {
        }

        static String a(Context context) {
            if (b(context)) {
                ServiceConnection aVar = new a();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                if (context.bindService(intent, aVar, 1)) {
                    String a;
                    try {
                        a = new b(aVar.a()).a();
                        return a;
                    } catch (Exception e) {
                        a = e;
                        k.b(a, "Query Google ADID failed ", a);
                    } finally {
                        context.unbindService(aVar);
                    }
                }
                return "";
            }
            k.b(a, "Google play service is not available");
            return "";
        }

        private static boolean b(Context context) {
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                return true;
            } catch (NameNotFoundException e) {
                return false;
            }
        }
    }

    private static class b {
        private static final String a = "box";
        private static final String b = "tvbox";
        private static final String c = "projector";
        private static final String d = "tv";
        private static final String e = "mi_device_mac";
        private static Signature[] f;
        private static final Signature g = new Signature("3082033b30820223a003020102020900a07a328482f70d2a300d06092a864886f70d01010505003035310b30090603550406130255533113301106035504080c0a43616c69666f726e69613111300f06035504070c084d6f756e7461696e301e170d3133303430313033303831325a170d3430303831373033303831325a3035310b30090603550406130255533113301106035504080c0a43616c69666f726e69613111300f06035504070c084d6f756e7461696e30820120300d06092a864886f70d01010105000382010d00308201080282010100ac678c9234a0226edbeb75a43e8e18f632d8c8a094c087fffbbb0b5e4429d845e36bffbe2d7098e320855258aa777368c18c538f968063d5d61663dc946ab03acbb31d00a27d452e12e6d42865e27d6d0ad2d8b12cf3b3096a7ec66a21db2a6a697857fd4d29fb4cdf294b3371d7601f2e3f190c0164efa543897026c719b334808e4f612fe3a3da589115fc30f9ca89862feefdf31a9164ecb295dcf7767e673be2192dda64f88189fd6e6ebd62e572c7997c2385a0ea9292ec799dee8f87596fc73aa123fb6f577d09ac0c123179c3bdbc978c2fe6194eb9fa4ab3658bfe8b44040bb13fe7809409e622189379fbc63966ab36521793547b01673ecb5f15cf020103a350304e301d0603551d0e0416041447203684e562385ada79108c4c94c5055037592f301f0603551d2304183016801447203684e562385ada79108c4c94c5055037592f300c0603551d13040530030101ff300d06092a864886f70d010105050003820101008d530fe05c6fe694c7559ddb5dd2c556528dd3cad4f7580f439f9a90a4681d37ce246b9a6681bdd5a5437f0b8bba903e39bac309fc0e9ee5553681612e723e9ec4f6abab6b643b33013f09246a9b5db7703b96f838fb27b00612f5fcd431bea32f68350ae51a4a1d012c520c401db7cccc15a7b19c4310b0c3bfc625ce5744744d0b9eeb02b0a4e7d51ed59849ce580b9f7c3062c84b9a0b13cc211e1c916c289820266a610801e3316c915649804571b147beadbf88d3b517ee04121d40630853f2f2a506bb788620de9648faeacff568e5033a666316bc2046526674ed3de25ceefdc4ad3628f1a230fd41bf9ca9f6a078173850dba555768fe1c191483ad9");

        private b() {
        }

        static boolean a(Context context) {
            if (f == null) {
                f = new Signature[]{c(context)};
            }
            if (f[0] == null || !f[0].equals(g)) {
                return false;
            }
            return true;
        }

        private static Signature a(PackageInfo packageInfo) {
            if (packageInfo == null || packageInfo.signatures == null || packageInfo.signatures.length <= 0) {
                return null;
            }
            return packageInfo.signatures[0];
        }

        private static Signature c(Context context) {
            try {
                return a(context.getPackageManager().getPackageInfo("android", 64));
            } catch (Exception e) {
                return null;
            }
        }

        public static String b(Context context) {
            Object string;
            if (VERSION.SDK_INT >= 17) {
                try {
                    string = Global.getString(context.getContentResolver(), e);
                    if (!TextUtils.isEmpty(string)) {
                        return string;
                    }
                } catch (Exception e) {
                }
            }
            string = null;
            try {
                CharSequence charSequence = Build.PRODUCT;
                CharSequence a = e.b("ro.product.model");
                if (TextUtils.equals("tv", a()) && !"batman".equals(charSequence) && !"conan".equals(charSequence)) {
                    string = 1;
                } else if ("augustrush".equals(charSequence) || "casablanca".equals(charSequence)) {
                    int i = 1;
                }
                if (TextUtils.equals("me2", charSequence)) {
                    string = e.b("persist.service.bdroid.bdaddr");
                } else if ((TextUtils.equals("transformers", charSequence) && TextUtils.equals("MiBOX4C", a)) || TextUtils.equals("dolphin-zorro", charSequence)) {
                    string = a("/sys/class/net/wlan0/address");
                } else if (string != null) {
                    string = a("/sys/class/net/eth0/address");
                } else {
                    string = a("ro.boot.btmac");
                }
                if (TextUtils.isEmpty(string)) {
                    return "";
                }
                return string.trim();
            } catch (Throwable e2) {
                k.b(e.a, "getMiTvMac exception", e2);
                return "";
            }
        }

        private static String a(String str) {
            Throwable e;
            Throwable e2;
            String str2 = "";
            Reader bufferedReader;
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(str)), 512);
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        String str3;
                        if (str2.length() > 0) {
                            str3 = str2 + "\n";
                        } else {
                            str3 = str2;
                        }
                        try {
                            str2 = str3 + readLine;
                        } catch (Throwable e3) {
                            Throwable th = e3;
                            str2 = str3;
                            e2 = th;
                        }
                    }
                    j.a(bufferedReader);
                } catch (Exception e4) {
                    e2 = e4;
                    try {
                        k.e(e.a, "catEntry exception", e2);
                        j.a(bufferedReader);
                        return str2;
                    } catch (Throwable th2) {
                        e3 = th2;
                        j.a(bufferedReader);
                        throw e3;
                    }
                }
            } catch (Exception e5) {
                e2 = e5;
                bufferedReader = null;
                k.e(e.a, "catEntry exception", e2);
                j.a(bufferedReader);
                return str2;
            } catch (Throwable th3) {
                e3 = th3;
                bufferedReader = null;
                j.a(bufferedReader);
                throw e3;
            }
            return str2;
        }

        private static String a() {
            String str = "";
            try {
                Class cls = Class.forName("mitv.common.ConfigurationManager");
                int parseInt = Integer.parseInt(String.valueOf(cls.getMethod("getProductCategory", new Class[0]).invoke(cls.getMethod("getInstance", new Class[0]).invoke(cls, new Object[0]), new Object[0])));
                Class cls2 = Class.forName("mitv.tv.TvContext");
                if (parseInt == Integer.parseInt(String.valueOf(a(cls2, "PRODUCT_CATEGORY_MITV")))) {
                    return "tv";
                }
                if (parseInt == Integer.parseInt(String.valueOf(a(cls2, "PRODUCT_CATEGORY_MIBOX")))) {
                    return a;
                }
                if (parseInt == Integer.parseInt(String.valueOf(a(cls2, "PRODUCT_CATEGORY_MITVBOX")))) {
                    return b;
                }
                if (parseInt == Integer.parseInt(String.valueOf(a(cls2, "PRODUCT_CATEGORY_MIPROJECTOR")))) {
                    return c;
                }
                return str;
            } catch (Throwable e) {
                k.b(e.a, "getMiTvProductCategory exception", e);
                return str;
            }
        }

        private static <T> T a(Class<?> cls, String str) {
            T t = null;
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField.get(null);
            } catch (Throwable e) {
                k.e(e.a, "getStaticVariableValue exception", e);
                return t;
            }
        }
    }

    static {
        try {
            i = Class.forName("android.os.SystemProperties").getMethod("get", new Class[]{String.class});
        } catch (Exception e) {
        }
        try {
            Class cls = Class.forName("miui.telephony.TelephonyManagerEx");
            l = cls.getMethod("getDefault", new Class[0]).invoke(null, new Object[0]);
            j = cls.getMethod("getImeiList", new Class[0]);
            k = cls.getMethod("getMeidList", new Class[0]);
        } catch (Exception e2) {
        }
        try {
            if (VERSION.SDK_INT >= 21) {
                m = Class.forName("android.telephony.TelephonyManager").getMethod("getImei", new Class[]{Integer.TYPE});
            }
        } catch (Exception e3) {
        }
    }

    public static void a() {
        Object obj = r.b() - C0001b.v() > e ? 1 : null;
        if (TextUtils.isEmpty(C0001b.w()) || obj != null) {
            C0001b.i(UUID.randomUUID().toString());
        }
    }

    private static String e() {
        String w = C0001b.w();
        if (!TextUtils.isEmpty(w)) {
            return w;
        }
        w = UUID.randomUUID().toString();
        C0001b.i(w);
        return w;
    }

    public static String a(Context context) {
        if (C0001b.e()) {
            return "";
        }
        if (!TextUtils.isEmpty(n)) {
            return n;
        }
        Object a = p.a(context);
        if (TextUtils.isEmpty(a)) {
            y(context);
            if (TextUtils.isEmpty(n)) {
                return "";
            }
            p.a(context, n);
            return n;
        }
        n = a;
        return n;
    }

    public static String b(Context context) {
        if (!TextUtils.isEmpty(v)) {
            return v;
        }
        String a = a(context);
        if (TextUtils.isEmpty(a)) {
            return "";
        }
        v = g.c(a);
        return v;
    }

    public static String c(Context context) {
        if (!TextUtils.isEmpty(A)) {
            return A;
        }
        String a = a(context);
        if (TextUtils.isEmpty(a)) {
            return "";
        }
        A = g.d(a);
        return A;
    }

    public static String d(Context context) {
        if (C0001b.e()) {
            return "";
        }
        if (!TextUtils.isEmpty(o)) {
            return o;
        }
        Object b = p.b(context);
        if (TextUtils.isEmpty(b)) {
            y(context);
            if (TextUtils.isEmpty(o)) {
                return "";
            }
            p.b(context, o);
            return o;
        }
        o = b;
        return o;
    }

    public static String e(Context context) {
        if (!TextUtils.isEmpty(w)) {
            return w;
        }
        String d = d(context);
        if (TextUtils.isEmpty(d)) {
            return "";
        }
        w = g.c(d);
        return w;
    }

    public static String f(Context context) {
        if (!TextUtils.isEmpty(B)) {
            return B;
        }
        String d = d(context);
        if (TextUtils.isEmpty(d)) {
            return "";
        }
        B = g.d(d);
        return B;
    }

    public static String g(Context context) {
        if (C0001b.e()) {
            return "";
        }
        if (!TextUtils.isEmpty(p)) {
            return p;
        }
        Object c = p.c(context);
        if (TextUtils.isEmpty(c)) {
            c = s(context);
            if (TextUtils.isEmpty(c)) {
                return "";
            }
            p = c;
            p.c(context, p);
            return p;
        }
        p = c;
        return p;
    }

    public static String h(Context context) {
        if (!TextUtils.isEmpty(x)) {
            return x;
        }
        String g = g(context);
        if (TextUtils.isEmpty(g)) {
            return "";
        }
        x = g.c(g);
        return x;
    }

    public static String i(Context context) {
        if (!TextUtils.isEmpty(C)) {
            return C;
        }
        String g = g(context);
        if (TextUtils.isEmpty(g)) {
            return "";
        }
        C = g.d(g);
        return C;
    }

    public static String j(Context context) {
        if (C0001b.e()) {
            return "";
        }
        if (!TextUtils.isEmpty(q)) {
            return q;
        }
        Object d = p.d(context);
        if (TextUtils.isEmpty(d)) {
            if (w(context)) {
                d = b.b(context);
            } else {
                d = B(context);
            }
            if (TextUtils.isEmpty(d)) {
                return "";
            }
            q = d;
            p.d(context, q);
            return q;
        }
        q = d;
        return q;
    }

    public static String k(Context context) {
        if (!TextUtils.isEmpty(y)) {
            return y;
        }
        String j = j(context);
        if (TextUtils.isEmpty(j)) {
            return "";
        }
        y = g.c(j);
        return y;
    }

    public static String l(Context context) {
        if (!TextUtils.isEmpty(D)) {
            return D;
        }
        String j = j(context);
        if (TextUtils.isEmpty(j)) {
            return "";
        }
        D = g.d(j);
        return D;
    }

    public static String m(Context context) {
        if (C0001b.e()) {
            return "";
        }
        if (!TextUtils.isEmpty(r)) {
            return r;
        }
        Object e = p.e(context);
        if (TextUtils.isEmpty(e)) {
            e = t(context);
            if (TextUtils.isEmpty(e)) {
                return "";
            }
            r = e;
            p.e(context, r);
            return r;
        }
        r = e;
        return r;
    }

    public static String n(Context context) {
        if (!TextUtils.isEmpty(z)) {
            return z;
        }
        String m = m(context);
        if (TextUtils.isEmpty(m)) {
            return "";
        }
        z = g.c(m);
        return z;
    }

    public static String o(Context context) {
        if (!TextUtils.isEmpty(E)) {
            return E;
        }
        String m = m(context);
        if (TextUtils.isEmpty(m)) {
            return "";
        }
        E = g.d(m);
        return E;
    }

    public static String p(Context context) {
        if (!TextUtils.isEmpty(s)) {
            return s;
        }
        Object string = System.getString(context.getContentResolver(), "android_id");
        if (TextUtils.isEmpty(string)) {
            return "";
        }
        s = string;
        return s;
    }

    public static String q(Context context) {
        if (!TextUtils.isEmpty(t)) {
            return t;
        }
        try {
            String type = context.getContentResolver().getType(Uri.parse("content://com.miui.analytics.server.AnalyticsProvider/aaid"));
            if (TextUtils.isEmpty(type)) {
                Object invoke = Class.forName("android.provider.MiuiSettings$Ad").getDeclaredMethod("getAaid", new Class[]{ContentResolver.class}).invoke(null, new Object[]{context.getContentResolver()});
                if ((invoke instanceof String) && !TextUtils.isEmpty((String) invoke)) {
                    t = (String) invoke;
                    return t;
                }
                return "";
            }
            t = type;
            return type;
        } catch (Exception e) {
            k.b(a, "getAaid failed ex: " + e.getMessage());
        }
    }

    public static String r(Context context) {
        if (!TextUtils.isEmpty(u)) {
            return u;
        }
        Object a = a.a(context);
        if (TextUtils.isEmpty(a)) {
            return "";
        }
        u = a;
        return u;
    }

    private static List<String> y(Context context) {
        List<String> g;
        List<String> list = null;
        if (a(context, "android.permission.READ_PHONE_STATE")) {
            list = f();
            if (list == null || list.isEmpty()) {
                if (VERSION.SDK_INT >= 21) {
                    list = z(context);
                } else {
                    list = A(context);
                }
            }
        }
        if (list == null || list.isEmpty()) {
            g = g();
        } else {
            g = list;
        }
        if (!(g == null || g.isEmpty())) {
            Collections.sort(g);
            n = (String) g.get(0);
            if (g.size() >= 2) {
                o = (String) g.get(1);
            }
        }
        return g;
    }

    private static List<String> f() {
        if (!(j == null || i())) {
            try {
                List list = (List) j.invoke(l, new Object[0]);
                if (!(list == null || list.size() <= 0 || a(list))) {
                    return list;
                }
            } catch (Exception e) {
                k.b(a, "getImeiListFromMiui failed ex: " + e.getMessage());
            }
        }
        return null;
    }

    private static List<String> z(Context context) {
        if (m != null) {
            try {
                List<String> arrayList = new ArrayList();
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                String str = (String) m.invoke(telephonyManager, new Object[]{Integer.valueOf(0)});
                if (c(str)) {
                    arrayList.add(str);
                }
                if (h()) {
                    String str2 = (String) m.invoke(telephonyManager, new Object[]{Integer.valueOf(1)});
                    if (c(str2)) {
                        arrayList.add(str2);
                    }
                }
                return arrayList;
            } catch (Exception e) {
                k.b(a, "getImeiListAboveLollipop failed ex: " + e.getMessage());
            }
        }
        return null;
    }

    private static List<String> A(Context context) {
        try {
            List<String> arrayList = new ArrayList();
            Class cls = Class.forName("android.telephony.TelephonyManager");
            String deviceId;
            if (h()) {
                String deviceId2 = ((TelephonyManager) cls.getMethod("getDefault", new Class[]{Integer.TYPE}).invoke(null, new Object[]{Integer.valueOf(0)})).getDeviceId();
                deviceId = ((TelephonyManager) cls.getMethod("getDefault", new Class[]{Integer.TYPE}).invoke(null, new Object[]{Integer.valueOf(1)})).getDeviceId();
                if (c(deviceId2)) {
                    arrayList.add(deviceId2);
                }
                if (c(deviceId)) {
                    arrayList.add(deviceId);
                }
                return arrayList;
            }
            deviceId = ((TelephonyManager) cls.getMethod("getDefault", new Class[0]).invoke(null, new Object[0])).getDeviceId();
            if (c(deviceId)) {
                arrayList.add(deviceId);
            }
            return arrayList;
        } catch (Exception e) {
            k.b(a, "getImeiListBelowLollipop failed ex: " + e.getMessage());
            return null;
        }
    }

    private static List<String> g() {
        List<String> arrayList = new ArrayList();
        String b = b("ro.ril.miui.imei0");
        if (TextUtils.isEmpty(b)) {
            b = b("ro.ril.oem.imei");
        }
        if (TextUtils.isEmpty(b)) {
            b = b("persist.radio.imei");
        }
        if (c(b)) {
            arrayList.add(b);
        }
        if (h()) {
            b = b("ro.ril.miui.imei1");
            if (TextUtils.isEmpty(b)) {
                b = b("ro.ril.oem.imei2");
            }
            if (TextUtils.isEmpty(b)) {
                b = b("persist.radio.imei2");
            }
            if (c(b)) {
                arrayList.add(b);
            }
        }
        return arrayList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:37:? A:{SYNTHETIC, RETURN} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String s(Context context) {
        String str;
        if (a(context, "android.permission.READ_PHONE_STATE")) {
            if (k != null) {
                try {
                    List list = (List) k.invoke(l, new Object[0]);
                    if (!(list == null || list.size() <= 0 || b(list))) {
                        Collections.sort(list);
                        return (String) list.get(0);
                    }
                } catch (Exception e) {
                    k.b(a, "queryMeid failed ex: " + e.getMessage());
                }
            }
            try {
                Class cls = Class.forName("android.telephony.TelephonyManager");
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (cls != null) {
                    Method method;
                    if (VERSION.SDK_INT >= 26) {
                        method = cls.getMethod("getMeid", new Class[0]);
                        if (method != null) {
                            str = (String) method.invoke(telephonyManager, new Object[0]);
                            if (d(str)) {
                                return str;
                            }
                        }
                    }
                    method = cls.getMethod("getDeviceId", new Class[0]);
                    if (method != null) {
                        str = (String) method.invoke(telephonyManager, new Object[0]);
                        if (d(str)) {
                        }
                    }
                }
                str = null;
                if (d(str)) {
                }
            } catch (Exception e2) {
                k.b(a, "queryMeid->getMeid failed ex: " + e2.getMessage());
            }
        }
        str = b("persist.radio.meid");
        if (d(str)) {
            return str;
        }
        str = b("ro.ril.oem.meid");
        return !d(str) ? "" : str;
    }

    private static boolean h() {
        if ("dsds".equals(b("persist.radio.multisim.config"))) {
            return true;
        }
        String str = Build.DEVICE;
        if ("lcsh92_wet_jb9".equals(str) || "lcsh92_wet_tdd".equals(str) || "HM2013022".equals(str) || "HM2013023".equals(str) || "armani".equals(str) || "HM2014011".equals(str) || "HM2014012".equals(str)) {
            return true;
        }
        return false;
    }

    private static String b(String str) {
        try {
            if (i == null) {
                return null;
            }
            return String.valueOf(i.invoke(null, new Object[]{str}));
        } catch (Exception e) {
            k.b(a, "getProp failed ex: " + e.getMessage());
            return null;
        }
    }

    private static boolean i() {
        if (VERSION.SDK_INT >= 21) {
            return false;
        }
        String str = Build.DEVICE;
        String b = b("persist.radio.modem");
        if ("HM2014812".equals(str) || "HM2014821".equals(str) || (("gucci".equals(str) && "ct".equals(b("persist.sys.modem"))) || "CDMA".equals(b) || "HM1AC".equals(b) || "LTE-X5-ALL".equals(b) || "LTE-CT".equals(b) || "MI 3C".equals(Build.MODEL))) {
            return true;
        }
        return false;
    }

    private static boolean a(List<String> list) {
        for (String c : list) {
            if (!c(c)) {
                return true;
            }
        }
        return false;
    }

    private static boolean b(List<String> list) {
        for (String d : list) {
            if (!d(d)) {
                return true;
            }
        }
        return false;
    }

    private static boolean c(String str) {
        return (str == null || str.length() != 15 || str.matches("^0*$")) ? false : true;
    }

    private static boolean d(String str) {
        return (str == null || str.length() != 14 || str.matches("^0*$")) ? false : true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0038 A:{Catch:{ Exception -> 0x0092 }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static String B(Context context) {
        if (!a(context, "android.permission.ACCESS_WIFI_STATE")) {
            return null;
        }
        CharSequence macAddress;
        Enumeration networkInterfaces;
        if (VERSION.SDK_INT < 23) {
            try {
                macAddress = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            } catch (Throwable e) {
                k.e(a, "getMAC exception: ", e);
            }
            if (TextUtils.isEmpty(macAddress) && !"02:00:00:00:00:00".equals(macAddress)) {
                return null;
            }
            networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterface = (NetworkInterface) networkInterfaces.nextElement();
                byte[] hardwareAddress = networkInterface.getHardwareAddress();
                if (!(hardwareAddress == null || hardwareAddress.length == 0)) {
                    StringBuilder stringBuilder = new StringBuilder();
                    int length = hardwareAddress.length;
                    for (int i = 0; i < length; i++) {
                        stringBuilder.append(String.format("%02x:", new Object[]{Byte.valueOf(hardwareAddress[i])}));
                    }
                    if (stringBuilder.length() > 0) {
                        stringBuilder.deleteCharAt(stringBuilder.length() - 1);
                    }
                    if ("wlan0".equals(networkInterface.getName())) {
                        return stringBuilder.toString();
                    }
                }
            }
            return null;
        }
        macAddress = null;
        if (TextUtils.isEmpty(macAddress)) {
        }
        try {
            networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
            }
            return null;
        } catch (Exception e2) {
            k.b(a, "queryMac failed ex: " + e2.getMessage());
            return null;
        }
    }

    public static String t(Context context) {
        String str = null;
        if (VERSION.SDK_INT < 26) {
            str = Build.SERIAL;
        } else if (a(context, "android.permission.READ_PHONE_STATE")) {
            try {
                String str2;
                Method method = Class.forName("android.os.Build").getMethod("getSerial", new Class[0]);
                if (method != null) {
                    str2 = (String) method.invoke(null, new Object[0]);
                } else {
                    str2 = null;
                }
                str = str2;
            } catch (Exception e) {
                k.b(a, "querySerial failed ex: " + e.getMessage());
            }
        }
        if (TextUtils.isEmpty(str) || EnvironmentCompat.MEDIA_UNKNOWN.equals(str)) {
            return "";
        }
        r = str;
        return str;
    }

    private static boolean a(Context context, String str) {
        return context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }

    public static String b() {
        return Build.MODEL;
    }

    public static String c() {
        return Build.MANUFACTURER;
    }

    public static String u(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        return String.format("%d*%d", new Object[]{Integer.valueOf(point.y), Integer.valueOf(point.x)});
    }

    public static String v(Context context) {
        if (!TextUtils.isEmpty(G)) {
            return G;
        }
        if (j()) {
            G = "Pad";
            return G;
        } else if (C(context)) {
            G = "Pad";
            return G;
        } else if (!D(context)) {
            return "Phone";
        } else {
            G = "Tv";
            return G;
        }
    }

    private static boolean j() {
        Class cls;
        try {
            cls = Class.forName("miui.os.Build");
            if (cls != null) {
                return ((Boolean) cls.getField("IS_TABLET").get(null)).booleanValue();
            }
        } catch (Exception e) {
        }
        try {
            cls = Class.forName("miui.util.FeatureParser");
            if (cls != null) {
                return ((Boolean) cls.getMethod("getBoolean", new Class[]{String.class, Boolean.TYPE}).invoke(null, new Object[]{"is_pad", Boolean.valueOf(false)})).booleanValue();
            }
        } catch (Exception e2) {
        }
        return false;
    }

    private static boolean C(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static boolean w(Context context) {
        if (F == null) {
            F = Boolean.valueOf(b.a(context));
        }
        return F.booleanValue();
    }

    private static boolean D(Context context) {
        if (b.a(context) || (context.getResources().getConfiguration().uiMode & 15) == 4) {
            return true;
        }
        return false;
    }

    public static String d() {
        if (!TextUtils.isEmpty(H)) {
            return H;
        }
        boolean e = C0001b.e();
        String s = C0001b.s();
        if (!TextUtils.isEmpty(s)) {
            if (e) {
                long b = r.b();
                if (b - C0001b.v() <= e) {
                    H = s;
                    C0001b.b(b);
                    return H;
                }
            }
            H = s;
            return H;
        }
        if (e && !p.k(I.a())) {
            Context a = I.a();
            p.b(a, true);
            s = a.getSharedPreferences(f, 0).getString(h, null);
            k.c(a, "last version instance id: " + s);
            H = s;
        }
        if (TextUtils.isEmpty(H)) {
            H = e();
        }
        C0001b.g(H);
        if (e) {
            C0001b.b(r.b());
        }
        return H;
    }

    public static String x(Context context) {
        if (!J) {
            J = true;
            if (!p.i(context)) {
                p.a(context, true);
                p.f(context, context.getSharedPreferences(f, 0).getString(g, null));
            }
            I = p.j(context);
        }
        return I;
    }
}
