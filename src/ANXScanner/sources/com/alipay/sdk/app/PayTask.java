package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.ali.auth.third.login.LoginConstants;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;
import com.alipay.sdk.data.c;
import com.alipay.sdk.sys.b;
import com.alipay.sdk.util.H5PayResultModel;
import com.alipay.sdk.util.e;
import com.alipay.sdk.util.h;
import com.alipay.sdk.util.i;
import com.alipay.sdk.util.j;
import com.alipay.sdk.util.l;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import mtopsdk.common.util.SymbolExpUtil;
import org.json.JSONObject;

public class PayTask {
    static final Object a = e.class;
    private Activity b;
    private com.alipay.sdk.widget.a c;
    private String d = "wappaygw.alipay.com/service/rest.htm";
    private String e = "mclient.alipay.com/service/rest.htm";
    private String f = "mclient.alipay.com/home/exterfaceAssign.htm";
    private Map<String, a> g = new HashMap();

    private class a {
        String a;
        String b;

        private a() {
            this.a = "";
            this.b = "";
        }

        /* synthetic */ a(PayTask payTask, byte b) {
            this();
        }

        private String a() {
            return this.a;
        }

        private void a(String str) {
            this.a = str;
        }

        private String b() {
            return this.b;
        }

        private void b(String str) {
            this.b = str;
        }
    }

