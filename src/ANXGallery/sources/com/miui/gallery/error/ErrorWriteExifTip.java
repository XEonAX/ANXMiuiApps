package com.miui.gallery.error;

import android.content.Context;
import com.miui.gallery.R;
import com.miui.gallery.error.core.ErrorActionCallback;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.error.core.ErrorTip;

public class ErrorWriteExifTip extends ErrorTip {
    public ErrorWriteExifTip(ErrorCode mCode) {
        super(mCode);
    }

    public CharSequence getTitle(Context context) {
        return context.getResources().getString(R.string.error_build_thumbnail_tip);
    }

    public CharSequence getMessage(Context context) {
        return context.getResources().getString(R.string.error_build_thumbnail_msg);
    }

    public CharSequence getActionStr(Context context) {
        return context.getResources().getString(R.string.error_build_thumbnail_action);
    }

    public void action(Context context, ErrorActionCallback callback) {
        if (callback != null) {
            callback.onAction(this.mCode, false);
        }
    }
}
