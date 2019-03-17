package com.uploader.implement.b.a;

import com.uploader.implement.b.b;
import com.uploader.implement.b.e;
import com.uploader.implement.b.f;
import com.uploader.implement.c;
import java.lang.ref.WeakReference;
import org.android.spdy.TnetStatusCode;

/* compiled from: LongLivedConnection */
public class d extends a {
    final c e;

    /* compiled from: LongLivedConnection */
    static class a implements a {
        private final WeakReference<d> a;

        a(d connection) {
            this.a = new WeakReference(connection);
        }

        public void a(int errorCode) {
            e connection = (d) this.a.get();
            if (connection != null) {
                b listener = connection.e();
                if (listener != null) {
                    com.uploader.implement.c.a error;
                    if (errorCode == TnetStatusCode.EASY_REASON_SERVER_CLOSE) {
                        error = new com.uploader.implement.c.a("300", Integer.toString(errorCode), "error=" + errorCode, true);
                    } else {
                        String str = "100";
                        String num = (errorCode == -2601 || errorCode == -2613 || errorCode == -2413) ? "-1" : Integer.toString(errorCode);
                        error = new com.uploader.implement.c.a(str, num, "error=" + errorCode, true);
                    }
                    listener.a(connection, error);
                }
            }
        }

        public void a() {
            d connection = (d) this.a.get();
            if (connection != null) {
                b listener = connection.e();
                if (listener != null) {
                    listener.a(connection);
                }
            }
        }

        public void b(int sendSequence) {
            d connection = (d) this.a.get();
            if (connection != null) {
                b listener = connection.e();
                if (listener != null) {
                    listener.b(connection, sendSequence);
                }
            }
        }

        public void a(int sendSequence, int errorCode) {
            e connection = (d) this.a.get();
            if (connection != null) {
                b listener = connection.e();
                if (listener != null) {
                    listener.a(connection, new com.uploader.implement.c.a("100", Integer.toString(errorCode), "onSendFailed" + errorCode, false));
                }
            }
        }

        public void a(byte[] data, int length) {
            e connection = (d) this.a.get();
            if (connection != null) {
                b listener = connection.e();
                if (listener != null) {
                    f protocolData = new f();
                    protocolData.b = data;
                    protocolData.c = 0;
                    protocolData.d = length;
                    listener.a(connection, protocolData);
                }
            }
        }
    }

    d(c config, f target) {
        super(config, target);
        this.e = new c(config, target);
        this.e.a(new a(this));
    }

    public boolean b() {
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "LongLivedConnection", this.c + " connectAsync");
        }
        this.e.a();
        return true;
    }

    public boolean c() {
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "LongLivedConnection", this.c + " closeAsync");
        }
        this.e.b();
        return true;
    }

    public void a(f data, int sendSequence) {
        byte[] dest;
        int length = data.d;
        if (data.c != 0) {
            dest = new byte[length];
            System.arraycopy(data.b, data.c, dest, 0, length);
        } else {
            dest = data.b;
        }
        b listener = e();
        if (listener != null) {
            listener.a((e) this, sendSequence);
        }
        this.e.a(sendSequence, dest, length);
    }

    public boolean d() {
        return this.e.c();
    }
}
