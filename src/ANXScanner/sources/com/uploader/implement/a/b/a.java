package com.uploader.implement.a.b;

import android.text.TextUtils;
import com.uploader.implement.a.f;
import java.util.Map;

/* compiled from: ActionResponse */
public class a implements f {
    final int a;
    final Map<String, String> b;
    public final Object[] c;

    public a(int type, Map<String, String> content, Object... objects) {
        this.a = type;
        this.b = content;
        this.c = objects;
    }

    public a(int type, Map<String, String> content) {
        this.a = type;
        this.b = content;
        this.c = null;
    }

    public int a() {
        return this.a;
    }

    public Map<String, String> b() {
        return this.b;
    }

    public String a(String key) {
        if (TextUtils.isEmpty(key) || this.b == null) {
            return null;
        }
        return (String) this.b.get(key);
    }
}
