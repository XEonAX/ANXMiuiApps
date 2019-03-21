package com.miui.gallery.movie.utils;

import android.app.Activity;
import android.app.DialogFragment;
import android.content.Context;
import com.miui.gallery.R;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.movie.entity.MovieResource;
import com.miui.gallery.movie.ui.listener.MovieDownloadListener;
import com.miui.gallery.net.download.Request.Listener;
import com.miui.gallery.net.resource.ResourceDownloadManager;
import com.miui.gallery.ui.ConfirmDialog;
import com.miui.gallery.ui.ConfirmDialog.ConfirmDialogInterface;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ToastUtils;

public class MovieDownloadManager {
    private static MovieDownloadManager sInstance = new MovieDownloadManager();
    private ResourceDownloadManager mResourceDownloadManager;

    private MovieDownloadManager() {
    }

    public static MovieDownloadManager getInstance() {
        return sInstance;
    }

    public void downloadResourceWithCheck(Activity mContext, final MovieResource data, final MovieDownloadListener onCompletedListener) {
        if (!NetworkUtils.isNetworkConnected()) {
            ToastUtils.makeText((Context) mContext, (int) R.string.movie_download_failed_for_notwork);
            Log.d("MovieDownloadManager", "download resource no network");
        } else if (NetworkUtils.isActiveNetworkMetered()) {
            ConfirmDialog.showConfirmDialog(mContext.getFragmentManager(), mContext.getResources().getString(R.string.movie_download_with_metered_network_title), mContext.getResources().getString(R.string.movie_download_with_metered_network_msg), mContext.getResources().getString(R.string.movie_cancel_download), mContext.getResources().getString(R.string.movie_download), new ConfirmDialogInterface() {
                public void onConfirm(DialogFragment dialog) {
                    MovieDownloadManager.this.downloadResource(data, onCompletedListener, true);
                }

                public void onCancel(DialogFragment dialog) {
                }
            });
        } else {
            downloadResource(data, onCompletedListener, false);
        }
    }

    public void downloadResource(final MovieResource data, final MovieDownloadListener downloadListener, boolean isActiveNetworkMetered) {
        if (this.mResourceDownloadManager == null) {
            this.mResourceDownloadManager = new ResourceDownloadManager();
        }
        if (downloadListener != null) {
            downloadListener.onStart();
        }
        this.mResourceDownloadManager.download(data, data.getDownloadFilePath(), new Listener() {
            public void onStart() {
            }

            public void onProgressUpdate(int progress) {
                Log.d("MovieDownloadManager", "download progress %s :%d", data.getDownloadFilePath(), Integer.valueOf(progress));
            }

            public void onComplete(int resultCode) {
                Log.d("MovieDownloadManager", "download %s :%d", data.getDownloadFilePath(), Integer.valueOf(resultCode));
                if (resultCode == 0) {
                    new UnzipTask(data, downloadListener).execute(new Void[0]);
                } else if (downloadListener != null) {
                    downloadListener.onCompleted(false);
                }
            }
        }, isActiveNetworkMetered);
    }

    public void cancelAll() {
        if (this.mResourceDownloadManager != null) {
            this.mResourceDownloadManager.cancelAll();
        }
    }
}
