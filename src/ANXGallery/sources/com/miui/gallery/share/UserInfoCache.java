package com.miui.gallery.share;

import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;

public class UserInfoCache extends DBCache<String, UserInfo> {
    private static final UserInfoCache sInstance = new UserInfoCache();

    private UserInfoCache() {
    }

    public static UserInfoCache getInstance() {
        return sInstance;
    }

    public Uri getUri() {
        return GalleryCloudUtils.USER_INFO_URI;
    }

    protected String newKey(Cursor cursor) {
        return cursor.getString(2);
    }

    protected UserInfo newValue(Cursor cursor) {
        String userId = cursor.getString(2);
        if (TextUtils.isEmpty(userId)) {
            return null;
        }
        UserInfo user = new UserInfo(userId);
        user.setAliasNick(cursor.getString(3));
        user.setMiliaoNick(cursor.getString(4));
        user.setMiliaoIconUrl(cursor.getString(5));
        return user;
    }
}
