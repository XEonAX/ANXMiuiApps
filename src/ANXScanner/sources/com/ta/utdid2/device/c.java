package com.ta.utdid2.device;

import android.content.Context;
import android.provider.Settings.System;
import com.ta.utdid2.b.a.b;
import com.ta.utdid2.b.a.e;
import com.ta.utdid2.b.a.g;
import com.ta.utdid2.b.a.i;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.Random;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: UTUtdid */
public class c {
    private static c a = null;
    private static final Object f = new Object();
    private static final String o = (".UTSystemConfig" + File.separator + "Global");
    /* renamed from: a */
    private com.ta.utdid2.c.a.c f90a = null;
    /* renamed from: a */
    private d f91a = null;
    /* renamed from: a */
    private Pattern f92a = Pattern.compile("[^0-9a-zA-Z=/+]+");
    private com.ta.utdid2.c.a.c b = null;
    private String l = null;
    private String m = "xx_utdid_key";
    private Context mContext = null;
    private String n = "xx_utdid_domain";

    public c(Context context) {
        this.mContext = context;
        this.b = new com.ta.utdid2.c.a.c(context, o, "Alvin2", false, true);
        this.a = new com.ta.utdid2.c.a.c(context, ".DataStorage", "ContextData", false, true);
        this.a = new d();
        this.m = String.format("K_%d", new Object[]{Integer.valueOf(i.a(this.m))});
        this.n = String.format("D_%d", new Object[]{Integer.valueOf(i.a(this.n))});
    }

    private void d() {
        Object obj = 1;
        if (this.b != null) {
            if (i.a(this.b.getString("UTDID2"))) {
                String string = this.b.getString("UTDID");
                if (!i.a(string)) {
                    f(string);
                }
            }
            Object obj2 = null;
            if (!i.a(this.b.getString("DID"))) {
                this.b.remove("DID");
                obj2 = 1;
            }
            if (!i.a(this.b.getString("EI"))) {
                this.b.remove("EI");
                obj2 = 1;
            }
            if (i.a(this.b.getString("SI"))) {
                obj = obj2;
            } else {
                this.b.remove("SI");
            }
            if (obj != null) {
                this.b.commit();
            }
        }
    }

    public static c a(Context context) {
        if (context != null && a == null) {
            synchronized (f) {
                if (a == null) {
                    a = new c(context);
                    a.d();
                }
            }
        }
        return a;
    }

