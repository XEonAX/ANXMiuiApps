package com.miui.gallery.util;

import android.app.Activity;
import android.app.DialogFragment;
import android.os.AsyncTask;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.library.Library;
import com.miui.gallery.assistant.library.Library.LibraryStatus;
import com.miui.gallery.assistant.library.LibraryItem;
import com.miui.gallery.assistant.library.LibraryManager;
import com.miui.gallery.assistant.library.LibraryManager.DownloadListener;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.ui.ConfirmDialog;
import com.miui.gallery.ui.ConfirmDialog.ConfirmDialogInterface;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class MovieLibraryLoaderHelper {
    private static MovieLibraryLoaderHelper sInstance = new MovieLibraryLoaderHelper();
    private CopyOnWriteArrayList<DownloadStateListener> mDownloadStateListeners = new CopyOnWriteArrayList();
    private boolean mIsDownloading;

    public interface DownloadStateListener {
        void onDownloading();

        void onFinish(boolean z, int i);
    }

    private class LibraryAsyncTask extends AsyncTask<Void, Void, Library> {
        private boolean mAllowedOverMetered;

        public LibraryAsyncTask(boolean allowedOverMetered) {
            this.mAllowedOverMetered = allowedOverMetered;
        }

        protected Library doInBackground(Void... params) {
            return LibraryManager.getInstance().getLibrarySync(1011);
        }

        protected void onPostExecute(Library library) {
            super.onPostExecute(library);
            if (library == null) {
                Log.w("MovieLibraryLoaderHelper", "getLibrarySync failed");
                MovieLibraryLoaderHelper.this.refreshDownloadResult(false, -2);
                return;
            }
            MovieLibraryLoaderHelper.this.startDownload(library, this.mAllowedOverMetered, null);
        }
    }

    public static MovieLibraryLoaderHelper getInstance() {
        return sInstance;
    }

    public int getLoaderState() {
        return getLoaderState(LibraryManager.getInstance().getLibrary(1011));
    }

    private int getLoaderState(Library library) {
        if (library != null && library.getLibraryStatus() == LibraryStatus.STATE_AVAILABLE) {
            return 0;
        }
        if (this.mIsDownloading) {
            return 1;
        }
        return 2;
    }

    public boolean checkAbleOrDownload(Activity activity) {
        return checkAbleOrDownload(activity, null);
    }

    public boolean checkAbleOrDownload(Activity activity, DownloadStateListener downloadStartListener) {
        Library library = LibraryManager.getInstance().getLibrary(1011);
        if (library != null && getLoaderState(library) == 0) {
            return true;
        }
        onDownloading();
        startDownloadWithCheck(activity, library, downloadStartListener);
        return false;
    }

    public String getLibraryPath() {
        Library library = LibraryManager.getInstance().getLibrary(1011);
        if (library == null || library.getLibraryStatus() != LibraryStatus.STATE_AVAILABLE) {
            Log.e("MovieLibraryLoaderHelper", "library path is null");
            return null;
        }
        List<LibraryItem> libraryItems = library.getLibraryItems();
        if (BaseMiscUtil.isValid(libraryItems)) {
            return ((LibraryItem) libraryItems.get(0)).getDirPath(GalleryApp.sGetAndroidContext());
        }
        return null;
    }

    private void onDownloading() {
        this.mIsDownloading = true;
        Iterator it = this.mDownloadStateListeners.iterator();
        while (it.hasNext()) {
            ((DownloadStateListener) it.next()).onDownloading();
        }
    }

    private void startDownloadWithCheck(Activity activity, final Library library, final DownloadStateListener downloadStartListener) {
        if (!NetworkUtils.isNetworkConnected()) {
            ToastUtils.makeText(GalleryApp.sGetAndroidContext(), (int) R.string.movie_download_failed_for_notwork);
            Log.d("MovieLibraryLoaderHelper", "download sdk no network");
            refreshDownloadResult(false, -1);
        } else if (NetworkUtils.isActiveNetworkMetered()) {
            ConfirmDialog.showConfirmDialog(activity.getFragmentManager(), activity.getResources().getString(R.string.movie_download_sdk_without_wifi_title), activity.getResources().getString(R.string.movie_download_sdk_without_wifi_msg), activity.getResources().getString(R.string.movie_cancel_download), activity.getResources().getString(R.string.movie_download), new ConfirmDialogInterface() {
                public void onConfirm(DialogFragment dialog) {
                    MovieLibraryLoaderHelper.this.startDownload(library, true, downloadStartListener);
                }

                public void onCancel(DialogFragment dialog) {
                    MovieLibraryLoaderHelper.this.refreshDownloadResult(false, -1);
                }
            });
        } else {
            startDownload(library, false, downloadStartListener);
        }
    }

    private void startDownload(Library library, boolean allowedOverMetered, DownloadStateListener downloadStartListener) {
        if (downloadStartListener != null) {
            downloadStartListener.onDownloading();
        }
        if (library == null) {
            new LibraryAsyncTask(allowedOverMetered).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            LibraryManager.getInstance().downloadLibrary(library, allowedOverMetered, new DownloadListener() {
                public void onDownloadResult(long libraryId, int resultCode) {
                    Log.d("MovieLibraryLoaderHelper", "download result %d", Integer.valueOf(resultCode));
                    MovieLibraryLoaderHelper.this.refreshDownloadResult(resultCode == 0, resultCode);
                }
            });
        }
    }

    private void refreshDownloadResult(boolean success, int resultCode) {
        this.mIsDownloading = false;
        Iterator it = this.mDownloadStateListeners.iterator();
        while (it.hasNext()) {
            ((DownloadStateListener) it.next()).onFinish(success, resultCode);
        }
        ToastUtils.makeText(GalleryApp.sGetAndroidContext(), success ? R.string.photo_movie_module_finish : R.string.photo_movie_module_failed);
    }

    public void addDownloadStateListener(DownloadStateListener listener) {
        if (listener != null) {
            this.mDownloadStateListeners.add(listener);
        }
    }

    public void removeDownloadStateListener(DownloadStateListener listener) {
        if (listener != null) {
            this.mDownloadStateListeners.remove(listener);
        }
    }
}
