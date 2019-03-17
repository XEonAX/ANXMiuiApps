package com.uploader.implement.a;

import android.text.TextUtils;
import com.ali.auth.third.login.LoginConstants;
import com.uploader.implement.a;
import com.uploader.implement.b;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* compiled from: ActionStatistics */
public class c {
    private static volatile boolean u = false;
    private static volatile boolean v = false;
    private static final byte[] w = new byte[0];
    final boolean a;
    long b;
    long c;
    String d;
    String e;
    int f;
    int g;
    String h;
    String i;
    String j;
    long k;
    long l;
    long m;
    long n;
    long o;
    String p;
    String q;
    int r;
    long s;
    int t;
    private c x;

    c(boolean isDeclarationStatistics, c previous) {
        this.a = isDeclarationStatistics;
        this.x = previous;
    }

    public String a() {
        HashMap measures = new HashMap();
        long connectTime = 0;
        long costTime = 0;
        long totalTime = 0;
        long connectTimePrevious = 0;
        long costTimePrevious = 0;
        int connectCountPrevious = 0;
        long upstreamPrevious = 0;
        long downstreamPrevious = 0;
        c before = this.x;
        while (before != null && !before.a) {
            if (before.o > 0 && before.n > 0) {
                connectTimePrevious += before.o - before.n;
                connectCountPrevious++;
            }
            if (before.m > 0 && before.l > 0) {
                costTimePrevious += before.m - before.l;
            }
            upstreamPrevious += before.b;
            downstreamPrevious += before.c;
            before = before.x;
        }
        if (a.a(4)) {
            a.a(4, "ActionStatistics", hashCode() + " result:" + this.g + " connectCountPrevious:" + connectCountPrevious + " connectTimePrevious:" + connectTimePrevious + " connectedTimeCurrent:" + (this.o - this.n) + " costTimePrevious:" + costTimePrevious + " costTimeCurrent:" + (this.m - this.l) + " upstreamPrevious:" + upstreamPrevious + " downstreamPrevious:" + downstreamPrevious);
        }
        if (this.o > 0 && this.n > 0) {
            connectTime = this.o - this.n;
            if (connectTimePrevious > 0) {
                connectTime += connectTimePrevious;
            }
            totalTime = 0 + connectTime;
            connectTime /= (long) (connectCountPrevious + 1);
        }
        if (this.m > 0 && this.l > 0) {
            costTime = this.m - this.l;
            if (costTimePrevious > 0) {
                costTime += costTimePrevious;
            }
            totalTime += costTime;
        }
        if (connectTime > 0) {
            measures.put("connecttime", Double.valueOf((double) connectTime));
        }
        if (costTime > 0) {
            measures.put("costtime", Double.valueOf((double) costTime));
        }
        if (this.k > 0) {
            measures.put("size", Double.valueOf((double) this.k));
        }
        if (this.s > 0) {
            measures.put("md5time", Double.valueOf((double) this.s));
        }
        if (totalTime > 0) {
            measures.put("totaltime", Double.valueOf((double) totalTime));
            if (this.k > 0) {
                measures.put("speed", Double.valueOf((double) ((this.k * 125) / (128 * totalTime))));
            }
        }
        if (this.c + downstreamPrevious > 0) {
            measures.put("downstream", Double.valueOf((double) (this.c + downstreamPrevious)));
        }
        if (this.b + upstreamPrevious > 0) {
            measures.put("upstream", Double.valueOf((double) (this.b + upstreamPrevious)));
        }
        HashMap dimensions = new HashMap();
        dimensions.put(com.alipay.sdk.app.statistic.c.b, this.d);
        dimensions.put("port", String.valueOf(this.f));
        dimensions.put(LoginConstants.IP, this.e);
        dimensions.put("ret", String.valueOf(this.g));
        if (!TextUtils.isEmpty(this.h)) {
            dimensions.put("errorcode", this.h);
        }
        if (!TextUtils.isEmpty(this.i)) {
            dimensions.put("subcode", this.i);
        }
        if (!TextUtils.isEmpty(this.j)) {
            dimensions.put("errormsg", this.j);
        }
        if (!TextUtils.isEmpty(this.p)) {
            dimensions.put("fileid", this.p);
        }
        if (!TextUtils.isEmpty(this.q)) {
            dimensions.put("token", this.q);
        }
        dimensions.put("retrytimes", String.valueOf(this.r));
        if (!this.a) {
            dimensions.put("encrypted", String.valueOf(this.t));
        }
        if (a.a(2)) {
            a.a(2, "ActionStatistics", "commit statistic,isDeclarationStatistics=" + this.a + ", dimensions:" + dimensions + ", measures:" + measures + " upStreamTotal:" + (this.b + upstreamPrevious) + " downstream:" + (this.c + downstreamPrevious));
        }
        if (this.a) {
            if (!u) {
                synchronized (w) {
                    if (!u) {
                        b.a("ARUP", "RequestUpload", c(), b(), false);
                        u = true;
                    }
                }
            }
            b.a("ARUP", "RequestUpload", measures, dimensions);
            return measures.toString();
        }
        if (!v) {
            synchronized (w) {
                if (!v) {
                    b.a("ARUP", "FileUpload", c(), b(), false);
                    v = true;
                }
            }
        }
        b.a("ARUP", "FileUpload", measures, dimensions);
        return measures.toString();
    }

    private Set<String> b() {
        Set dimensions = new HashSet();
        dimensions.add(com.alipay.sdk.app.statistic.c.b);
        dimensions.add("token");
        dimensions.add("fileid");
        dimensions.add(LoginConstants.IP);
        dimensions.add("port");
        dimensions.add("ret");
        dimensions.add("errorcode");
        dimensions.add("subcode");
        dimensions.add("errormsg");
        dimensions.add("retrytimes");
        if (!this.a) {
            dimensions.add("encrypted");
        }
        return dimensions;
    }

    private Set<String> c() {
        Set measures = new HashSet();
        measures.add("connecttime");
        measures.add("costtime");
        measures.add("size");
        measures.add("speed");
        measures.add("totaltime");
        measures.add("md5time");
        measures.add("upstream");
        measures.add("downstream");
        return measures;
    }
}
