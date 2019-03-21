package com.miui.gallery.ui;

import android.content.Context;
import android.graphics.RectF;
import android.net.Uri;
import android.util.AttributeSet;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.BindImageHelper;
import com.nostra13.universalimageloader.core.DisplayImageOptions;

public class FacePageGridItem extends MicroThumbGridItem {
    public FacePageGridItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void bindImage(String localPath, Uri downloadUri, DisplayImageOptions displayImageOptions, RectF regionRect) {
        BindImageHelper.bindImage(localPath, downloadUri, NetworkUtils.isActiveNetworkMetered() ? DownloadType.MICRO : DownloadType.THUMBNAIL, this.mImageView, displayImageOptions, this.mImageSize, regionRect, true, true);
    }
}
