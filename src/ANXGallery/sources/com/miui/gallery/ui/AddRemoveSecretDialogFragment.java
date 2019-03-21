package com.miui.gallery.ui;

import android.accounts.Account;
import android.app.Activity;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.miui.account.AccountHelper;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.preference.GalleryPreferences.Secret;
import com.miui.gallery.provider.CloudUtils;
import com.miui.gallery.util.CheckDownloadOriginHelper;
import com.miui.gallery.util.CheckDownloadOriginHelper.CheckDownloadOriginListener;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.MediaAndAlbumOperations.OnCompleteListener;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import com.miui.privacy.LockSettingsHelper;
import java.util.ArrayList;
import miui.app.ProgressDialog;

public class AddRemoveSecretDialogFragment extends GalleryDialogFragment {
    private long mAlbumId;
    private OnCompleteListener mListener;
    private long[] mMediaIds;
    private ArrayList<Uri> mMediaUris;
    private int mOperationType;
    private ProgressDialog mProgressDialog;

    class AddRemoveTask extends AsyncTask<Void, Void, long[]> {
        AddRemoveTask() {
        }

        protected long[] doInBackground(Void... params) {
            return addOrRemove();
        }

        protected void onPostExecute(long[] results) {
            if (AddRemoveSecretDialogFragment.this.mListener != null) {
                AddRemoveSecretDialogFragment.this.mListener.onComplete(results);
            }
            if (AddRemoveSecretDialogFragment.this.getActivity() != null) {
                Pair<Boolean, String> result = outputResult(results);
                CharSequence msg = result.second;
                int toastTime = 0;
                if (((Boolean) result.first).booleanValue() && AddRemoveSecretDialogFragment.this.mOperationType == 1) {
                    if (Secret.isFirstAddSecret()) {
                        AddRemoveSecretDialogFragment.this.enterSecret();
                    } else {
                        if (TextUtils.isEmpty(msg)) {
                            msg = AddRemoveSecretDialogFragment.this.getString(R.string.alert_secret_album_message);
                        } else {
                            msg = String.format("%s,%s", new Object[]{msg, AddRemoveSecretDialogFragment.this.getString(R.string.alert_secret_album_message_lower_case)});
                        }
                        toastTime = 1;
                    }
                }
                if (msg != null) {
                    ToastUtils.makeText(AddRemoveSecretDialogFragment.this.getActivity(), msg, toastTime);
                }
                AddRemoveSecretDialogFragment.this.dismissAllowingStateLoss();
            }
        }

        private long[] addOrRemove() {
            Context context = GalleryApp.sGetAndroidContext();
            if (AddRemoveSecretDialogFragment.this.mOperationType == 1) {
                if (AddRemoveSecretDialogFragment.this.mMediaIds == null) {
                    return CloudUtils.addToSecret(context, AddRemoveSecretDialogFragment.this.mMediaUris);
                }
                return CloudUtils.addToSecret(context, AddRemoveSecretDialogFragment.this.mMediaIds);
            } else if (AddRemoveSecretDialogFragment.this.mOperationType == 2) {
                return CloudUtils.removeFromSecret(context, AddRemoveSecretDialogFragment.this.mAlbumId, AddRemoveSecretDialogFragment.this.mMediaIds);
            } else {
                return null;
            }
        }

