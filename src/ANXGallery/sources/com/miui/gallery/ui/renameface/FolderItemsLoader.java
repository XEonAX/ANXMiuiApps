package com.miui.gallery.ui.renameface;

import android.app.Activity;
import android.os.AsyncTask;
import com.miui.gallery.model.DisplayFolderItem;
import java.lang.ref.SoftReference;
import java.util.ArrayList;

public abstract class FolderItemsLoader {
    protected SoftReference<Activity> mActivityRef;
    private boolean mCancelled;
    protected ArrayList<DisplayFolderItem> mItems = new ArrayList();
    private ArrayList<DisplayFolderItem> mLoadedItems = null;
    private final LoaderUpdatedItems mOutListener;
    private String mPath;
    private long[] mSelectedFoldersLocalID;

    public interface LoaderUpdatedItems {
        void onLoaderUpdatedItems();
    }

    public FolderItemsLoader(Activity activity, String path, LoaderUpdatedItems listener, long[] selectedFolders, boolean needBasicDataOnly) {
        this.mPath = path;
        this.mOutListener = listener;
        this.mSelectedFoldersLocalID = selectedFolders;
        this.mActivityRef = new SoftReference(activity);
        reload();
    }

    public final ArrayList<DisplayFolderItem> unblockGetItems() {
        return this.mItems;
    }

    public final ArrayList<DisplayFolderItem> tryToGetLoadedItems(long waitMs) {
        long waitStart = System.currentTimeMillis();
        while (this.mLoadedItems == null) {
            try {
                Thread.sleep(100);
                if (System.currentTimeMillis() - waitStart >= waitMs) {
                    return null;
                }
            } catch (InterruptedException e) {
                return null;
            }
        }
        return this.mLoadedItems;
    }

    private void reload() {
        new AsyncTask<Void, Void, ArrayList<DisplayFolderItem>>() {
            protected ArrayList<DisplayFolderItem> doInBackground(Void... params) {
                FolderItemsLoader.this.mLoadedItems = FolderItemsLoader.this.refreshCloudFolderItems();
                return FolderItemsLoader.this.mLoadedItems;
            }

            protected void onPostExecute(ArrayList<DisplayFolderItem> result) {
                FolderItemsLoader.this.mItems = result;
                if (!FolderItemsLoader.this.mCancelled && FolderItemsLoader.this.mOutListener != null) {
                    FolderItemsLoader.this.mOutListener.onLoaderUpdatedItems();
                }
            }
        }.execute(new Void[0]);
    }

    public void cancel() {
        this.mCancelled = true;
    }

    protected ArrayList<DisplayFolderItem> refreshCloudFolderItems() {
        return new ArrayList();
    }

    protected boolean isMediaSetCandidate(String bucketId) {
        boolean isSelected = false;
        if (this.mSelectedFoldersLocalID != null) {
            for (long j : this.mSelectedFoldersLocalID) {
                if (Long.parseLong(bucketId) == j) {
                    isSelected = true;
                    break;
                }
            }
        }
        if (isSelected) {
            return false;
        }
        return true;
    }
}
