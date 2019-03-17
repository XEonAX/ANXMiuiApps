package com.uploader.implement.b.a;

import com.uploader.implement.b.a;
import com.uploader.implement.b.e;
import com.uploader.implement.c;

/* compiled from: UrlConnectionTarget */
public class g extends a {
    public final String f;
    public final String g;

    public g(String address, int port, String url, String host) {
        super(address, port, null, 0, false);
        this.f = url;
        this.g = host;
    }

    public e a(c config) {
        return new e(config, this);
    }

    public boolean equals(Object o) {
        boolean z = true;
        if (this == o) {
            return true;
        }
        if (!(o instanceof g) || !super.equals(o)) {
            return false;
        }
        g that = (g) o;
        if (this.f != null) {
            if (!this.f.equals(that.f)) {
                return false;
            }
        } else if (that.f != null) {
            return false;
        }
        if (this.g != null) {
            z = this.g.equals(that.g);
        } else if (that.g != null) {
            z = false;
        }
        return z;
    }
}
