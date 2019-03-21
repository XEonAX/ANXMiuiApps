package com.miui.gallery.cloud;

import com.xiaomi.micloudsdk.exception.CloudServerException;

public class GalleryMiCloudServerException extends Exception {
    private Exception mCloudServerException;

    public GalleryMiCloudServerException(Exception cloudServerException) {
        this.mCloudServerException = cloudServerException;
    }

    public Exception getCloudServerException() {
        return this.mCloudServerException;
    }

    public int getStatusCode() {
        return ((CloudServerException) this.mCloudServerException).getStatusCode();
    }

    public String toString() {
        return this.mCloudServerException.toString();
    }
}
