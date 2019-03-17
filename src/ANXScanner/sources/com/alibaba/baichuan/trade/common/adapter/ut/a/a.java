package com.alibaba.baichuan.trade.common.adapter.ut.a;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.ExecutorServiceUtils;
import com.alibaba.mtl.appmonitor.AppMonitor;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

public class a {
    private Map<String, String> a = new HashMap();
    private String b;

    private a() {
    }

    public static a a() {
        return new a();
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0018 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String b(Map<String, String> map) {
        String encode;
        UnsupportedEncodingException e;
        if (map == null || map.isEmpty()) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (String str : map.keySet()) {
            String str2;
            String str3 = (String) map.get(str2);
            if (str3 != null) {
                try {
                    encode = URLEncoder.encode(str3, "UTF-8");
                } catch (UnsupportedEncodingException e2) {
                    UnsupportedEncodingException unsupportedEncodingException = e2;
                    encode = str3;
                    e = unsupportedEncodingException;
                }
            } else {
                encode = str3;
            }
            try {
                str2 = URLEncoder.encode(str2, "UTF-8");
            } catch (UnsupportedEncodingException e3) {
                e = e3;
            }
            if (encode == null) {
                stringBuffer.append("&").append(str2).append("=").append(encode);
            }
        }
        return stringBuffer.toString().substring(1);
        AlibcLogger.e(AppMonitor.TAG, e.getMessage());
        if (encode == null) {
        }
    }

    public a a(long j) {
        if (j > 0) {
            this.a.put(AppLinkConstants.TIME, "" + j);
        }
        return this;
    }

    public a a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.b = str;
        }
        return this;
    }

    public a a(Map<String, String> map) {
        if (map != null) {
            this.a.putAll(map);
        }
        return this;
    }

    public a b() {
        Object obj = AlibcTradeCommon.ttid;
        if (!(this.a.containsKey(AlibcConstants.TTID) || TextUtils.isEmpty(obj))) {
            this.a.put(AlibcConstants.TTID, "" + obj);
        }
        return this;
    }

    public a b(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.a.put("sdktype", str);
        }
        return this;
    }

    public a c(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.a.put("page", str);
        }
        return this;
    }

    public void c() {
        if (TextUtils.isEmpty(this.b)) {
            throw new IllegalArgumentException("spm is null");
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(String.format("https://wgo.mmstat.com/%s?", new Object[]{this.b})).append(b(this.a));
        if (stringBuffer.toString().length() > 8000) {
            if (this.a.containsKey("param")) {
                this.a.remove("param");
            }
            stringBuffer = new StringBuffer();
            stringBuffer.append(String.format("https://wgo.mmstat.com/%s?", new Object[]{this.b})).append(b(this.a));
            if (stringBuffer.toString().length() > 8000) {
                this.a.clear();
                this.a.put(AlibcConstants.TTID, AlibcTradeCommon.ttid);
                this.a.put("appkey", AlibcTradeCommon.getAppKey());
                this.a.put("sdktype", "mini");
                stringBuffer = new StringBuffer();
                stringBuffer.append(String.format("https://wgo.mmstat.com/%s?", new Object[]{this.b})).append(b(this.a));
            }
        }
        String stringBuffer2 = stringBuffer.toString();
        AlibcLogger.d("Aplus", stringBuffer2);
        ExecutorServiceUtils.getInstance().postHandlerTask(new b(this, stringBuffer2));
    }
}
