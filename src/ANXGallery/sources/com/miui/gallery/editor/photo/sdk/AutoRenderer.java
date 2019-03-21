package com.miui.gallery.editor.photo.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.miui.filtersdk.BeautificationSDK;
import com.miui.gallery.editor.photo.core.imports.filter.FilterEngine;
import com.miui.gallery.editor.photo.core.imports.filter.FilterManager;

public class AutoRenderer {
    private AutoRenderTask mAutoRenderTask;
    private FilterEngine mFilterEngine;

    private class AutoRenderTask extends AsyncTask<Bitmap, Void, Bitmap> {
        private Callback mCallback;

        public AutoRenderTask(Callback callback) {
            this.mCallback = callback;
        }

        protected Bitmap doInBackground(Bitmap... params) {
            if (AutoRenderer.this.mFilterEngine != null) {
                return AutoRenderer.this.mFilterEngine.render(params[0], FilterManager.getAutoBeautifyData(), null);
            }
            return null;
        }

        protected void onPostExecute(Bitmap info) {
            if (info != null) {
                this.mCallback.onDone(info);
            } else {
                this.mCallback.onError(0, info);
            }
            super.onPostExecute(info);
        }
    }

    public interface Callback {
        void onDone(Bitmap bitmap);

        void onError(int i, Object obj);
    }

    public AutoRenderer(Context context) {
        Context appContext = context.getApplicationContext();
        this.mFilterEngine = new FilterEngine(appContext);
        BeautificationSDK.init(appContext);
    }

    public void render(Bitmap bitmap, Callback callback) {
        this.mAutoRenderTask = new AutoRenderTask(callback);
        this.mAutoRenderTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Bitmap[]{bitmap});
    }

    public Bitmap render(Bitmap bitmap) {
        return this.mFilterEngine.render(bitmap, FilterManager.getAutoBeautifyData(), null);
    }

    public void release() {
        this.mFilterEngine.release();
        this.mFilterEngine = null;
        if (this.mAutoRenderTask != null) {
            this.mAutoRenderTask.cancel(true);
        }
    }
}
