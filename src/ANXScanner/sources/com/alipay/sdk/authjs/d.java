package com.alipay.sdk.authjs;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.Toast;
import com.alipay.sdk.authjs.a.a;
import com.taobao.ma.common.constants.MaConstants;
import java.util.Timer;
import org.json.JSONException;
import org.json.JSONObject;

public final class d {
    c a;
    Context b;

    public d(Context context, c cVar) {
        this.b = context;
        this.a = cVar;
    }

    private void a(String str) {
        String str2;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString(a.e);
            try {
                if (!TextUtils.isEmpty(string)) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("param");
                    if (jSONObject2 instanceof JSONObject) {
                        jSONObject2 = jSONObject2;
                    } else {
                        jSONObject2 = null;
                    }
                    String string2 = jSONObject.getString(a.g);
                    String string3 = jSONObject.getString(a.d);
                    a aVar = new a("call");
                    aVar.j = string3;
                    aVar.k = string2;
                    aVar.m = jSONObject2;
                    aVar.i = string;
                    a(aVar);
                }
            } catch (Exception e) {
                str2 = string;
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        a(str2, a.d);
                    } catch (JSONException e2) {
                    }
                }
            }
        } catch (Exception e3) {
            str2 = null;
        }
    }

    public final void a(String str, int i) throws JSONException {
        if (!TextUtils.isEmpty(str)) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("error", i - 1);
            a aVar = new a(a.c);
            aVar.m = jSONObject;
            aVar.i = str;
            this.a.a(aVar);
        }
    }

    private static void a(Runnable runnable) {
        if ((Looper.getMainLooper() == Looper.myLooper() ? 1 : null) != null) {
            runnable.run();
        } else {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    private int b(a aVar) {
        if (aVar != null && "toast".equals(aVar.k)) {
            JSONObject jSONObject = aVar.m;
            CharSequence optString = jSONObject.optString(MaConstants.UT_PARAM_KEY_CONTENT);
            int optInt = jSONObject.optInt("duration");
            int i = 1;
            if (optInt < 2500) {
                i = 0;
            }
            Toast.makeText(this.b, optString, i).show();
            new Timer().schedule(new f(this, aVar), (long) i);
        }
        return a.a;
    }

    public final void a(a aVar) throws JSONException {
        if (TextUtils.isEmpty(aVar.k)) {
            a(aVar.i, a.c);
            return;
        }
        Runnable eVar = new e(this, aVar);
        if ((Looper.getMainLooper() == Looper.myLooper() ? 1 : null) != null) {
            eVar.run();
        } else {
            new Handler(Looper.getMainLooper()).post(eVar);
        }
    }

    private void c(a aVar) {
        JSONObject jSONObject = aVar.m;
        CharSequence optString = jSONObject.optString(MaConstants.UT_PARAM_KEY_CONTENT);
        int optInt = jSONObject.optInt("duration");
        int i = 1;
        if (optInt < 2500) {
            i = 0;
        }
        Toast.makeText(this.b, optString, i).show();
        new Timer().schedule(new f(this, aVar), (long) i);
    }
}
