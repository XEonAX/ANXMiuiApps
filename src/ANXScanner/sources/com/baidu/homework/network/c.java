package com.baidu.homework.network;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

public final class c extends Request {
    public c(String str, HashMap<String, String> hashMap) {
        super(str, hashMap);
    }

    public final byte[] getBody() {
        Iterator it = getParams().entrySet().iterator();
        StringBuilder stringBuilder = new StringBuilder();
        while (it.hasNext()) {
            String encode;
            Entry entry = (Entry) it.next();
            stringBuilder.append((String) entry.getKey());
            stringBuilder.append('=');
            String str = "";
            try {
                encode = URLEncoder.encode((String) entry.getValue(), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                encode = str;
            }
            stringBuilder.append(encode);
            if (it.hasNext()) {
                stringBuilder.append('&');
            }
        }
        try {
            return stringBuilder.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final String getContentType() {
        return "application/x-www-form-urlencoded; charset=UTF-8";
    }
}
