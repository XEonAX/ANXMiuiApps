package com.alibaba.baichuan.trade.biz.auth;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.Environment;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.StringUtils;
import com.alibaba.baichuan.trade.common.utils.http.HttpHelper;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import mtopsdk.common.util.SymbolExpUtil;

final class a extends AsyncTask<String, String, String> {
    final /* synthetic */ String a;
    final /* synthetic */ AlibcAuthListener b;
    final /* synthetic */ boolean c;
    final /* synthetic */ boolean d;

    a(String str, AlibcAuthListener alibcAuthListener, boolean z, boolean z2) {
        this.a = str;
        this.b = alibcAuthListener;
        this.c = z;
        this.d = z2;
    }

    /* renamed from: a */
    protected String doInBackground(String... strArr) {
        String str = "";
        if (AlibcTradeCommon.getEnvironment() == Environment.TEST) {
            str = String.format("http://100.69.205.47/authHint.htm?apiList=[\"%s\"]", new Object[]{this.a.replace(SymbolExpUtil.SYMBOL_DOLLAR, LoginConstants.UNDER_LINE)});
        } else if (AlibcTradeCommon.getEnvironment() == Environment.PRE) {
            str = String.format("http://pre.nbsdk-baichuan.taobao.com/authHint.htm?apiList=[\"%s\"]", new Object[]{this.a.replace(SymbolExpUtil.SYMBOL_DOLLAR, LoginConstants.UNDER_LINE)});
        } else {
            str = String.format("https://nbsdk-baichuan.alicdn.com/authHint.htm?apiList=[\"%s\"]", new Object[]{this.a.replace(SymbolExpUtil.SYMBOL_DOLLAR, LoginConstants.UNDER_LINE)});
        }
        String str2 = "";
        try {
            AlibcLogger.e("alibc", "getHint : url  " + str);
            str2 = HttpHelper.get(str, null);
            AlibcLogger.e("alibc", "getHint : url  " + str + " " + str2);
            return str2;
        } catch (Exception e) {
            Exception exception = e;
            str = str2;
            exception.printStackTrace();
            return str;
        }
    }

    /* renamed from: a */
    protected void onPostExecute(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                this.b.onError(AliAuthError.HINTLIST_NULL.code, AliAuthError.HINTLIST_NULL.msg);
                return;
            }
            JSONObject parseObject = JSON.parseObject(str);
            Set set = null;
            if (StringUtils.obj2Boolean(parseObject.get("success"))) {
                Map obj2MapObject = StringUtils.obj2MapObject(parseObject.get("authHintMap"));
                if (obj2MapObject != null && obj2MapObject.size() > 0) {
                    Set hashSet = new HashSet(obj2MapObject.size());
                    for (String str2 : obj2MapObject.keySet()) {
                        Map obj2MapString = StringUtils.obj2MapString(obj2MapObject.get(str2));
                        if (obj2MapString != null) {
                            b.a((String) obj2MapString.get("hintId"), (String) obj2MapString.get("hintName"));
                            hashSet.add(obj2MapString.get("hintId"));
                        }
                    }
                    b.a(this.a, hashSet);
                    set = hashSet;
                }
            }
            if (set == null || set.size() <= 0) {
                this.b.onError(AliAuthError.HINTLIST_NULL.code, AliAuthError.HINTLIST_NULL.msg);
            } else if (this.c) {
                AlibcAuth.a(set, this.b, this.d);
            } else {
                this.b.onSuccess();
            }
        } catch (Exception e) {
            this.b.onError(AliAuthError.HINTLIST_NULL.code, AliAuthError.HINTLIST_NULL.msg);
            e.printStackTrace();
        }
    }
}
