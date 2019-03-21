package com.miui.gallery.cloud;

import android.text.TextUtils;
import com.xiaomi.micloudsdk.data.ExtendedAuthToken;

public class GalleryExtendedAuthToken {
    private ExtendedAuthToken mToken;

    public GalleryExtendedAuthToken(ExtendedAuthToken token) {
        this.mToken = token;
    }

    public String getSecurity() {
        return this.mToken.security;
    }

    public static GalleryExtendedAuthToken parse(String plain) {
        if (TextUtils.isEmpty(plain)) {
            return null;
        }
        ExtendedAuthToken token = ExtendedAuthToken.parse(plain);
        if (token != null) {
            return new GalleryExtendedAuthToken(token);
        }
        return null;
    }
}
