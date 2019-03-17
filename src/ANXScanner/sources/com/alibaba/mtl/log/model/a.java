package com.alibaba.mtl.log.model;

import android.text.TextUtils;
import com.alibaba.mtl.log.d.c;
import com.alibaba.mtl.log.d.h;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.n;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/* compiled from: Log */
public class a {
    public String S;
    public String T = "3";
    private String U;
    public String V = null;
    public String W = "";
    public int id;
    private Map<String, String> n;
    private String u;
    private String v;
    private String w;
    private String x;

    public a(String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        this.S = str2;
        this.u = str;
        this.v = str3;
        this.w = str4;
        this.x = str5;
        this.n = map;
        this.V = String.valueOf(System.currentTimeMillis());
        r();
    }

    public String getContent() {
        try {
            byte[] decode = c.decode(this.U.getBytes("UTF-8"), 2);
            if (decode != null) {
                return new String(n.a(decode, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"));
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public String k() {
        return this.U;
    }

    public void setContent(String content) {
        if (content != null) {
            try {
                this.U = new String(c.encode(n.a(content.getBytes(), "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"), 2), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
    }

    public void j(String str) {
        this.U = str;
    }

    public String toString() {
        return "Log [id=" + this.id + ", eventId=" + this.S + ", index=" + this.W + "]";
    }

    public void r() {
        if (TextUtils.isEmpty(this.V)) {
            this.V = String.valueOf(System.currentTimeMillis());
        }
        i.a("UTLog", this, h.a(this.u, this.S, this.v, this.w, this.x, this.n, this.W, this.V));
        setContent(r0);
    }
}
