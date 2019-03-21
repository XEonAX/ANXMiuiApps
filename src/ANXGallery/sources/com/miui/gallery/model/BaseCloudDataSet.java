package com.miui.gallery.model;

import android.app.Activity;
import android.database.Cursor;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.MediaAndAlbumOperations.OnAddAlbumListener;
import com.miui.gallery.util.MediaAndAlbumOperations.OnCompleteListener;

public abstract class BaseCloudDataSet extends CursorDataSet {
    protected long mAlbumId = -1;
    protected String mAlbumName;
    protected int mOpDupType;

    public BaseCloudDataSet(Cursor cursor, int initPos, int dupType, long albumId, String albumName) {
        super(cursor, initPos);
        this.mOpDupType = dupType;
        this.mAlbumId = albumId;
        this.mAlbumName = albumName;
    }

    public void delete(Activity activity, int position, OnDeletionCompleteListener listener) {
        if (getItem(null, position) != null) {
            Activity activity2 = activity;
            MediaAndAlbumOperations.delete(activity2, "DeleteMediaDialogFragment", listener, this.mAlbumId, this.mAlbumName, this.mOpDupType, 25, ((CloudItem) item).getId());
        }
    }

    protected int doDelete(BaseDataItem item) {
        return 0;
    }

    public boolean addToAlbum(Activity activity, int position, boolean operateSync, boolean canAddSecret, OnAddAlbumListener listener) {
        if (getItem(null, position) != null) {
            MediaAndAlbumOperations.addToAlbum(activity, listener, this.mOpDupType, isAlbumRemovable(), operateSync, canAddSecret, ((CloudItem) item).getId());
        }
        return true;
    }

    protected boolean isAlbumRemovable() {
        return (this.mAlbumId == 2147483647L || this.mAlbumId == 2147483645 || this.mAlbumId == 2147483642) ? false : true;
    }

    public boolean removeFromSecret(Activity activity, int position, OnCompleteListener listener) {
        if (getItem(null, position) != null) {
            MediaAndAlbumOperations.removeFromSecretAlbum(activity, listener, ((CloudItem) getItem(null, position)).getId());
        }
        return true;
    }

    public boolean addToFavorites(Activity activity, int position, OnCompleteListener listener) {
        CloudItem item = (CloudItem) getItem(null, position);
        if (item != null) {
            MediaAndAlbumOperations.addToFavoritesById(activity, item.wrapAddToFavoritesListener(listener), item.getId());
        }
        return true;
    }

    public boolean removeFromFavorites(Activity activity, int position, OnCompleteListener listener) {
        CloudItem item = (CloudItem) getItem(null, position);
        if (item != null) {
            MediaAndAlbumOperations.removeFromFavoritesById(activity, item.wrapRemoveFromFavoritesListener(listener), item.getId());
        }
        return true;
    }
}
