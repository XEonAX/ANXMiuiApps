package com.miui.gallery.ui;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.preference.GalleryPreferences.Secret;
import com.miui.gallery.ui.ConfirmDialog.ConfirmDialogInterface;
import com.miui.privacy.LockSettingsHelper;

public class AuthenticatePrivacyPasswordFragment extends Fragment {
    private Activity mActivity;
    private LockSettingsHelper mChooseLockSettingsHelper;

    public static void startAuthenticatePrivacyPassword(Fragment fragment) {
        FragmentTransaction transaction = fragment.getChildFragmentManager().beginTransaction();
        transaction.add(new AuthenticatePrivacyPasswordFragment(), "AuthenticatePrivacyPassword");
        transaction.commitAllowingStateLoss();
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return new View(getActivity());
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mActivity = getActivity();
        if (this.mChooseLockSettingsHelper == null) {
            this.mChooseLockSettingsHelper = new LockSettingsHelper(getActivity());
        }
        if (this.mChooseLockSettingsHelper.isPrivateGalleryEnabled()) {
            LockSettingsHelper.confirmPrivateGalleryPassword(this, 35);
        } else {
            authenticatePrivacyPassword();
        }
    }

    public void onStart() {
        super.onStart();
    }

    private void showPasswordUpdateDialog() {
        if (this.mActivity != null) {
            Resources res = this.mActivity.getResources();
            Secret.setIsFirstUsePrivacyPassword(false);
            ConfirmDialog.showConfirmDialog(getFragmentManager(), res.getString(this.mChooseLockSettingsHelper.isPrivacyPasswordEnabled() ? R.string.secret_album_password_update_dialog_title : R.string.secret_album_password_update_first_user_dialog_title), res.getString(this.mChooseLockSettingsHelper.isPrivacyPasswordEnabled() ? R.string.secret_album_password_update_dialog_msg : R.string.secret_album_password_update_first_user_dialog_msg), res.getString(R.string.cancel), res.getString(R.string.ok), new ConfirmDialogInterface() {
                public void onConfirm(DialogFragment dialog) {
                    AuthenticatePrivacyPasswordFragment.this.authenticatePrivacyPassword();
                }

                public void onCancel(DialogFragment dialog) {
                    AuthenticatePrivacyPasswordFragment.this.setResult(0);
                }
            });
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 27:
                case 28:
                    setResult(-1);
                    return;
                case 35:
                    this.mChooseLockSettingsHelper.setPrivateGalleryEnabled(false);
                    showPasswordUpdateDialog();
                    return;
                default:
                    return;
            }
        }
        setResult(0);
    }

    private void authenticatePrivacyPassword() {
        Resources res;
        if (this.mChooseLockSettingsHelper.isPrivacyPasswordEnabled()) {
            if (!Secret.isFirstUsePrivacyPassword()) {
                LockSettingsHelper.startAuthenticatePasswordActivity((Fragment) this, 27);
            } else if (this.mActivity != null) {
                res = this.mActivity.getResources();
                Secret.setIsFirstUsePrivacyPassword(false);
                ConfirmDialog.showConfirmDialog(getFragmentManager(), res.getString(R.string.secret_album_password_first_use_title), res.getString(R.string.secret_album_password_first_use_msg), res.getString(R.string.cancel), res.getString(R.string.ok), new ConfirmDialogInterface() {
                    public void onConfirm(DialogFragment dialog) {
                        LockSettingsHelper.startAuthenticatePasswordActivity(AuthenticatePrivacyPasswordFragment.this, 27);
                    }

                    public void onCancel(DialogFragment dialog) {
                        AuthenticatePrivacyPasswordFragment.this.setResult(0);
                    }
                });
            }
        } else if (!Secret.isFirstUsePrivacyPassword()) {
            LockSettingsHelper.startSetPrivacyPasswordActivity(this, 28);
        } else if (this.mActivity != null) {
            res = this.mActivity.getResources();
            Secret.setIsFirstUsePrivacyPassword(false);
            ConfirmDialog.showConfirmDialog(getFragmentManager(), res.getString(R.string.secret_album_set_pc_password_dialog_title), res.getString(R.string.secret_album_set_pc_password_dialog_msg), res.getString(R.string.cancel), res.getString(R.string.ok), new ConfirmDialogInterface() {
                public void onConfirm(DialogFragment dialog) {
                    LockSettingsHelper.startSetPrivacyPasswordActivity(AuthenticatePrivacyPasswordFragment.this, 28);
                }

                public void onCancel(DialogFragment dialog) {
                    AuthenticatePrivacyPasswordFragment.this.setResult(0);
                }
            });
        }
    }

    public void onDestroy() {
        super.onDestroy();
    }

    private void setResult(int resultCode) {
        Fragment fragment = getParentFragment();
        if (fragment != null) {
            fragment.onActivityResult(36, resultCode, getArguments() != null ? new Intent().putExtras(getArguments()) : null);
        }
        getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
    }
}
