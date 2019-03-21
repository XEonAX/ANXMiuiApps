package com.miui.gallery.model;

import android.content.Context;
import com.miui.gallery.provider.FavoritesManager;
import com.miui.gallery.util.PhotoOperationsUtil;
import java.io.File;

public class StorageItem extends BaseDataItem {
    public StorageItem() {
        this.mSize = -1;
        this.mCreateTime = -1;
    }

    public long getSize() {
        if (this.mSize == -1) {
            this.mSize = new File(getOriginalPath()).length();
        }
        return this.mSize;
    }

    public long getCreateTime() {
        if (this.mCreateTime == -1) {
            this.mCreateTime = new File(getOriginalPath()).lastModified();
        }
        return this.mCreateTime;
    }

    public PhotoDetailInfo getDetailInfo(Context context) {
        PhotoDetailInfo info = super.getDetailInfo(context);
        if (isVideo()) {
            PhotoDetailInfo.extractVideoAttr(info, getOriginalPath());
        } else {
            PhotoDetailInfo.extractExifInfo(info, getOriginalPath(), true);
        }
        return info;
    }

    public int initSupportOperations() {
        if (isVideo()) {
            return PhotoOperationsUtil.getVideoSupportedOperations(getOriginalPath());
        }
        return PhotoOperationsUtil.getImageSupportedOperations(getOriginalPath(), getMimeType(), this.mLatitude, this.mLongitude);
    }

    public FavoriteInfo getFavoriteInfo(boolean strictMode) {
        return FavoritesManager.queryFavoriteInfoByFilePath(getOriginalPath(), strictMode);
    }
}
