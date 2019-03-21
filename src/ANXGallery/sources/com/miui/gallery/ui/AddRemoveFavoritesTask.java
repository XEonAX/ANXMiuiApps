package com.miui.gallery.ui;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.provider.CloudUtils;
import com.miui.gallery.ui.ProcessTask.OnCompleteListener;
import com.miui.gallery.ui.ProcessTask.ProcessCallback;
import com.miui.gallery.util.MediaAndAlbumOperations;
import java.io.Serializable;
import java.lang.ref.WeakReference;

public class AddRemoveFavoritesTask extends ProcessTask<Param, long[]> {

    private static class OnCompleteListenerAdapter implements OnCompleteListener<long[]> {
        private WeakReference<MediaAndAlbumOperations.OnCompleteListener> mListenerRef;

        public OnCompleteListenerAdapter(MediaAndAlbumOperations.OnCompleteListener listener) {
            this.mListenerRef = new WeakReference(listener);
        }

        public void onCompleteProcess(long[] result) {
            MediaAndAlbumOperations.OnCompleteListener listener = (MediaAndAlbumOperations.OnCompleteListener) this.mListenerRef.get();
            if (listener != null) {
                listener.onComplete(result);
            }
        }
    }

    public static class Param implements Serializable {
        private int mAddRemoveBy;
        private String[] mData;
        private long[] mIds;
        private int mOperationType;

        public Param(int operationType, int addRemoveBy, String[] data) {
            this.mOperationType = operationType;
            this.mAddRemoveBy = addRemoveBy;
            this.mData = data;
        }

        public Param(int operationType, int addRemoveBy, long[] ids) {
            this.mOperationType = operationType;
            this.mAddRemoveBy = addRemoveBy;
            this.mIds = ids;
        }
    }

    public AddRemoveFavoritesTask() {
        super(new ProcessCallback<Param, long[]>() {
            public long[] doProcess(Param[] params) {
                int operationType = params[0].mOperationType;
                int addRemoveBy = params[0].mAddRemoveBy;
                if (addRemoveBy == 1) {
                    if (operationType == 1) {
                        return CloudUtils.addToFavoritesBySha1(GalleryApp.sGetAndroidContext(), params[0].mData);
                    }
                    if (operationType == 2) {
                        return CloudUtils.removeFromFavoritesBySha1(GalleryApp.sGetAndroidContext(), params[0].mData);
                    }
                } else if (addRemoveBy == 2) {
                    if (operationType == 1) {
                        return CloudUtils.addToFavoritesByPath(GalleryApp.sGetAndroidContext(), params[0].mData);
                    }
                    if (operationType == 2) {
                        return CloudUtils.removeFromFavoritesByPath(GalleryApp.sGetAndroidContext(), params[0].mData);
                    }
                } else if (addRemoveBy == 3) {
                    if (operationType == 1) {
                        return CloudUtils.addToFavoritesById(GalleryApp.sGetAndroidContext(), params[0].mIds);
                    }
                    if (operationType == 2) {
                        return CloudUtils.removeFromFavoritesById(GalleryApp.sGetAndroidContext(), params[0].mIds);
                    }
                }
                return null;
            }
        });
    }

    public void setOperationCompleteListener(MediaAndAlbumOperations.OnCompleteListener listener) {
        if (listener != null) {
            setCompleteListener(new OnCompleteListenerAdapter(listener));
        } else {
            setCompleteListener(null);
        }
    }
}
