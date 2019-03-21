package com.miui.gallery.editor.photo.core.imports.text.typeface;

import android.app.Activity;
import android.app.DialogFragment;
import android.content.Context;
import android.os.AsyncTask;
import com.miui.gallery.R;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.editor.photo.core.imports.net.FontResDownloadManager;
import com.miui.gallery.net.download.Request.Listener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.ui.ConfirmDialog;
import com.miui.gallery.ui.ConfirmDialog.ConfirmDialogInterface;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ToastUtils;

public class FontDownloadManager {
    private FontResDownloadManager mFontResDownloadManager;
    private UnzipFontTask mUnzipFontTask;

    public void downloadFontResource(Context context, final TextStyle data, final DownloadCallback callBack) {
        if (!NetworkUtils.isNetworkConnected()) {
            ToastUtils.makeText(context, (int) R.string.photo_font_download_failed_for_notwork);
            Log.d("FontDownloadManager", "download resource no network");
        } else if (NetworkUtils.isActiveNetworkMetered()) {
            ConfirmDialog.showConfirmDialog(((Activity) context).getFragmentManager(), context.getResources().getString(R.string.photo_font_download_without_wifi_title), context.getResources().getString(R.string.photo_font_download_without_wifi_msg), context.getResources().getString(R.string.photo_font_cancel_download), context.getResources().getString(R.string.photo_font_download), new ConfirmDialogInterface() {
                public void onConfirm(DialogFragment dialog) {
                    FontDownloadManager.this.downloadResource(data, callBack, true);
                }

                public void onCancel(DialogFragment dialog) {
                }
            });
        } else {
            downloadResource(data, callBack, false);
        }
    }

    private void downloadResource(final TextStyle data, final DownloadCallback downloadListener, boolean isActiveNetworkMetered) {
        if (this.mFontResDownloadManager == null) {
            this.mFontResDownloadManager = new FontResDownloadManager();
        }
        if (downloadListener != null) {
            Log.d("FontDownloadManager", "font is ready to download.");
            downloadListener.onStart();
        }
        this.mFontResDownloadManager.download(data, data.getDownloadFilePath(), new Listener() {
            public void onStart() {
                Log.d("FontDownloadManager", "font start download.");
            }

            public void onProgressUpdate(int progress) {
                Log.d("FontDownloadManager", "download progress :%d", Integer.valueOf(progress));
            }

            public void onComplete(int resultCode) {
                Log.d("FontDownloadManager", "download %s, resultCode: %d", data.getDownloadFilePath(), Integer.valueOf(resultCode));
                if (resultCode == 0) {
                    FontDownloadManager.this.unZipDownloadFile(data, downloadListener);
                } else {
                    ThreadManager.runOnMainThread(new Runnable() {
                        public void run() {
                            if (downloadListener != null) {
                                downloadListener.onCompleted(false);
                            }
                        }
                    });
                }
            }
        }, isActiveNetworkMetered);
    }

    private void unZipDownloadFile(TextStyle data, DownloadCallback downloadListener) {
        this.mUnzipFontTask = new UnzipFontTask(data, downloadListener);
        this.mUnzipFontTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public void cancelAll() {
        if (this.mFontResDownloadManager != null) {
            this.mFontResDownloadManager.cancelAll();
            this.mFontResDownloadManager = null;
        }
        if (this.mUnzipFontTask != null) {
            this.mUnzipFontTask.release();
            this.mUnzipFontTask = null;
        }
    }
}
