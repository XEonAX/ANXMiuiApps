package com.alibaba.baichuan.android.trade.ui;

import android.view.View;
import android.view.View.OnClickListener;

class b implements OnClickListener {
    final /* synthetic */ AlibcWebViewActivity a;

    b(AlibcWebViewActivity alibcWebViewActivity) {
        this.a = alibcWebViewActivity;
    }

    public void onClick(View view) {
        this.a.onBackPressed();
    }
}
