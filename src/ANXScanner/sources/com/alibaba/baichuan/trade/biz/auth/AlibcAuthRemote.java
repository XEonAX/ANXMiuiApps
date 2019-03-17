package com.alibaba.baichuan.trade.biz.auth;

import java.util.List;

public interface AlibcAuthRemote {
    List<String> getHintList(String str);

    void postHintList(String str, List<String> list);
}
