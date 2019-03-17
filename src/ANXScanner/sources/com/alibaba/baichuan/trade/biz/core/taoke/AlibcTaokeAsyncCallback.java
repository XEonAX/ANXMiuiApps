package com.alibaba.baichuan.trade.biz.core.taoke;

import java.io.Serializable;

public interface AlibcTaokeAsyncCallback extends Serializable {
    void onFailure(int i, String str);

    void onSuccess();
}
