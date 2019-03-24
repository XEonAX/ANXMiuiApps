package com.miui.internal.net;

import android.util.Pair;

public class KeyValuePair extends Pair<String, String> {
    public KeyValuePair(String str, String str2) {
        super(str, str2);
        if (str == null) {
            throw new IllegalArgumentException("key may not be null");
        } else if (str2 == null) {
            throw new IllegalArgumentException("value may not be null");
        }
    }

    public String getKey() {
        return (String) this.first;
    }

    public String getValue() {
        return (String) this.second;
    }
}