        private Pair<Boolean, String> outputResult(long[] results) {
            if (AddRemoveSecretDialogFragment.this.getActivity() == null) {
                return new Pair(Boolean.valueOf(false), null);
            }
            Resources res = AddRemoveSecretDialogFragment.this.getActivity().getResources();
            boolean hasSuccess = false;
            String msg = null;
            int failedCode;
            int skip;
            int success;
            int failed;
            if (AddRemoveSecretDialogFragment.this.mOperationType == 1) {
                if (results == null || results.length < 1) {
                    msg = AddRemoveSecretDialogFragment.this.getString(R.string.add_to_secret_fail);
                } else {
                    failedCode = 0;
                    skip = 0;
                    success = 0;
                    failed = 0;
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
                    if (results.length > 1) {
                        if (failed != 0) {
                            msg = getAddFailTip(res, failedCode, results.length, failed);
                        } else {
                            msg = res.getString(R.string.add_to_secret_successful);
                        }
                    } else if (success == 1) {
                        msg = res.getString(R.string.add_to_secret_successful);
                    } else if (skip == 1) {
                        msg = res.getString(R.string.add_to_secret_exist);
                    } else {
                        msg = getAddFailTip(res, failedCode, results.length, failed);
                    }
                    hasSuccess = success > 0;
                }
            } else if (AddRemoveSecretDialogFragment.this.mOperationType == 2) {
                if (results == null || results.length < 1) {
                    msg = res.getString(R.string.remove_from_secret_fail);
                } else {
                    failedCode = 0;
                    skip = 0;
                    success = 0;
                    failed = 0;
                    String reason = "";
                    for (long id2 : results) {
                        if (id2 > 0) {
                            success++;
                        } else if (id2 == -103 || id2 == -104) {
                            skip++;
                        } else {
                            failed++;
                            if (failedCode == 0) {
                                failedCode = (int) id2;
                            }
                        }
                    }
                    if (failed > 0) {
                        reason = getFailReason(res, failedCode, failed);
                    }
                    if (results.length > 1) {
                        if (failed != 0) {
                            msg = res.getQuantityString(R.plurals.remove_from_secret_failed_with_reason_and_count, failed, new Object[]{reason, Integer.valueOf(failed)});
                        } else {
                            msg = res.getString(R.string.remove_from_secret_successful);
                        }
                    } else if (success == 1) {
                        msg = res.getString(R.string.remove_from_secret_successful);
                    } else if (skip == 1) {
                        msg = res.getString(R.string.add_to_album_exist);
                    } else {
                        msg = res.getString(R.string.remove_from_secret_failed_with_reason, new Object[]{reason});
                    }
                    hasSuccess = success > 0;
                }
            }
            return new Pair(Boolean.valueOf(hasSuccess), msg);
        }

        private String getAddFailTip(Resources resources, int failCode, int operateCount, int failCount) {
            if (failCode == -107) {
                return resources.getString(R.string.secret_reason_video_not_support);
            }
            String reason = getFailReason(resources, failCode, failCount);
            if (operateCount > 1) {
                return resources.getQuantityString(R.plurals.add_to_secret_failed_with_reason_and_count, failCount, new Object[]{reason, Integer.valueOf(failCount)});
            }
            return resources.getString(R.string.add_to_secret_failed_with_reason, new Object[]{reason});
        }

        private String getFailReason(Resources resources, int failCode, int count) {
            switch (failCode) {
                case -111:
                    return resources.getQuantityString(R.plurals.fail_reason_processing_file, count);
                case -108:
                    return resources.getString(R.string.secret_reason_too_large);
                case -107:
                    return resources.getString(R.string.secret_reason_type_not_support);
                case -106:
                    return resources.getString(R.string.secret_reason_space_full);
                default:
                    return resources.getString(R.string.secret_reason_unknow_reasons);
            }
        }
    }

