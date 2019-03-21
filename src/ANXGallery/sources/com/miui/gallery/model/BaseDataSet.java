package com.miui.gallery.model;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.SparseArray;
import com.miui.gallery.R;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.ui.ProcessTask;
import com.miui.gallery.ui.ProcessTask.OnCompleteListener;
import com.miui.gallery.ui.ProcessTask.ProcessCallback;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.MediaAndAlbumOperations.OnAddAlbumListener;

public abstract class BaseDataSet {
    private SparseArray<BaseDataItem> mBaseDataCache;
    protected int mInitPosition;

    public abstract boolean addToAlbum(Activity activity, int i, boolean z, boolean z2, OnAddAlbumListener onAddAlbumListener);

    protected abstract void bindItem(BaseDataItem baseDataItem, int i);

    protected abstract BaseDataItem createItem(int i);

    protected abstract int doDelete(BaseDataItem baseDataItem);

    public abstract int getCount();

    public abstract long getItemKey(int i);

    protected abstract String getItemPath(int i);

    public abstract void onRelease();

    public BaseDataSet() {
        this(0);
    }

    public BaseDataSet(int initPosition) {
        this.mBaseDataCache = new SparseArray();
        this.mInitPosition = initPosition;
    }

    public BaseDataItem getItem(BaseDataItem item, int position) {
        if (item == null) {
            item = (BaseDataItem) this.mBaseDataCache.get(position);
            if (item != null) {
                return item;
            }
            item = createItem(position);
            this.mBaseDataCache.put(position, item);
            return item;
        }
        bindItem(item, position);
        return item;
    }

    public int getInitPosition() {
        return this.mInitPosition;
    }

    public void setInitPosition(int initPos) {
        this.mInitPosition = initPos;
    }

    public int getIndexOfItem(BaseDataItem tar, int possiblePos) {
        if (tar == null) {
            return -1;
        }
        int count = getCount();
        if (possiblePos < 0) {
            return getIndexOfItem(tar, 0, count);
        }
        int pos = getIndexOfItem(tar, possiblePos, possiblePos + 20);
        if (pos != -1) {
            return pos;
        }
        pos = getIndexOfItem(tar, possiblePos - 20, possiblePos);
        if (pos != -1) {
            return pos;
        }
        pos = getIndexOfItem(tar, 0, possiblePos - 20);
        if (pos == -1) {
            return getIndexOfItem(tar, possiblePos + 20, count);
        }
        return pos;
    }

    private int getIndexOfItem(BaseDataItem tar, int start, int end) {
        int count = getCount();
        start = BaseMiscUtil.clamp(start, 0, count - 1);
        end = BaseMiscUtil.clamp(end, 0, count);
        for (int i = start; i < end; i++) {
            if (tar.getKey() == getItemKey(i)) {
                return i;
            }
        }
        return -1;
    }

    public int getIndexOfItem(String path, int possiblePos) {
        if (TextUtils.isEmpty(path)) {
            return -1;
        }
        if (possiblePos < 0) {
            return getIndexOfItem(path, 0, getCount());
        }
        int pos = getIndexOfItem(path, possiblePos - 20, possiblePos);
        if (pos != -1) {
            return pos;
        }
        pos = getIndexOfItem(path, possiblePos, possiblePos + 20);
        if (pos != -1) {
            return pos;
        }
        pos = getIndexOfItem(path, 0, possiblePos - 20);
        if (pos == -1) {
            return getIndexOfItem(path, possiblePos + 20, getCount());
        }
        return pos;
    }

    private int getIndexOfItem(String path, int start, int end) {
        int count = getCount();
        start = BaseMiscUtil.clamp(start, 0, count - 1);
        end = BaseMiscUtil.clamp(end, 0, count);
        for (int i = start; i < end; i++) {
            if (path.equalsIgnoreCase(getItemPath(i))) {
                return i;
            }
        }
        return -1;
    }

    public int getIndexOfItem(long key, int possiblePos) {
        if (possiblePos < 0) {
            return getIndexOfItem(key, 0, getCount());
        }
        int pos = getIndexOfItem(key, possiblePos - 20, possiblePos);
        if (pos != -1) {
            return pos;
        }
        pos = getIndexOfItem(key, possiblePos, possiblePos + 20);
        if (pos != -1) {
            return pos;
        }
        pos = getIndexOfItem(key, 0, possiblePos - 20);
        if (pos == -1) {
            return getIndexOfItem(key, possiblePos + 20, getCount());
        }
        return pos;
    }

    private int getIndexOfItem(long key, int start, int end) {
        int count = getCount();
        start = BaseMiscUtil.clamp(start, 0, count - 1);
        end = BaseMiscUtil.clamp(end, 0, count);
        for (int i = start; i < end; i++) {
            if (getItemKey(i) == key) {
                return i;
            }
        }
        return -1;
    }

    public final void release() {
        this.mBaseDataCache.clear();
        onRelease();
    }

    public void delete(final Activity activity, int position, final OnDeletionCompleteListener listener) {
        final BaseDataItem item = getItem(null, position);
        if (item != null) {
            Context context = activity;
            DialogUtil.showInfoDialog(context, getDeleteDialogMessage(item, activity), activity.getResources().getString(R.string.delete), 17039370, 17039360, new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    ProcessTask<Void, Integer> deletionTask = new ProcessTask(new ProcessCallback<Void, Integer>() {
                        public Integer doProcess(Void[] params) {
                            return Integer.valueOf(BaseDataSet.this.doDelete(item));
                        }
                    });
                    deletionTask.setCompleteListener(new OnCompleteListener() {
                        public void onCompleteProcess(Object result) {
                            if (listener != null) {
                                listener.onDeleted(result == null ? 0 : ((Integer) result).intValue(), null);
                            }
                        }
                    });
                    deletionTask.showProgress(activity, activity.getString(R.string.delete_in_process));
                    deletionTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                }
            }, new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    dialog.cancel();
                }
            });
        }
    }

    protected String getDeleteDialogMessage(BaseDataItem item, Context context) {
        return context.getResources().getString(item.isVideo() ? R.string.delete_third_party_video : R.string.delete_third_party_photo);
    }

    public boolean removeFromSecret(Activity activity, int position, MediaAndAlbumOperations.OnCompleteListener listener) {
        return false;
    }

    public boolean addToFavorites(Activity activity, int position, MediaAndAlbumOperations.OnCompleteListener listener) {
        return false;
    }

    public boolean removeFromFavorites(Activity activity, int position, MediaAndAlbumOperations.OnCompleteListener listener) {
        return false;
    }

    public boolean addNewFile(String path, int position) {
        this.mBaseDataCache.clear();
        return false;
    }
}
