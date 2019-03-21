package com.miui.gallery.permission.core;

import android.app.Activity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class PermissionCheckHelper {
    private Activity mActivity;
    private PermissionCheckCallback mCallback;
    private boolean mIsShowWhenLocked;

    private static class CheckResult {
        String permission;
        int result;

        private CheckResult() {
        }

        /* synthetic */ CheckResult(AnonymousClass1 x0) {
            this();
        }
    }

    public PermissionCheckHelper(Activity activity, boolean isShowWhenLocked, PermissionCheckCallback callback) {
        if (activity == null || callback == null) {
            throw new RuntimeException("PermissionCheckHelper: activity or callback can't be null");
        }
        this.mActivity = activity;
        this.mIsShowWhenLocked = isShowWhenLocked;
        this.mCallback = callback;
    }

    public void checkPermission() {
        String[] permissions = this.mCallback.getRuntimePermissions();
        if (permissions == null || permissions.length <= 0) {
            this.mCallback.onPermissionsChecked(permissions, new int[0]);
        } else {
            showPermissionIntroduction(initResults(permissions), 0);
        }
    }

    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == 46 && permissions != null) {
            boolean succeed = true;
            ArrayList<String> unGrantedPermissions = new ArrayList();
            int i = 0;
            while (i < permissions.length) {
                if (grantResults[i] != 0 && this.mCallback.isPermissionRequired(permissions[i])) {
                    unGrantedPermissions.add(permissions[i]);
                    succeed = false;
                }
                i++;
            }
            if (succeed) {
                this.mCallback.onPermissionsChecked(permissions, grantResults);
                return;
            }
            PermissionDeniedActivity.startActivity(this.mActivity, unGrantedPermissions, this.mIsShowWhenLocked);
            this.mActivity.finish();
        }
    }

    private void showPermissionIntroduction(final CheckResult[] results, final int index) {
        this.mCallback.showPermissionIntroduction(this.mActivity, results[index].permission, new OnPermissionIntroduced() {
            public void onPermissionIntroduced(boolean allowed) {
                if (allowed) {
                    results[index].result = 0;
                } else if (PermissionCheckHelper.this.mCallback.isPermissionRequired(results[index].permission)) {
                    PermissionCheckHelper.this.mActivity.finish();
                    return;
                } else {
                    results[index].result = -1;
                }
                if (index < results.length - 1) {
                    PermissionCheckHelper.this.showPermissionIntroduction(results, index + 1);
                } else {
                    PermissionCheckHelper.this.requestPermissions(results);
                }
            }
        });
    }

    private void requestPermissions(CheckResult[] results) {
        String[] needRequestPermissions = filterResults(results, 0);
        String[] ungrantedPermissions = PermissionUtils.getUngrantedPermissions(this.mActivity, needRequestPermissions);
        if (ungrantedPermissions == null || ungrantedPermissions.length <= 0) {
            int[] grantResults = new int[needRequestPermissions.length];
            Arrays.fill(grantResults, 0);
            this.mCallback.onPermissionsChecked(needRequestPermissions, grantResults);
        } else if (this.mIsShowWhenLocked) {
            PermissionDeniedActivity.startActivity(this.mActivity, Arrays.asList(ungrantedPermissions), true);
            this.mActivity.finish();
        } else {
            PermissionUtils.requestPermissions(this.mActivity, ungrantedPermissions, 46);
        }
    }

    private String[] filterResults(CheckResult[] results, int filterGrantFlag) {
        List<String> permissions = new LinkedList();
        for (CheckResult checkResult : results) {
            if (checkResult.result == filterGrantFlag) {
                permissions.add(checkResult.permission);
            }
        }
        return (String[]) permissions.toArray(new String[permissions.size()]);
    }

    private CheckResult[] initResults(String[] permissions) {
        CheckResult[] results = new CheckResult[permissions.length];
        for (int i = 0; i < permissions.length; i++) {
            results[i] = new CheckResult();
            results[i].permission = permissions[i];
            results[i].result = -1;
        }
        return results;
    }
}
