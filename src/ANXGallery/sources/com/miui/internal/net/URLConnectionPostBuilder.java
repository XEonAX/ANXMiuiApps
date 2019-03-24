package com.miui.internal.net;

import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.URLEncoder;
import java.util.List;
import org.keyczar.Keyczar;

public class URLConnectionPostBuilder extends URLConnectionBuilder {
    public URLConnectionPostBuilder(String str) throws IOException {
        super(str);
    }

    public void post(OutputStream outputStream, List<KeyValuePair> list, String str) throws IOException {
        Throwable th;
        StringBuilder stringBuilder = new StringBuilder();
        for (KeyValuePair keyValuePair : list) {
            if (!TextUtils.isEmpty(stringBuilder)) {
                stringBuilder.append("&");
            }
            stringBuilder.append(URLEncoder.encode(keyValuePair.getKey(), str));
            stringBuilder.append("=");
            stringBuilder.append(URLEncoder.encode(keyValuePair.getValue(), str));
        }
        BufferedWriter bufferedWriter = null;
        try {
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(outputStream, str));
            try {
                bufferedWriter2.write(stringBuilder.toString());
                bufferedWriter2.flush();
                try {
                    bufferedWriter2.close();
                } catch (IOException e) {
                    Log.e("URLConnectionBuilder", e.getMessage());
                }
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException e2) {
                        Log.e("URLConnectionBuilder", e2.getMessage());
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter = bufferedWriter2;
            }
        } catch (Throwable th3) {
            th = th3;
            if (bufferedWriter != null) {
                try {
                    bufferedWriter.close();
                } catch (IOException e3) {
                    Log.e("URLConnectionBuilder", e3.getMessage());
                }
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e22) {
                    Log.e("URLConnectionBuilder", e22.getMessage());
                }
            }
            throw th;
        }
    }

    public void post(List<KeyValuePair> list) throws IOException {
        post(this.urlConnection.getOutputStream(), list, Keyczar.DEFAULT_ENCODING);
    }
}
