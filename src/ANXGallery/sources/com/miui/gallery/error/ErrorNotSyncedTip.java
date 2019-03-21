package com.miui.gallery.error;

import android.content.Context;
import com.miui.gallery.R;
import com.miui.gallery.error.core.ErrorActionCallback;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.error.core.ErrorTip;
import com.miui.gallery.util.SyncUtil;

public class ErrorNotSyncedTip extends ErrorTip {
    public ErrorNotSyncedTip(ErrorCode code) {
        super(code);
    }

    public CharSequence getTitle(Context context) {
        return context.getResources().getString(R.string.error_not_synced_tip);
    }

    public CharSequence getMessage(Context context) {
        return context.getResources().getString(R.string.error_not_synced_msg);
    }

    public CharSequence getActionStr(Context context) {
        return context.getResources().getString(R.string.error_not_synced_action);
    }

    public void action(Context context, ErrorActionCallback callback) {
        SyncUtil.requestSync(context);
        if (callback != null) {
            callback.onAction(this.mCode, true);
        }
    }
}
