package com.miui.gallery.collage.core;

import android.app.Fragment;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.AsyncTask;
import android.text.format.DateFormat;
import com.miui.gallery.collage.BitmapManager;
import com.miui.gallery.collage.CollageActivity.ReplaceImageListener;
import com.miui.gallery.collage.app.common.CollageMenuFragment;
import com.miui.gallery.collage.app.common.CollageRenderFragment;
import com.miui.gallery.collage.app.common.IDataLoader;
import com.miui.gallery.editor.photo.utils.IoUtils;
import com.miui.gallery.scanner.MediaScanner;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery.util.StorageUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Locale;

public abstract class CollagePresenter {
    private IDataLoader mDataLoader;
    protected int mImageCount = -1;
    private CollageMenuFragment mMenuFragment;
    private CollageRenderFragment mRenderFragment;
    private ReplaceImageListener mReplaceImageListener = new ReplaceImageListener() {
        public void onReplace(Bitmap bitmap) {
            if (CollagePresenter.this.mViewInterface != null) {
                CollagePresenter.this.mViewInterface.onReplaceBitmap(bitmap);
            }
        }
    };
    private SaveTask mSaveTask;
    protected ViewInterface mViewInterface;

    public interface DataLoadListener {
        void onDataLoad();
    }

    private interface SaveListener {
        void onSaveFinish(String str, boolean z);
    }

    private static class SaveTask extends AsyncTask<Void, Void, Void> {
        private final Context mContext;
        private final String mOutPath;
        private final RenderData mRenderData;
        private final RenderEngine mRenderEngine;
        private SaveListener mSaveListener;
        private boolean mSuccess;

        /* synthetic */ SaveTask(RenderEngine x0, RenderData x1, String x2, Context x3, AnonymousClass1 x4) {
            this(x0, x1, x2, x3);
        }

        private SaveTask(RenderEngine renderEngine, RenderData renderData, String outPath, Context context) {
            this.mSuccess = false;
            this.mRenderEngine = renderEngine;
            this.mRenderData = renderData;
            this.mOutPath = outPath;
            this.mContext = context.getApplicationContext();
        }

