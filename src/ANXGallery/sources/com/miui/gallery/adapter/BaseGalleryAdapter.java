package com.miui.gallery.adapter;

import android.content.Context;
import android.net.Uri;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.uil.CloudUriAdapter;
import com.miui.gallery.widget.recyclerview.BaseViewHolder;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;

public abstract class BaseGalleryAdapter<M, VH extends BaseViewHolder> extends BaseRecyclerAdapter<M, VH> {
    private static String sMainMicroFolder = StorageUtils.getPriorMicroThumbnailDirectory();
    protected Context mContext;
    protected DisplayImageOptions mDefaultDisplayImageOptions;
    protected Builder mDisplayImageOptionBuilder;

    public BaseGalleryAdapter(Context context) {
        this.mContext = context;
        initDisplayImageOptions();
    }

    protected void initDisplayImageOptions() {
        this.mDisplayImageOptionBuilder = new Builder().cloneFrom(ThumbConfig.MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT);
        this.mDefaultDisplayImageOptions = this.mDisplayImageOptionBuilder.build();
    }

    protected DisplayImageOptions getDisplayImageOptions(int position) {
        long fileLength = getFileLength(position);
        if (fileLength > 0) {
            return this.mDisplayImageOptionBuilder.considerFileLength(true).fileLength(fileLength).build();
        }
        return this.mDefaultDisplayImageOptions;
    }

    public String getLocalPath(int position) {
        return null;
    }

    public Uri getDownloadUri(int position) {
        return null;
    }

    public long getFileLength(int position) {
        return 0;
    }

    protected static Uri getDownloadUri(int syncStatus, long id) {
        if (syncStatus == 0) {
            return getDownloadUri(id);
        }
        return null;
    }

    protected static Uri getDownloadUri(long id) {
        return CloudUriAdapter.getDownloadUri(id);
    }
}
