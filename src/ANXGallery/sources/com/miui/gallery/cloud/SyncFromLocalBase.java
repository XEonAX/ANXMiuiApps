package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.miui.gallery.data.DBItem;
import com.miui.gallery.util.SyncLog;

public abstract class SyncFromLocalBase {
    protected Account mAccount;
    protected Context mContext;
    protected GalleryExtendedAuthToken mExtendedAuthToken;

    protected abstract DBItem generateDBImage(Cursor cursor);

    protected abstract Uri getBaseUri();

    protected abstract void handleRequestCloudItemList() throws Exception;

    protected abstract void initRequestCloudItemList();

    protected abstract void putToRequestCloudItemList(DBItem dBItem);

    public SyncFromLocalBase(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken) {
        this.mContext = mContext;
        this.mAccount = mAccount;
        this.mExtendedAuthToken = mExtendedAuthToken;
    }

    public void sync() throws Exception {
        RegularPagingProvider pagingProvider = new RegularPagingProvider();
        long startTime = System.currentTimeMillis();
        SyncLog.d("SyncFromLocalBase", "sync from local start");
        Cursor cursor = null;
        while (true) {
            try {
                String selection = getSelectionClause();
                cursor = this.mContext.getContentResolver().query(CloudUtils.getLimitUri(getBaseUri(), pagingProvider.getQueryLimit(), pagingProvider.getOffset()), CloudUtils.getProjectionAll(), selection, null, getSortOrder());
                if (cursor != null) {
                    SyncLog.d("SyncFromLocalBase", "start one batch, count=" + cursor.getCount());
                    syncOneBatch(cursor);
                    SyncLog.d("SyncFromLocalBase", "end one batch, count=" + cursor.getCount());
                    if (!pagingProvider.updateShouldContinue(cursor)) {
                        break;
                    } else if (cursor != null) {
                        cursor.close();
                    }
                } else {
                    break;
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        if (cursor != null) {
            cursor.close();
        }
        SyncLog.d("SyncFromLocalBase", "sync from local finish:" + (System.currentTimeMillis() - startTime));
    }

    protected String getSortOrder() {
        return "dateModified DESC ";
    }

    protected String getSelectionClause() {
        return String.format(" (%s) ", new Object[]{"localFlag != 0"});
    }

    private void syncOneBatch(Cursor cursor) throws Exception {
        if (cursor == null) {
            SyncLog.d("SyncFromLocalBase", "there is no item in local DB to sync.");
            return;
        }
        initRequestCloudItemList();
        while (cursor.moveToNext()) {
            putToRequestCloudItemList(generateDBImage(cursor));
        }
        handleRequestCloudItemList();
    }
}
