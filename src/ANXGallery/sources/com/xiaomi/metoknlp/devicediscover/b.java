package com.xiaomi.metoknlp.devicediscover;

import android.content.Context;

/* compiled from: WifiCampStatistics */
public class b {
    private String b;
    private long c;
    private long d;
    private long e;
    private Context mContext;
    private long mDuration;

    public b(Context context) {
        this.mContext = context;
        reset();
    }

    public void reset() {
        this.b = null;
        this.c = 0;
        this.mDuration = 0;
        this.d = 0;
        this.e = 0;
    }

    public String a() {
        return this.b;
    }

    public long b() {
        return this.c;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public long c() {
        return this.e;
    }

    public void d() {
        this.mDuration += System.currentTimeMillis() - this.c;
    }

    public void e() {
        this.e = System.currentTimeMillis();
    }

    public void a(String str) {
        save();
        reset();
        b(str);
    }

    public void f() {
        d();
        save();
        reset();
    }

    public void save() {
        if (this.b != null) {
            i.a(this.mContext, this.b, toString());
        }
    }

    public void b(String str) {
        String b = i.b(this.mContext, str, "none");
        if (b == null || "none".equals(b)) {
            reset();
            this.b = str;
            long currentTimeMillis = System.currentTimeMillis();
            this.e = currentTimeMillis;
            this.d = currentTimeMillis;
            this.c = currentTimeMillis;
            return;
        }
        try {
            String[] split = b.split("_");
            this.b = str;
            this.c = Long.valueOf(split[1]).longValue();
            this.mDuration = Long.valueOf(split[2]).longValue();
            this.d = Long.valueOf(split[3]).longValue();
            this.e = Long.valueOf(split[4]).longValue();
        } catch (Exception e) {
        }
    }

    public String toString() {
        if (this.b == null) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.b).append("_").append(this.c).append("_").append(this.mDuration).append("_").append(this.d).append("_").append(this.e);
        return stringBuilder.toString();
    }
}