    private void f(String str) {
        if (b(str)) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (str.length() == 24 && this.b != null) {
                this.b.putString("UTDID2", str);
                this.b.commit();
            }
        }
    }

    private void g(String str) {
        if (str != null && this.a != null && !str.equals(this.a.getString(this.m))) {
            this.a.putString(this.m, str);
            this.a.commit();
        }
    }

    private void h(String str) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0 && b(str)) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (24 == str.length()) {
                String str2 = null;
                try {
                    str2 = System.getString(this.mContext.getContentResolver(), "mqBRboGZkQPcAkyk");
                } catch (Exception e) {
                }
                if (!b(str2)) {
                    try {
                        System.putString(this.mContext.getContentResolver(), "mqBRboGZkQPcAkyk", str);
                    } catch (Exception e2) {
                    }
                }
            }
        }
    }

    private void i(String str) {
        Object obj = null;
        try {
            obj = System.getString(this.mContext.getContentResolver(), "dxCRMxhQkdGePGnp");
        } catch (Exception e) {
        }
        if (!str.equals(obj)) {
            try {
                System.putString(this.mContext.getContentResolver(), "dxCRMxhQkdGePGnp", str);
            } catch (Exception e2) {
            }
        }
    }

    private void j(String str) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0 && str != null) {
            i(str);
        }
    }

    private String g() {
        if (this.b != null) {
            String string = this.b.getString("UTDID2");
            if (!(i.a(string) || this.a.a(string) == null)) {
                return string;
            }
        }
        return null;
    }

    private boolean b(String str) {
        if (str == null) {
            return false;
        }
        CharSequence str2;
        if (str2.endsWith("\n")) {
            str2 = str2.substring(0, str2.length() - 1);
        }
        if (24 != str2.length() || this.a.matcher(str2).find()) {
            return false;
        }
        return true;
    }

    public synchronized String getValue() {
        String str;
        if (this.l != null) {
            str = this.l;
        } else {
            str = h();
        }
        return str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x0075 A:{Catch:{ Exception -> 0x0085 }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized String h() {
        String str;
        str = "";
        try {
            str = System.getString(this.mContext.getContentResolver(), "mqBRboGZkQPcAkyk");
        } catch (Exception e) {
        }
        if (!b(str)) {
            String string;
            e eVar = new e();
            Object obj = null;
            try {
                string = System.getString(this.mContext.getContentResolver(), "dxCRMxhQkdGePGnp");
            } catch (Exception e2) {
                string = null;
            }
            if (i.a(string)) {
                obj = 1;
            } else {
                str = eVar.c(string);
                if (b(str)) {
                    h(str);
                } else {
                    str = eVar.b(string);
                    if (b(str)) {
                        str = this.a.a(str);
                        if (!i.a(str)) {
                            j(str);
                            try {
                                str = System.getString(this.mContext.getContentResolver(), "dxCRMxhQkdGePGnp");
                            } catch (Exception e3) {
                                str = string;
                            }
                            string = this.a.b(str);
                            if (b(string)) {
                                this.l = string;
                                f(string);
                                g(str);
                                h(this.l);
                                str = this.l;
                            }
                        }
                    }
                    str = string;
                    string = this.a.b(str);
                    if (b(string)) {
                    }
                }
            }
            str = g();
            if (b(str)) {
                String a = this.a.a(str);
                if (obj != null) {
                    j(a);
                }
                h(str);
                g(a);
                this.l = str;
            } else {
                string = this.a.getString(this.m);
                if (!i.a(string)) {
                    str = eVar.b(string);
                    if (!b(str)) {
                        str = this.a.b(string);
                    }
                    if (b(str)) {
                        string = this.a.a(str);
                        if (!i.a(str)) {
                            this.l = str;
                            if (obj != null) {
                                j(string);
                            }
                            f(this.l);
                            str = this.l;
                        }
                    }
                }
                try {
                    byte[] a2 = a();
                    if (a2 != null) {
                        this.l = b.encodeToString(a2, 2);
                        f(this.l);
                        str = this.a.c(a2);
                        if (str != null) {
                            if (obj != null) {
                                j(str);
                            }
                            g(str);
                        }
                        str = this.l;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                str = null;
            }
        }
        return str;
    }

    private final byte[] a() throws Exception {
        String a;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int nextInt = new Random().nextInt();
        byte[] bytes = e.getBytes(currentTimeMillis);
        byte[] bytes2 = e.getBytes(nextInt);
        byteArrayOutputStream.write(bytes, 0, 4);
        byteArrayOutputStream.write(bytes2, 0, 4);
        byteArrayOutputStream.write(3);
        byteArrayOutputStream.write(0);
        try {
            a = g.a(this.mContext);
        } catch (Exception e) {
            a = new Random().nextInt();
        }
        byteArrayOutputStream.write(e.getBytes(i.a(a)), 0, 4);
        a = "";
        byteArrayOutputStream.write(e.getBytes(i.a(b(byteArrayOutputStream.toByteArray()))));
        return byteArrayOutputStream.toByteArray();
    }

    private static String b(byte[] bArr) throws Exception {
        Mac instance = Mac.getInstance("HmacSHA1");
        instance.init(new SecretKeySpec("d6fc3a4a06adbde89223bvefedc24fecde188aaa9161".getBytes(), instance.getAlgorithm()));
        return b.encodeToString(instance.doFinal(bArr), 2);
    }
}
