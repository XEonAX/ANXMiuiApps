package com.miui.gallery.card.ui.detail;

import android.content.Context;
import android.graphics.Bitmap.Config;
import android.graphics.RectF;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.google.android.flexbox.FlexboxLayoutManager.LayoutParams;
import com.miui.gallery.R;
import com.miui.gallery.adapter.BaseGalleryCursorAdapter;
import com.miui.gallery.adapter.BaseMediaAdapter;
import com.miui.gallery.card.core.LayoutParamsHelper;
import com.miui.gallery.card.core.LayoutParamsHelper.Size;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.widget.recyclerview.BaseViewHolder;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import java.util.List;

public class StoryAlbumAdapter extends BaseMediaAdapter<BaseViewHolder> {
    public static final String[] PROJECTION = new String[]{"_id", "alias_micro_thumbnail", "thumbnailFile", "localFile", "mimeType", "alias_create_time", "location", "size", "exifImageWidth", "exifImageLength", "duration", "exifGPSLatitude", "exifGPSLatitudeRef", "exifGPSLongitude", "exifGPSLongitudeRef", "sha1", "alias_sync_state", "alias_clear_thumbnail", "alias_is_favorite", "exifOrientation"};
    private DisplayImageOptions mDisplayImageOptions = new Builder().cacheInMemory(true).cacheOnDisk(true).loadFromMicroCache(true).considerExifParams(true).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).showImageOnLoading(R.drawable.image_default_cover).build();
    private LayoutParamsHelper mLayoutParamsHelper;

    public StoryAlbumAdapter(Context context) {
        super(context);
    }

    public void updateLayoutSizes(List<Size> imageSizes, int parentWidth, int itemDecoration) {
        if (this.mLayoutParamsHelper == null) {
            this.mLayoutParamsHelper = new LayoutParamsHelper();
        }
        this.mLayoutParamsHelper.updateLayoutSizes(imageSizes, parentWidth, itemDecoration);
        notifyDataSetChanged();
    }

    private void updateLayoutParams(LayoutParams lp, ImageSize size) {
        if (size != null) {
            lp.setHeight(size.getHeight());
            lp.setWidth(size.getWidth());
        }
        lp.setFlexGrow(1.0f);
    }

    public void onViewRecycled(BaseViewHolder holder) {
        super.onViewRecycled(holder);
    }

    public String getClearThumbFilePath(int position) {
        String path = getOriginFilePath(position);
        if (TextUtils.isEmpty(path)) {
            path = getThumbFilePath(position);
        }
        if (TextUtils.isEmpty(path)) {
            return getMicroThumbFilePath(position);
        }
        return path;
    }

    public BaseViewHolder onCreateViewHolder(ViewGroup viewGroup, int type) {
        return new StoryAlbumViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.story_album_item, viewGroup, false));
    }

    public void doBindViewHolder(BaseViewHolder viewHolder, int position) {
        StoryRecyclerViewItem recyclerViewItem = viewHolder.itemView;
        recyclerViewItem.setTag(R.id.tag_item_position, Integer.valueOf(position));
        ImageSize size = this.mLayoutParamsHelper.getLayoutSize(position);
        recyclerViewItem.setImageSize(size);
        recyclerViewItem.bindImage(getClearThumbFilePath(position), getDownloadUri(position), DownloadType.THUMBNAIL, this.mDisplayImageOptions);
        ViewGroup.LayoutParams lp = recyclerViewItem.getLayoutParams();
        if (lp instanceof LayoutParams) {
            updateLayoutParams((LayoutParams) lp, size);
        }
    }

    public String getOriginFilePath(int position) {
        return moveCursorToPosition(position).getString(3);
    }

    public String getThumbFilePath(int position) {
        return moveCursorToPosition(position).getString(2);
    }

    public String getMicroThumbFilePath(int position) {
        return moveCursorToPosition(position).getString(1);
    }

    public Uri getDownloadUri(int position) {
        return BaseGalleryCursorAdapter.getDownloadUri(moveCursorToPosition(position), 16, 0);
    }

    public long getItemKey(int position) {
        return moveCursorToPosition(position).getLong(0);
    }

    public String getMimeType(int position) {
        return moveCursorToPosition(position).getString(4);
    }

    public String getSha1(int position) {
        return moveCursorToPosition(position).getString(15);
    }

    public String getLocalPath(int position) {
        return BaseGalleryCursorAdapter.getMicroPath(moveCursorToPosition(position), 1, 15);
    }

    public RectF getItemDecodeRectF(int position) {
        return null;
    }

    public long getFileLength(int position) {
        return moveCursorToPosition(position).getLong(7);
    }
}
