package com.uploader.implement.b.a;

import com.uploader.implement.b.b;
import com.uploader.implement.b.e;
import com.uploader.implement.c;
import java.lang.ref.WeakReference;

/* compiled from: BaseConnection */
public abstract class a implements e {
    final com.uploader.implement.b.a a;
    volatile WeakReference<b> b;
    final int c = hashCode();
    c d;

    a(c config, com.uploader.implement.b.a target) {
        this.d = config;
        this.a = target;
    }

    public com.uploader.implement.b.a a() {
        return this.a;
    }

    public void a(b listener) {
        this.b = new WeakReference(listener);
    }

    b e() {
        WeakReference weak = this.b;
        if (weak == null) {
            return null;
        }
        return (b) weak.get();
    }
}
