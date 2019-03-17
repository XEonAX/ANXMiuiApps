package com.xiaomi.scanner.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.xiaomi.scanner.R;
import miui.app.AlertDialog;

public class ErrorDialog extends AlertDialog implements OnClickListener {
    private String mContentText = null;
    private String mTryText = null;
    private OnClickListener tryOnClick;

    public static ErrorDialog show(Context context, String contentText, String tryText, OnClickListener onClickListener) {
        ErrorDialog dialog = new ErrorDialog(context, contentText, tryText);
        dialog.setTryOnClick(onClickListener);
        dialog.show();
        return dialog;
    }

    public ErrorDialog(Context context, String contentText, String tryText) {
        super(context, R.style.WaitingDialog);
        this.mContentText = contentText;
        this.mTryText = tryText;
    }

    public void setTryOnClick(OnClickListener tryOnClick) {
        this.tryOnClick = tryOnClick;
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        View root = LayoutInflater.from(getContext()).inflate(R.layout.dialog_error, null);
        TextView mErrorText = (TextView) root.findViewById(R.id.tv_error_text);
        TextView mErrorTry = (TextView) root.findViewById(R.id.error_try_again);
        mErrorTry.setOnClickListener(this);
        if (!TextUtils.isEmpty(this.mContentText)) {
            mErrorText.setText(this.mContentText);
        }
        if (!TextUtils.isEmpty(this.mTryText)) {
            mErrorTry.setText(this.mTryText);
        }
        setContentView(root);
        setCanceledOnTouchOutside(true);
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.error_try_again /*2131558603*/:
                if (this.tryOnClick != null) {
                    this.tryOnClick.onClick(v);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
