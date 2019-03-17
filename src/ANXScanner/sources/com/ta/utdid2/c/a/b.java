package com.ta.utdid2.c.a;

import java.util.Map;

/* compiled from: MySharedPreferences */
public interface b {

    /* compiled from: MySharedPreferences */
    public interface a {
        a a(String str);

        a a(String str, float f);

        a a(String str, int i);

        a a(String str, long j);

        a a(String str, String str2);

        a a(String str, boolean z);

        a b();

        boolean commit();
    }

    /* compiled from: MySharedPreferences */
    public interface b {
        void a(b bVar, String str);
    }

    a a();

    /* renamed from: a */
    boolean m24a();

    Map<String, ?> getAll();

    long getLong(String str, long j);

    String getString(String str, String str2);
}
