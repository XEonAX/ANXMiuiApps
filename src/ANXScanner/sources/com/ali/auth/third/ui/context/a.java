package com.ali.auth.third.ui.context;

import android.app.Activity;
import android.text.TextUtils;
import android.webkit.WebView;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.login.LoginConstants;
import org.json.JSONObject;

public class a {
    public WebView a;
    public int b;

    private void d(String str) {
        if (this.a != null) {
            this.a.loadUrl(str);
        }
    }

    private static String e(String str) {
        return str.replace("\\", "\\\\");
    }

    public Activity a() {
        return (Activity) this.a.getContext();
    }

    public void a(int i, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(LoginConstants.CODE, i);
            jSONObject.put(LoginConstants.MESSAGE, str);
            b(jSONObject.toString());
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public void a(final String str) {
        KernelContext.executorService.postUITask(new Runnable() {
            public void run() {
                String format;
                if (TextUtils.isEmpty(str)) {
                    format = String.format("javascript:window.HavanaBridge.onSuccess(%s);", new Object[]{Integer.valueOf(a.this.b)});
                } else {
                    format = String.format("javascript:window.HavanaBridge.onSuccess(%s,'%s');", new Object[]{Integer.valueOf(a.this.b), a.e(str)});
                }
                a.this.d(format);
            }
        });
    }

    public void b(final String str) {
        KernelContext.executorService.postUITask(new Runnable() {
            public void run() {
                String format;
                if (TextUtils.isEmpty(str)) {
                    format = String.format("javascript:window.HavanaBridge.onFailure(%s,'');", new Object[]{Integer.valueOf(a.this.b)});
                } else {
                    format = String.format("javascript:window.HavanaBridge.onFailure(%s,'%s');", new Object[]{Integer.valueOf(a.this.b), a.e(str)});
                }
                a.this.d(format);
            }
        });
    }
}
