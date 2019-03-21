package com.miui.gallery.ui;

import android.app.Activity;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.provider.CloudUtils;
import com.miui.gallery.ui.ProcessTask.OnCompleteListener;
import com.miui.gallery.ui.ProcessTask.ProcessCallback;
import com.miui.gallery.util.BaseDocumentProviderUtils;
import com.miui.gallery.util.DocumentProviderUtils;
import java.io.Serializable;
import java.lang.ref.WeakReference;

public class DeletionTask extends ProcessTask<Param, long[]> {
    private WeakReference<Activity> mRef;

    public interface OnDeletionCompleteListener {
        void onDeleted(int i, long[] jArr);
    }

    public static class Param implements Serializable {
        public long mAlbumId;
        public String mAlbumName;
        public int mDeleteBy;
        public int mDeleteOptions;
        public int mDeleteReason;
        public int mDupType;
        public long[] mIds;
        public String[] mPaths;

        public Param(long[] albumIds, int options, int deleteReason) {
            this.mDupType = 0;
            this.mAlbumId = -1;
            this.mDeleteBy = 2;
            this.mIds = albumIds;
            this.mDeleteOptions = options;
            this.mDeleteReason = deleteReason;
        }

        public Param(long[] ids, int dupType, long albumId, String albumName, int deleteReason) {
            this.mDupType = 0;
            this.mAlbumId = -1;
            this.mIds = ids;
            this.mDupType = dupType;
            this.mAlbumId = albumId;
            this.mAlbumName = albumName;
            this.mDeleteBy = 0;
            this.mDeleteReason = deleteReason;
        }

        public int getItemsCount() {
            switch (this.mDeleteBy) {
                case 0:
                    return this.mIds.length;
                case 1:
                    return this.mPaths.length;
                case 2:
                    return this.mIds.length;
                default:
                    return 0;
            }
        }
    }

    public DeletionTask() {
        super(new ProcessCallback<Param, long[]>() {
            public long[] doProcess(Param[] params) {
                long[] result = new long[]{-112};
                boolean needRequestExternalSDCardPermission = BaseDocumentProviderUtils.needRequestExternalSDCardPermission(GalleryApp.sGetAndroidContext());
                if (params[0].mDeleteBy == 0) {
                    if (needRequestExternalSDCardPermission) {
                        return result;
                    }
                    return CloudUtils.deleteById(GalleryApp.sGetAndroidContext(), params[0].mDupType, params[0].mDeleteOptions, params[0].mDeleteReason, params[0].mIds);
                } else if (params[0].mDeleteBy == 1) {
                    if (needRequestExternalSDCardPermission) {
                        return result;
                    }
                    return CloudUtils.deleteByPath(GalleryApp.sGetAndroidContext(), params[0].mDeleteOptions, params[0].mDeleteReason, params[0].mPaths);
                } else if (params[0].mDeleteBy != 2) {
                    return null;
                } else {
                    if (needRequestExternalSDCardPermission) {
                        return result;
                    }
                    return CloudUtils.deleteAlbum(GalleryApp.sGetAndroidContext(), params[0].mDeleteOptions, params[0].mDeleteReason, params[0].mIds);
                }
            }
        });
    }

    public void showProgress(Activity activity) {
        if (activity != null) {
            this.mRef = new WeakReference(activity);
            super.showProgress(activity, activity.getString(R.string.delete_in_process));
        }
    }

    public void setOnDeletionCompleteListener(final OnDeletionCompleteListener onDeletionCompleteListener) {
        if (onDeletionCompleteListener != null) {
            setCompleteListener(new OnCompleteListener<long[]>() {
                public void onCompleteProcess(long[] result) {
                    int count = result == null ? 0 : result.length;
                    Activity activity = DeletionTask.this.mRef != null ? (Activity) DeletionTask.this.mRef.get() : null;
                    if (count == 1 && result[0] == -112 && activity != null) {
                        DocumentProviderUtils.startExtSDCardPermissionActivityForResult(activity);
                    } else if (onDeletionCompleteListener != null) {
                        onDeletionCompleteListener.onDeleted(count, result);
                    }
                }
            });
        } else {
            setCompleteListener(new OnCompleteListener<long[]>() {
                public void onCompleteProcess(long[] result) {
                    int count = result == null ? 0 : result.length;
                    Activity activity = DeletionTask.this.mRef != null ? (Activity) DeletionTask.this.mRef.get() : null;
                    if (count == 1 && result[0] == -112 && activity != null) {
                        DocumentProviderUtils.startExtSDCardPermissionActivityForResult(activity);
                    }
                }
            });
        }
    }
}
