package com.xiaomi.scanner.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;
import com.xiaomi.scanner.R;
import miui.app.AlertDialog;

public class CustomProgressDialog extends AlertDialog {
    private int mLogoId;
    private int mTextId;

    public static CustomProgressDialog showProgress(Activity activity, int logo, int text) {
        if (activity.isDestroyed()) {
            return null;
        }
        CustomProgressDialog dialog = new CustomProgressDialog(activity);
        dialog.mLogoId = logo;
        dialog.mTextId = text;
        dialog.show();
        return dialog;
    }

    protected CustomProgressDialog(Context context) {
        super(context);
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(LayoutInflater.from(getContext()).inflate(R.layout.dialog_custom_progress, null));
        ((ImageView) findViewById(R.id.progress_logo)).setImageResource(this.mLogoId);
        ((TextView) findViewById(R.id.loading_text)).setText(this.mTextId);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }
}
