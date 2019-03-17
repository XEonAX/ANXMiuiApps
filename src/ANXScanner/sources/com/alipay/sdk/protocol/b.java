package com.alipay.sdk.protocol;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.tid.a;
import com.alipay.sdk.tid.c;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public final class b {
    public a a;
    public String[] b;
    private String c;

    private b(String str) {
        this.c = str;
    }

    private b(String str, a aVar) {
        this.c = str;
        this.a = aVar;
    }

    private static void a(b bVar) {
        String[] strArr = bVar.b;
        if (strArr.length == 3 && TextUtils.equals("tid", strArr[0])) {
            Context context = com.alipay.sdk.sys.b.a().a;
            com.alipay.sdk.tid.b a = com.alipay.sdk.tid.b.a();
            c a2 = c.a(com.alipay.sdk.sys.b.a().a);
            if (!TextUtils.isEmpty(strArr[1]) && !TextUtils.isEmpty(strArr[2])) {
                a2.a(strArr[1], strArr[2]);
                a aVar = new a(context);
                try {
                    aVar.a(com.alipay.sdk.util.a.a(context).a(), com.alipay.sdk.util.a.a(context).b(), a.a, a.b);
                } catch (Exception e) {
                } finally {
                    aVar.close();
                }
            }
        }
    }

    public static List<b> a(JSONObject jSONObject) {
        List<b> arrayList = new ArrayList();
        if (jSONObject == null) {
            return arrayList;
        }
        Object optString = jSONObject.optString("name", "");
        String[] strArr = null;
        if (!TextUtils.isEmpty(optString)) {
            strArr = optString.split(";");
        }
        for (int i = 0; i < strArr.length; i++) {
            a a = a.a(strArr[i]);
            if (a != a.None) {
                b bVar = new b(strArr[i], a);
                bVar.b = a(strArr[i]);
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    private static String[] a(String str) {
        List arrayList = new ArrayList();
        int indexOf = str.indexOf(40);
        int lastIndexOf = str.lastIndexOf(41);
        if (indexOf == -1 || lastIndexOf == -1 || lastIndexOf <= indexOf) {
            return null;
        }
        String[] split = str.substring(indexOf + 1, lastIndexOf).split(",");
        if (split != null) {
            for (indexOf = 0; indexOf < split.length; indexOf++) {
                if (!TextUtils.isEmpty(split[indexOf])) {
                    arrayList.add(split[indexOf].trim().replaceAll("'", "").replaceAll("\"", ""));
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    private static String[] b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split(";");
    }

    private String a() {
        return this.c;
    }

    private a b() {
        return this.a;
    }

    private String[] c() {
        return this.b;
    }
}
