package com.uploader.implement;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Pair;
import com.uploader.export.EnvironmentElement;
import com.uploader.export.IUploaderDependency;
import com.uploader.export.IUploaderEnvironment;
import com.uploader.export.UploaderEnvironment;
import java.util.ArrayList;
import java.util.List;

/* compiled from: UploaderConfig */
public class c {
    public final a a;
    public final UploaderEnvironment b;
    public final Context c;
    IUploaderEnvironment d;

    /* compiled from: UploaderConfig */
    public static class a {
        a a = new a();
        a b = new a();
        a c = new a();
        final UploaderEnvironment d;

        /* compiled from: UploaderConfig */
        static class a {
            public List<Pair<String, Integer>> a = new ArrayList();
            public int b = 0;
            public List<Pair<Boolean, Pair<String, Integer>>> c = new ArrayList();
            public int d = 0;
            public Pair<String, Long> e;
            public long f = 0;

            a() {
            }
        }

        a(UploaderEnvironment environment) {
            this.d = environment;
        }

        public Pair<String, Long> a() {
            return ((a) a(this.d.getCurrentElement()).first).e;
        }

        @NonNull
        public Pair<String, Integer> b() {
            EnvironmentElement element = this.d.getCurrentElement();
            Pair pair = a(element);
            if (((a) pair.first).a.size() == 0) {
                ((a) pair.first).a.add(new Pair(element.host, pair.second));
                ((a) pair.first).a.add(new Pair(element.ipAddress, pair.second));
            }
            if (((a) pair.first).b >= ((a) pair.first).a.size()) {
                ((a) pair.first).b = 0;
            }
            return (Pair) ((a) pair.first).a.get(((a) pair.first).b);
        }

        public void c() {
            a aVar = (a) a(this.d.getCurrentElement()).first;
            aVar.b++;
        }

        public void a(String token, long expired, List<Pair<String, Integer>> declareTargets, List<Pair<Boolean, Pair<String, Integer>>> uploadTargets) {
            EnvironmentElement element = this.d.getCurrentElement();
            Pair pair = a(element);
            long current = ((a) pair.first).f + (System.currentTimeMillis() / 1000);
            if (expired < 120 + current) {
                expired = current + 120;
            }
            ((a) pair.first).e = new Pair(token, Long.valueOf(expired));
            if (uploadTargets != null && uploadTargets.size() > 0) {
                ((a) pair.first).c.clear();
                for (Pair p : uploadTargets) {
                    ((a) pair.first).c.add(p);
                }
                ((a) pair.first).d = 0;
            }
            if (declareTargets != null && declareTargets.size() > 0) {
                ((a) pair.first).a.clear();
                Pair p1 = new Pair(element.host, pair.second);
                Pair p2 = new Pair(element.ipAddress, pair.second);
                for (Pair p3 : declareTargets) {
                    if (!(p1.equals(p3) || p2.equals(p3))) {
                        ((a) pair.first).a.add(p3);
                    }
                }
                ((a) pair.first).a.add(p1);
                ((a) pair.first).a.add(p2);
                ((a) pair.first).b = 0;
            }
        }

        @Nullable
        public Pair<Boolean, Pair<String, Integer>> d() {
            Pair pair = a(this.d.getCurrentElement());
            if (((a) pair.first).c.size() == 0) {
                return null;
            }
            if (((a) pair.first).d >= ((a) pair.first).c.size()) {
                ((a) pair.first).d = 0;
            }
            return (Pair) ((a) pair.first).c.get(((a) pair.first).d);
        }

        public void e() {
            a aVar = (a) a(this.d.getCurrentElement()).first;
            aVar.d++;
        }

        public void a(long timeStamp) {
            EnvironmentElement element = this.d.getCurrentElement();
            Pair pair = a(element);
            ((a) pair.first).f = timeStamp - (System.currentTimeMillis() / 1000);
            if (a.a(4)) {
                a.a(4, "UploaderConfig", "[updateTimestampOffset] update timestamp succeed.,environment:" + element.environment + ", offset=" + ((a) pair.first).f + " seconds");
            }
        }

        public long f() {
            return ((a) a(this.d.getCurrentElement()).first).f;
        }

        public String g() {
            return this.d.getCurrentElement().host;
        }

        Pair<a, Integer> a(EnvironmentElement element) {
            switch (element.environment) {
                case 1:
                    return new Pair(this.b, Integer.valueOf(80));
                case 2:
                    return new Pair(this.c, Integer.valueOf(80));
                default:
                    return new Pair(this.a, Integer.valueOf(443));
            }
        }
    }

    c(Context context, IUploaderDependency d) {
        this.c = context;
        IUploaderEnvironment e = d.getEnvironment();
        if (e instanceof UploaderEnvironment) {
            this.b = (UploaderEnvironment) e;
        } else {
            this.d = d.getEnvironment();
            this.b = new UploaderEnvironment(0) {
                public synchronized EnvironmentElement getCurrentElement() {
                    EnvironmentElement element;
                    element = super.getCurrentElement();
                    if (!(element.environment == c.this.d.getEnvironment() && element.appKey.equals(c.this.d.getAppKey()))) {
                        element = new EnvironmentElement(c.this.d.getEnvironment(), c.this.d.getAppKey(), TextUtils.isEmpty(c.this.d.getDomain()) ? element.host : c.this.d.getDomain(), element.ipAddress);
                    }
                    return element;
                }

                public int getEnvironment() {
                    return c.this.d.getEnvironment();
                }

                public String getUtdid() {
                    return c.this.d.getUtdid();
                }

                public String getAppVersion() {
                    return c.this.d.getAppVersion();
                }

                public String getUserId() {
                    return c.this.d.getUserId();
                }

                public String signature(String data) {
                    return c.this.d.signature(data);
                }

                public int putSslTicket(Context context, String host, byte[] value) {
                    return c.this.d.putSslTicket(context, host, value);
                }

                public byte[] getSslTicket(Context context, String host) {
                    return c.this.d.getSslTicket(context, host);
                }

                public byte[] decrypt(Context context, String key, byte[] text) {
                    return c.this.d.decrypt(context, key, text);
                }

                public boolean enableFlowControl() {
                    return c.this.d.enableFlowControl();
                }
            };
        }
        this.a = new a(this.b);
        b.a(d.getStatistics());
        a.a(d.getLog());
    }
}
