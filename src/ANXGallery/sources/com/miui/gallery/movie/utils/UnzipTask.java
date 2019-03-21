package com.miui.gallery.movie.utils;

import android.os.AsyncTask;
import com.miui.gallery.movie.entity.MovieResource;
import com.miui.gallery.movie.ui.listener.MovieDownloadListener;

public class UnzipTask extends AsyncTask<Void, Void, Boolean> {
    private MovieDownloadListener mOnCompletedListener;
    private MovieResource mResource;

    public UnzipTask(MovieResource data, MovieDownloadListener onCompletedListener) {
        this.mResource = data;
        this.mOnCompletedListener = onCompletedListener;
    }

    protected Boolean doInBackground(Void... params) {
        return Boolean.valueOf(UnzipUtils.unZipFile(this.mResource.getDownloadFilePath()));
    }

    protected void onPostExecute(Boolean success) {
        super.onPostExecute(success);
        if (this.mOnCompletedListener != null) {
            this.mOnCompletedListener.onCompleted(success.booleanValue());
        }
    }
}