    public PayTask(Activity activity) {
        this.b = activity;
        b a = b.a();
        Context context = this.b;
        c.a();
        a.a(context);
        com.alipay.sdk.app.statistic.a.a(activity);
        this.c = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.b);
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x00b9 A:{SYNTHETIC, Splitter: B:41:0x00b9} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x007d A:{Catch:{ Throwable -> 0x012f, Throwable -> 0x0139 }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized String pay(String str, boolean z) {
        String str2;
        Object obj = null;
        synchronized (this) {
            String a;
            if (z) {
                b();
            }
            if (str.contains(com.alipay.sdk.cons.a.q)) {
                com.alipay.sdk.cons.a.r = true;
            }
            if (com.alipay.sdk.cons.a.r) {
                if (str.startsWith(com.alipay.sdk.cons.a.s)) {
                    str = str.substring(str.indexOf(com.alipay.sdk.cons.a.s) + 53);
                } else if (str.startsWith(com.alipay.sdk.cons.a.t)) {
                    str = str.substring(str.indexOf(com.alipay.sdk.cons.a.t) + 52);
                }
            }
            try {
                Context applicationContext;
                String a2 = new com.alipay.sdk.sys.a(this.b).a(str);
                if (!a2.contains("paymethod=\"expressGateway\"") && l.c(this.b)) {
                    e eVar = new e(this.b, new h(this));
                    a = eVar.a(a2);
                    eVar.a = null;
                    if (!TextUtils.equals(a, e.b)) {
                        if (TextUtils.isEmpty(a)) {
                            a = i.a();
                        }
                        applicationContext = this.b.getApplicationContext();
                        if (!TextUtils.isEmpty(a)) {
                            String[] split = a.split(";");
                            int i = 0;
                            while (i < split.length) {
                                if (split[i].startsWith(h.c) && split[i].endsWith(h.d)) {
                                    String[] split2 = split[i].substring(8, split[i].length() - 1).split("&");
                                    int i2 = 0;
                                    while (i2 < split2.length) {
                                        if (split2[i2].startsWith(h.e) && split2[i2].endsWith("\"")) {
                                            obj = split2[i2].substring(13, split2[i2].length() - 1);
                                            break;
                                        } else if (split2[i2].startsWith(h.g)) {
                                            obj = split2[i2].substring(12);
                                            break;
                                        } else {
                                            i2++;
                                        }
                                    }
                                }
                                i++;
                            }
                        }
                        if (!TextUtils.isEmpty(obj)) {
                            i.a(applicationContext, h.a, obj);
                        }
                        com.alipay.sdk.data.a.b().a(this.b.getApplicationContext());
                        c();
                        com.alipay.sdk.app.statistic.a.b(this.b.getApplicationContext(), str);
                        str2 = a;
                    }
                }
                a = b(a2);
                applicationContext = this.b.getApplicationContext();
                if (TextUtils.isEmpty(a)) {
                }
                if (TextUtils.isEmpty(obj)) {
                }
            } catch (Throwable th) {
                try {
                    str2 = i.a();
                } finally {
                    com.alipay.sdk.data.a.b().a(this.b.getApplicationContext());
                    c();
                    com.alipay.sdk.app.statistic.a.b(this.b.getApplicationContext(), str);
                }
            }
            com.alipay.sdk.data.a.b().a(this.b.getApplicationContext());
            c();
            com.alipay.sdk.app.statistic.a.b(this.b.getApplicationContext(), str);
            str2 = a;
        }
        return str2;
    }

    public synchronized Map<String, String> payV2(String str, boolean z) {
        return j.a(pay(str, z));
    }

    public synchronized String fetchTradeToken() {
        return i.b(this.b.getApplicationContext(), h.a, "");
    }

    public synchronized boolean payInterceptorWithUrl(String str, boolean z, H5PayCallback h5PayCallback) {
        CharSequence fetchOrderInfoFromH5PayUrl;
        fetchOrderInfoFromH5PayUrl = fetchOrderInfoFromH5PayUrl(str);
        if (!TextUtils.isEmpty(fetchOrderInfoFromH5PayUrl)) {
            new Thread(new g(this, fetchOrderInfoFromH5PayUrl, z, h5PayCallback)).start();
        }
        return !TextUtils.isEmpty(fetchOrderInfoFromH5PayUrl);
    }

    public synchronized String fetchOrderInfoFromH5PayUrl(String str) {
        String trim;
        if (!TextUtils.isEmpty(str)) {
            String trim2 = str.trim();
            if (trim2.startsWith("https://" + this.d) || trim2.startsWith("http://" + this.d)) {
                trim = trim2.replaceFirst("(http|https)://" + this.d + "\\?", "").trim();
                if (!TextUtils.isEmpty(trim)) {
                    trim = "_input_charset=\"utf-8\"&ordertoken=\"" + l.a("<request_token>", "</request_token>", (String) l.a(trim).get("req_data")) + "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\"" + new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative") + "\"";
                }
            }
            try {
                if (trim2.startsWith("https://" + this.e) || trim2.startsWith("http://" + this.e)) {
                    trim = trim2.replaceFirst("(http|https)://" + this.e + "\\?", "").trim();
                    if (!TextUtils.isEmpty(trim)) {
                        trim = "_input_charset=\"utf-8\"&ordertoken=\"" + l.a("<request_token>", "</request_token>", (String) l.a(trim).get("req_data")) + "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\"" + new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative") + "\"";
                    }
                }
                if ((trim2.startsWith("https://" + this.f) || trim2.startsWith("http://" + this.f)) && ((trim2.contains("alipay.wap.create.direct.pay.by.user") || trim2.contains("create_forex_trade_wap")) && !TextUtils.isEmpty(trim2.replaceFirst("(http|https)://" + this.f + "\\?", "").trim()))) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("url", str);
                        jSONObject.put("bizcontext", new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative"));
                        trim = "new_external_info==" + jSONObject.toString();
                    } catch (Throwable th) {
                    }
                }
                if (Pattern.compile("^(http|https)://(maliprod\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mali\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mclient\\.alipay\\.com\\/w\\/trade_pay\\.do.?)").matcher(str).find()) {
                    trim = l.a("?", "", str);
                    if (!TextUtils.isEmpty(trim)) {
                        Map a = l.a(trim);
                        StringBuilder stringBuilder = new StringBuilder();
                        if (a(false, true, com.alipay.sdk.app.statistic.c.J, stringBuilder, a, com.alipay.sdk.app.statistic.c.J, "alipay_trade_no")) {
                            a(true, false, "pay_phase_id", stringBuilder, a, "payPhaseId", "pay_phase_id", "out_relation_id");
                            stringBuilder.append("&biz_sub_type=\"TRADE\"");
                            stringBuilder.append("&biz_type=\"trade\"");
                            trim = (String) a.get("app_name");
                            if (TextUtils.isEmpty(trim) && !TextUtils.isEmpty((CharSequence) a.get(TUnionNetworkRequest.TUNION_KEY_CID))) {
                                trim = "ali1688";
                            } else if (TextUtils.isEmpty(trim) && !(TextUtils.isEmpty((CharSequence) a.get(LoginConstants.SID)) && TextUtils.isEmpty((CharSequence) a.get("s_id")))) {
                                trim = "tb";
                            }
                            stringBuilder.append("&app_name=\"" + trim + "\"");
                            if (a(true, true, "extern_token", stringBuilder, a, "extern_token", TUnionNetworkRequest.TUNION_KEY_CID, LoginConstants.SID, "s_id")) {
                                a(true, false, "appenv", stringBuilder, a, "appenv");
                                stringBuilder.append("&pay_channel_id=\"alipay_sdk\"");
                                a aVar = new a(this, (byte) 0);
                                aVar.a = (String) a.get("return_url");
                                aVar.b = (String) a.get("pay_order_id");
                                trim = stringBuilder.toString() + "&bizcontext=\"" + new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative") + "\"";
                                this.g.put(trim, aVar);
                            } else {
                                trim = "";
                            }
                        }
                    }
                }
                if (trim2.contains("mclient.alipay.com/cashier/mobilepay.htm") || (EnvUtils.isSandBox() && trim2.contains("mobileclientgw.alipaydev.com/cashier/mobilepay.htm"))) {
                    trim = new com.alipay.sdk.sys.a(this.b).a("sc", "h5tonative");
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("url", trim2);
                    jSONObject2.put("bizcontext", trim);
                    trim = String.format("new_external_info==%s", new Object[]{jSONObject2.toString()});
                }
            } catch (Throwable th2) {
            }
        }
        trim = "";
        return trim;
    }

