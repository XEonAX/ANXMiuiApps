package com.baidu.homework.network;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map.Entry;
import org.apache.http.a.a.a.b;
import org.apache.http.a.a.h;

public final class d extends Request {
    private final byte[] a;
    private final String b;
    private h c = new h();

    public d(String str, byte[] bArr, String str2, HashMap<String, String> hashMap) {
        super(str, null);
        this.a = bArr;
        this.b = str2;
    }

    public final byte[] getBody() {
        byte[] bArr = this.a;
        String str = this.b;
        this.c.a(str, new b(bArr, str));
        HashMap params = getParams();
        if (params != null && params.size() > 0) {
            for (Entry entry : params.entrySet()) {
                try {
                    this.c.a((String) entry.getKey(), new org.apache.http.a.a.a.d((String) entry.getValue(), Charset.forName("UTF-8")));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        }
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            this.c.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final String getContentType() {
        return this.c.getContentType().getValue();
    }
}
