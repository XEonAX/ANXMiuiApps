package com.miui.gallery.net.download;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.util.Locale;

public final class Request {
    private boolean mAllowedOverMetered;
    private File mDestination;
    private int mHashCode;
    private volatile Listener mListener;
    private int mMaxRetryTimes = 3;
    private Uri mUri;
    private Verifier mVerifier;

    public interface Listener {
        void onComplete(int i);

        void onProgressUpdate(int i);

        void onStart();
    }

    public Request(Uri uri, File destination) {
        this.mUri = uri;
        String scheme = uri.getScheme();
        if (TextUtils.equals(scheme, "http") || TextUtils.equals(scheme, "https")) {
            this.mDestination = destination;
            return;
        }
        throw new IllegalArgumentException("not support scheme: " + scheme);
    }

    public Uri getUri() {
        return this.mUri;
    }

    public File getDestination() {
        return this.mDestination;
    }

    public void setAllowedOverMetered(boolean allowedOverMetered) {
        this.mAllowedOverMetered = allowedOverMetered;
    }

    public Verifier getVerifier() {
        return this.mVerifier;
    }

    public void setVerifier(Verifier verifier) {
        this.mVerifier = verifier;
    }

    public int getMaxRetryTimes() {
        return this.mMaxRetryTimes;
    }

    public Listener getListener() {
        return this.mListener;
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    int getNetworkType() {
        return this.mAllowedOverMetered ? 0 : 1;
    }

    public String toString() {
        return String.format(Locale.US, "uri: %s, file: %s", new Object[]{this.mUri, this.mDestination});
    }

    public int hashCode() {
        if (this.mHashCode == 0) {
            this.mHashCode = String.format(Locale.US, "uri: %s, file: %s", new Object[]{this.mUri, this.mDestination}).hashCode();
        }
        return this.mHashCode;
    }

    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof Request)) {
            return false;
        }
        Request that = (Request) o;
        if (that.mUri.equals(this.mUri) && that.mDestination.equals(this.mDestination)) {
            return true;
        }
        return false;
    }
}
