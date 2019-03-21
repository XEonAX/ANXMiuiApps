package com.miui.gallery.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.RectF;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.BindImageHelper;
import com.miui.gallery.util.face.PeopleItemBitmapDisplayer;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;

public class BabyAlbumDetailFaceHeaderItem extends LinearLayout {
    private static Builder sDisplayImageOptionBuilder;
    private static DisplayImageOptions sDisplayImageOptionsLocalFace;
    private static DisplayImageOptions sDisplayImageOptionsNetFace;
    private TextView mAgeCurrent;
    private ImageView mBackground;
    private ImageView mFace;
    private ImageViewAware mImageAwareFace;

    public BabyAlbumDetailFaceHeaderItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mBackground = (ImageView) findViewById(R.id.background);
        this.mFace = (ImageView) findViewById(R.id.face);
        this.mImageAwareFace = new ImageViewAware(this.mFace);
        this.mAgeCurrent = (TextView) findViewById(R.id.age_current);
        if (sDisplayImageOptionsLocalFace == null) {
            intialBuilder();
            sDisplayImageOptionsLocalFace = sDisplayImageOptionBuilder.cacheThumbnail(true).loadFromMicroCache(true).build();
        }
    }

    private void intialBuilder() {
        if (sDisplayImageOptionBuilder == null) {
            sDisplayImageOptionBuilder = new Builder().considerExifParams(true).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).displayer(new PeopleItemBitmapDisplayer(true)).usingRegionDecoderFace(true).showStubImage(R.drawable.baby_album_sharer_default_big);
        }
    }

    public void setOnFaceClickListener(OnClickListener l) {
        this.mFace.setOnClickListener(l);
    }

    public void setOnBackgroundClickListener(OnClickListener l) {
        this.mBackground.setOnClickListener(l);
    }

    public void bindHeaderBackgroundPic(String backgroundImagePath, Uri downloadUri, DisplayImageOptions options) {
        BindImageHelper.bindImage(backgroundImagePath, downloadUri, DownloadType.THUMBNAIL, this.mBackground, options, null);
    }

    public void bindHeadFacePic(String facePath, RectF faceRegion) {
        ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(facePath), this.mImageAwareFace, sDisplayImageOptionsLocalFace, null, null, null, faceRegion);
    }

    public void bindHeadFacePicFromNet(String faceUrl, RectF faceRegion) {
        if (sDisplayImageOptionsNetFace == null) {
            intialBuilder();
            sDisplayImageOptionsNetFace = sDisplayImageOptionBuilder.cacheOnDisc().build();
        }
        ImageLoader.getInstance().displayImage(faceUrl, this.mImageAwareFace, sDisplayImageOptionsNetFace, null, null, null, faceRegion);
    }

    public Bitmap getHeadFacePic() {
        return this.mImageAwareFace.getBitmap();
    }

    public void setAge(String age) {
        this.mAgeCurrent.setText(age);
    }
}
