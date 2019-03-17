package com.alibaba.baichuan.trade.common.webview.jsbridge;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class AlibcJsBridgeService {
    private static List<AlibcJSAPIAuthCheck> a = Collections.synchronizedList(new ArrayList());

    public interface AlibcJSAPIAuthCheck {
        boolean a(String str, String str2, String str3, String str4);
    }

    public static List<AlibcJSAPIAuthCheck> a() {
        return a;
    }
}