    public static void add(Activity activity, OnCompleteListener listener, long... mediaIds) {
        AddRemoveSecretDialogFragment dialog = new AddRemoveSecretDialogFragment();
        Bundle args = new Bundle();
        args.putInt("arg_operation_type", 1);
        args.putLongArray("arg_media_ids", mediaIds);
        dialog.setArguments(args);
        dialog.setOnCompleteListener(listener);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "AddRemoveSecretDialogFragment");
    }

    public static void add(Activity activity, OnCompleteListener listener, ArrayList<Uri> uris) {
        AddRemoveSecretDialogFragment dialog = new AddRemoveSecretDialogFragment();
        Bundle args = new Bundle();
        args.putInt("arg_operation_type", 1);
        args.putParcelableArrayList("arg_media_uris", uris);
        dialog.setArguments(args);
        dialog.setOnCompleteListener(listener);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "AddRemoveSecretDialogFragment");
    }

    public static void remove(Activity activity, OnCompleteListener listener, long albumId, long... mediaIds) {
        AddRemoveSecretDialogFragment dialog = new AddRemoveSecretDialogFragment();
        Bundle args = new Bundle();
        args.putInt("arg_operation_type", 2);
        args.putLongArray("arg_media_ids", mediaIds);
        args.putLong("arg_album_id", albumId);
        dialog.setArguments(args);
        dialog.setOnCompleteListener(listener);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "AddRemoveSecretDialogFragment");
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mOperationType = getArguments().getInt("arg_operation_type");
        if (this.mOperationType == 1) {
            this.mMediaIds = getArguments().getLongArray("arg_media_ids");
            this.mMediaUris = getArguments().getParcelableArrayList("arg_media_uris");
            if (this.mMediaIds == null && this.mMediaUris == null) {
                throw new IllegalArgumentException("ids or uris can't be null");
            }
        } else if (this.mOperationType == 2) {
            this.mAlbumId = getArguments().getLong("arg_album_id");
            if (this.mAlbumId <= 0) {
                throw new IllegalArgumentException("albumId must > 0");
            }
            this.mMediaIds = getArguments().getLongArray("arg_media_ids");
            if (this.mMediaIds == null) {
                throw new IllegalArgumentException("ids can't be null");
            }
        } else {
            throw new IllegalArgumentException("unsupport operation");
        }
        setCancelable(false);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mProgressDialog = ProgressDialog.show(getActivity(), "", getActivity().getString(R.string.adding_to_album), true, false);
        return this.mProgressDialog;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        addOrRemoveSecret();
    }

    private void checkPrivateGalleryEnabled() {
        Account account = AccountHelper.getXiaomiAccount(getActivity());
        if (account == null) {
            return;
        }
        if (!ContentResolver.getSyncAutomatically(account, "com.miui.gallery.cloud.provider") && !SyncUtil.setSyncAutomatically(getActivity(), true)) {
            return;
        }
        if (new LockSettingsHelper(getActivity()).isPrivacyPasswordEnabled()) {
            doAddOrRemoveSecret();
            return;
        }
        Secret.setIsFirstAddSecret(true);
        LockSettingsHelper.startSetPrivacyPasswordActivity(this, 28);
    }

    private void doAddOrRemoveSecret() {
        if (this.mOperationType != 2 || this.mMediaIds == null) {
            startAddOrRemoveSecretTask();
            return;
        }
        CheckDownloadOriginHelper helper = new CheckDownloadOriginHelper(getActivity(), getFragmentManager(), this.mAlbumId, this.mMediaIds);
        helper.setListener(new CheckDownloadOriginListener() {
            public void onStartDownload() {
                AddRemoveSecretDialogFragment.this.mProgressDialog.hide();
            }

            public void onComplete() {
                AddRemoveSecretDialogFragment.this.startAddOrRemoveSecretTask();
            }

            public void onCanceled() {
                if (AddRemoveSecretDialogFragment.this.mListener != null) {
                    AddRemoveSecretDialogFragment.this.mListener.onComplete(null);
                }
                AddRemoveSecretDialogFragment.this.dismissAllowingStateLoss();
            }
        });
        helper.start();
    }

    private void startAddOrRemoveSecretTask() {
        this.mProgressDialog.show();
        new AddRemoveTask().executeOnExecutor(AddRemoveTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    private void addOrRemoveSecret() {
        Bundle args = new Bundle();
        args.putBoolean("key_check_gallery_sync", true);
        args.putSerializable("cloud_guide_source", CloudGuideSource.SECRET);
        LoginAndSyncCheckFragment.checkLoginAndSyncState(this, args);
    }

    private void enterSecret() {
        IntentUtil.enterPrivateAlbum(getActivity());
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 28:
                    doAddOrRemoveSecret();
                    return;
                case 29:
                    checkPrivateGalleryEnabled();
                    return;
                default:
                    return;
            }
        }
        if (this.mListener != null) {
            this.mListener.onComplete(null);
        }
        dismissAllowingStateLoss();
    }

    public void setOnCompleteListener(OnCompleteListener listener) {
        this.mListener = listener;
    }
}
