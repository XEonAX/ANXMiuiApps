package com.kingsoft.iciba.powerwordocrjar;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.ali.auth.third.login.LoginConstants;
import com.hanvon.ocrtranslate.a;
import com.xiaomi.scanner.stats.UsageStatistics;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class n implements e {
    private static int h = 998;
    public boolean a = false;
    private String b;
    private String c = "";
    private String d = "";
    private Handler e = new Handler(Looper.getMainLooper());
    private long f = 0;
    private int g = 0;
    private m i;
    private f j;
    private String k;
    private int l = 0;

    public n(Context context, f fVar) {
        this.j = fVar;
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static ArrayList a(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        try {
            switch (!jSONObject.isNull("translate_type") ? jSONObject.getInt("translate_type") : 1) {
                case 1:
                    if (!jSONObject.isNull("symbols")) {
                        JSONArray jSONArray = jSONObject.getJSONArray("symbols");
                        for (int i = 0; i < 1; i++) {
                            BaseInfoBean baseInfoBean = new BaseInfoBean();
                            if (!jSONObject.isNull("word_name")) {
                            }
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            if (jSONObject2.isNull("ph_en")) {
                                baseInfoBean.ukSymbol = jSONObject2.getString("word_symbol");
                            } else {
                                baseInfoBean.ukSymbol = jSONObject2.getString("ph_en");
                                baseInfoBean.usSymbol = jSONObject2.getString("ph_am");
                                baseInfoBean.ttsSymbol = jSONObject2.getString("ph_other");
                            }
                            JSONArray jSONArray2 = jSONObject2.getJSONArray("parts");
                            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                jSONObject2 = jSONArray2.getJSONObject(i2);
                                ShiyiBean shiyiBean = new ShiyiBean();
                                shiyiBean.cixing = jSONObject2.getString("part");
                                JSONArray jSONArray3 = jSONObject2.getJSONArray("means");
                                StringBuilder stringBuilder = new StringBuilder();
                                for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                                    stringBuilder.append(jSONArray3.getString(i3)).append(";");
                                }
                                shiyiBean.shiyi = stringBuilder.toString();
                                baseInfoBean.shiyiBeans.add(shiyiBean);
                            }
                            arrayList.add(baseInfoBean);
                        }
                        break;
                    }
                    break;
                case 2:
                    BaseInfoBean baseInfoBean2 = new BaseInfoBean();
                    if (!jSONObject.isNull("word_name")) {
                    }
                    ShiyiBean shiyiBean2 = new ShiyiBean();
                    shiyiBean2.shiyi = jSONObject.getString(UsageStatistics.KEY_TRANSLATE_RESULT);
                    baseInfoBean2.shiyiBeans.add(shiyiBean2);
                    arrayList.add(baseInfoBean2);
                    break;
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    private HttpPost a(String str) {
        String encode = URLEncoder.encode(str);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(d.a);
        stringBuffer.append("?c=word");
        stringBuffer.append("&list=");
        stringBuffer.append("1");
        stringBuffer.append("&client=");
        stringBuffer.append(1);
        String valueOf = String.valueOf(System.currentTimeMillis() / 1000);
        stringBuffer.append("&timestamp=");
        stringBuffer.append(valueOf);
        stringBuffer.append("&sign=");
        stringBuffer.append(a.a("word", "1", valueOf));
        stringBuffer.append("&uuid=");
        stringBuffer.append("");
        stringBuffer.append("&sv=");
        stringBuffer.append("android").append(VERSION.RELEASE);
        stringBuffer.append("&v=");
        stringBuffer.append("");
        stringBuffer.append("&uid=");
        stringBuffer.append("");
        if (this.g != 0) {
            stringBuffer.append("&tran_from=").append(this.g);
        }
        HttpPost httpPost = new HttpPost(stringBuffer.toString());
        httpPost.addHeader("Accept-Encoding", "gzip,deflate");
        List arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("word", encode));
        try {
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return httpPost;
    }

    public void a(j jVar, Object obj) {
        long currentTimeMillis = System.currentTimeMillis();
        long j = 0;
        if (currentTimeMillis - this.f < 100) {
            j = Math.abs(100 - (currentTimeMillis - this.f));
        }
        String str = (String) obj;
        h.a().b(Integer.valueOf(this.l), this);
        if (!this.a) {
            if (TextUtils.isEmpty(str)) {
                this.e.post(new o(this));
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str).getJSONObject(LoginConstants.MESSAGE).getJSONObject("baesInfo");
                if (jSONObject.getInt("translate_type") == 1 || jSONObject.getInt("translate_type") == 2 || !this.c.isEmpty()) {
                    this.e.postDelayed(new q(this, jSONObject), j);
                } else {
                    this.e.post(new p(this));
                }
            } catch (JSONException e) {
                this.e.post(new r(this));
                e.printStackTrace();
            }
        }
    }

    public void a(m mVar) {
        b(mVar);
        a(mVar, false);
    }

    public void a(m mVar, boolean z) {
        this.i = mVar;
        this.b = mVar.a;
        this.g = mVar.b;
        this.a = false;
        a(this.b, z);
    }

    public void a(String str, boolean z) {
        this.l = this.l == 0 ? h : this.l;
        this.k = str;
        h.a().a(Integer.valueOf(this.l), (e) this);
        new Thread(new s(this, str, z)).start();
    }

    public void b(m mVar) {
        this.b = mVar.a;
        this.g = mVar.b;
        this.i = mVar;
    }
}
