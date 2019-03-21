package com.miui.gallery.error;

import android.content.Context;
import com.miui.gallery.R;
import com.miui.gallery.error.core.ErrorActionCallback;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.error.core.ErrorTip;
import com.miui.gallery.util.IntentUtil;

public class ErrorSyncOffTip extends ErrorTip {
    public ErrorSyncOffTip(ErrorCode code) {
        super(code);
    }

    public CharSequence getTitle(Context context) {
        return context.getResources().getString(R.string.error_sync_off_tip);
    }

    public CharSequence getMessage(Context context) {
        return context.getResources().getString(R.string.error_sync_off_msg);
    }

    public CharSequence getActionStr(Context context) {
        return context.getResources().getString(R.string.error_sync_off_action);
    }

    public void action(Context context, ErrorActionCallback callback) {
        IntentUtil.gotoTurnOnSyncSwitch(context);
        if (callback != null) {
            callback.onAction(this.mCode, true);
        }
    }
}
