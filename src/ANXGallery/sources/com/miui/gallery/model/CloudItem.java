package com.miui.gallery.model;

import android.content.Context;
import android.database.Cursor;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.MediaAndAlbumOperations.OnCompleteListener;
import com.miui.gallery.util.PhotoOperationsUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.miui.gallery.util.uil.CloudUriAdapter;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Objects;
import miui.graphics.BitmapFactory;

public class CloudItem extends BaseDataItem {
    private static final String[] DETAIL_INFO_PROJECTION = new String[]{"fileName", "exifModel", "exifMake", "exifFNumber", "exifFocalLength", "exifISOSpeedRatings", "exifExposureTime", "exifFlash"};
    private transient OnCompleteListenerWrapper mAddToFavoritesListener;
    private String mCreatorId;
    private boolean mHasFace;
    private long mId;
    private int mIsFavorite;
    private boolean mIsShareItem;
    private boolean mIsSynced;
    private int mOrientation = 0;
    private transient OnCompleteListenerWrapper mRemoveFromFavoritesListener;
    private String mServerId;
    private String mSha1;

    private static class OnCompleteListenerWrapper implements OnCompleteListener {
        private final WeakReference<CloudItem> mCloudItemRef;
        private final int mOperationType;
        private final WeakReference<OnCompleteListener> mWrappedRef;

        public OnCompleteListenerWrapper(OnCompleteListener listener, CloudItem dataItem, int operationType) {
            this.mWrappedRef = new WeakReference(listener);
            this.mCloudItemRef = new WeakReference(dataItem);
            this.mOperationType = operationType;
        }

        public void onComplete(long[] result) {
            int i = 1;
            if (result != null && result[0] > 0) {
                CloudItem cloudItem = (CloudItem) this.mCloudItemRef.get();
                if (cloudItem != null) {
                    if (this.mOperationType != 1) {
                        i = 0;
                    }
                    cloudItem.setIsFavorite(i);
                }
            }
            OnCompleteListener listener = (OnCompleteListener) this.mWrappedRef.get();
            if (listener != null) {
                listener.onComplete(result);
            }
        }
    }

    public CloudItem setId(long id) {
        this.mId = id;
        return this;
    }

    public long getId() {
        return this.mId;
    }

    public CloudItem setShare(boolean isShareItem) {
        this.mIsShareItem = isShareItem;
        return this;
    }

    public CloudItem setSynced(boolean synced) {
        this.mIsSynced = synced;
        return this;
    }

    public boolean isShare() {
        return this.mIsShareItem;
    }

    public CloudItem setSha1(String sha1) {
        this.mSha1 = sha1;
        return this;
    }

    public String getSha1() {
        return this.mSha1;
    }

    public CloudItem setCreatorId(String creatorId) {
        this.mCreatorId = creatorId;
        return this;
    }

    public CloudItem setServerId(String serverId) {
        this.mServerId = serverId;
        return this;
    }

    public CloudItem setOrientation(int orientation) {
        this.mOrientation = orientation;
        return this;
    }

    public CloudItem setIsFavorite(int isFavorite) {
        this.mIsFavorite = isFavorite;
        return this;
    }

    public BaseDataItem setFilePath(String filePath) {
        super.setFilePath(filePath);
        if (!TextUtils.isEmpty(filePath)) {
            removeSupportOperation(256);
        }
        return this;
    }

    public void setHasFace(boolean hasFace) {
        this.mHasFace = hasFace;
    }

    public String getServerId() {
        return this.mServerId;
    }

