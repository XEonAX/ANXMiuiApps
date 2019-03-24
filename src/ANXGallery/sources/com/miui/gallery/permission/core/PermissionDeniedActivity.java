package com.miui.gallery.permission.core;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.MiuiIntent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.internal.analytics.EventUtils;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.util.ArrayList;
import java.util.List;

public class PermissionDeniedActivity extends Activity {
    private AlertDialog mInfoDialog;
    private ScreenBroadcastReceiver mScreenReceiver;
    private ArrayList<String> mUnGrantedPermissions;

    private class ScreenBroadcastReceiver extends BroadcastReceiver {
        private ScreenBroadcastReceiver() {
        }

        /* synthetic */ ScreenBroadcastReceiver(PermissionDeniedActivity x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) && !PermissionDeniedActivity.this.isFinishing()) {
                PermissionDeniedActivity.this.finish();
            }
        }
    }

    public static void startActivity(Activity activity, List<String> unGrantedPermissions, boolean startFromLock) {
        if (activity != null && unGrantedPermissions != null && unGrantedPermissions.size() > 0) {
            Intent intent = new Intent(activity, PermissionDeniedActivity.class);
            intent.putStringArrayListExtra("permissions", new ArrayList(unGrantedPermissions));
            intent.putExtra(MiuiIntent.EXTRA_START_ACTIVITY_WHEN_LOCKED, startFromLock);
            activity.startActivity(intent);
            activity.overridePendingTransition(0, 0);
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.permission_denied_activity);
    }

    protected void onStart() {
        super.onStart();
        if (isShowWhenLocked()) {
            getWindow().addFlags(nexEngine.ExportHEVCHighTierLevel52);
        }
        this.mUnGrantedPermissions = getIntent().getStringArrayListExtra("permissions");
        if (this.mUnGrantedPermissions == null || this.mUnGrantedPermissions.size() <= 0) {
            finish();
            return;
        }
        if (this.mInfoDialog == null) {
            this.mInfoDialog = showDialog();
        }
        if (this.mScreenReceiver == null) {
            this.mScreenReceiver = new ScreenBroadcastReceiver(this, null);
            registerReceiver(this.mScreenReceiver, new IntentFilter("android.intent.action.SCREEN_OFF"));
        }
    }

    protected void onStop() {
        super.onStop();
        finish();
    }

    public void finish() {
        if (this.mInfoDialog != null) {
            this.mInfoDialog.dismiss();
            this.mInfoDialog = null;
        }
        if (this.mScreenReceiver != null) {
            unregisterReceiver(this.mScreenReceiver);
            this.mScreenReceiver = null;
        }
        super.finish();
        overridePendingTransition(0, 0);
    }

    protected void onResume() {
        super.onResume();
        BaseSamplingStatHelper.recordPageStart(this, "permission_denied");
    }

    protected void onPause() {
        super.onPause();
        BaseSamplingStatHelper.recordPageEnd(this, "permission_denied");
    }

    private boolean isShowWhenLocked() {
        return getIntent().getBooleanExtra(MiuiIntent.EXTRA_START_ACTIVITY_WHEN_LOCKED, false);
    }

    private AlertDialog showDialog() {
        int i;
        PackageManager packageManager = getPackageManager();
        String[] permissionNames = new String[this.mUnGrantedPermissions.size()];
        for (int i2 = 0; i2 < this.mUnGrantedPermissions.size(); i2++) {
            String permissionName = (String) this.mUnGrantedPermissions.get(i2);
            try {
                CharSequence label = packageManager.getPermissionInfo((String) this.mUnGrantedPermissions.get(i2), 128).loadLabel(packageManager);
                if (label != null) {
                    permissionName = label.toString();
                }
                permissionNames[i2] = String.format(getString(R.string.grant_permission_item), new Object[]{permissionName});
            } catch (NameNotFoundException e) {
                Log.w("PermissionDeniedActivity", "Get permission info failed, %s", permissionName);
                permissionNames[i2] = String.format(getString(R.string.grant_permission_item), new Object[]{permissionName});
            } catch (Throwable th) {
                permissionNames[i2] = String.format(getString(R.string.grant_permission_item), new Object[]{permissionName});
            }
        }
        Builder title = new Builder(this).setCancelable(false).setMessage(String.format(getString(R.string.grant_permission_text), new Object[]{TextUtils.join("\n", permissionNames)})).setTitle(getString(R.string.grant_permission_title));
        if (isShowWhenLocked()) {
            i = R.string.grant_permission_unlock_and_set;
        } else {
            i = R.string.grant_permission_go_and_set;
        }
        return title.setPositiveButton(i, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                if (PermissionDeniedActivity.this.isShowWhenLocked()) {
                    PermissionDeniedActivity.this.getWindow().addFlags(nexEngine.ExportHEVCMainTierLevel61);
                }
                PermissionDeniedActivity.enterGalleryAppSetting(PermissionDeniedActivity.this);
                PermissionDeniedActivity.this.finish();
            }
        }).setNegativeButton(17039360, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                PermissionDeniedActivity.this.finish();
            }
        }).show();
    }

    private static void enterGalleryAppSetting(Context context) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts(EventUtils.COLUMN_PACKAGE_NAME, context.getPackageName(), null));
        context.startActivity(intent);
    }
}
