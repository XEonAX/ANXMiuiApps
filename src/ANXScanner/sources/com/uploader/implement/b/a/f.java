package com.uploader.implement.b.a;

import com.uploader.implement.b.a;
import com.uploader.implement.b.e;
import com.uploader.implement.c;

/* compiled from: SocketConnectionTarget */
public class f extends a {
    public final boolean f;

    public f(String address, int port, boolean isLongLived, boolean encrypt) {
        super(address, port, null, 0, isLongLived);
        this.f = encrypt;
    }

    public e a(c config) {
        if (this.e) {
            return new d(config, this);
        }
        return new d(config, this);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof f)) {
            return false;
        }
        if (!super.equals(o)) {
            return false;
        }
        if (this.f != ((f) o).f) {
            return false;
        }
        return true;
    }
}
