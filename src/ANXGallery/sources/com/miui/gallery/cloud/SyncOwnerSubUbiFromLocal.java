package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.miui.gallery.data.DBItem;
import com.miui.gallery.data.DBOwnerSubUbiImage;

/* compiled from: SyncSubUbifocusFromLocalBase */
class SyncOwnerSubUbiFromLocal extends SyncSubUbifocusFromLocalBase {
    public SyncOwnerSubUbiFromLocal(Context context, Account account, GalleryExtendedAuthToken extendedAuthToken, boolean noDelay) {
        super(context, account, extendedAuthToken, noDelay);
    }

    protected Uri getBaseUri() {
        return GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI;
    }

    protected DBItem generateDBImage(Cursor cursor) {
        return new DBOwnerSubUbiImage(cursor);
    }
}
