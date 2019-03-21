package com.miui.gallery.util;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;

public class UriUtil {
    public static Uri appendLimit(Uri uri, int limit) {
        return uri != null ? appendParameter(uri.buildUpon(), "limit", String.valueOf(limit)).build() : uri;
    }

    public static Uri appendLimit(Uri uri, int limit, int offset) {
        return uri != null ? appendParameter(uri.buildUpon(), "limit", offset + " , " + limit).build() : uri;
    }

    public static Uri appendGroupBy(Uri uri, String groupBy, String having) {
        return uri != null ? appendParameter(appendParameter(uri.buildUpon(), "groupBy", groupBy), "having", having).build() : uri;
    }

    public static Uri appendDistinct(Uri uri, boolean distinct) {
        return (uri == null || !distinct) ? uri : appendParameter(uri.buildUpon(), "distinct", "distinct").build();
    }

    private static Builder appendParameter(Builder builder, String key, String value) {
        if (!(builder == null || key == null || value == null)) {
            builder.appendQueryParameter(key, value);
        }
        return builder;
    }

    public static String getLimit(Uri uri) {
        return uri != null ? uri.getQueryParameter("limit") : null;
    }

    public static String getGroupBy(Uri uri) {
        return uri != null ? uri.getQueryParameter("groupBy") : null;
    }

    public static String getHaving(Uri uri) {
        return uri != null ? uri.getQueryParameter("having") : null;
    }

    public static boolean getDistinct(Uri uri) {
        return uri != null ? "1".equals(uri.getQueryParameter("distinct")) : false;
    }

    public static boolean isNetUri(Uri uri) {
        if (uri == null) {
            return false;
        }
        String scheme = uri.getScheme();
        if (TextUtils.isEmpty(scheme)) {
            return false;
        }
        if (scheme.equalsIgnoreCase("http") || scheme.equalsIgnoreCase("https")) {
            return true;
        }
        return false;
    }
}
