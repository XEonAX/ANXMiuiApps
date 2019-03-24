package com.miui.internal.analytics;

import android.content.Context;
import android.database.Cursor;

class b implements c {
    public static final String TAG = "ANALYTICS.SQLITESTORE";
    private a ar;

    b() {
    }

    public void a(Context context) {
        this.ar = a.a();
    }

    public void close() {
    }

    public void b(String str, Integer num, String str2, String str3, String str4, String str5) {
        if (this.ar != null) {
            this.ar.a(str, num, str2, str3, str4, str5);
        }
    }

    public Cursor d(String str) {
        if (this.ar != null) {
            return this.ar.a(str);
        }
        return null;
    }
}
