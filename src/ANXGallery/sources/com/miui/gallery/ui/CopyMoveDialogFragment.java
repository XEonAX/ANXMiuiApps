package com.miui.gallery.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.preference.GalleryPreferences.LocalMode;
import com.miui.gallery.provider.CloudUtils;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.util.BaseDocumentProviderUtils;
import com.miui.gallery.util.CheckDownloadOriginHelper;
import com.miui.gallery.util.CheckDownloadOriginHelper.CheckDownloadOriginListener;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.DocumentProviderUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaAndAlbumOperations.OnAddAlbumListener;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.Utils;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.util.ArrayList;
import miui.app.ProgressDialog;

public class CopyMoveDialogFragment extends GalleryDialogFragment {
    private Activity mActivity;
    private long mAlbumId;
    private boolean mDeleteOrigin;
    private int mDupType;
    private OnAddAlbumListener mListener;
    private long[] mMediaIds;
    private ArrayList<Uri> mMediaUris;
    private boolean mOperateSync;
    private ProgressDialog mProgressDialog;

    class CopyMoveTask extends AsyncTask<Void, Void, long[]> {
        private int mCloudPhotoCount;

        CopyMoveTask() {
        }

        protected long[] doInBackground(Void... params) {
            if (LocalMode.isOnlyShowLocalPhoto()) {
                this.mCloudPhotoCount = getCloudPhotoCount();
            }
            return BaseDocumentProviderUtils.needRequestExternalSDCardPermission(CopyMoveDialogFragment.this.getActivity()) ? new long[]{-112} : copyOrMove();
        }

        protected void onPostExecute(long[] results) {
            if (results != null && results.length == 1 && results[0] == -112) {
                DocumentProviderUtils.startExtSDCardPermissionActivityForResult(CopyMoveDialogFragment.this.getActivity());
                CopyMoveDialogFragment.this.mProgressDialog.dismiss();
                return;
            }
            outputResult(results);
            CopyMoveDialogFragment.this.mProgressDialog.dismiss();
            if (this.mCloudPhotoCount > 0) {
                showCloudPhotoCountDialog(this.mCloudPhotoCount);
            }
            if (CopyMoveDialogFragment.this.mListener != null) {
                CopyMoveDialogFragment.this.mListener.onComplete(results, CopyMoveDialogFragment.this.mDeleteOrigin);
            }
        }

        private long[] copyOrMove() {
            if (CopyMoveDialogFragment.this.mMediaIds != null) {
                if (CopyMoveDialogFragment.this.mDeleteOrigin) {
                    return CloudUtils.move(CopyMoveDialogFragment.this.mActivity, CopyMoveDialogFragment.this.mDupType, CopyMoveDialogFragment.this.mAlbumId, CopyMoveDialogFragment.this.mOperateSync, CopyMoveDialogFragment.this.mMediaIds);
                }
                return CloudUtils.copy(CopyMoveDialogFragment.this.mActivity, CopyMoveDialogFragment.this.mDupType, CopyMoveDialogFragment.this.mAlbumId, CopyMoveDialogFragment.this.mMediaIds);
            } else if (CopyMoveDialogFragment.this.mMediaUris == null) {
                return null;
            } else {
                if (CopyMoveDialogFragment.this.mDeleteOrigin) {
                    return CloudUtils.move(CopyMoveDialogFragment.this.mActivity, CopyMoveDialogFragment.this.mAlbumId, CopyMoveDialogFragment.this.mMediaUris);
                }
                return CloudUtils.copy(CopyMoveDialogFragment.this.mActivity, CopyMoveDialogFragment.this.mAlbumId, CopyMoveDialogFragment.this.mMediaUris);
            }
        }

        private void outputResult(long[] results) {
            if (results == null || results.length < 1) {
                ToastUtils.makeText(CopyMoveDialogFragment.this.mActivity, (int) R.string.add_to_album_failed);
                return;
            }
            Resources res = CopyMoveDialogFragment.this.mActivity.getResources();
            int failedCode = 0;
            int skip = 0;
            int success = 0;
            int failed = 0;
            String reason = "";
            for (long id : results) {
                if (id > 0) {
                    success++;
                } else if (id == -103 || id == -104) {
                    skip++;
                } else {
                    failed++;
                    if (failedCode == 0) {
                        failedCode = (int) id;
                    }
                }
            }
            if (failed > 0) {
                reason = getFailReason(res, failedCode, failed);
            }
            if (results.length > 1) {
                if (failed != 0) {
                    ToastUtils.makeText(CopyMoveDialogFragment.this.mActivity, res.getQuantityString(R.plurals.add_to_album_failed_with_reason_and_count, failed, new Object[]{reason, Integer.valueOf(failed)}));
                } else if (results.length == skip) {
                    ToastUtils.makeText(CopyMoveDialogFragment.this.mActivity, (int) R.string.add_to_album_exist);
                } else {
                    ToastUtils.makeText(CopyMoveDialogFragment.this.mActivity, (int) R.string.add_to_album_success);
                }
            } else if (success == 1) {
                ToastUtils.makeText(CopyMoveDialogFragment.this.mActivity, (int) R.string.add_to_album_success);
            } else if (skip == 1) {
                ToastUtils.makeText(CopyMoveDialogFragment.this.mActivity, (int) R.string.add_to_album_exist);
            } else {
                ToastUtils.makeText(CopyMoveDialogFragment.this.mActivity, res.getString(R.string.add_to_album_failed_with_reason, new Object[]{reason}));
            }
        }

