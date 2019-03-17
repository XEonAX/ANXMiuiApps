package com.xiaomi.scanner.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.dialog.CtaDialog;
import com.xiaomi.scanner.dialog.CtaDialog.CTAClick;

public class DialogUtil {
    private static final Tag TAG = new Tag("DialogUtil");

    public static AlertDialog createConfirmAlert(Context context, OnClickListener positiveListener, int titleId, int messageId, int positiveButtonTextId) {
        return createConfirmAlert(context, positiveListener, context.getString(titleId), context.getString(messageId), context.getString(positiveButtonTextId));
    }

    public static AlertDialog createConfirmAlert(Context context, OnClickListener positiveListener, String title, CharSequence message, String positiveButtonText) {
        try {
            return new Builder(context).setCancelable(false).setTitle(title).setMessage(message).setPositiveButton(positiveButtonText, positiveListener).create();
        } catch (Exception e) {
            Log.e(TAG, "create ConfirmAlert error", e);
            return null;
        }
    }

    public static AlertDialog showConfirmAlertWithCancel(Context context, OnClickListener positiveListener, OnClickListener negativeListener, int titleId, int messageId, int positiveButtonTextId, int negativeTextId) {
        return showConfirmAlertWithCancel(context, positiveListener, negativeListener, context.getString(titleId), context.getString(messageId), context.getString(positiveButtonTextId), context.getString(negativeTextId));
    }

    public static AlertDialog showConfirmAlertWithCancel(Context context, OnClickListener positiveListener, OnClickListener negativeListener, String title, CharSequence message, String positiveButtonText, String negativeButtonText) {
        try {
            return new Builder(context).setCancelable(false).setTitle(title).setMessage(message).setPositiveButton(positiveButtonText, positiveListener).setNegativeButton(negativeButtonText, negativeListener).create();
        } catch (Exception e) {
            Log.e(TAG, "create ConfirmAlertWithCancel error", e);
            return null;
        }
    }

    public static void dismissDialog(Dialog dialog) {
        if (dialog != null && dialog.isShowing()) {
            dialog.dismiss();
        }
    }

    public static CtaDialog showCTADialog(Context context, CTAClick ctaClick) {
        return CtaDialog.showCta(context, ctaClick);
    }

    public static AlertDialog CameraErrorDialog(final Activity activity, int dialogMsgId, final boolean finishActivity) {
        if (activity == null || activity.isFinishing()) {
            Log.w(TAG, "activity is null or activity is finishing");
            return null;
        }
        Log.e(TAG, "Show fatal error dialog");
        return createConfirmAlert((Context) activity, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                if (finishActivity) {
                    activity.finish();
                }
            }
        }, (int) R.string.camera_error_title, dialogMsgId, (int) R.string.impunity_declaration_negative_text);
    }
}
