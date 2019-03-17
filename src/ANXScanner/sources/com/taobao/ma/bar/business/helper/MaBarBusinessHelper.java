package com.taobao.ma.bar.business.helper;

import java.util.Map;
import java.util.Map.Entry;

public class MaBarBusinessHelper {
    public static String buildUrl(String uri, Map<String, String> args) {
        StringBuilder sb = new StringBuilder(args.size());
        sb.append(uri);
        int i = 0;
        for (Entry<String, String> param : args.entrySet()) {
            if (i == 0) {
                sb.append("?").append((String) param.getKey()).append("=").append((String) param.getValue());
            } else {
                sb.append("&").append((String) param.getKey()).append("=").append((String) param.getValue());
            }
            i++;
        }
        return sb.toString();
    }
}
