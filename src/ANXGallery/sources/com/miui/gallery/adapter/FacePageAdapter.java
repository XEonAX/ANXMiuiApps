package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.ui.FacePageGridItem;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.TalkBackUtil;
import com.miui.gallery.util.face.FaceRegionRectF;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;

public class FacePageAdapter extends BaseMediaAdapterDeprecated implements CheckableAdapter {
    public static final String[] PROJECTION = new String[]{"_id", "microthumbfile", "thumbnailFile", "mixedDateTime", "mimeType", "duration", "faceXScale", "faceYScale", "faceWScale", "faceHScale", "exifOrientation", "photo_id", "sha1", "localFile", "serverId", "isFavorite", "location", "specialTypeFlags", "size"};
    private boolean isPhotoModeNotFaceMode = true;
    private boolean mCheckable;
    protected DisplayImageOptions mFaceModeDisplayOptions;
    private Builder mFaceModeDisplayOptionsBuilder;

    public FacePageAdapter(Context context) {
        super(context);
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(R.layout.face_page_grid_item, viewGroup, false);
    }

    public void changeDisplayMode() {
        this.isPhotoModeNotFaceMode = !this.isPhotoModeNotFaceMode;
        notifyDataSetChanged();
    }

    protected void initDisplayImageOptions() {
        super.initDisplayImageOptions();
        this.mFaceModeDisplayOptionsBuilder = new Builder().cloneFrom(this.mDefaultDisplayImageOptions).usingRegionDecoderFace(true);
        this.mFaceModeDisplayOptions = this.mFaceModeDisplayOptionsBuilder.build();
    }

    public DisplayImageOptions getFaceModeDisplayOptions(int position) {
        long fileLength = getFileLength(position);
        if (fileLength > 0) {
            return this.mFaceModeDisplayOptionsBuilder.considerFileLength(true).fileLength(fileLength).build();
        }
        return this.mFaceModeDisplayOptions;
    }

    public String getLocalPath(int position) {
        return getItemPathInternal(getCursorByPosition(position), false);
    }

    public String getThumbFilePath(int position) {
        return getCursorByPosition(position).getString(2);
    }

    public String getOriginFilePath(int position) {
        return getCursorByPosition(position).getString(13);
    }

    public String getItemBigPicPath(int position) {
        return getItemPathInternal(getCursorByPosition(position), true);
    }

    public String getFirstFaceServerId() {
        if (getCount() > 0) {
            return getCursorByPosition(0).getString(14);
        }
        return null;
    }

    public String getItemPath(Cursor cursor) {
        return getItemPathInternal(cursor, false);
    }

    private String getItemPathInternal(Cursor cursor, boolean firstNeedThumbnail) {
        String path;
        if (firstNeedThumbnail) {
            path = cursor.getString(2);
            if (TextUtils.isEmpty(path)) {
                path = cursor.getString(13);
            }
            if (TextUtils.isEmpty(path)) {
                path = cursor.getString(1);
            }
        } else {
            path = cursor.getString(1);
            if (TextUtils.isEmpty(path)) {
                path = cursor.getString(2);
            }
            if (TextUtils.isEmpty(path)) {
                path = cursor.getString(13);
            }
        }
        return TextUtils.isEmpty(path) ? StorageUtils.getPriorMicroThumbnailPath(cursor.getString(12)) : path;
    }

    public long getItemPhotoId(int position) {
        return getCursorByPosition(position).getLong(11);
    }

    public long getItemKey(int position) {
        return getItemPhotoId(position);
    }

    public String getSha1(int position) {
        return getCursorByPosition(position).getString(12);
    }

    public String getMimeType(int position) {
        return getCursorByPosition(position).getString(4);
    }

    public boolean isFaceDisplayMode() {
        return !this.isPhotoModeNotFaceMode;
    }

    public void doBindView(View view, Context context, Cursor cursor) {
        FacePageGridItem item = (FacePageGridItem) view;
        int position = cursor.getPosition();
        if (this.isPhotoModeNotFaceMode) {
            item.bindImage(getLocalPath(position), getDownloadUri(position), getDisplayImageOptions(position));
        } else {
            item.bindImage(getItemBigPicPath(position), getDownloadUri(position), getFaceModeDisplayOptions(position), new FaceRegionRectF(cursor.getFloat(6), cursor.getFloat(7), cursor.getFloat(6) + cursor.getFloat(8), cursor.getFloat(7) + cursor.getFloat(9), cursor.getInt(10)));
        }
        String type = cursor.getString(4);
        item.bindIndicator(type, cursor.getLong(5), cursor.getLong(17));
        item.bindFavoriteIndicator(isFavorite(position));
        item.setCheckable(this.mCheckable);
        item.setContentDescription(TalkBackUtil.getContentDescriptionForImage(context, cursor.getLong(3), cursor.getString(16), type));
    }

    public Uri getDownloadUri(int position) {
        return BaseAdapter.getDownloadUri(getCursorByPosition(position), 11);
    }

    public View getCheckableView(View itemView) {
        return ((FacePageGridItem) itemView).getCheckBox();
    }

    public boolean isFavorite(int position) {
        return getCursorByPosition(position).getInt(15) > 0;
    }

    public long getFileLength(int position) {
        return getCursorByPosition(position).getLong(18);
    }
}
