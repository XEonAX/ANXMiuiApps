package com.xiaomi.stat;

import com.xiaomi.stat.d.k;
import com.xiaomi.stat.d.n;
import org.json.JSONException;
import org.json.JSONObject;

public class MiStatParams {
    private static final String a = "MiStatParams";
    private JSONObject b;

    public MiStatParams() {
        this.b = new JSONObject();
    }

    MiStatParams(MiStatParams params) {
        if (params == null || params.b == null) {
            this.b = new JSONObject();
        } else {
            this.b = params.b;
        }
    }

    public void putInt(String key, int value) {
        if (!a(key)) {
            n.e(key);
        } else if (c(key)) {
            n.a();
        } else {
            try {
                this.b.put(key, value);
            } catch (JSONException e) {
                k.c(a, "put value error " + e);
            }
        }
    }

    public void putLong(String key, long value) {
        if (!a(key)) {
            n.e(key);
        } else if (c(key)) {
            n.a();
        } else {
            try {
                this.b.put(key, value);
            } catch (JSONException e) {
                k.c(a, "put value error " + e);
            }
        }
    }

    public void putDouble(String key, double value) {
        if (!a(key)) {
            n.e(key);
        } else if (c(key)) {
            n.a();
        } else {
            try {
                this.b.put(key, value);
            } catch (JSONException e) {
                k.c(a, "put value error " + e);
            }
        }
    }

    public void putString(String key, String value) {
        if (!a(key)) {
            n.e(key);
        } else if (!b(value)) {
            n.f(value);
        } else if (c(key)) {
            n.a();
        } else {
            try {
                this.b.put(key, n.c(value));
            } catch (JSONException e) {
                k.c(a, "put value error " + e);
            }
        }
    }

    public void putBoolean(String key, boolean value) {
        if (!a(key)) {
            n.e(key);
        } else if (c(key)) {
            n.a();
        } else {
            try {
                this.b.put(key, value);
            } catch (JSONException e) {
                k.c(a, "put value error " + e);
            }
        }
    }

    public String toJsonString() {
        return this.b.toString();
    }

    public boolean isEmpty() {
        return this.b.length() == 0;
    }

    public int getParamsNumber() {
        return this.b.length();
    }

    private boolean c(String str) {
        if (a() && !this.b.has(str) && this.b.length() == 30) {
            return true;
        }
        return false;
    }

    boolean a(String str) {
        return n.a(str);
    }

    boolean b(String str) {
        return n.b(str);
    }

    boolean a() {
        return true;
    }
}
