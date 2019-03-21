package com.miui.gallery.share.baby;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap.Config;
import android.text.TextUtils;
import android.view.ViewGroup.LayoutParams;
import com.miui.gallery.R;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.share.CloudUserCacheEntry;
import com.miui.gallery.share.ShareUserAdapterBase;
import com.miui.gallery.share.UserInfo;
import com.miui.gallery.util.face.PeopleItemBitmapDisplayer;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;

public class BabyAlbumShareUserAdapter extends ShareUserAdapterBase {
    private static int sParentIconSize;

    public BabyAlbumShareUserAdapter(Context context, String creatorId) {
        super(context, creatorId, R.layout.baby_album_share_user_item);
        if (sParentIconSize == 0) {
            sParentIconSize = (int) context.getResources().getDimension(R.dimen.baby_album_sharer_parents_icon_size);
        }
    }

    protected String getDisplayName(Resources res, UserInfo user, CloudUserCacheEntry entry) {
        if (TextUtils.isEmpty(entry.mRelationText) || (user != null && TextUtils.equals(user.getUserId(), GalleryCloudUtils.getAccountName()))) {
            return super.getDisplayName(res, user, entry);
        }
        return entry.mRelationText;
    }

    public int getViewTypeCount() {
        return 3;
    }

    public int getItemViewType(int position) {
        CloudUserCacheEntry entry = getItem(position);
        if (entry != null) {
            if (TextUtils.equals(entry.mRelation, "father")) {
                return 0;
            }
            if (TextUtils.equals(entry.mRelation, "mother")) {
                return 1;
            }
        }
        return 2;
    }

    public int getCount() {
        return this.mShareUsers.size();
    }

    protected int getDefaultIcon(CloudUserCacheEntry entry) {
        return isSharerParent(entry) ? R.drawable.baby_album_sharer_default_big : R.drawable.baby_album_sharer_default_small;
    }

    protected void setIconSize(CloudUserCacheEntry entry, LayoutParams params) {
        if (isSharerParent(entry)) {
            params.width = sParentIconSize;
            params.height = sParentIconSize;
            return;
        }
        super.setIconSize(entry, params);
    }

    protected int getAbsentSharerIcon(CloudUserCacheEntry entry) {
        return isSharerParent(entry) ? R.drawable.baby_album_add_sharer_big : R.drawable.baby_album_add_sharer_small;
    }

    protected int getIconEffect() {
        return R.drawable.ic_baby_album_sharer_effect;
    }

    private boolean isSharerParent(CloudUserCacheEntry entry) {
        return entry != null && (TextUtils.equals(entry.mRelation, "father") || TextUtils.equals(entry.mRelation, "mother"));
    }

    protected void intialDisplayOptions() {
        this.mDefaultDisplayImageOptions = new Builder().cacheOnDisc().considerExifParams(true).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).displayer(new PeopleItemBitmapDisplayer(true)).showImageOnLoading(R.drawable.baby_album_sharer_default_big).build();
    }
}
