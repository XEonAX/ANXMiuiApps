package com.miui.gallery.ui;

import android.content.Context;
import android.graphics.RectF;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.miui.gallery.people.PeopleDisplayHelper;
import com.miui.gallery.sdk.download.DownloadType;
import com.nostra13.universalimageloader.core.DisplayImageOptions;

public class FaceDisplayItemPreferFromThumbnailSource extends RelativeLayout {
    protected ImageView mCover;

    public FaceDisplayItemPreferFromThumbnailSource(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void bindImage(String uri, Uri downloadUri, DisplayImageOptions options, RectF facePosition, DownloadType sourceType) {
        PeopleDisplayHelper.bindImage(this.mCover, uri, downloadUri, options, facePosition, sourceType);
    }
}