        protected Void doInBackground(Void... voids) {
            Throwable e;
            Throwable th;
            this.mSuccess = false;
            Bitmap bitmap = this.mRenderEngine.render(this.mRenderData);
            if (!isCancelled()) {
                File file = new File(this.mOutPath);
                FileOutputStream out = null;
                try {
                    File parent = file.getParentFile();
                    if (!parent.exists()) {
                        parent.mkdirs();
                    }
                    if (file.exists()) {
                        file.delete();
                    }
                    FileOutputStream out2 = new FileOutputStream(file);
                    try {
                        bitmap.compress(CompressFormat.JPEG, 100, out2);
                        out2.flush();
                        MediaScanner.scanSingleFile(this.mContext, file.getPath());
                        MediaStoreUtils.insert(this.mContext, file, 1);
                        this.mSuccess = true;
                        IoUtils.close(out2);
                        out = out2;
                    } catch (IOException e2) {
                        e = e2;
                        out = out2;
                        try {
                            Log.d("CollagePresenter", e);
                            IoUtils.close(out);
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            IoUtils.close(out);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        out = out2;
                        IoUtils.close(out);
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                    Log.d("CollagePresenter", e);
                    IoUtils.close(out);
                    return null;
                }
            }
            return null;
        }

        protected void onPostExecute(Void aVoid) {
            if (this.mSaveListener != null) {
                this.mSaveListener.onSaveFinish(this.mOutPath, this.mSuccess);
            }
        }
    }

    protected abstract RenderEngine createEngine(Context context, BitmapManager bitmapManager);

    public abstract String getMenuFragmentTag();

    public abstract String getRenderFragmentTag();

    public abstract int getTitle();

    protected abstract boolean hasResourceData();

    protected abstract IDataLoader onCreateDataLoader(DataLoadListener dataLoadListener);

    protected abstract CollageMenuFragment onCreateMenuFragment();

    protected abstract CollageRenderFragment onCreateRenderFragment();

    protected abstract void onDetach();

    public void attach(ViewInterface viewInterface) {
        this.mViewInterface = viewInterface;
    }

    public final void detach() {
        this.mViewInterface = null;
        this.mMenuFragment = null;
        this.mRenderFragment = null;
        if (this.mSaveTask != null) {
            this.mSaveTask.mSaveListener = null;
            this.mSaveTask.cancel(false);
        }
        if (this.mDataLoader != null) {
            this.mDataLoader.cancel();
        }
        onDetach();
    }

    public void doSave(BitmapManager bitmapManager) {
        if (this.mRenderFragment != null && this.mViewInterface != null) {
            RenderData renderData = this.mRenderFragment.export();
            BaseSamplingStatHelper.recordCountEvent("collage", "collage_save", this.mRenderFragment.onSimple());
            RenderEngine engine = createEngine(this.mViewInterface.getContext().getApplicationContext(), bitmapManager);
            if (renderData == null || engine == null) {
                this.mViewInterface.onSaveFinish(null, false);
                return;
            }
            this.mViewInterface.onSaving();
            CharSequence stamp = DateFormat.format("yyyyMMdd_HHmmss", System.currentTimeMillis());
            this.mSaveTask = new SaveTask(engine, renderData, new File(getCreativePath(), String.format(Locale.US, "IMG_%s.jpg", new Object[]{stamp})).getAbsolutePath(), this.mViewInterface.getContext().getApplicationContext(), null);
            this.mSaveTask.mSaveListener = new SaveListener() {
                public void onSaveFinish(String path, boolean success) {
                    if (CollagePresenter.this.mViewInterface != null) {
                        CollagePresenter.this.mViewInterface.onSaveFinish(path, success);
                    }
                }
            };
            this.mSaveTask.execute(new Void[0]);
        }
    }

    public boolean supportImageSize(int imageCount) {
        return true;
    }

    public boolean isActivating() {
        return this.mRenderFragment != null && this.mRenderFragment.isActivating();
    }

    public final void loadDataFromResourceAsync(DataLoadListener dataLoadListener) {
        if (!hasResourceData()) {
            this.mDataLoader = onCreateDataLoader(dataLoadListener);
            this.mDataLoader.loadData();
        } else if (dataLoadListener != null) {
            dataLoadListener.onDataLoad();
        }
    }

    public void dismissControlWindow() {
        if (this.mRenderFragment != null) {
            this.mRenderFragment.dismissControlWindow();
        }
    }

    public void setImageSize(int imageCount) {
        this.mImageCount = imageCount;
    }

    public int getImageCount() {
        return this.mImageCount;
    }

    public void notifyReceiveBitmaps() {
        if (this.mRenderFragment != null) {
            this.mRenderFragment.setBitmap(this.mViewInterface.getBitmaps());
        }
    }

    public void notifyBitmapReplace(Bitmap from, Bitmap to) {
        if (this.mRenderFragment != null) {
            this.mRenderFragment.onBitmapReplace(from, to);
        }
    }

    public CollageMenuFragment getMenuFragment() {
        if (this.mMenuFragment == null) {
            this.mMenuFragment = onCreateMenuFragment();
        }
        return this.mMenuFragment;
    }

    public Fragment getRenderFragment() {
        if (this.mRenderFragment == null) {
            this.mRenderFragment = onCreateRenderFragment();
        }
        return this.mRenderFragment;
    }

    public void onAttachFragment(Fragment fragment) {
        if (fragment instanceof CollageRenderFragment) {
            Bitmap[] bitmaps = this.mViewInterface.getBitmaps();
            if (bitmaps != null) {
                this.mRenderFragment.setBitmap(bitmaps);
            }
            this.mRenderFragment.setReplaceImageListener(this.mReplaceImageListener);
        } else if (fragment instanceof CollageMenuFragment) {
            this.mMenuFragment.setPresenter(this);
            if (this.mRenderFragment != null) {
                this.mMenuFragment.setRenderFragment(this.mRenderFragment);
            }
        }
    }

    private static String getCreativePath() {
        return StorageUtils.getCreativeDirectory();
    }
}
