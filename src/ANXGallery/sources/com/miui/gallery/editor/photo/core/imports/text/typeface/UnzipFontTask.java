package com.miui.gallery.editor.photo.core.imports.text.typeface;

import android.os.AsyncTask;
import com.miui.gallery.movie.utils.UnzipUtils;

public class UnzipFontTask extends AsyncTask<Void, Void, Boolean> {
    private DownloadCallback mCallBack;
    private TextStyle mResource;

    public UnzipFontTask(TextStyle data, DownloadCallback onCompletedListener) {
        this.mResource = data;
        this.mCallBack = onCompletedListener;
    }

    protected Boolean doInBackground(Void... voids) {
        if (isCancelled()) {
            return Boolean.valueOf(false);
        }
        return Boolean.valueOf(UnzipUtils.unZipFile(this.mResource.getDownloadFilePath()));
    }

    protected void onPostExecute(Boolean success) {
        if (!isCancelled() && this.mCallBack != null) {
            this.mCallBack.onCompleted(success.booleanValue());
        }
    }

    public void release() {
        cancel(true);
        this.mCallBack = null;
    }
}
