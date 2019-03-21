package com.miui.gallery.model;

import android.content.Context;
import com.miui.gallery.provider.FavoritesManager;
import com.miui.gallery.util.PhotoOperationsUtil;

public class MediaItem extends BaseDataItem {
    public PhotoDetailInfo getDetailInfo(Context context) {
        PhotoDetailInfo info = super.getDetailInfo(context);
        PhotoDetailInfo.extractExifInfo(info, getOriginalPath(), false);
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
