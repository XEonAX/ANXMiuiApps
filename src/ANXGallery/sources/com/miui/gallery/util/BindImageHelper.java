package com.miui.gallery.util;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.uil.CloudImageHolder;
import com.miui.gallery.util.uil.CloudImageLoader;
import com.miui.gallery.util.uil.CloudImageLoadingListener;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.imageaware.ViewAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;

public class BindImageHelper {
    private static final Object PLACE_HOLDER = new Object();

    public interface OnImageLoadingCompleteListener {
        void onLoadingComplete();

        void onLoadingFailed();
    }

    public static void bindImage(String localPath, Uri downloadUri, DownloadType type, ImageView view, DisplayImageOptions displayImageOptions, ImageSize imageSize) {
        bindImage(localPath, downloadUri, type, view, displayImageOptions, imageSize, null);
    }

    public static void bindImage(String localPath, Uri downloadUri, DownloadType type, ImageView view, DisplayImageOptions displayImageOptions, ImageSize imageSize, RectF decodeRegion) {
        bindImage(localPath, downloadUri, type, view, displayImageOptions, imageSize, decodeRegion, true, true);
    }

    public static void bindImage(String localPath, Uri downloadUri, DownloadType type, ImageView view, DisplayImageOptions displayImageOptions, ImageSize imageSize, RectF decodeRegion, boolean delayRequest, boolean showDownloadingImage) {
        bindImage(localPath, downloadUri, type, view, displayImageOptions, imageSize, decodeRegion, delayRequest, showDownloadingImage, null);
    }

    public static void bindImage(String localPath, Uri downloadUri, DownloadType type, ImageView view, DisplayImageOptions displayImageOptions, ImageSize imageSize, RectF decodeRegion, boolean delayRequest, boolean showDownloadingImage, OnImageLoadingCompleteListener listener) {
        bindImage(localPath, downloadUri, type, new ImageViewAware(view), displayImageOptions, imageSize, decodeRegion, delayRequest, showDownloadingImage, listener);
    }

    public static void bindImage(String localPath, Uri downloadUri, DownloadType type, ImageAware aware, DisplayImageOptions displayImageOptions, ImageSize imageSize, RectF decodeRegion) {
        bindImage(localPath, downloadUri, type, aware, displayImageOptions, imageSize, decodeRegion, true, true);
    }

    public static void bindImage(String localPath, Uri downloadUri, DownloadType type, ImageAware aware, DisplayImageOptions displayImageOptions, ImageSize imageSize, RectF decodeRegion, boolean delayRequest, boolean showDownloadingImage) {
        bindImage(localPath, downloadUri, type, aware, displayImageOptions, imageSize, decodeRegion, delayRequest, showDownloadingImage, null);
    }

