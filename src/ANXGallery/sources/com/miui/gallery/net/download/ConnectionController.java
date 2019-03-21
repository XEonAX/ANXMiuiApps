package com.miui.gallery.net.download;

import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.util.Log;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

class ConnectionController {

    static final class Holder<T> {
        public final int reason;
        public final T value;

        public Holder(T value) {
            this.value = value;
            this.reason = 0;
        }

        public Holder(int reason) {
            this.value = null;
            this.reason = reason;
        }
    }

    static Holder<HttpURLConnection> open(Uri uri, int networkType) {
        String scheme = uri.getScheme();
        if (TextUtils.equals(scheme, "http") || TextUtils.equals(scheme, "https")) {
            return open(uri.toString(), networkType);
        }
        throw new IllegalArgumentException("not support scheme " + scheme);
    }

    static Holder<HttpURLConnection> open(String uri, int networkType) {
        int code = verify(networkType);
        if (code != 0) {
            return new Holder(code);
        }
        try {
            Log.d("ConnectionController", "try open http connection");
            return new Holder((HttpURLConnection) new URL(uri).openConnection());
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("invalid url " + uri, e);
        } catch (Throwable e2) {
            Log.w("ConnectionController", e2);
            return new Holder(4);
        }
    }

    private static int verify(int networkType) {
        Log.d("ConnectionController", "refreshing network state");
        if (!NetworkUtils.isNetworkConnected()) {
            return 1;
        }
        if (!CTA.canConnectNetwork()) {
            return 2;
        }
        if (networkType == 1 && NetworkUtils.isActiveNetworkMetered()) {
            return 3;
        }
        return 0;
    }
}
