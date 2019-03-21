package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.CursorAdapter;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.util.BaseFileUtils;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.uil.CloudUriAdapter;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;

public abstract class BaseAdapter extends CursorAdapter {
    private static String sMainMicroFolder = StorageUtils.getPriorMicroThumbnailDirectory();
    protected Context mContext;
    protected DisplayImageOptions mDefaultDisplayImageOptions;
    protected Builder mDisplayImageOptionBuilder;

    public BaseAdapter(Context context) {
        super(context, null, false);
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

    protected ImageSize getDisplayImageSize(int position) {
        return ThumbConfig.get().sMicroTargetSize;
    }

    protected ViewScaleType getDisplayScaleType(int position) {
        return ViewScaleType.CROP;
    }

    public String getLocalPath(int position) {
        return null;
    }

    public Uri getDownloadUri(int position) {
        return null;
    }

    public String getOriginFilePath(int position) {
        return null;
    }

    public String getThumbFilePath(int position) {
        return null;
    }

    public String getMicroThumbFilePath(int position) {
        return null;
    }

    public String getClearThumbFilePath(int position) {
        return null;
    }

    public boolean isFavorite(int position) {
        return false;
    }

    public long getFileLength(int position) {
        return 0;
    }

    private boolean isValidPosition(int position) {
        return position >= 0 && position < getCount();
    }

    protected Cursor getCursorByPosition(int position) {
        if (isValidPosition(position)) {
            return (Cursor) getItem(position);
        }
        throw new IllegalArgumentException(String.format("Wrong cursor position %d, total count %d", new Object[]{Integer.valueOf(position), Integer.valueOf(getCount())}));
    }

    public static String getMicroPath(Cursor cursor, int microIndex, int sha1Index) {
        String microThumb = cursor.getString(microIndex);
        if (!TextUtils.isEmpty(microThumb) || sha1Index < 0) {
            return microThumb;
        }
        return BaseFileUtils.concat(sMainMicroFolder, CloudUtils.getThumbnailNameBySha1(cursor.getString(sha1Index)));
    }

    public static Uri getDownloadUri(Cursor cursor, int syncStateIndex, int idIndex) {
        return getDownloadUri(cursor.getInt(syncStateIndex), cursor.getLong(idIndex));
    }

    protected static Uri getDownloadUri(Cursor cursor, int idIndex) {
        return getDownloadUri(cursor.getLong(idIndex));
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
