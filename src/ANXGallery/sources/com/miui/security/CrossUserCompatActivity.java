package com.miui.security;

import android.app.Fragment;
import android.content.ContentResolver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.miui.core.SdkHelper;
import com.miui.internal.CrossUserHelper;
import miui.app.Activity;

public class CrossUserCompatActivity extends Activity {
    private volatile ContentResolver mCrossUserContentResolver;
    private volatile ContextWrapper mCrossUserContextWrapper;
    private final Object mLockObject = new Object();

    class CrossUserContextWrapper extends ContextWrapper {
        Context mBase;
        int mCrossUserId;

        public CrossUserContextWrapper(Context base, int userId) {
            super(base);
            this.mBase = base;
            this.mCrossUserId = userId;
        }

        public ContentResolver getContentResolver() {
            return CrossUserHelper.getContentResolver(this.mBase, this.mCrossUserId);
        }
    }

    public ContentResolver getContentResolver() {
        if (isCrossUserPick()) {
            if (this.mCrossUserContentResolver == null) {
                synchronized (this.mLockObject) {
                    if (this.mCrossUserContentResolver == null) {
                        this.mCrossUserContentResolver = CrossUserHelper.getContentResolver(this, validateCrossUser());
                    }
                }
            }
            Log.d("CrossUserPickerActivity", "getContentResolver: CrossUserContentResolver");
            return this.mCrossUserContentResolver;
        }
        Log.d("CrossUserPickerActivity", "getContentResolver: NormalContentResolver");
        return super.getContentResolver();
    }

    public Context getApplicationContext() {
        if (isCrossUserPick()) {
            if (this.mCrossUserContextWrapper == null) {
                synchronized (this.mLockObject) {
                    if (this.mCrossUserContextWrapper == null) {
                        this.mCrossUserContextWrapper = new CrossUserContextWrapper(super.getApplicationContext(), validateCrossUser());
                    }
                }
            }
            Log.d("CrossUserPickerActivity", "getApplicationContext: WrapperedApplication");
            return this.mCrossUserContextWrapper;
        }
        Log.d("CrossUserPickerActivity", "getApplicationContext: NormalApplication");
        return super.getApplicationContext();
    }

    public void startActivity(Intent intent) {
        if (isCrossUserPick()) {
            intent.putExtra("android.intent.extra.picked_user_id", validateCrossUser());
        }
        super.startActivity(intent);
    }

    public void startActivity(Intent intent, Bundle options) {
        if (isCrossUserPick()) {
            intent.putExtra("android.intent.extra.picked_user_id", validateCrossUser());
        }
        super.startActivity(intent, options);
    }

    public void startActivityForResult(Intent intent, int requestCode) {
        if (isCrossUserPick()) {
            intent.putExtra("android.intent.extra.picked_user_id", validateCrossUser());
        }
        super.startActivityForResult(intent, requestCode);
    }

    public void startActivityForResult(Intent intent, int requestCode, Bundle options) {
        if (isCrossUserPick()) {
            intent.putExtra("android.intent.extra.picked_user_id", validateCrossUser());
        }
        super.startActivityForResult(intent, requestCode, options);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int requestCode, Bundle options) {
        if (isCrossUserPick()) {
            intent.putExtra("android.intent.extra.picked_user_id", validateCrossUser());
        }
        super.startActivityFromFragment(fragment, intent, requestCode, options);
    }

    private int validateCrossUser() {
        if (getIntent() == null) {
            return -1;
        }
        int userId = getIntent().getIntExtra("android.intent.extra.picked_user_id", -1);
        if (validateCallingPackage()) {
            return userId;
        }
        return -1;
    }

    private boolean validateCallingPackage() {
        if (getPackageName().equals(getCallingPackage()) || CrossUserHelper.checkUidPermission(this, getCallingPackage())) {
            return true;
        }
        return false;
    }

    public boolean isCrossUserPick() {
        return SdkHelper.IS_MIUI && CrossUserHelper.support() && validateCrossUser() != -1;
    }
}
