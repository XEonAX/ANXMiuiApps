package com.miui.gallery.error;

import android.content.Context;
import com.miui.gallery.R;
import com.miui.gallery.error.core.ErrorActionCallback;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.error.core.ErrorTip;
import com.miui.gallery.util.IntentUtil;

public class ErrorStorageFullTip extends ErrorTip {
    public ErrorStorageFullTip(ErrorCode code) {
        super(code);
    }

    public CharSequence getTitle(Context context) {
        return context.getResources().getString(R.string.error_storage_full_tip);
    }

    public CharSequence getMessage(Context context) {
        return context.getResources().getString(R.string.error_storage_full_msg);
    }

    public CharSequence getActionStr(Context context) {
        return context.getResources().getString(R.string.error_storage_full_action);
    }

    public void action(Context context, ErrorActionCallback callback) {
        IntentUtil.gotoDeepClean(context);
        if (callback != null) {
            callback.onAction(this.mCode, true);
        }
    }
}
