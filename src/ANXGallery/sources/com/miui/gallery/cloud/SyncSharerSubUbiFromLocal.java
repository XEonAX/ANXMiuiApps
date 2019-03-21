package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.miui.gallery.data.DBItem;
import com.miui.gallery.data.DBShareSubUbiImage;

/* compiled from: SyncSubUbifocusFromLocalBase */
class SyncSharerSubUbiFromLocal extends SyncSubUbifocusFromLocalBase {
    public SyncSharerSubUbiFromLocal(Context context, Account account, GalleryExtendedAuthToken extendedAuthToken) {
        super(context, account, extendedAuthToken, false);
    }

    protected Uri getBaseUri() {
        return GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI;
    }

    protected DBItem generateDBImage(Cursor cursor) {
        return new DBShareSubUbiImage(cursor);
    }
}
