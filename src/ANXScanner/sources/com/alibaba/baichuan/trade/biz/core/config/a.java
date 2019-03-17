package com.alibaba.baichuan.trade.biz.core.config;

import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.http.HttpHelper;
import com.alibaba.baichuan.trade.common.utils.http.HttpHelper.HttpHelpterException;
import org.json.JSONException;
import org.json.JSONObject;

class a implements Runnable {
    final /* synthetic */ AlibcConfigBusiness a;

    a(AlibcConfigBusiness alibcConfigBusiness) {
        this.a = alibcConfigBusiness;
    }

    public void run() {
        try {
            if (!AlibcConfigBusiness.e().equals(this.a.a)) {
                this.a.a = AlibcConfigBusiness.e();
            }
            AlibcLogger.d("AlibcConfigBusiness", "开始从网络拉取config数据,url为：" + this.a.a);
            String str = HttpHelper.get(this.a.a, null);
            JSONObject jSONObject = new JSONObject(str);
            AlibcLogger.d("AlibcConfigBusiness", "网络拉取的config数据为" + (jSONObject != null ? jSONObject.toString() : null));
            AlibcConfigAdapter alibcConfigAdapter = new AlibcConfigAdapter();
            alibcConfigAdapter.formatFromJSON(jSONObject);
            if (alibcConfigAdapter == null || !this.a.a(alibcConfigAdapter)) {
                AlibcLogger.e("AlibcConfigBusiness", "config文件校验失败");
                this.a.a(AlibcConfigBusiness.EM_CHECK_FAILURE);
                this.a.c.onError("config文件校验失败");
                return;
            }
            AlibcLogger.d("AlibcConfigBusiness", "网络拉取config数据成功");
            this.a.d();
            this.a.c.onSuccess(alibcConfigAdapter, str);
        } catch (JSONException e) {
            AlibcLogger.e("AlibcConfigBusiness", "解析JSON出错" + e.getMessage());
            this.a.a(AlibcConfigBusiness.EM_ANALYSE_FAILURE);
            this.a.c.onError(e.getMessage());
        } catch (Exception e2) {
            if (e2 instanceof HttpHelpterException) {
                AlibcLogger.e("AlibcConfigBusiness", "获取Http网络错误" + e2.getMessage());
                HttpHelpterException httpHelpterException = (HttpHelpterException) e2;
                this.a.a(httpHelpterException.statusCode == HttpHelper.INVALID_RESPONSE_CODE ? null : String.valueOf(httpHelpterException.statusCode), "网络错误");
                this.a.c.onError(e2.getMessage());
            }
        }
    }
}
