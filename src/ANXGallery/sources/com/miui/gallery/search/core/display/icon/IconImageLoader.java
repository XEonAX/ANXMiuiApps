package com.miui.gallery.search.core.display.icon;

import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.search.core.Consumer;
import com.miui.gallery.search.core.context.SearchContext;
import com.miui.gallery.search.core.context.TaskExecutor;
import com.miui.gallery.search.core.display.icon.IconLoaderTask.IconLoaderResult;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.BindImageHelper;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import java.lang.ref.WeakReference;

public class IconImageLoader {
    private static IconImageLoader sLoader;
    private static final UriMatcher sURIMatcher = new UriMatcher(-1);
    private TaskExecutor mExecutor = SearchContext.getInstance().getIconLoaderExecutor();

    private static class IconLoaderHolder implements Consumer<IconLoaderResult> {
        private DisplayImageOptions mDisplayImageOptions;
        private ImageSize mImageSize;
        private DownloadType mImageType;
        private IconLoaderResult mResult;
        private IconLoaderTask mTask;
        private Uri mUri;
        private WeakReference<ImageView> mViewRef;

        public boolean consume(IconLoaderResult result) {
            this.mTask = null;
            if (result == null) {
                this.mResult = result;
            } else if (result.isValid() && result.iconUri.equals(this.mUri)) {
                SearchLog.d("IconImageLoader", "Load task finished for uri %s, result is valid %s", this.mUri, Boolean.valueOf(result.isValid()));
                this.mResult = result;
            }
            displayResult();
            return true;
        }

        public void displayResult() {
            if (getImageView() == null) {
                return;
            }
            if (this.mResult != null) {
                BindImageHelper.bindImage(this.mResult.localFilePath, this.mResult.downloadUri, this.mImageType, getImageView(), this.mDisplayImageOptions, this.mImageSize, this.mResult.facePositionRect);
            } else {
                ImageLoader.getInstance().displayImage(null, new ImageViewAware(getImageView()), this.mDisplayImageOptions, this.mImageSize, null, null);
            }
        }

        public void set(ImageView view, Uri uri, DownloadType imageType, DisplayImageOptions displayImageOptions, ImageSize imageSize) {
            this.mViewRef = new WeakReference(view);
            this.mUri = uri;
            this.mDisplayImageOptions = displayImageOptions;
            this.mImageSize = imageSize;
            this.mImageType = imageType;
            this.mResult = null;
        }

        public void setTask(IconLoaderTask task) {
            this.mTask = task;
        }

        public IconLoaderTask getTask() {
            return this.mTask;
        }

        public boolean hasResult() {
            return this.mResult != null;
        }

        public ImageView getImageView() {
            return this.mViewRef != null ? (ImageView) this.mViewRef.get() : null;
        }

        public static IconLoaderHolder getImageHolder(ImageView image) {
            IconLoaderHolder obj = image.getTag(R.id.tag_icon_loader_holder);
            if (obj == null) {
                obj = new IconLoaderHolder();
                image.setTag(R.id.tag_icon_loader_holder, obj);
            }
            return obj;
        }

        public String getKey() {
            return IconImageLoader.generateKey(this.mUri, getImageView());
        }
    }

    static {
        sURIMatcher.addURI("web", null, 1);
    }

    public static IconImageLoader getInstance() {
        if (sLoader == null) {
            synchronized (IconImageLoader.class) {
                if (sLoader == null) {
                    sLoader = new IconImageLoader();
                }
            }
        }
        return sLoader;
    }

    public void displayImage(Context context, Uri uri, DownloadType imageType, ImageView imageView, DisplayImageOptions displayImageOptions, ImageSize imageSize) {
        boolean isImageLoaderSupportedUri = false;
        boolean isGalleryImage = false;
        if (uri != null) {
            if ("image".equals(uri.getScheme())) {
                isGalleryImage = true;
            } else if (Scheme.ofUri(uri.toString()) != Scheme.UNKNOWN) {
                isImageLoaderSupportedUri = true;
            }
        }
        if (displayImageOptions != null && displayImageOptions.shouldShowImageOnLoading()) {
            imageView.setImageDrawable(displayImageOptions.getImageOnLoading(imageView.getResources()));
        }
        IconLoaderHolder holder = IconLoaderHolder.getImageHolder(imageView);
        if (generateKey(uri, imageView).equals(holder.getKey()) && holder.hasResult()) {
            holder.displayResult();
            return;
        }
        cancelHolderTask(holder);
        if (isImageLoaderSupportedUri) {
            ImageLoader.getInstance().displayImage(uri.toString(), new ImageViewAware(imageView), displayImageOptions, imageSize, null, null);
        } else if (isGalleryImage) {
            holder.set(imageView, uri, imageType, displayImageOptions, imageSize);
            switch (sURIMatcher.match(uri)) {
                case 1:
                    ImageLoader.getInstance().displayImage(uri.getQueryParameter("url"), imageView, displayImageOptions);
                    return;
                default:
                    IconLoaderTask task = new IconLoaderTask(context, uri, holder, ThreadManager.getMainHandler());
                    holder.setTask(task);
                    SearchContext.getInstance().getIconLoaderExecutor().submit(task);
                    return;
            }
        } else {
            ImageLoader.getInstance().displayImage(null, new ImageViewAware(imageView), displayImageOptions, imageSize, null, null);
        }
    }

    private void cancelHolderTask(IconLoaderHolder holder) {
        if (holder.getTask() != null) {
            SearchLog.d("COVER", "Cancel holder task %s", holder.getKey());
            this.mExecutor.cancel(holder.getTask());
            holder.setTask(null);
        }
    }

    private static String generateKey(Uri uri, ImageView imageView) {
        if (uri == null || imageView == null) {
            return "";
        }
        return uri.buildUpon().appendQueryParameter("imageView", String.valueOf(imageView.hashCode())).build().toString();
    }
}
