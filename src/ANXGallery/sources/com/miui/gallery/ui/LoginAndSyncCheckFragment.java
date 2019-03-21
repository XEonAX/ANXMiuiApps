package com.miui.gallery.ui;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.ToastUtils;

public class LoginAndSyncCheckFragment extends Fragment implements OnCancelListener {
    private boolean mCheckGallerySync;
    private int mCheckingType = 0;
    private Dialog mDialog;

    public static void checkLoginAndSyncState(Fragment fragment, Bundle args) {
        FragmentTransaction transaction = fragment.getChildFragmentManager().beginTransaction();
        Fragment tar = new LoginAndSyncCheckFragment();
        tar.setArguments(args);
        transaction.add(tar, "LoginAndSyncCheckFragment");
        transaction.commitAllowingStateLoss();
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        boolean z = false;
        Bundle args = getArguments();
        this.mCheckingType = 0;
        if (args != null) {
            z = args.getBoolean("key_check_gallery_sync", false);
        }
        this.mCheckGallerySync = z;
        return new View(getActivity());
    }

    public void onStart() {
        super.onStart();
        switch (this.mCheckingType) {
            case 0:
                doCheck();
                break;
            case 1:
                if (!SyncUtil.existXiaomiAccount(getActivity())) {
                    ToastUtils.makeText(getActivity(), (int) R.string.xiaomi_account_not_exists_toast);
                    setResult(0);
                    break;
                }
                doCheck();
                break;
            case 2:
                if (!ContentResolver.getMasterSyncAutomatically()) {
                    ToastUtils.makeText(getActivity(), (int) R.string.sync_diabled_toast);
                    setResult(0);
                    break;
                }
                doCheck();
                break;
            case 3:
                if (!SyncUtil.isGalleryCloudSyncable(getActivity())) {
                    ToastUtils.makeText(getActivity(), (int) R.string.gallery_sync_disable_toast);
                    setResult(0);
                    break;
                }
                doCheck();
                break;
            default:
                setResult(0);
                break;
        }
        Log.i("LoginAndSyncCheckFragment", "onStart isCheckPending %d", Integer.valueOf(this.mCheckingType));
    }

    private void doCheck() {
        if (!SyncUtil.existXiaomiAccount(getActivity())) {
            checkLogin();
        } else if (!ContentResolver.getMasterSyncAutomatically()) {
            checkSystemSync();
        } else if (!this.mCheckGallerySync || SyncUtil.isGalleryCloudSyncable(getActivity())) {
            setResult(-1);
        } else {
            checkGallerySync();
        }
    }

    private void checkLogin() {
        IntentUtil.guideToLoginXiaomiAccount(getActivity(), getArguments());
        this.mCheckingType = 1;
    }

    private void checkSystemSync() {
        this.mCheckingType = 2;
        showDialog(R.string.to_enable_sync_dialog_title, R.string.to_enable_sync_dialog_message, R.string.to_enable_sync_dialog_positive_button_text, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                LoginAndSyncCheckFragment.this.getActivity().startActivity(new Intent("com.xiaomi.action.MICLOUD_MAIN"));
            }
        }, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                ToastUtils.makeText(LoginAndSyncCheckFragment.this.getActivity(), (int) R.string.sync_diabled_toast);
                LoginAndSyncCheckFragment.this.setResult(0);
            }
        });
    }

    private void checkGallerySync() {
        this.mCheckingType = 3;
        showDialog(R.string.to_enable_sync_dialog_title, R.string.to_enable_gallery_sync_dialog_message, R.string.to_enable_sync_dialog_positive_button_text, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                IntentUtil.enterGallerySetting(LoginAndSyncCheckFragment.this.getActivity());
            }
        }, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                LoginAndSyncCheckFragment.this.setResult(0);
            }
        });
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mDialog != null && this.mDialog.isShowing()) {
            this.mDialog.setOnCancelListener(null);
            this.mDialog.dismiss();
        }
        Log.i("LoginAndSyncCheckFragment", "onDestroy");
    }

    private void setResult(int resultCode) {
        Fragment fragment = getParentFragment();
        if (fragment != null) {
            fragment.onActivityResult(29, resultCode, getArguments() != null ? new Intent().putExtras(getArguments()) : null);
        }
        getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
    }

    private void showDialog(int titleId, int msgId, int positiveButtonTextId, OnClickListener positiveButtonListener, OnClickListener negativeButtonListener) {
        if (this.mDialog != null && this.mDialog.isShowing()) {
            this.mDialog.setOnCancelListener(null);
            this.mDialog.dismiss();
        }
        this.mDialog = new Builder(getActivity()).setTitle(titleId).setMessage(msgId).setPositiveButton(positiveButtonTextId, positiveButtonListener).setNegativeButton(17039360, negativeButtonListener).create();
        this.mDialog.setOnCancelListener(this);
        this.mDialog.show();
    }

    public void onCancel(DialogInterface dialog) {
        switch (this.mCheckingType) {
            case 2:
                ToastUtils.makeText(getActivity(), (int) R.string.sync_diabled_toast);
                setResult(0);
                return;
            case 3:
                ToastUtils.makeText(getActivity(), (int) R.string.gallery_sync_disable_toast);
                setResult(0);
                break;
        }
        setResult(0);
    }
}
