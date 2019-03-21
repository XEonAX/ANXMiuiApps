package com.meicam.sdk;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public class NvsHttpsRequest {
    public String httpsRequest(String str, Map<String, String> map) {
        int i = 0;
        StringBuffer stringBuffer = new StringBuffer();
        String str2 = str + "?";
        int size = map.size();
        Iterator it = map.entrySet().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Entry entry = (Entry) it.next();
                str2 = str2 + ((String) entry.getKey()) + "=" + ((String) entry.getValue());
                i = i2 + 1;
                if (i < size) {
                    str2 = str2 + "&";
                }
            } else {
                try {
                    break;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setConnectTimeout(5000);
        httpURLConnection.connect();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            stringBuffer.append(readLine);
        }
        bufferedReader.close();
        return stringBuffer.toString();
    }
}
