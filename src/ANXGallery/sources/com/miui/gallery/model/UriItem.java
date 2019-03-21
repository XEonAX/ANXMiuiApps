package com.miui.gallery.model;

import android.app.Activity;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.SaveUriDialogFragment;
import com.miui.gallery.ui.SaveUriDialogFragment.OnCompleteListener;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BitmapUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.UriUtil;
import com.miui.gallery.util.gifdecoder.NSGifDecode;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class UriItem extends BaseDataItem {
    private File mCacheFile;
    private transient Uri mUri;

    public UriItem(Uri uri) {
        this.mUri = uri;
    }

    public String getOriginalPath() {
        if (isCacheValidate()) {
            return this.mCacheFile.getAbsolutePath();
        }
        return this.mUri.toString();
    }

    public NSGifDecode createNSGifDecoder(JobContext jc) {
        if (isCacheValidate()) {
            return NSGifDecode.create(this.mCacheFile.getAbsolutePath());
        }
        ParcelFileDescriptor descriptor = openOrDownloadInner();
        if (descriptor == null) {
            return null;
        }
        try {
            if (jc.isCancelled()) {
                return null;
            }
            NSGifDecode create = NSGifDecode.create(descriptor.getFileDescriptor(), null);
            BaseMiscUtil.closeSilently(descriptor);
            return create;
        } finally {
            BaseMiscUtil.closeSilently(descriptor);
        }
    }

    public boolean checkOriginalFileExist() {
        if (isCacheValidate()) {
            return true;
        }
        if (this.mUri != null) {
            ParcelFileDescriptor fileDescriptor = openOrDownloadInner();
            if (fileDescriptor != null) {
                try {
                    fileDescriptor.close();
                    return true;
                } catch (Exception e) {
                    Log.e("UriItem", "File descriptor close failed");
                    return true;
                }
            }
        }
        return false;
    }

    private ParcelFileDescriptor openOrDownloadInner() {
        String scheme = this.mUri.getScheme();
        if ("content".equals(scheme) || "android.resource".equals(scheme) || "file".equals(scheme)) {
            try {
                return GalleryApp.sGetAndroidContext().getContentResolver().openFileDescriptor(this.mUri, "r");
            } catch (Exception e) {
                Log.w("UriItem", "fail to open %s %s", this.mUri, e);
            }
        }
        return null;
    }

    private boolean isCacheValidate() {
        return this.mCacheFile != null && this.mCacheFile.exists();
    }

    public PhotoDetailInfo getDetailInfo(Context context) {
        PhotoDetailInfo info = super.getDetailInfo(context);
        String path = null;
        if ("file".equals(this.mUri.getScheme())) {
            path = this.mUri.getPath();
        } else if (isCacheValidate()) {
            path = this.mCacheFile.getAbsolutePath();
        }
        if (TextUtils.isEmpty(path)) {
            if (!isVideo()) {
                InputStream inputStream = null;
                try {
                    inputStream = context.getContentResolver().openInputStream(this.mUri);
                    long size = (long) inputStream.available();
                    Options opts = new Options();
                    opts.inSampleSize = 1;
                    opts.inJustDecodeBounds = true;
                    BitmapFactory.decodeStream(inputStream, null, opts);
                    info.addDetail(3, Long.valueOf(size));
                    info.addDetail(4, Integer.valueOf(opts.outWidth));
                    info.addDetail(5, Integer.valueOf(opts.outHeight));
                } catch (Throwable e) {
                    Log.w("UriItem", e);
                } finally {
                    BaseMiscUtil.closeSilently(inputStream);
                }
            }
        } else if (isVideo()) {
            PhotoDetailInfo.extractVideoAttr(info, getOriginalPath());
        } else {
            PhotoDetailInfo.extractExifInfo(info, getOriginalPath(), true);
        }
        return info;
    }

    public int initSupportOperations() {
        if (BitmapUtils.isSupportedByRegionDecoder(getMimeType())) {
            return nexEngine.ExportHEVCHighTierLevel52 | 64;
        }
        return nexEngine.ExportHEVCHighTierLevel52;
    }

    public void save(Activity activity, OnCompleteListener listener) {
        SaveUriDialogFragment.show(activity, this.mUri, listener);
    }

    public String getViewTitle(Context context) {
        if (UriUtil.isNetUri(this.mUri)) {
            return context.getString(R.string.photo);
        }
        return super.getViewTitle(context);
    }

    public String getViewSubTitle(Context context) {
        if (UriUtil.isNetUri(this.mUri)) {
            return context.getString(R.string.view_by_gallery_tip);
        }
        return super.getViewSubTitle(context);
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.defaultWriteObject();
        out.writeObject(this.mUri.toString());
    }

    private void readObject(ObjectInputStream in) throws ClassNotFoundException, IOException {
        in.defaultReadObject();
        this.mUri = Uri.parse((String) in.readObject());
    }
}
