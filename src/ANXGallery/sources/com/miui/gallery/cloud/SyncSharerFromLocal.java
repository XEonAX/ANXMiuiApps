package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import com.google.common.collect.Lists;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.DBItem;
import com.miui.gallery.data.DBShareImage;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.SyncLog;
import java.util.ArrayList;
import java.util.Locale;

public class SyncSharerFromLocal extends SyncFromLocalBase {
    private ArrayList<RequestCloudItem> mCopyImageToSharerItems;
    private ArrayList<RequestCloudItem> mDeleteShareImageItems;
    private long mLargestElapsedTime;
    private ArrayList<RequestCloudItem> mManualCreateSharerImageItems;
    private ArrayList<RequestCloudItem> mManualCreateSharerVideoItems;
    private ArrayList<RequestCloudItem> mMoveImageToSharerItems;
    private int mPhotosToBeSynced;
    private int mVideosToBeSynced;

    public SyncSharerFromLocal(Context context, Account account, GalleryExtendedAuthToken extendedAuthToken) {
        super(context, account, extendedAuthToken);
    }

    public void sync() throws Exception {
        this.mPhotosToBeSynced = 0;
        this.mVideosToBeSynced = 0;
        try {
            super.sync();
        } finally {
            if (this.mPhotosToBeSynced > 0) {
                BaseSamplingStatHelper.recordNumericPropertyEvent("items_to_be_synced", "sharer_photos_to_be_synced", (long) this.mPhotosToBeSynced);
            }
            if (this.mVideosToBeSynced > 0) {
                BaseSamplingStatHelper.recordNumericPropertyEvent("items_to_be_synced", "sharer_videos_to_be_synced", (long) this.mVideosToBeSynced);
            }
            if (this.mLargestElapsedTime > 0) {
                BaseSamplingStatHelper.recordNumericPropertyEvent("items_to_be_synced", "sharer_largest_elapsed_time", this.mLargestElapsedTime);
            }
        }
    }

    protected Uri getBaseUri() {
        return GalleryCloudUtils.SHARE_IMAGE_URI;
    }

    protected DBImage generateDBImage(Cursor cursor) {
        return new DBShareImage(cursor);
    }

    protected String getSelectionClause() {
        return DatabaseUtils.concatenateWhere(super.getSelectionClause(), String.format(Locale.US, "((serverType = 1 AND size < %s) OR (serverType = 2 AND size < %s))", new Object[]{Long.valueOf(CloudUtils.getMaxImageSizeLimit()), Long.valueOf(CloudUtils.getMaxVideoSizeLimit())}));
    }

    protected void initRequestCloudItemList() {
        this.mManualCreateSharerImageItems = new ArrayList();
        this.mCopyImageToSharerItems = new ArrayList();
        this.mDeleteShareImageItems = new ArrayList();
        this.mManualCreateSharerVideoItems = Lists.newArrayList();
        this.mMoveImageToSharerItems = Lists.newArrayList();
    }

    protected void putToRequestCloudItemList(DBItem item) {
        DBImage dbCloud = (DBImage) item;
        switch (dbCloud.getLocalFlag()) {
            case 2:
                this.mDeleteShareImageItems.add(new RequestCloudItem(0, dbCloud));
                return;
            case 5:
                if (dbCloud.isItemType()) {
                    this.mMoveImageToSharerItems.add(new RequestCloudItem(0, dbCloud));
                    return;
                }
                return;
            case 6:
            case 9:
                this.mCopyImageToSharerItems.add(new RequestCloudItem(0, dbCloud));
                return;
            case 8:
                switch (dbCloud.getServerType()) {
                    case 1:
                        this.mManualCreateSharerImageItems.add(new RequestCloudItem(5, dbCloud));
                        this.mPhotosToBeSynced++;
                        this.mLargestElapsedTime = Math.max(this.mLargestElapsedTime, System.currentTimeMillis() - dbCloud.getDateModified());
                        return;
                    case 2:
                        this.mManualCreateSharerVideoItems.add(new RequestCloudItem(3, dbCloud));
                        this.mVideosToBeSynced++;
                        this.mLargestElapsedTime = Math.max(this.mLargestElapsedTime, System.currentTimeMillis() - dbCloud.getDateModified());
                        return;
                    default:
                        return;
                }
            case 11:
                SyncLog.d("SyncSharerFromLocal", "don't handle move from flag.");
                return;
            default:
                SyncLog.e("SyncSharerFromLocal", "unsupport local flag %d", Integer.valueOf(dbCloud.getLocalFlag()));
                return;
        }
    }

    protected void handleRequestCloudItemList() throws Exception {
        if (this.mManualCreateSharerVideoItems.size() > 0) {
            SyncLog.v("SyncSharerFromLocal", "start upload manual create videos");
            UpDownloadManager.dispatchList(this.mManualCreateSharerVideoItems);
        }
        if (this.mManualCreateSharerImageItems.size() > 0) {
            SyncLog.v("SyncSharerFromLocal", "start upload manual create images");
            UpDownloadManager.dispatchList(this.mManualCreateSharerImageItems);
            if (0 == 2) {
                return;
            }
        }
        if (this.mCopyImageToSharerItems.size() > 0) {
            SyncLog.v("SyncSharerFromLocal", "start copy image items");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mCopyImageToSharerItems, new CopyImageToSharerAlbum(this.mContext)) == 2) {
                return;
            }
        }
        if (this.mMoveImageToSharerItems.size() > 0) {
            SyncLog.v("SyncSharerFromLocal", "start move image items");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mMoveImageToSharerItems, new MoveItemToSharerAlbum(this.mContext)) == 2) {
                return;
            }
        }
        if (this.mDeleteShareImageItems.size() > 0) {
            SyncLog.v("SyncSharerFromLocal", "start delete image items");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mDeleteShareImageItems, new DeleteCloudItem(this.mContext)) == 2) {
            }
        }
    }
}
