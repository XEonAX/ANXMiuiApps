package com.miui.gallery.editor.photo.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.DisplayMetrics;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.utils.BigBitmapLoadUtils;
import com.miui.gallery.editor.photo.utils.Bitmaps;
import com.miui.gallery.editor.photo.utils.Callback;
import com.miui.gallery.editor.photo.utils.IoUtils;
import com.miui.gallery.model.SecretInfo;
import com.miui.gallery.provider.CloudUtils;
import com.miui.gallery.sdk.editor.Constants;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.uil.CryptUtil;
import com.miui.gallery3d.exif.ExifInterface;
import com.miui.gallery3d.exif.ExifTag;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

public class DraftManager {
    private AsyncTask<Void, Void, Bitmap> mBackgroundTask = new AsyncTask<Void, Void, Bitmap>() {
        protected Bitmap doInBackground(Void... params) {
            Options opt = new Options();
            opt.inSampleSize = DraftManager.this.mInSampleSize;
            Bitmap bitmap = null;
            try {
                return DraftManager.this.decodeBitmap(opt, ExifUtil.getRotationDegrees(DraftManager.this.mExif));
            } catch (Throwable e) {
                Log.w("DraftManager", e);
                return bitmap;
            } catch (Throwable e2) {
                Log.w("DraftManager", e2);
                return bitmap;
            }
        }

        protected void onPostExecute(Bitmap bitmap) {
            super.onPostExecute(bitmap);
            if (bitmap != null) {
                DraftManager.this.mPreview = bitmap;
                if (DraftManager.this.mOnPreviewRefreshListener != null) {
                    DraftManager.this.mOnPreviewRefreshListener.onRefresh(DraftManager.this.mPreview);
                }
            }
            DraftManager.this.mPreviewEnable = true;
        }
    };
    private Bundle mBundle;
    private Context mContext;
    private RenderEngine[] mEngines = new RenderEngine[Effect.values().length];
    private ExifInterface mExif;
    private int mExportedHeight;
    private int mExportedWidth;
    private int mInSampleSize;
    private boolean mIsPreviewSameWithOrigin;
    private boolean mIsScreenshot;
    private String mMimeType;
    private OnPreviewRefreshListener mOnPreviewRefreshListener;
    private int mOriginHeight;
    private int mOriginWidth;
    private int mPreferHeight;
    private int mPreferWidth;
    private Bitmap mPreview;
    private volatile boolean mPreviewEnable;
    private Bitmap mPreviewOriginal;
    private List<RenderData> mRenderDataList = new ArrayList();
    private SecretInfo mSecretInfo;
    private Uri mSource;

    public interface OnPreviewRefreshListener {
        void onRefresh(Bitmap bitmap);
    }

    private class PreviewRenderTask extends AsyncTask<RenderData, Void, Bitmap> {
        private Callback<Bitmap, Void> mCallback;
        private RenderData mRenderData;

        public PreviewRenderTask(Callback<Bitmap, Void> callback, RenderData renderData) {
            this.mCallback = callback;
            this.mRenderData = renderData;
        }

        protected void onPreExecute() {
            this.mCallback.onPrepare();
        }

        protected Bitmap doInBackground(RenderData... params) {
            this.mCallback.onExecute(null);
            if (DraftManager.this.mPreviewOriginal == DraftManager.this.mPreview) {
                Log.d("DraftManager", "copy process preview start");
                DraftManager.this.mPreview = DraftManager.this.mPreview.copy(Config.ARGB_8888, true);
                Log.d("DraftManager", "copy process preview done");
            }
            return RenderEngine.findEngine(DraftManager.this.mContext, this.mRenderData, DraftManager.this.mEngines).render(DraftManager.this.mPreview, this.mRenderData);
        }

        protected void onPostExecute(Bitmap bitmap) {
            if (bitmap != null) {
                DraftManager.this.mPreview = bitmap;
                DraftManager.this.mRenderDataList.add(this.mRenderData);
                this.mCallback.onDone(DraftManager.this.mPreview);
                return;
            }
            this.mCallback.onError(null);
        }

