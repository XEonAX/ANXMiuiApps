package com.alibaba.baichuan.trade.biz.core.config;

class b implements Runnable {
    final /* synthetic */ AlibcConfigService a;

    b(AlibcConfigService alibcConfigService) {
        this.a = alibcConfigService;
    }

    public void run() {
        if (this.a.f != null) {
            this.a.f.startProcessor();
        }
        this.a.h.postDelayed(this.a.a, this.a.a());
    }
}