    private static boolean a(boolean z, boolean z2, String str, StringBuilder stringBuilder, Map<String, String> map, String... strArr) {
        String str2;
        String str3 = "";
        for (Object obj : strArr) {
            if (!TextUtils.isEmpty((CharSequence) map.get(obj))) {
                str2 = (String) map.get(obj);
                break;
            }
        }
        str2 = str3;
        if (TextUtils.isEmpty(str2)) {
            if (z2) {
                return false;
            }
        } else if (z) {
            stringBuilder.append("&").append(str).append("=\"").append(str2).append("\"");
        } else {
            stringBuilder.append(str).append("=\"").append(str2).append("\"");
        }
        return true;
    }

    public synchronized H5PayResultModel h5Pay(String str, boolean z) {
        H5PayResultModel h5PayResultModel;
        synchronized (this) {
            H5PayResultModel h5PayResultModel2 = new H5PayResultModel();
            try {
                str.trim();
                String[] split = pay(str, z).split(";");
                Map hashMap = new HashMap();
                for (String str2 : split) {
                    String substring = str2.substring(0, str2.indexOf("={"));
                    String str3 = substring + "={";
                    hashMap.put(substring, str2.substring(str3.length() + str2.indexOf(str3), str2.lastIndexOf(h.d)));
                }
                if (hashMap.containsKey(j.a)) {
                    h5PayResultModel2.setResultCode((String) hashMap.get(j.a));
                }
                if (hashMap.containsKey("callBackUrl")) {
                    h5PayResultModel2.setReturnUrl((String) hashMap.get("callBackUrl"));
                } else if (hashMap.containsKey("result")) {
                    try {
                        String str4 = (String) hashMap.get("result");
                        if (str4.length() > 15) {
                            a aVar = (a) this.g.get(str);
                            if (aVar != null) {
                                if (TextUtils.isEmpty(aVar.b)) {
                                    h5PayResultModel2.setReturnUrl(aVar.a);
                                } else {
                                    h5PayResultModel2.setReturnUrl(com.alipay.sdk.data.a.b().j.replace("$OrderId$", aVar.b));
                                }
                                this.g.remove(str);
                                h5PayResultModel = h5PayResultModel2;
                            } else {
                                CharSequence a = l.a("&callBackUrl=\"", "\"", str4);
                                if (TextUtils.isEmpty(a)) {
                                    a = l.a("&call_back_url=\"", "\"", str4);
                                    if (TextUtils.isEmpty(a)) {
                                        a = l.a(com.alipay.sdk.cons.a.o, "\"", str4);
                                        if (TextUtils.isEmpty(a)) {
                                            a = URLDecoder.decode(l.a(com.alipay.sdk.cons.a.p, "&", str4), SymbolExpUtil.CHARSET_UTF8);
                                            if (TextUtils.isEmpty(a)) {
                                                a = URLDecoder.decode(l.a("&callBackUrl=", "&", str4), SymbolExpUtil.CHARSET_UTF8);
                                            }
                                        }
                                    }
                                }
                                if (TextUtils.isEmpty(a) && !TextUtils.isEmpty(str4) && str4.contains("call_back_url")) {
                                    str4 = l.b("call_back_url=\"", "\"", str4);
                                } else {
                                    CharSequence charSequence = a;
                                }
                                if (TextUtils.isEmpty(str4)) {
                                    str4 = com.alipay.sdk.data.a.b().j;
                                }
                                h5PayResultModel2.setReturnUrl(str4);
                            }
                        } else {
                            a aVar2 = (a) this.g.get(str);
                            if (aVar2 != null) {
                                h5PayResultModel2.setReturnUrl(aVar2.a);
                                this.g.remove(str);
                                h5PayResultModel = h5PayResultModel2;
                            }
                        }
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
            }
            h5PayResultModel = h5PayResultModel2;
        }
        return h5PayResultModel;
    }

    private static String a(String str, String str2) {
        String str3 = str2 + "={";
        return str.substring(str3.length() + str.indexOf(str3), str.lastIndexOf(h.d));
    }

    private com.alipay.sdk.util.e.a a() {
        return new h(this);
    }

    private void b() {
        if (this.c != null) {
            this.c.a();
        }
    }

    private void c() {
        if (this.c != null) {
            this.c.b();
            this.c = null;
        }
    }

    private String a(String str) {
        String a = new com.alipay.sdk.sys.a(this.b).a(str);
        if (a.contains("paymethod=\"expressGateway\"")) {
            return b(a);
        }
        if (!l.c(this.b)) {
            return b(a);
        }
        e eVar = new e(this.b, new h(this));
        String a2 = eVar.a(a);
        eVar.a = null;
        if (TextUtils.equals(a2, e.b)) {
            return b(a);
        }
        if (TextUtils.isEmpty(a2)) {
            return i.a();
        }
        return a2;
    }

    public String getVersion() {
        return com.alipay.sdk.cons.a.f;
    }

    private String b(String str) {
        j jVar;
        int i = 0;
        b();
        com.alipay.sdk.tid.a aVar;
        try {
            List a = com.alipay.sdk.protocol.b.a(new com.alipay.sdk.packet.impl.e().a(this.b.getApplicationContext(), str).a().optJSONObject(com.alipay.sdk.cons.c.c).optJSONObject(com.alipay.sdk.cons.c.d));
            for (int i2 = 0; i2 < a.size(); i2++) {
                if (((com.alipay.sdk.protocol.b) a.get(i2)).a == com.alipay.sdk.protocol.a.Update) {
                    String[] strArr = ((com.alipay.sdk.protocol.b) a.get(i2)).b;
                    if (strArr.length == 3 && TextUtils.equals("tid", strArr[0])) {
                        Context context = b.a().a;
                        com.alipay.sdk.tid.b a2 = com.alipay.sdk.tid.b.a();
                        com.alipay.sdk.tid.c a3 = com.alipay.sdk.tid.c.a(b.a().a);
                        if (!(TextUtils.isEmpty(strArr[1]) || TextUtils.isEmpty(strArr[2]))) {
                            a3.a(strArr[1], strArr[2]);
                            aVar = new com.alipay.sdk.tid.a(context);
                            aVar.a(com.alipay.sdk.util.a.a(context).a(), com.alipay.sdk.util.a.a(context).b(), a2.a, a2.b);
                            aVar.close();
                        }
                    }
                }
            }
            c();
            while (i < a.size()) {
                if (((com.alipay.sdk.protocol.b) a.get(i)).a == com.alipay.sdk.protocol.a.WapPay) {
                    String a4 = a((com.alipay.sdk.protocol.b) a.get(i));
                    c();
                    return a4;
                }
                i++;
            }
            c();
            jVar = null;
        } catch (Exception e) {
            aVar.close();
        } catch (Throwable e2) {
            j a5 = j.a(j.NETWORK_ERROR.h);
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.a, e2);
            c();
            jVar = a5;
        } catch (Throwable th) {
            c();
        }
        if (jVar == null) {
            jVar = j.a(j.FAILED.h);
        }
        return i.a(jVar.h, jVar.i, "");
    }

    private String a(com.alipay.sdk.protocol.b bVar) {
        String[] strArr = bVar.b;
        Intent intent = new Intent(this.b, H5PayActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("url", strArr[0]);
        if (strArr.length == 2) {
            bundle.putString("cookie", strArr[1]);
        }
        intent.putExtras(bundle);
        this.b.startActivity(intent);
        synchronized (a) {
            try {
                a.wait();
            } catch (InterruptedException e) {
                return i.a();
            }
        }
        String str = i.a;
        if (TextUtils.isEmpty(str)) {
            return i.a();
        }
        return str;
    }
}
