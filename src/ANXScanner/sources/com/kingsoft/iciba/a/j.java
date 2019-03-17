package com.kingsoft.iciba.a;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONArray;
import org.json.JSONObject;

final class j implements Runnable {
    private /* synthetic */ File a;
    private /* synthetic */ Context b;
    private /* synthetic */ long c;

    j(File file, Context context, long j) {
        this.a = file;
        this.b = context;
        this.c = j;
    }

    public final void run() {
        try {
            if (this.a.exists() && this.a.length() > 0) {
                HashMap hashMap = (HashMap) new ObjectInputStream(new FileInputStream(this.a)).readObject();
                if (hashMap.size() > 0) {
                    JSONObject jSONObject;
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("type", 2);
                    if (hashMap.containsKey("click_event")) {
                        jSONObject = new JSONObject();
                        HashMap hashMap2 = (HashMap) hashMap.get("click_event");
                        for (String str : hashMap2.keySet()) {
                            jSONObject.put(str, new JSONObject((String) hashMap2.get(str)).getInt("click_number"));
                        }
                        jSONObject2.put("click_event", jSONObject);
                    }
                    if (hashMap.containsKey("search_history")) {
                        JSONArray jSONArray = new JSONArray();
                        hashMap = (HashMap) hashMap.get("search_history");
                        for (String str2 : hashMap.keySet()) {
                            jSONObject = new JSONObject();
                            jSONArray.put(jSONObject);
                            jSONObject.put("word", str2);
                            jSONObject.put("word_history", new JSONObject((String) hashMap.get(str2)));
                        }
                        jSONObject2.put("search_history", jSONArray);
                    }
                    String str22 = e.b(this.b, jSONObject2, this.c);
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL("https://counter.kingsoft.com/index2.php").openConnection();
                    httpsURLConnection.setConnectTimeout(1000);
                    httpsURLConnection.setReadTimeout(10000);
                    httpsURLConnection.setDoOutput(true);
                    httpsURLConnection.setUseCaches(false);
                    httpsURLConnection.setRequestMethod("POST");
                    if (str22.getBytes().length >= 2048) {
                        httpsURLConnection.setRequestProperty("Accept-Encoding", "gzip,deflate");
                    }
                    PrintWriter printWriter = new PrintWriter(httpsURLConnection.getOutputStream());
                    printWriter.print("q=" + URLEncoder.encode(str22, "UTF-8"));
                    printWriter.flush();
                    printWriter.close();
                    httpsURLConnection.getInputStream();
                    if (200 == httpsURLConnection.getResponseCode()) {
                        this.a.delete();
                    }
                }
            }
        } catch (Throwable e) {
            Log.e("KStatistics", "Upload data failed", e);
        }
    }
}
