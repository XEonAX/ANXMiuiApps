package com.miui.gallery.util.uil;

import android.graphics.RectF;
import android.net.Uri;
import com.miui.gallery.R;
import com.miui.gallery.sdk.download.DownloadType;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;

public class CloudImageHolder {
    private boolean mDelayRequest;
    private DisplayImageOptions mDisplayImageOptions;
    private CloudImageLoadingListener mImageLoadingListener;
    private CloudImageLoadingProgressListener mImageLoadingProgressListener;
    private ImageSize mImageSize;
    private DownloadType mImageType;
    private boolean mNeedDisplay = true;
    private RectF mRegionDecodeRect;
    private boolean mShowLoadingImage = true;
    private Uri mUri;

    public CloudImageHolder setUri(Uri uri) {
        this.mUri = uri;
        return this;
    }

    public CloudImageHolder setImageType(DownloadType imageType) {
        this.mImageType = imageType;
        return this;
    }

    public CloudImageHolder setDisplayImageOptions(DisplayImageOptions displayImageOptions) {
        this.mDisplayImageOptions = displayImageOptions;
        return this;
    }

    public CloudImageHolder setImageSize(ImageSize imageSize) {
        this.mImageSize = imageSize;
        return this;
    }

    public CloudImageHolder setRegionDecodeRect(RectF regionDecodeRect) {
        this.mRegionDecodeRect = regionDecodeRect;
        return this;
    }

    public CloudImageHolder setImageLoadingListener(CloudImageLoadingListener imageLoadingListener) {
        this.mImageLoadingListener = imageLoadingListener;
        return this;
    }

    public CloudImageHolder setImageLoadingProgressListener(CloudImageLoadingProgressListener imageLoadingProgressListener) {
        this.mImageLoadingProgressListener = imageLoadingProgressListener;
        return this;
    }

    public CloudImageHolder setNeedDisplay(boolean needDisplay) {
        this.mNeedDisplay = needDisplay;
        return this;
    }

    public CloudImageHolder setDelayRequest(boolean delayRequest) {
        this.mDelayRequest = delayRequest;
        return this;
    }

    public CloudImageHolder setShowLoadingImage(boolean showLoadingImage) {
        this.mShowLoadingImage = showLoadingImage;
        return this;
    }

    public RectF getRegionDecodeRect() {
        return this.mRegionDecodeRect;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public CloudImageLoadingListener getImageLoadingListener() {
        return this.mImageLoadingListener;
    }

    public CloudImageLoadingProgressListener getImageLoadingProgressListener() {
        return this.mImageLoadingProgressListener;
    }

    public DownloadType getImageType() {
        return this.mImageType;
    }

    public DisplayImageOptions getDisplayImageOptions() {
        return this.mDisplayImageOptions;
    }

    public ImageSize getImageSize() {
        return this.mImageSize;
    }

    public boolean needDisplay() {
        return this.mNeedDisplay;
    }

    public boolean isDelayRequest() {
        return this.mDelayRequest;
    }

    public boolean isShowLoadingImage() {
        return this.mShowLoadingImage;
    }

    public static CloudImageHolder getImageHolder(ImageAware image) {
        CloudImageHolder obj = image.getTag(R.id.tag_cloud_image_holder);
        if (obj == null) {
            obj = new CloudImageHolder();
            image.setTag(R.id.tag_cloud_image_holder, obj);
        }
        return obj;
    }
}
