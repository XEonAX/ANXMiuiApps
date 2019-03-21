package com.xiaomi.micloudsdk.data;

import android.text.TextUtils;

public final class ExtendedAuthToken {
    public final String authToken;
    public final String security;

    private ExtendedAuthToken(String authToken, String security) {
        this.authToken = authToken;
        this.security = security;
    }

    public static ExtendedAuthToken parse(String plain) {
        if (TextUtils.isEmpty(plain)) {
            return null;
        }
        String[] parts = plain.split(",");
        if (parts.length != 2 || TextUtils.isEmpty(parts[0]) || TextUtils.isEmpty(parts[1])) {
            return null;
        }
        return new ExtendedAuthToken(parts[0], parts[1]);
    }

    public String toPlain() {
        return this.authToken + "," + this.security;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        ExtendedAuthToken that = (ExtendedAuthToken) o;
        if (this.authToken == null ? that.authToken != null : !this.authToken.equals(that.authToken)) {
            return false;
        }
        if (this.security != null) {
            if (this.security.equals(that.security)) {
                return true;
            }
        } else if (that.security == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int result;
        int i = 0;
        if (this.authToken != null) {
            result = this.authToken.hashCode();
        } else {
            result = 0;
        }
        int i2 = result * 31;
        if (this.security != null) {
            i = this.security.hashCode();
        }
        return i2 + i;
    }
}
