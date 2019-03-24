package com.miui.internal.yellowpage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import miui.yellowpage.YellowPageContract.PhoneLookup;
import miui.yellowpage.YellowPageImgLoader;
import miui.yellowpage.YellowPageImgLoader.Image;

public class YellowPageAvatar extends Image {
    private static final String TAG = "YellowPageAvatar";
    private String mAvatarName;
    private Context mContext;
    private YellowPageAvatarFormat mFormat;

    public enum YellowPageAvatarFormat {
        PHOTO_NUMBER,
        THUMBNAIL_NUMBER,
        PHOTO_YID,
        THUMBNAIL_YID,
        PHOTO_NAME,
        THUMBNAIL_NAME
    }

    public YellowPageAvatar(Context context, String url, YellowPageAvatarFormat format) {
        super(url);
        this.mContext = context;
        this.mFormat = format;
    }

    public String getUrl() {
        getName();
        return this.mAvatarName;
    }

    public boolean equals(Object o) {
        boolean z = true;
        if (o == this) {
            return true;
        }
        if (!(o instanceof YellowPageAvatar)) {
            return false;
        }
        YellowPageAvatar avatar = (YellowPageAvatar) o;
        if (!(this.mFormat == avatar.mFormat && TextUtils.equals(this.mUrl, avatar.mUrl))) {
            z = false;
        }
        return z;
    }

    public String getName() {
        if (TextUtils.isEmpty(this.mAvatarName)) {
            if (this.mFormat == YellowPageAvatarFormat.THUMBNAIL_NUMBER || this.mFormat == YellowPageAvatarFormat.PHOTO_NUMBER) {
                this.mAvatarName = getAvatarUrlByNumber(this.mContext, this.mUrl, this.mFormat);
            } else if (this.mFormat == YellowPageAvatarFormat.PHOTO_YID || this.mFormat == YellowPageAvatarFormat.THUMBNAIL_YID) {
                this.mAvatarName = getAvatarUrlById(this.mContext, this.mUrl, this.mFormat);
            } else {
                this.mAvatarName = this.mUrl;
            }
        }
        if (TextUtils.isEmpty(this.mAvatarName)) {
            return null;
        }
        return YellowPageImgLoader.getDataSha1Digest(this.mAvatarName.getBytes());
    }

    private static String getAvatarUrlByNumber(Context context, String number, YellowPageAvatarFormat format) {
        String avatarColumn;
        if (format == YellowPageAvatarFormat.PHOTO_NUMBER) {
            avatarColumn = PhoneLookup.PHOTO_URL;
        } else {
            avatarColumn = PhoneLookup.THUMBNAIL_URL;
        }
        Cursor c = context.getContentResolver().query(Uri.withAppendedPath(PhoneLookup.CONTENT_URI, number), new String[]{avatarColumn}, null, null, null);
        String name = null;
        if (c != null) {
            try {
                if (c.moveToFirst()) {
                    name = c.getString(0);
                }
                c.close();
            } catch (Throwable th) {
                c.close();
            }
        }
        return name;
    }

    private static String getAvatarUrlById(Context context, String yid, YellowPageAvatarFormat format) {
        String avatarColumn;
        if (format == YellowPageAvatarFormat.PHOTO_YID) {
            avatarColumn = PhoneLookup.PHOTO_URL;
        } else {
            avatarColumn = PhoneLookup.THUMBNAIL_URL;
        }
        Cursor c = context.getContentResolver();
        Uri uri = PhoneLookup.CONTENT_URI;
        String[] strArr = new String[]{avatarColumn};
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("yid = ");
        stringBuilder.append(yid);
        c = c.query(uri, strArr, stringBuilder.toString(), null, null);
        String name = null;
        if (c != null) {
            try {
                if (c.moveToFirst()) {
                    name = c.getString(0);
                }
                c.close();
            } catch (Throwable th) {
                c.close();
            }
        }
        return name;
    }
}
