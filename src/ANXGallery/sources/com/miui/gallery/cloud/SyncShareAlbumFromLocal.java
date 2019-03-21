package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.data.DBItem;
import com.miui.gallery.data.DBShareAlbum;
import java.util.ArrayList;
import java.util.List;

public class SyncShareAlbumFromLocal extends SyncFromLocalBase {
    private List<RequestSharerAlbumItem> mEditedItems;

    public SyncShareAlbumFromLocal(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken) {
        super(mContext, mAccount, mExtendedAuthToken);
    }

    protected Uri getBaseUri() {
        return GalleryCloudUtils.SHARE_ALBUM_URI;
    }

    protected String getSelectionClause() {
        return String.format(" (%s) ", new Object[]{CloudUtils.SELECTION_NOT_SYNCED_OR_EDITED});
    }

    protected DBItem generateDBImage(Cursor cursor) {
        return new DBShareAlbum(cursor);
    }

    protected void initRequestCloudItemList() {
        this.mEditedItems = new ArrayList();
    }

    private boolean shouldSyncEdit(DBShareAlbum dbItem) {
        if (dbItem.getLocalFlag() != 0) {
            return false;
        }
        String editedColumns = dbItem.getEditedColumns();
        String babyInfoJsonColumnElement = GalleryCloudUtils.transformToEditedColumnsElement(25);
        if (TextUtils.isEmpty(editedColumns) || !editedColumns.contains(babyInfoJsonColumnElement)) {
            return false;
        }
        return true;
    }

    protected void putToRequestCloudItemList(DBItem dbItem) {
        if (shouldSyncEdit((DBShareAlbum) dbItem)) {
            this.mEditedItems.add(new RequestSharerAlbumItem(0, (DBShareAlbum) dbItem));
        }
    }

    protected void handleRequestCloudItemList() throws Exception {
        if (this.mEditedItems.size() > 0) {
            RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mEditedItems, new EditShareAlbum(this.mContext));
        }
    }
}
