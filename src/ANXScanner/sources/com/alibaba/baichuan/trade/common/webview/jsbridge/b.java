package com.alibaba.baichuan.trade.common.webview.jsbridge;

import android.os.AsyncTask;

class b extends AsyncTask<Void, Integer, Void> {
    final /* synthetic */ c a;
    final /* synthetic */ String b;
    final /* synthetic */ a c;

    b(a aVar, c cVar, String str) {
        this.c = aVar;
        this.a = cVar;
        this.b = str;
    }

    /* renamed from: a */
    protected Void doInBackground(Void... voidArr) {
        this.c.b(this.a, this.b);
        return null;
    }
}