    public static void bindImage(String localPath, Uri downloadUri, DownloadType type, ImageAware aware, DisplayImageOptions displayImageOptions, ImageSize imageSize, RectF decodeRegion, boolean delayRequest, boolean showDownloadingImage, OnImageLoadingCompleteListener listener) {
        if (aware == null) {
            Log.e("BindImageHelper", "bindImage view is null");
            return;
        }
        aware.setTag(R.id.item_has_bind_drawable, null);
        setCloudHolder(downloadUri, type, aware, displayImageOptions, imageSize, decodeRegion, delayRequest, showDownloadingImage, listener);
        if (TextUtils.isEmpty(localPath)) {
            bindCloudImage(aware);
            return;
        }
        ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(localPath), aware, displayImageOptions, imageSize, getLocalLoadingListener(aware, listener), null, decodeRegion);
    }

    public static void bindFaceImage(String localPath, Uri downloadUri, ImageView view, DisplayImageOptions options, ImageSize imageSize, RectF decodeRegion, boolean delayRequest) {
        bindFaceImage(localPath, downloadUri, new ImageViewAware(view), options, imageSize, decodeRegion, delayRequest);
    }

    public static void bindFaceImage(String localPath, Uri downloadUri, ImageAware aware, DisplayImageOptions options, ImageSize imageSize, RectF decodeRegion, boolean delayRequest) {
        bindImage(localPath, downloadUri, DownloadType.THUMBNAIL, aware, options, imageSize, decodeRegion);
        if (!TextUtils.isEmpty(localPath) && localPath.indexOf("MIUI/Gallery/cloud/.microthumbnailFile") != -1) {
            bindImage(null, downloadUri, DownloadType.THUMBNAIL, aware, options, imageSize, decodeRegion, delayRequest, false);
        }
    }

    public static boolean isViewBindDrawable(ImageView view) {
        return view.getTag(R.id.item_has_bind_drawable) != null;
    }

    private static void bindCloudImage(ImageAware aware) {
        if (aware == null) {
            Log.e("BindImageHelper", "bindCloudImage view is null");
            return;
        }
        CloudImageHolder imageHolder = CloudImageHolder.getImageHolder(aware);
        Log.i("BindImageHelper", "downloadImage %s", imageHolder.getUri());
        if (imageHolder.getUri() != null) {
            CloudImageLoader.getInstance().displayImage(imageHolder.getUri(), imageHolder.getImageType(), aware, imageHolder.getDisplayImageOptions(), imageHolder.getImageSize(), imageHolder.getImageLoadingListener(), imageHolder.getImageLoadingProgressListener(), imageHolder.getRegionDecodeRect(), imageHolder.isDelayRequest(), imageHolder.isShowLoadingImage());
        }
    }

    private static void setCloudHolder(Uri downloadUri, DownloadType type, final ImageAware aware, DisplayImageOptions displayImageOptions, ImageSize imageSize, RectF regionRect, boolean delayRequest, boolean showDownloadingImage, final OnImageLoadingCompleteListener listener) {
        CloudImageHolder holder = CloudImageHolder.getImageHolder(aware);
        holder.setUri(downloadUri).setImageType(type).setDisplayImageOptions(displayImageOptions).setImageSize(imageSize).setRegionDecodeRect(regionRect).setNeedDisplay(true).setDelayRequest(delayRequest).setShowLoadingImage(showDownloadingImage);
        if (listener != null) {
            holder.setImageLoadingListener(new CloudImageLoadingListener() {
                public void onLoadingStarted(Uri uri, DownloadType type, View view) {
                }

                public void onLoadingFailed(Uri uri, DownloadType type, View view, ErrorCode code) {
                    listener.onLoadingFailed();
                }

                public void onLoadingComplete(Uri uri, DownloadType type, View view, Bitmap loadedImage) {
                    listener.onLoadingComplete();
                    aware.setTag(R.id.item_has_bind_drawable, BindImageHelper.PLACE_HOLDER);
                }

                public void onDownloadComplete(Uri uri, DownloadType type, View view, String filePath) {
                }

                public void onLoadingCancelled(Uri uri, DownloadType type, View view) {
                }
            });
        }
    }

    private static ImageLoadingListener getLocalLoadingListener(final ImageAware aware, final OnImageLoadingCompleteListener listener) {
        AnonymousClass2 obj = aware.getTag(R.id.tag_local_loading_listener);
        if (obj == null) {
            obj = new ImageLoadingListener() {
                public void onLoadingStarted(String imageUri, View view) {
                }

                public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
                    boolean needDownload = true;
                    if ((aware instanceof ViewAware) && aware.getWrappedView() == null) {
                        needDownload = false;
                    }
                    if (needDownload) {
                        Runnable runnable = new Runnable() {
                            public void run() {
                                BindImageHelper.bindCloudImage(aware);
                            }
                        };
                        if (Looper.myLooper() == Looper.getMainLooper()) {
                            runnable.run();
                        } else {
                            ThreadManager.getMainHandler().post(runnable);
                        }
                    }
                    if (listener != null) {
                        listener.onLoadingFailed();
                    }
                }

                public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
                    if (listener != null) {
                        listener.onLoadingComplete();
                    }
                    aware.setTag(R.id.item_has_bind_drawable, BindImageHelper.PLACE_HOLDER);
                }

                public void onLoadingCancelled(String imageUri, View view) {
                }
            };
            aware.setTag(R.id.tag_local_loading_listener, obj);
        }
        return obj;
    }
}
