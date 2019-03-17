package com.alibaba.baichuan.trade.biz.utils;

import java.util.regex.Pattern;

public class AlibcTradeSclickUtil {
    public static final String[] RE_SCLICK_URLS = new String[]{"^http(s)?://s\\.click\\.(taobao|tmall)\\.com/(.*)"};

    public static boolean isSclickUrl(String str) {
        if (str == null) {
            return false;
        }
        for (String matches : RE_SCLICK_URLS) {
            if (Pattern.matches(matches, str)) {
                return true;
            }
        }
        return false;
    }
}
