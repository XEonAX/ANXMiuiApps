package com.alibaba.mtl.appmonitor.b;

import android.content.Context;
import com.alibaba.mtl.appmonitor.SdkMeta;
import com.alibaba.mtl.appmonitor.a.f;
import com.alibaba.mtl.appmonitor.a.h;
import com.alibaba.mtl.appmonitor.c.a;
import com.alibaba.mtl.appmonitor.c.d;
import com.alibaba.mtl.appmonitor.c.e;
import com.alibaba.mtl.appmonitor.f.c;
import com.alibaba.wireless.security.open.nocaptcha.INoCaptchaComponent;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: ExceptionEventBuilder */
public class b {
    /* renamed from: a */
    public static void m7a(Context context, Throwable th) {
        if (th != null) {
            try {
                h hVar = (h) a.a().a(h.class, new Object[0]);
                hVar.e = f.ALARM.a();
                Map hashMap = new HashMap();
                hashMap.put("meta", SdkMeta.getSDKMetaData());
                com.alibaba.mtl.appmonitor.c.b bVar = (d) a.a().a(d.class, new Object[0]);
                bVar.put(a(context, th));
                hashMap.put(com.alipay.sdk.packet.d.k, bVar);
                hVar.n.put(f.ALARM.a(), new JSONObject(hashMap).toString());
                hVar.v = "APPMONITOR";
                hVar.w = "sdk-exception";
                c.a(hVar);
                a.a().a(bVar);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static void m8a(Throwable th) {
        a(null, th);
    }

    private static JSONObject a(Context context, Throwable th) throws IOException {
        JSONObject jSONObject = (JSONObject) a.a().a(e.class, new Object[0]);
        if (context != null) {
            try {
                jSONObject.put("pname", com.alibaba.mtl.log.d.b.a(context));
            } catch (Exception e) {
            }
        }
        jSONObject.put("page", "APPMONITOR");
        jSONObject.put("monitorPoint", "sdk-exception");
        jSONObject.put("arg", th.getClass().getSimpleName());
        jSONObject.put("successCount", 0);
        jSONObject.put("failCount", 1);
        List arrayList = new ArrayList();
        String a = a(th);
        if (a != null) {
            JSONObject jSONObject2 = (JSONObject) a.a().a(e.class, new Object[0]);
            jSONObject2.put(INoCaptchaComponent.errorCode, a);
            jSONObject2.put("errorCount", 1);
            arrayList.add(jSONObject2);
        }
        jSONObject.put("errors", arrayList);
        return jSONObject;
    }

    private static String a(Throwable th) throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(th.getClass().getName());
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace != null) {
            for (StackTraceElement stackTraceElement : stackTrace) {
                stringBuilder.append(stackTraceElement.toString());
            }
        }
        String stringBuilder2 = stringBuilder.toString();
        if (com.alibaba.mtl.appmonitor.f.b.d(stringBuilder2)) {
            return th.toString();
        }
        return stringBuilder2;
    }
}