        protected void onCancelled(Bitmap bitmap) {
            this.mCallback.onCancel();
        }
    }

    public DraftManager(Context context, Uri source, Bundle bundle) {
        this.mContext = context;
        this.mSource = source;
        this.mBundle = bundle;
        DisplayMetrics dm = this.mContext.getResources().getDisplayMetrics();
        this.mPreferWidth = dm.widthPixels;
        this.mPreferHeight = dm.heightPixels - this.mContext.getResources().getDimensionPixelSize(R.dimen.photo_editor_menu_panel_height);
        boolean z = FileUtils.isScreenShot(this.mSource) || (bundle != null && bundle.getBoolean(Constants.EXTRA_IS_SCREENSHOT));
        this.mIsScreenshot = z;
        this.mSecretInfo = new SecretInfo();
        this.mSecretInfo.mSecretPath = this.mSource.getPath();
        if (bundle != null) {
            this.mSecretInfo.mIsSecret = bundle.getBoolean("extra_is_secret");
            this.mSecretInfo.mSecretKey = bundle.getByteArray("extra_secret_key");
            this.mSecretInfo.mSecretId = bundle.getLong("photo_secret_id");
        }
    }

    public boolean initializeForPreview(boolean inMainProcess) throws FileNotFoundException, SecurityException {
        long start = System.currentTimeMillis();
        initForBitmapInfo();
        this.mInSampleSize = Integer.highestOneBit(Math.max(Math.max(this.mOriginHeight / this.mPreferHeight, this.mOriginWidth / this.mPreferWidth), 1));
        if (inMainProcess) {
            Bitmap bitmap = ImageLoader.getInstance().loadFromMemoryCache(MemoryCacheUtils.generatePreviewPhotoKey(this.mSource.toString()));
            if (!(bitmap == null || bitmap.isRecycled())) {
                if (bitmap.getWidth() >= this.mOriginWidth / this.mInSampleSize && bitmap.getHeight() >= this.mOriginHeight / this.mInSampleSize) {
                    this.mPreviewEnable = true;
                }
                Log.d("DraftManager", "load preview from cache");
                this.mPreview = Bitmaps.copyBitmapInCaseOfRecycle(bitmap);
            }
        }
        if (this.mPreview == null) {
            Options opt = new Options();
            opt.inSampleSize = this.mInSampleSize;
            this.mPreview = decodeBitmap(opt, ExifUtil.getRotationDegrees(this.mExif));
            this.mPreviewEnable = true;
        }
        if (this.mPreview != null && this.mPreview.getWidth() == this.mOriginWidth && this.mPreview.getHeight() == this.mOriginHeight) {
            this.mIsPreviewSameWithOrigin = true;
        }
        this.mPreviewOriginal = this.mPreview;
        Log.d("DraftManager", "initialize costs %dms same:%b, previewEnable:%b", Long.valueOf(System.currentTimeMillis() - start), Boolean.valueOf(this.mIsPreviewSameWithOrigin), Boolean.valueOf(this.mPreviewEnable));
        if (!this.mPreviewEnable) {
            this.mBackgroundTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
        if (this.mPreview != null) {
            return true;
        }
        return false;
    }

    private InputStream getInputStream() throws FileNotFoundException {
        if (!isSecret()) {
            return IoUtils.openInputStream(this.mContext, this.mSource);
        }
        checkSecretInfo();
        InputStream inputStream = IoUtils.openInputStream(this.mContext, Uri.fromFile(new File(this.mSecretInfo.mSecretPath)));
        if (this.mSecretInfo.mSecretKey != null) {
            return CryptUtil.getDecryptCipherInputStream(inputStream, this.mSecretInfo.mSecretKey);
        }
        return inputStream;
    }

    private Bitmap decodeBitmap(Options opt, int rotationDegree) throws FileNotFoundException {
        return Bitmaps.setConfig(Bitmaps.joinExif(Bitmaps.decodeStream(getInputStream(), opt), rotationDegree, opt));
    }

    public boolean isPreviewSameWithOrigin() {
        return this.mIsPreviewSameWithOrigin;
    }

    public Bundle getBundle() {
        return this.mBundle;
    }

    public Bitmap getPreview() {
        return this.mPreview;
    }

    public boolean isPreviewEnable() {
        return this.mPreviewEnable;
    }

    public String getExportFileSuffix() {
        return isSavedAsPng() ? "png" : "jpg";
    }

    public boolean isSavedAsPng() {
        return !this.mIsScreenshot && "image/png".equals(this.mMimeType);
    }

    public int getExportedWidth() {
        return this.mExportedWidth;
    }

    public int getExportedHeight() {
        return this.mExportedHeight;
    }

    public List<RenderData> getRenderDataList() {
        return this.mRenderDataList;
    }

    public void setRenderDataList(List<RenderData> renderDataList) {
        this.mRenderDataList = renderDataList;
    }

    public void enqueue(RenderData data, Callback callback) {
        new PreviewRenderTask(callback, data).execute(new RenderData[0]);
    }

    public void release() {
        for (RenderData renderData : this.mRenderDataList) {
            renderData.release();
        }
        for (RenderEngine engine : this.mEngines) {
            if (engine != null) {
                engine.release();
            }
        }
    }

    public int getStepCount() {
        return this.mRenderDataList.size();
    }

    public boolean export(Uri out) {
        Log.d("DraftManager", "exporting");
        if (this.mRenderDataList.isEmpty()) {
            return false;
        }
        Bitmap bmp;
        if (this.mOriginHeight == 0 || this.mOriginWidth == 0) {
            try {
                initForBitmapInfo();
            } catch (Throwable e) {
                Log.w("DraftManager", e);
                return false;
            } catch (Throwable e2) {
                Log.w("DraftManager", e2);
                return false;
            }
        }
        if (this.mIsPreviewSameWithOrigin) {
            bmp = this.mPreview;
            Log.d("DraftManager", "origin is preview,bmp is empty:%b", Boolean.valueOf(bmp == null));
        } else {
            bmp = RenderEngine.render(this.mContext, decodeOrigin(), this.mRenderDataList, this.mEngines);
        }
        if (bmp == null) {
            return false;
        }
        this.mExportedWidth = bmp.getWidth();
        this.mExportedHeight = bmp.getHeight();
        OutputStream outputStream = getOutputStream(out);
        if (outputStream == null) {
            return false;
        }
        CompressFormat compressFormat;
        boolean success;
        List<ExifTag> tags = null;
        if (this.mExif != null) {
            tags = this.mExif.getAllTags();
        }
        if (tags == null || tags.isEmpty()) {
            Log.i("DraftManager", "no exif found in source image");
        } else {
            Log.d("DraftManager", "filter exif");
            ExifInterface dst = new ExifInterface();
            for (ExifTag tag : tags) {
                short tagId = tag.getTagId();
                if (tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_ORIENTATION) || tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_IMAGE_WIDTH) || tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_IMAGE_LENGTH) || tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_XIAOMI_COMMENT) || tagId == ExifInterface.getTrueTagKey(ExifInterface.TAG_USER_COMMENT) || tagId == (short) -30576 || tagId == (short) -30568 || tagId == (short) -30569) {
                    Log.d("DraftManager", "skip user comment");
                } else {
                    dst.setTag(tag);
                }
            }
            dst.setTag(dst.buildTag(ExifInterface.TAG_ORIENTATION, Short.valueOf(ExifInterface.getOrientationValueForRotation(0))));
            dst.setTag(dst.buildTag(ExifInterface.TAG_IMAGE_WIDTH, Integer.valueOf(bmp.getWidth())));
            dst.setTag(dst.buildTag(ExifInterface.TAG_IMAGE_LENGTH, Integer.valueOf(bmp.getHeight())));
            outputStream = dst.getExifWriterStream(outputStream);
        }
        boolean savedAsPng = isSavedAsPng();
        long start = System.currentTimeMillis();
        if (savedAsPng) {
            try {
                compressFormat = CompressFormat.PNG;
            } catch (Throwable e22) {
                Log.w("DraftManager", e22);
                success = false;
                IoUtils.close("DraftManager", outputStream);
            } catch (Throwable th) {
                IoUtils.close("DraftManager", outputStream);
                throw th;
            }
        }
        compressFormat = CompressFormat.JPEG;
        success = bmp.compress(compressFormat, savedAsPng ? 100 : 95, outputStream);
        if (success) {
            outputStream.flush();
        }
        IoUtils.close("DraftManager", outputStream);
        Log.d("DraftManager", "saved as png %b, compress cost %d", Boolean.valueOf(savedAsPng), Long.valueOf(System.currentTimeMillis() - start));
        return success;
    }

    private void initForBitmapInfo() throws FileNotFoundException {
        Log.d("DraftManager", "decoding bitmap size:%d*%d", Integer.valueOf(this.mOriginHeight), Integer.valueOf(this.mOriginWidth));
        if (isSecret()) {
            checkSecretInfo();
            this.mExif = (ExifInterface) ExifUtil.createExifInterface(this.mSource.getPath(), this.mSecretInfo.mSecretKey, ExifUtil.sGallery3DExifCreator);
        } else {
            this.mExif = (ExifInterface) ExifUtil.sGallery3DExifCreator.create(getInputStream());
        }
        Options opt = new Options();
        opt.inJustDecodeBounds = true;
        Bitmaps.decodeStream(getInputStream(), opt);
        Bitmaps.joinExif(null, ExifUtil.getRotationDegrees(this.mExif), opt);
        this.mMimeType = opt.outMimeType;
        this.mOriginWidth = opt.outWidth;
        this.mOriginHeight = opt.outHeight;
        Log.d("DraftManager", "decoding bitmap size:%d*%d", Integer.valueOf(this.mOriginHeight), Integer.valueOf(this.mOriginWidth));
    }

    private void checkSecretInfo() {
        if (!FileUtils.isFileExist(this.mSecretInfo.mSecretPath)) {
            this.mSecretInfo = CloudUtils.getSecretInfo(this.mContext, this.mSecretInfo.mSecretId, this.mSecretInfo);
        }
    }

    public Bitmap decodeOrigin() {
        try {
            Options opt = new Options();
            opt.inMutable = true;
            opt.inSampleSize = BigBitmapLoadUtils.calculateInSampleSize(this.mContext, this.mOriginWidth, this.mOriginHeight);
            return decodeBitmap(opt, ExifUtil.getRotationDegrees(this.mExif));
        } catch (Throwable e) {
            Log.w("DraftManager", e);
        } catch (Throwable e2) {
            Log.w("DraftManager", e2);
        }
        return null;
    }

    public void getRenderData(List<RenderData> dst) {
        dst.addAll(this.mRenderDataList);
    }

    private OutputStream getOutputStream(Uri uri) {
        OutputStream outputStream = null;
        try {
            return IoUtils.openOutputStream("DraftManager", this.mContext, uri);
        } catch (Throwable e) {
            Log.w("DraftManager", e);
            IoUtils.close(outputStream);
            return null;
        }
    }

    public boolean isSecret() {
        return this.mSecretInfo.mIsSecret;
    }

    public Bitmap getPreviewOriginal() {
        return this.mPreviewOriginal;
    }

    public void setOnPreviewRefreshListener(OnPreviewRefreshListener onPreviewRefreshListener) {
        this.mOnPreviewRefreshListener = onPreviewRefreshListener;
    }
}