    public boolean isEverSynced() {
        return !TextUtils.isEmpty(this.mServerId);
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean hasFace() {
        return this.mHasFace;
    }

    public PhotoDetailInfo getDetailInfo(Context context) {
        final PhotoDetailInfo info = super.getDetailInfo(context);
        String path = getOriginalPath();
        boolean hasOrigin = FileUtils.isFileExist(path);
        if (!hasOrigin) {
            path = getThumnailPath();
            if (!FileUtils.isFileExist(path)) {
                path = null;
            }
        }
        if (!hasOrigin) {
            if (isVideo() || isGif()) {
                info.removeDetail(200);
                info.addDetail(8, context.getString(R.string.tip_not_download));
            } else if (!TextUtils.isEmpty(path)) {
                info.addDetail(200, path);
                info.addDetail(2, FileUtils.getFileName(path));
                info.addDetail(3, Long.valueOf(new File(path).length()));
                try {
                    Options bitmapOptions = BitmapFactory.getBitmapSize(path);
                    info.addDetail(4, Integer.valueOf(bitmapOptions.outWidth));
                    info.addDetail(5, Integer.valueOf(bitmapOptions.outHeight));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        if (isSecret()) {
            info.removeDetail(200);
        }
        QueryHandler handler = new QueryHandler() {
            public Object handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return null;
                }
                if (TextUtils.isEmpty((String) info.getDetail(2)) || CloudItem.this.isSecret()) {
                    info.addDetail(2, cursor.getString(0));
                }
                info.addDetail(BaiduSceneResult.SHOOTING, cursor.getString(1));
                info.addDetail(100, cursor.getString(2));
                info.addDetail(BaiduSceneResult.TEMPLE, cursor.getString(3));
                String focalLenght = cursor.getString(4);
                if (!TextUtils.isEmpty(focalLenght)) {
                    info.addDetail(BaiduSceneResult.MOUNTAINEERING, PhotoDetailInfo.wrapFocalLength(focalLenght));
                }
                info.addDetail(BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE, cursor.getString(5));
                info.addDetail(BaiduSceneResult.GARDEN, cursor.getString(6));
                info.addDetail(BaiduSceneResult.TAEKWONDO, cursor.getString(7));
                return info;
            }
        };
        Uri uri = isShare() ? ShareImage.SHARE_URI : Cloud.CLOUD_URI;
        long id = isShare() ? ShareMediaManager.getOriginalMediaId(getId()) : getId();
        return (PhotoDetailInfo) SafeDBUtil.safeQuery(context, uri, DETAIL_INFO_PROJECTION, "_id=?", new String[]{String.valueOf(id)}, null, handler);
    }

    public int initSupportOperations() {
        int result;
        String path = getPathDisplayBetter();
        if (isVideo()) {
            result = nexEngine.ExportHEVCMainTierLevel6 | PhotoOperationsUtil.getVideoSupportedOperations(path);
        } else {
            result = nexEngine.ExportHEVCMainTierLevel6 | PhotoOperationsUtil.getImageSupportedOperations(path, this.mMimeType, this.mLatitude, this.mLongitude);
        }
        result |= 1;
        if (!isGif()) {
            result |= 512;
        }
        if (needDownloadOrigin()) {
            result |= 256;
        } else {
            result &= -257;
        }
        if (isShare()) {
            result = ((result & -8388609) & -16777217) & -513;
            if (canDelete()) {
                return result;
            }
            return result & -2;
        } else if (isSecret()) {
            return (((((result & -8388609) & -1048577) & -33) & -2049) & -4194305) | nexEngine.ExportHEVCMainTierLevel62;
        } else {
            result &= -16777217;
            if (!ApplicationHelper.isSecretAlbumFeatureOpen()) {
                return result & -8388609;
            }
            if (isVideo()) {
                return result & -8388609;
            }
            if (TextUtils.isEmpty(path) || !StorageUtils.isInExternalStorage(GalleryApp.sGetAndroidContext(), path)) {
                return result;
            }
            return result | nexEngine.ExportHEVCHighTierLevel61;
        }
    }

    public Uri getDownloadUri() {
        return CloudUriAdapter.getDownloadUri(getId());
    }

    private boolean needDownloadOrigin() {
        return TextUtils.isEmpty(getOriginalPath());
    }

    private boolean canDelete() {
        return isOwner() || isMine();
    }

    private boolean isOwner() {
        return !isShare();
    }

    private boolean isCreatorFromAlbumOwner() {
        return TextUtils.isEmpty(this.mCreatorId) && this.mIsSynced;
    }

    public FavoriteInfo getFavoriteInfo(boolean strictMode) {
        boolean z;
        boolean z2 = true;
        FavoriteInfo info = new FavoriteInfo();
        if (isShare() || isSecret()) {
            z = false;
        } else {
            z = true;
        }
        info.setFavoriteUsable(z);
        if (this.mIsFavorite <= 0) {
            z2 = false;
        }
        info.setFavorite(z2);
        return info;
    }

    private boolean isCreatorEqualsCurrentAccount() {
        return TextUtils.equals(GalleryCloudUtils.getAccountName(), this.mCreatorId);
    }

    public boolean isMine() {
        if (isShare()) {
            if (isCreatorEqualsCurrentAccount() || !this.mIsSynced) {
                return true;
            }
            return false;
        } else if (isCreatorFromAlbumOwner() || isCreatorEqualsCurrentAccount() || !this.mIsSynced) {
            return true;
        } else {
            return false;
        }
    }

    public String getMicroPath() {
        return TextUtils.isEmpty(super.getMicroPath()) ? StorageUtils.getPriorMicroThumbnailPath(this.mSha1) : super.getMicroPath();
    }

    public boolean isSecret() {
        return super.isSecret() || this.mLocalGroupId == -1000;
    }

    public boolean checkOriginalFileExist() {
        return super.checkOriginalFileExist() && new File(getOriginalPath()).length() >= getSize();
    }

    protected void onLoadCache() {
        super.onLoadCache();
        String path = getOriginalPath();
        if (!TextUtils.isEmpty(path) && isEverSynced() && new File(path).length() < getSize()) {
            setFilePath(null);
        }
        path = getThumnailPath();
        if (!TextUtils.isEmpty(path) && !FileUtils.isFileExist(path)) {
            setThumbPath(null);
        }
    }

    public OnCompleteListener wrapAddToFavoritesListener(OnCompleteListener listener) {
        if (this.mAddToFavoritesListener == null || !Objects.equals(listener, this.mAddToFavoritesListener.mWrappedRef.get())) {
            this.mAddToFavoritesListener = new OnCompleteListenerWrapper(listener, this, 1);
        }
        return this.mAddToFavoritesListener;
    }

    public OnCompleteListener wrapRemoveFromFavoritesListener(OnCompleteListener listener) {
        if (this.mRemoveFromFavoritesListener == null || !Objects.equals(listener, this.mRemoveFromFavoritesListener.mWrappedRef.get())) {
            this.mRemoveFromFavoritesListener = new OnCompleteListenerWrapper(listener, this, 2);
        }
        return this.mRemoveFromFavoritesListener;
    }
}
