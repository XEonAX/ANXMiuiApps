package com.miui.gallery.util;

import com.miui.gallery3d.exif.ExifInterface;

/* compiled from: ExifUtil */
class ExifInterfaceWrapper {
    private ExifInterface mExifI;
    private android.media.ExifInterface mMediaExif;
    private android.support.media.ExifInterface mSupportExifI;

    public ExifInterfaceWrapper(android.support.media.ExifInterface supportExifI) {
        this.mSupportExifI = supportExifI;
    }

    public ExifInterfaceWrapper(ExifInterface exifI) {
        this.mExifI = exifI;
    }

    public ExifInterfaceWrapper(android.media.ExifInterface exifI) {
        this.mMediaExif = exifI;
    }

    public String getUserComment() {
        if (this.mExifI != null) {
            return this.mExifI.getUserCommentAsASCII();
        }
        if (this.mSupportExifI != null) {
            return this.mSupportExifI.getAttribute("UserComment");
        }
        if (this.mMediaExif != null) {
            return this.mMediaExif.getAttribute("UserComment");
        }
        return null;
    }

    public void setUserComment(String userComment) {
        if (this.mExifI != null) {
            this.mExifI.addUserComment(userComment);
        }
        if (this.mSupportExifI != null) {
            this.mSupportExifI.setAttribute("UserComment", userComment);
        }
        if (this.mMediaExif != null) {
            this.mMediaExif.setAttribute("UserComment", userComment);
        }
    }
}
