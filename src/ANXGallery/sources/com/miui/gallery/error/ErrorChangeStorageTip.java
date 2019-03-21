package com.miui.gallery.error;

import android.content.Context;
import com.miui.gallery.R;
import com.miui.gallery.error.core.ErrorActionCallback;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.error.core.ErrorTip;
import com.miui.gallery.util.IntentUtil;

public class ErrorChangeStorageTip extends ErrorTip {
    public ErrorChangeStorageTip(ErrorCode code) {
        super(code);
    }

    public CharSequence getTitle(Context context) {
        return context.getResources().getString(R.string.error_storage_full_tip);
    }

    public CharSequence getMessage(Context context) {
        return context.getResources().getString(R.string.error_change_storage_msg);
    }

    public CharSequence getActionStr(Context context) {
        return context.getResources().getString(R.string.error_change_storage_action);
    }

    public void action(Context context, ErrorActionCallback callback) {
        boolean handled = IntentUtil.gotoSettings(context);
        if (callback != null) {
            callback.onAction(getCode(), handled);
        }
    }
}
