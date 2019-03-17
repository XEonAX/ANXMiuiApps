package com.alibaba.mtl.log.sign;

import android.content.Context;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.mtl.log.a;
import com.alibaba.mtl.log.d.i;
import com.alibaba.wireless.security.open.securesignature.SecureSignatureDefine;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Map;

public class SecurityRequestAuth implements IRequestAuth {
    private boolean F = false;
    private String Y;
    private Class a = null;
    /* renamed from: a */
    private Field f66a = null;
    /* renamed from: a */
    private Method f67a = null;
    private Object b = null;
    /* renamed from: b */
    private Field f68b = null;
    private Object c = null;
    /* renamed from: c */
    private Field f69c = null;
    private String g = null;
    private int z = 1;

    public String getAppkey() {
        return this.g;
    }

    public SecurityRequestAuth(String aAppkey, String authCode) {
        this.g = aAppkey;
        this.Y = authCode;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0045 A:{SYNTHETIC, Splitter: B:12:0x0045} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void E() {
        Throwable th;
        Class cls = null;
        synchronized (this) {
            if (!this.F) {
                Class cls2;
                try {
                    cls2 = Class.forName("com.alibaba.wireless.security.open.SecurityGuardManager");
                    try {
                        this.b = cls2.getMethod("getInstance", new Class[]{Context.class}).invoke(null, new Object[]{a.getContext()});
                        this.c = cls2.getMethod("getSecureSignatureComp", new Class[0]).invoke(this.b, new Object[0]);
                    } catch (Throwable th2) {
                        th = th2;
                        i.a("SecurityRequestAuth", "initSecurityCheck", th);
                        if (cls2 != null) {
                        }
                        this.F = true;
                        return;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cls2 = cls;
                }
                if (cls2 != null) {
                    Method method;
                    boolean booleanValue;
                    try {
                        this.a = Class.forName("com.alibaba.wireless.security.open.SecurityGuardParamContext");
                        this.a = this.a.getDeclaredField(LoginConstants.KEY_APPKEY);
                        this.b = this.a.getDeclaredField("paramMap");
                        this.c = this.a.getDeclaredField("requestType");
                        method = cls2.getMethod("isOpen", new Class[0]);
                    } catch (Throwable th4) {
                        i.a("SecurityRequestAuth", "initSecurityCheck", th4);
                    }
                    if (method != null) {
                        booleanValue = ((Boolean) method.invoke(this.b, new Object[0])).booleanValue();
                    } else {
                        try {
                            cls = Class.forName("com.taobao.wireless.security.sdk.securitybody.ISecurityBodyComponent");
                        } catch (Throwable th42) {
                            i.a("SecurityRequestAuth", "initSecurityCheck", th42);
                        }
                        if (cls == null) {
                            booleanValue = true;
                        } else {
                            booleanValue = false;
                        }
                    }
                    this.z = booleanValue ? 1 : 12;
                    this.a = Class.forName("com.alibaba.wireless.security.open.securesignature.ISecureSignatureComponent").getMethod("signRequest", new Class[]{this.a, String.class});
                }
                this.F = true;
            }
        }
        return;
    }

    public String getSign(String toBeSignedStr) {
        if (!this.F) {
            E();
        }
        if (this.g == null) {
            i.a("SecurityRequestAuth", "There is no appkey,please check it!");
            return null;
        } else if (toBeSignedStr == null) {
            return null;
        } else {
            String str;
            if (!(this.b == null || this.a == null || this.a == null || this.b == null || this.c == null || this.a == null || this.c == null)) {
                try {
                    Object newInstance = this.a.newInstance();
                    this.a.set(newInstance, this.g);
                    ((Map) this.b.get(newInstance)).put(SecureSignatureDefine.OPEN_KEY_SIGN_INPUT, toBeSignedStr);
                    this.c.set(newInstance, Integer.valueOf(this.z));
                    str = (String) this.a.invoke(this.c, new Object[]{newInstance, this.Y});
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return str;
            }
            str = null;
            return str;
        }
    }
}
