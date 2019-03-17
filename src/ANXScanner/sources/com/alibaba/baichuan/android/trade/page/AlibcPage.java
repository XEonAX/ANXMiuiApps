package com.alibaba.baichuan.android.trade.page;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.alibaba.baichuan.android.trade.AlibcContext;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.applink.AlibcApplinkData;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcPidTaokeComponent;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeTraceCallback;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import com.alibaba.baichuan.trade.common.adapter.security.AlibcSecurityGuard;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AlibcPage extends AlibcBasePage {
    public Map<String, String> additionalHttpHeaders;

    public AlibcPage(String str) {
        this.a = str;
    }

    private String a(String str) {
        return !TextUtils.isEmpty(str) ? str.matches("^\\d+$") ? str : String.valueOf(AlibcSecurityGuard.getInstance().analyzeItemId(str)) : "";
    }

    private boolean a() {
        if (this.a == null) {
            return false;
        }
        for (String matches : AlibcContext.detailPatterns) {
            if (this.a.trim().matches(matches)) {
                return true;
            }
        }
        return false;
    }

    private boolean b() {
        if (this.a == null) {
            return false;
        }
        for (String matches : AlibcContext.shopPatterns) {
            if (this.a.trim().matches(matches)) {
                return true;
            }
        }
        return false;
    }

    private boolean c() {
        if (this.a == null) {
            return false;
        }
        for (String matches : AlibcContext.tunionUrlPatterns) {
            if (this.a.trim().matches(matches)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkParams() {
        return (getClass().getSuperclass() != null && getClass().getSuperclass().getName().equals(AlibcPage.class.getName())) || this.a != null;
    }

    public String genOpenUrl() {
        return URLUtil.isNetworkUrl(this.a) ? this.a.trim() : null;
    }

    public Map<String, String> getAdditionalHttpHeaders() {
        return this.additionalHttpHeaders;
    }

    public String getApi() {
        return UserTrackerConstants.E_SHOWPAGE;
    }

    public AlibcApplinkData getApplinkData() {
        Uri parse;
        Object obj;
        if (b()) {
            try {
                parse = Uri.parse(genOpenUrl());
                if (parse == null) {
                    obj = "";
                } else {
                    String obj2 = parse.getQueryParameter(AlibcConstants.URL_SHOP_ID);
                }
                if (!TextUtils.isEmpty(obj2)) {
                    return new AlibcApplinkData(2, obj2);
                }
            } catch (Throwable e) {
                AlibcLogger.e("AlibcPage", "uri parse error", e);
            }
        } else if (a()) {
            try {
                parse = Uri.parse(genOpenUrl());
                obj2 = a(parse == null ? "" : parse.getQueryParameter(AlibcConstants.ID));
                if (!TextUtils.isEmpty(obj2)) {
                    return new AlibcApplinkData(1, obj2);
                }
            } catch (Throwable e2) {
                AlibcLogger.e("AlibcPage", "uri parse error", e2);
            }
        }
        return super.getApplinkData();
    }

    public boolean needTaoke(AlibcTradeTaokeParam alibcTradeTaokeParam) {
        return (!a() || alibcTradeTaokeParam == null) ? (b() && alibcTradeTaokeParam != null && alibcTradeTaokeParam.isAdZoneIdExist()) ? true : c() && alibcTradeTaokeParam != null && alibcTradeTaokeParam.isAdZoneIdExist() : true;
    }

    public void taokeTraceAndGenUrl(AlibcTradeTaokeParam alibcTradeTaokeParam, AlibcTradeContext alibcTradeContext, AlibcTaokeTraceCallback alibcTaokeTraceCallback) {
        boolean z = false;
        if (!TextUtils.isEmpty(this.a)) {
            for (String matches : AlibcContext.detailPatterns) {
                if (this.a.matches(matches)) {
                    z = true;
                }
            }
            if (z) {
                Matcher matcher = Pattern.compile("(\\?|&)id=([^&?]*)").matcher(this.a);
                Object obj = null;
                if (matcher.find()) {
                    String group = matcher.group();
                    obj = group.substring(group.indexOf(61) + 1);
                }
                HashMap hashMap = new HashMap();
                hashMap.put("itemId", obj);
                AlibcPidTaokeComponent.INSTANCE.genUrlAndTaokeTrace(hashMap, genOpenUrl(), true, alibcTradeTaokeParam, getApi(), alibcTaokeTraceCallback);
            }
        }
    }
}
