package com.uploader.implement.b;

import com.uploader.implement.c;

/* compiled from: ConnectionTarget */
public abstract class a {
    public final String a;
    public final int b;
    public final String c;
    public final int d;
    public final boolean e;

    public abstract e a(c cVar);

    public a(String address, int port, String proxyIp, int proxyPort, boolean isLongLived) {
        this.a = address;
        this.b = port;
        this.c = proxyIp;
        this.d = proxyPort;
        this.e = isLongLived;
    }

    public boolean equals(Object o) {
        boolean z = true;
        if (this == o) {
            return true;
        }
        if (!(o instanceof a)) {
            return false;
        }
        a target = (a) o;
        if (this.b != target.b || this.d != target.d || this.e != target.e) {
            return false;
        }
        if (this.a != null) {
            if (!this.a.equals(target.a)) {
                return false;
            }
        } else if (target.a != null) {
            return false;
        }
        if (this.c == null ? target.c != null : !this.c.equals(target.c)) {
            z = false;
        }
        return z;
    }

    public String toString() {
        return "ConnectionTarget{address='" + this.a + '\'' + ", port=" + this.b + ", proxyIp='" + this.c + '\'' + ", proxyPort=" + this.d + ", isLongLived=" + this.e + '}';
    }
}