        private String getFailReason(Resources resources, int ret, int count) {
            switch (ret) {
                case -111:
                    return resources.getQuantityString(R.plurals.fail_reason_processing_file, count);
                default:
                    return resources.getString(R.string.secret_reason_unknow_reasons);
            }
        }

        private int getCloudPhotoCount() {
            int count = 0;
            if (CopyMoveDialogFragment.this.mActivity == null || CopyMoveDialogFragment.this.mMediaIds == null) {
                return 0;
            }
            try {
                Cursor cursor = CopyMoveDialogFragment.this.mActivity.getContentResolver().query(Media.URI, new String[0], "_id IN (" + TextUtils.join(",", MiscUtil.arrayToList(CopyMoveDialogFragment.this.mMediaIds)) + ") AND " + Cloud.ALIAS_LOCAL_MEDIA, null, null);
                if (cursor != null) {
                    count = CopyMoveDialogFragment.this.mMediaIds.length - cursor.getCount();
                }
                Utils.closeSilently(cursor);
            } catch (Exception e) {
                Utils.closeSilently(null);
            } catch (Throwable th) {
                Utils.closeSilently(null);
                throw th;
            }
            return count;
        }

        private void showCloudPhotoCountDialog(int count) {
            if (CopyMoveDialogFragment.this.mActivity != null) {
                DialogUtil.showInfoDialog(CopyMoveDialogFragment.this.mActivity, CopyMoveDialogFragment.this.mActivity.getResources().getQuantityString(R.plurals.add_to_album_cloud_photo_count_tip, count, new Object[]{Integer.valueOf(count)}), CopyMoveDialogFragment.this.mActivity.getString(R.string.add_to_album_tip));
            }
        }
    }

    public static void show(Activity activity, long albumId, long[] mediaIds, int dupType, boolean deleteOrigin, OnAddAlbumListener listener) {
        show(activity, albumId, mediaIds, dupType, deleteOrigin, listener, false);
    }

    public static void show(Activity activity, long albumId, long[] mediaIds, int dupType, boolean deleteOrigin, OnAddAlbumListener listener, boolean operateSync) {
        CopyMoveDialogFragment dialog = new CopyMoveDialogFragment();
        Bundle args = new Bundle();
        args.putLong("arg_album_id", albumId);
        args.putLongArray("arg_media_ids", mediaIds);
        args.putBoolean("arg_delete_origin", deleteOrigin);
        args.putInt("arg_dup_type", dupType);
        args.putBoolean("arg_operate_sync", operateSync);
        dialog.setArguments(args);
        dialog.setOnCompleteListener(listener);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "CopyMoveDialogFragment");
    }

    public static void show(Activity activity, long albumId, ArrayList<Uri> uris, boolean deleteOrigin, OnAddAlbumListener listener) {
        CopyMoveDialogFragment dialog = new CopyMoveDialogFragment();
        Bundle args = new Bundle();
        args.putLong("arg_album_id", albumId);
        args.putParcelableArrayList("arg_media_uris", uris);
        args.putBoolean("arg_delete_origin", deleteOrigin);
        dialog.setArguments(args);
        dialog.setOnCompleteListener(listener);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "CopyMoveDialogFragment");
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mAlbumId = getArguments().getLong("arg_album_id");
        this.mMediaIds = getArguments().getLongArray("arg_media_ids");
        this.mDupType = getArguments().getInt("arg_dup_type", 0);
        this.mDeleteOrigin = getArguments().getBoolean("arg_delete_origin");
        this.mOperateSync = getArguments().getBoolean("arg_operate_sync", false);
        this.mMediaUris = getArguments().getParcelableArrayList("arg_media_uris");
        this.mActivity = getActivity();
        setCancelable(false);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mProgressDialog = ProgressDialog.show(this.mActivity, "", this.mActivity.getString(R.string.adding_to_album), true, false);
        return this.mProgressDialog;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        doCheckOrigin();
    }

    public void setOnCompleteListener(OnAddAlbumListener listener) {
        this.mListener = listener;
    }

    private void doCheckOrigin() {
        if (this.mMediaIds == null) {
            Log.d("CopyMoveDialogFragment", "media ids is null");
            doCopyMove();
            return;
        }
        CheckDownloadOriginHelper helper = new CheckDownloadOriginHelper(this.mActivity, getFragmentManager(), this.mAlbumId, this.mMediaIds);
        helper.setListener(new CheckDownloadOriginListener() {
            public void onStartDownload() {
                CopyMoveDialogFragment.this.mProgressDialog.hide();
            }

            public void onComplete() {
                CopyMoveDialogFragment.this.doCopyMove();
            }

            public void onCanceled() {
                CopyMoveDialogFragment.this.cancelAndFinish();
            }
        });
        helper.start();
    }

    private void doCopyMove() {
        if (this.mActivity != null && !this.mActivity.isFinishing()) {
            Log.d("CopyMoveDialogFragment", "doCopyMove");
            try {
                this.mProgressDialog.show();
            } catch (Exception ignore) {
                Log.w("CopyMoveDialogFragment", "show dialog ignore %s", ignore);
            }
            new CopyMoveTask().executeOnExecutor(CopyMoveTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    private void cancelAndFinish() {
        Log.d("CopyMoveDialogFragment", "cancelAndFinish");
        if (this.mListener != null) {
            this.mListener.onComplete(null, this.mDeleteOrigin);
        }
        dismissAllowingStateLoss();
    }
}
