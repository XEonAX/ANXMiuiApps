package com.alibaba.baichuan.trade.biz.applink.adapter;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeTraceCallback;
import java.util.Map;

class a implements AlibcTaokeTraceCallback {
    final /* synthetic */ Context a;
    final /* synthetic */ String b;
    final /* synthetic */ Map c;
    final /* synthetic */ AlibcApplinkPlugin d;

    a(AlibcApplinkPlugin alibcApplinkPlugin, Context context, String str, Map map) {
        this.d = alibcApplinkPlugin;
        this.a = context;
        this.b = str;
        this.c = map;
    }

    public void getTaokeUrl(int i, String str) {
        if (!TextUtils.isEmpty(str)) {
            AlibcApplink.getInstance().jumpTBURI(this.a, str, this.d.a(this.b), this.d.a(this.c), this.d.f(this.c), this.d.b(this.c), this.d.g(this.c));
        }
    }
}
