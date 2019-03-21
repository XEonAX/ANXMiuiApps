package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap.Config;
import android.graphics.RectF;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.ui.FaceDisplayItemPreferFromThumbnailSource;
import com.miui.gallery.util.face.PeopleCursorHelper;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.CircleBitmapDisplayer;

public class IgnorePeoplePageAdapter extends BaseAdapter {
    private OnRecoveryButtonClickListener mRecoveryListener;

    public interface OnRecoveryButtonClickListener {
        void onPeopleRecoveryButtonClick(String str, String str2, String str3, String str4, RectF rectF);
    }

    private class ViewHolder extends FaceDisplayItemPreferFromThumbnailSource {
        private RectF mFacePosition;
        private String mThumbnail;

        public ViewHolder(Context context, AttributeSet attrs, View view) {
            super(context, attrs);
            this.mCover = (ImageView) view.findViewById(R.id.face);
        }

        public void bindImage(String uri, Uri downloadUri, DisplayImageOptions options, RectF facePosition, DownloadType sourceType) {
            super.bindImage(uri, downloadUri, options, facePosition, sourceType);
            this.mThumbnail = uri;
            this.mFacePosition = facePosition;
        }

        public void bindData(Cursor cursor) {
            final String localId = PeopleCursorHelper.getPeopleLocalId(cursor);
            final String serverId = PeopleCursorHelper.getPeopleServerId(cursor);
            final String name = PeopleCursorHelper.getPeopleName(cursor);
            this.mCover.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    if (IgnorePeoplePageAdapter.this.mRecoveryListener != null) {
                        IgnorePeoplePageAdapter.this.mRecoveryListener.onPeopleRecoveryButtonClick(localId, serverId, name, ViewHolder.this.mThumbnail, ViewHolder.this.mFacePosition);
                    }
                }
            });
        }
    }

    public IgnorePeoplePageAdapter(Context context) {
        super(context);
        this.mContext = context;
    }

    protected void initDisplayImageOptions() {
        this.mDisplayImageOptionBuilder = new Builder().cacheThumbnail(true).loadFromMicroCache(true).cacheInMemory(true).considerExifParams(true).showStubImage(R.drawable.default_face_cover).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).displayer(new CircleBitmapDisplayer()).usingRegionDecoderFace(true);
        this.mDefaultDisplayImageOptions = this.mDisplayImageOptionBuilder.build();
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View view = LayoutInflater.from(context).inflate(R.layout.ignore_people_page_item, viewGroup, false);
        view.setTag(new ViewHolder(this.mContext, null, view));
        return view;
    }

    public void bindView(View view, Context context, Cursor cursor) {
        ViewHolder item = (ViewHolder) view.getTag();
        int position = cursor.getPosition();
        item.bindData(cursor);
        item.bindImage(PeopleCursorHelper.getThumbnailPath(cursor), getDownloadUri(position), getDisplayImageOptions(position), PeopleCursorHelper.getFaceRegionRectF(cursor), PeopleCursorHelper.getThumbnailDownloadType(cursor));
    }

    public Uri getDownloadUri(int position) {
        return PeopleCursorHelper.getThumbnailDownloadUri(getCursorByPosition(position));
    }

    public String getThumbFilePath(int position) {
        return PeopleCursorHelper.getThumbnailPath(getCursorByPosition(position));
    }

    public long getFileLength(int position) {
        return PeopleCursorHelper.getCoverSize(getCursorByPosition(position));
    }

    public void setRecoveryListener(OnRecoveryButtonClickListener listener) {
        this.mRecoveryListener = listener;
    }
}
