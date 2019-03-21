package com.miui.gallery.share;

import android.content.Context;
import android.graphics.Bitmap.Config;
import com.miui.gallery.R;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.RoundedBitmapDisplayer;

public class ShareUserAdapter extends ShareUserAdapterBase {
    private final boolean mAddSahrer;

    public ShareUserAdapter(Context context, boolean addSharer, String creatorId) {
        super(context, creatorId, R.layout.share_user_item);
        this.mAddSahrer = addSharer;
    }

    protected void intialDisplayOptions() {
        this.mDefaultDisplayImageOptions = new Builder().cacheThumbnail(true).considerExifParams(true).loadFromMicroCache(true).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).displayer(new RoundedBitmapDisplayer(10, 0)).showImageOnLoading(R.drawable.ic_contact_photo_default).build();
    }

    public int getCount() {
        return (this.mAddSahrer ? 1 : 0) + this.mShareUsers.size();
    }

    protected int getDefaultIcon(CloudUserCacheEntry entry) {
        return R.drawable.ic_contact_photo_default;
    }

    protected int getAbsentSharerIcon(CloudUserCacheEntry entry) {
        return R.drawable.add_sharer;
    }

    protected int getIconEffect() {
        return R.drawable.ic_contact_photo_effect;
    }
}
