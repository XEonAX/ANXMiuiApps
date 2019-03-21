package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.text.TextUtils;
import com.google.common.collect.Lists;
import com.miui.gallery.data.DBCloud;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.DBItem;
import com.miui.gallery.provider.ProcessingMediaManager;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.SyncLog;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class SyncOwnerFromLocal extends SyncFromLocalBase {
    private ArrayList<RequestCloudItem> mAutoCreateImageItems;
    private ArrayList<RequestCloudItem> mAutoCreateVideoItems;
    private ArrayList<RequestCloudItem> mCopyImageToOwnerItems;
    private ArrayList<RequestCloudItem> mCreateGroupItems;
    private ArrayList<RequestCloudItem> mDeleteGroupItems;
    private ArrayList<RequestCloudItem> mDeleteImageItems;
    private ArrayList<RequestCloudItem> mEditCloudThumbnailInfoItems;
    private ArrayList<RequestCloudItem> mEditFavoriteInfoItems;
    private ArrayList<RequestCloudItem> mEditGeoInfoItems;
    private ArrayList<RequestCloudItem> mEditGroupDescriptionItems;
    private ArrayList<RequestCloudItem> mEditedItems;
    private long mLargestElapsedTime;
    private ArrayList<RequestCloudItem> mManualCreateOwnerImageItems;
    private ArrayList<RequestCloudItem> mManualCreateOwnerVideoItems;
    private ArrayList<RequestCloudItem> mMoveImageToOwnerItems;
    private boolean mNoDelay;
    private int mPhotosToBeSynced;
    private ArrayList<RequestCloudItem> mRenameGroupItems;
    private int mVideosToBeSynced;

    public SyncOwnerFromLocal(Context context, Account account, GalleryExtendedAuthToken extendedAuthToken, boolean noDelay) {
        super(context, account, extendedAuthToken);
        this.mNoDelay = noDelay;
    }

    public void sync() throws Exception {
        this.mPhotosToBeSynced = 0;
        this.mVideosToBeSynced = 0;
        try {
            super.sync();
        } finally {
            if (this.mPhotosToBeSynced > 0) {
                BaseSamplingStatHelper.recordNumericPropertyEvent("items_to_be_synced", "owner_photos_to_be_synced", (long) this.mPhotosToBeSynced);
            }
            if (this.mVideosToBeSynced > 0) {
                BaseSamplingStatHelper.recordNumericPropertyEvent("items_to_be_synced", "owner_videos_to_be_synced", (long) this.mVideosToBeSynced);
            }
            if (this.mLargestElapsedTime > 0) {
                BaseSamplingStatHelper.recordNumericPropertyEvent("items_to_be_synced", "owner_largest_elapsed_time", this.mLargestElapsedTime);
            }
        }
    }

    protected Uri getBaseUri() {
        return GalleryCloudUtils.CLOUD_URI;
    }

    protected DBImage generateDBImage(Cursor cursor) {
        return new DBCloud(cursor);
    }

    protected String getSelectionClause() {
        String validSizeSelection = String.format(Locale.US, "((serverType = 1 AND size < %s) OR (serverType = 2 AND size < %s))", new Object[]{Long.valueOf(CloudUtils.getMaxImageSizeLimit()), Long.valueOf(CloudUtils.getMaxVideoSizeLimit())});
        String baseSelection = DatabaseUtils.concatenateWhere(CloudUtils.SELECTION_OWNER_NEED_SYNC, String.format(Locale.US, "(%s OR %s)", new Object[]{"(serverType=0)", validSizeSelection}));
        List<String> paths = ProcessingMediaManager.queryProcessingMediaPaths();
        if (BaseMiscUtil.isValid(paths)) {
            StringBuilder sb = new StringBuilder("localFile NOT IN (");
            for (int i = 0; i < paths.size(); i++) {
                if (!TextUtils.isEmpty((CharSequence) paths.get(i))) {
                    DatabaseUtils.appendEscapedSQLString(sb, (String) paths.get(i));
                    if (i != paths.size() - 1) {
                        sb.append(", ");
                    }
                }
            }
            sb.append(")");
            return DatabaseUtils.concatenateWhere(baseSelection, sb.toString());
        }
        return String.format(" (%s) ", new Object[]{baseSelection});
    }

    protected void initRequestCloudItemList() {
        this.mCreateGroupItems = new ArrayList();
        this.mManualCreateOwnerImageItems = new ArrayList();
        this.mAutoCreateImageItems = new ArrayList();
        this.mCopyImageToOwnerItems = new ArrayList();
        this.mMoveImageToOwnerItems = new ArrayList();
        this.mDeleteImageItems = new ArrayList();
        this.mDeleteGroupItems = new ArrayList();
        this.mRenameGroupItems = new ArrayList();
        this.mAutoCreateVideoItems = Lists.newArrayList();
        this.mManualCreateOwnerVideoItems = Lists.newArrayList();
        this.mEditedItems = Lists.newArrayList();
        this.mEditCloudThumbnailInfoItems = Lists.newArrayList();
        this.mEditGroupDescriptionItems = Lists.newArrayList();
        this.mEditGeoInfoItems = Lists.newArrayList();
        this.mEditFavoriteInfoItems = Lists.newArrayList();
    }

    private boolean shouldSyncEditedItem(DBImage dbImage) {
        int localFlag = dbImage.getLocalFlag();
        if (localFlag != 0 && localFlag != 5 && localFlag != 6 && localFlag != 9) {
            return false;
        }
        String editedColumns = dbImage.getEditedColumns();
        if (dbImage.isUbiFocus() && editedColumns.contains(GalleryCloudUtils.getFocusIndexColumnElement(dbImage.isShareItem()))) {
            return true;
        }
        return false;
    }

    private boolean shouldSyncEditedThumbnailInfo(DBImage dbImage) {
        int localFlag = dbImage.getLocalFlag();
        if ((dbImage instanceof DBCloud) && ((localFlag == 0 || localFlag == 10 || localFlag == 8) && dbImage.getEditedColumns().contains(GalleryCloudUtils.transformToEditedColumnsElement(66)))) {
            ThumbnailInfo thumbnailInfo = ((DBCloud) dbImage).getThumbnailInfo();
            if (thumbnailInfo != null) {
                long bgImageLocalId = thumbnailInfo.getBgImageLocalId();
                if (bgImageLocalId == -1) {
                    return true;
                }
                DBImage bgItem = CloudUtils.getItem(getBaseUri(), this.mContext, "_id", String.valueOf(bgImageLocalId));
                if (bgItem != null) {
                    if (8 == bgItem.getLocalFlag()) {
                        return false;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    private boolean shouldSyncEditedDescription(DBImage dbImage) {
        int localFlag = dbImage.getLocalFlag();
        if (localFlag == 0 || localFlag == 10) {
            return dbImage.getEditedColumns().contains(GalleryCloudUtils.transformToEditedColumnsElement(6));
        }
        return false;
    }

    private boolean shouldSyncEditedGeoInfo(DBImage dbImage) {
        int localFlag = dbImage.getLocalFlag();
        if (localFlag == 0 || localFlag == 5 || localFlag == 6 || localFlag == 9) {
            return dbImage.getEditedColumns().contains(GalleryCloudUtils.transformToEditedColumnsElement(70));
        }
        return false;
    }

    private boolean shouldSyncFavoriteInfo(DBImage dbImage) {
        int localFlag = dbImage.getLocalFlag();
        if (localFlag == 0 || localFlag == 5 || localFlag == 6 || localFlag == 9) {
            return dbImage.getEditedColumns().contains(GalleryCloudUtils.transformToEditedColumnsElement(-1));
        }
        return false;
    }

    protected void putToRequestCloudItemList(DBItem item) {
        DBImage dbCloud = (DBImage) item;
        if (!TextUtils.isEmpty(dbCloud.getEditedColumns())) {
            if (dbCloud.isItemType()) {
                if (shouldSyncEditedItem(dbCloud)) {
                    this.mEditedItems.add(new RequestCloudItem(0, dbCloud, this.mNoDelay));
                }
                if (shouldSyncEditedGeoInfo(dbCloud)) {
                    this.mEditGeoInfoItems.add(new RequestCloudItem(0, dbCloud, this.mNoDelay));
                }
                if (shouldSyncFavoriteInfo(dbCloud)) {
                    this.mEditFavoriteInfoItems.add(new RequestCloudItem(0, dbCloud, this.mNoDelay));
                }
            } else {
                if (shouldSyncEditedThumbnailInfo(dbCloud)) {
                    this.mEditCloudThumbnailInfoItems.add(new RequestCloudItem(0, dbCloud, this.mNoDelay));
                }
                if (shouldSyncEditedDescription(dbCloud)) {
                    this.mEditGroupDescriptionItems.add(new RequestCloudItem(0, dbCloud, this.mNoDelay));
                }
            }
        }
        RequestCloudItem requestItem;
        switch (dbCloud.getLocalFlag()) {
            case 2:
                requestItem = new RequestCloudItem(0, dbCloud, this.mNoDelay);
                if (requestItem.dbCloud.isItemType()) {
                    this.mDeleteImageItems.add(requestItem);
                    return;
                } else {
                    this.mDeleteGroupItems.add(requestItem);
                    return;
                }
            case 4:
                switch (dbCloud.getServerType()) {
                    case 1:
                        this.mAutoCreateImageItems.add(new RequestCloudItem(4, dbCloud, this.mNoDelay));
                        return;
                    case 2:
                        this.mAutoCreateVideoItems.add(new RequestCloudItem(2, dbCloud, this.mNoDelay));
                        return;
                    default:
                        SyncLog.e("SyncOwnerFromLocal", "unsupport local flag= %d serverType= %d", Integer.valueOf(dbCloud.getLocalFlag()), Integer.valueOf(dbCloud.getServerType()));
                        return;
                }
            case 5:
                if (dbCloud.isItemType()) {
                    this.mMoveImageToOwnerItems.add(new RequestCloudItem(0, dbCloud, this.mNoDelay));
                    return;
                }
                return;
            case 6:
            case 9:
                if (dbCloud.isItemType()) {
                    this.mCopyImageToOwnerItems.add(new RequestCloudItem(0, dbCloud, this.mNoDelay));
                    return;
                }
                return;
            case 7:
                switch (dbCloud.getServerType()) {
                    case 0:
                        this.mCreateGroupItems.add(new RequestCloudItem(0, dbCloud, this.mNoDelay));
                        return;
                    case 1:
                        this.mAutoCreateImageItems.add(new RequestCloudItem(4, dbCloud, this.mNoDelay));
                        this.mPhotosToBeSynced++;
                        this.mLargestElapsedTime = Math.max(this.mLargestElapsedTime, System.currentTimeMillis() - dbCloud.getDateModified());
                        return;
                    case 2:
                        this.mAutoCreateVideoItems.add(new RequestCloudItem(2, dbCloud, this.mNoDelay));
                        this.mVideosToBeSynced++;
                        this.mLargestElapsedTime = Math.max(this.mLargestElapsedTime, System.currentTimeMillis() - dbCloud.getDateModified());
                        return;
                    default:
                        SyncLog.e("SyncOwnerFromLocal", "unsupport local flag= %d serverType= %d", Integer.valueOf(dbCloud.getLocalFlag()), Integer.valueOf(dbCloud.getServerType()));
                        return;
                }
            case 8:
                switch (dbCloud.getServerType()) {
                    case 0:
                        this.mCreateGroupItems.add(new RequestCloudItem(0, dbCloud, this.mNoDelay));
                        return;
                    case 1:
                        this.mManualCreateOwnerImageItems.add(new RequestCloudItem(5, dbCloud, this.mNoDelay));
                        this.mPhotosToBeSynced++;
                        this.mLargestElapsedTime = Math.max(this.mLargestElapsedTime, System.currentTimeMillis() - dbCloud.getDateModified());
                        return;
                    case 2:
                        this.mManualCreateOwnerVideoItems.add(new RequestCloudItem(3, dbCloud, this.mNoDelay));
                        this.mVideosToBeSynced++;
                        this.mLargestElapsedTime = Math.max(this.mLargestElapsedTime, System.currentTimeMillis() - dbCloud.getDateModified());
                        return;
                    default:
                        SyncLog.e("SyncOwnerFromLocal", "unsupport local flag=" + dbCloud.getLocalFlag() + ", serverType=" + dbCloud.getServerType());
                        return;
                }
            case 10:
                if (!dbCloud.isItemType()) {
                    requestItem = new RequestCloudItem(0, dbCloud, this.mNoDelay);
                    if (TextUtils.isEmpty(dbCloud.getServerId())) {
                        this.mCreateGroupItems.add(requestItem);
                        BaseSamplingStatHelper.recordErrorEvent("Sync", "sync_album_renamed_before_sync", BaseSamplingStatHelper.generatorCommonParams());
                        return;
                    }
                    this.mRenameGroupItems.add(requestItem);
                    return;
                }
                return;
            case 11:
                SyncLog.d("SyncOwnerFromLocal", "don't handle move from flag.");
                return;
            default:
                if (TextUtils.isEmpty(dbCloud.getEditedColumns())) {
                    SyncLog.e("SyncOwnerFromLocal", "unsupport local flag: %d", Integer.valueOf(dbCloud.getLocalFlag()));
                    return;
                }
                return;
        }
    }

    protected void handleRequestCloudItemList() throws Exception {
        if (this.mCreateGroupItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start create group items");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mCreateGroupItems, new CreateGroupItem(this.mContext)) == 2) {
                return;
            }
        }
        if (this.mManualCreateOwnerVideoItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start upload manual create videos");
            UpDownloadManager.dispatchList(this.mManualCreateOwnerVideoItems);
        }
        if (this.mAutoCreateVideoItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start upload auto create videos");
            UpDownloadManager.dispatchList(this.mAutoCreateVideoItems);
        }
        if (this.mManualCreateOwnerImageItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start upload manual create images");
            UpDownloadManager.dispatchList(this.mManualCreateOwnerImageItems);
        }
        if (this.mAutoCreateImageItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start upload auto create images");
            UpDownloadManager.dispatchList(this.mAutoCreateImageItems);
        }
        if (this.mCopyImageToOwnerItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start copy image items");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mCopyImageToOwnerItems, new CopyImageToOwnerAlbum(this.mContext)) == 2) {
                return;
            }
        }
        if (this.mMoveImageToOwnerItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start move image items");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mMoveImageToOwnerItems, new MoveItemToOwnerAlbum(this.mContext)) == 2) {
                return;
            }
        }
        if (this.mDeleteImageItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start delete image items");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mDeleteImageItems, new DeleteCloudItem(this.mContext)) == 2) {
                return;
            }
        }
        if (this.mDeleteGroupItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start delete group items");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mDeleteGroupItems, new DeleteCloudItem(this.mContext)) == 2) {
                return;
            }
        }
        if (this.mRenameGroupItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start rename group items");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mRenameGroupItems, new RenameCloudItem(this.mContext)) == 2) {
                return;
            }
        }
        if (this.mEditedItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start edit items");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mEditedItems, new EditCloudItem(this.mContext)) == 2) {
                return;
            }
        }
        if (this.mEditCloudThumbnailInfoItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start album thumbnail info");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mEditCloudThumbnailInfoItems, new EditCloudThumbnailInfo(this.mContext)) == 2) {
                return;
            }
        }
        if (this.mEditGroupDescriptionItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start edit album description");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mEditGroupDescriptionItems, new EditGroupDescription(this.mContext)) == 2) {
                return;
            }
        }
        if (this.mEditGeoInfoItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start edit geo info");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mEditGeoInfoItems, new EditCloudGeoInfo(this.mContext)) == 2) {
                return;
            }
        }
        if (this.mEditFavoriteInfoItems.size() > 0) {
            SyncLog.v("SyncOwnerFromLocal", "start edit favorite info");
            if (RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mEditFavoriteInfoItems, new EditCloudFavoriteInfo(this.mContext)) == 2) {
            }
        }
    }
}
