package com.miui.gallery.util;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.miui.gallery.R;

public class DialogUtil {
    public static AlertDialog createLoadingDialog(Context context, String message) {
        AlertDialog alertDialog = null;
        try {
            View view = LayoutInflater.from(context).inflate(R.layout.alert_dialog_loading, null);
            ((TextView) view.findViewById(R.id.message)).setText(message);
            return new Builder(context).setView(view).setCancelable(false).create();
        } catch (Exception e) {
            e.printStackTrace();
            return alertDialog;
        }
    }

    public static AlertDialog showInfoDialog(Context context, String message, String title) {
        try {
            new Builder(context).setMessage(message).setTitle(title).setPositiveButton(17039370, null).show();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static AlertDialog showInfoDialog(Context context, int messageId, int titleId, int positiveButtonText, int negativeButtonText, OnClickListener positiveButtonListener, OnClickListener negativeButtonListener) {
        try {
            return new Builder(context).setMessage(messageId).setTitle(titleId).setPositiveButton(positiveButtonText, positiveButtonListener).setNegativeButton(negativeButtonText, negativeButtonListener).show();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static AlertDialog showInfoDialog(Context context, String message, String title, int positiveButtonText, int negativeButtonText, OnClickListener positiveButtonListener, OnClickListener negativeButtonListener) {
        return showInfoDialog(context, true, message, title, positiveButtonText, negativeButtonText, positiveButtonListener, negativeButtonListener);
    }

    public static AlertDialog showInfoDialog(Context context, String message, String title, int positiveButtonText, int negativeButtonText, OnClickListener positiveButtonListener, OnClickListener negativeButtonListener, OnCancelListener onCancelListener) {
        return showInfoDialog(context, true, message, title, positiveButtonText, negativeButtonText, positiveButtonListener, negativeButtonListener, onCancelListener);
    }

    public static AlertDialog showInfoDialog(Context context, boolean cancelable, String message, String title, int positiveButtonText, int negativeButtonText, OnClickListener positiveButtonListener, OnClickListener negativeButtonListener) {
        return showInfoDialog(context, cancelable, message, title, positiveButtonText, negativeButtonText, positiveButtonListener, negativeButtonListener, null);
    }

    public static AlertDialog showInfoDialog(Context context, boolean cancelable, String message, String title, int positiveButtonText, int negativeButtonText, OnClickListener positiveButtonListener, OnClickListener negativeButtonListener, OnCancelListener onCancelListener) {
        try {
            return new Builder(context).setMessage(message).setTitle(title).setCancelable(cancelable).setPositiveButton(positiveButtonText, positiveButtonListener).setNegativeButton(negativeButtonText, negativeButtonListener).setOnCancelListener(onCancelListener).show();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static AlertDialog showConfirmAlertWithCancel(Context context, OnClickListener positiveListener, OnClickListener negativeListener, String title, CharSequence message, String positiveButtonText, int negativeTextId) {
        try {
            return new Builder(context).setCancelable(true).setIconAttribute(16843605).setTitle(title).setMessage(message).setPositiveButton(positiveButtonText, positiveListener).setNegativeButton(negativeTextId, negativeListener).show();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static AlertDialog showConfirmAlert(Context context, OnClickListener positiveListener, String title, CharSequence message, String positiveButtonText) {
        try {
            return new Builder(context).setCancelable(true).setIconAttribute(16843605).setTitle(title).setMessage(message).setPositiveButton(positiveButtonText, positiveListener).show();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
