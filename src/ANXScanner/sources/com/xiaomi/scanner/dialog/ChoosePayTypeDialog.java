package com.xiaomi.scanner.dialog;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.util.Constants;
import com.xiaomi.scanner.util.SPUtils;

public class ChoosePayTypeDialog extends AlertDialog implements OnClickListener {
    private ImageView alipaySelect;
    private CheckedTextView alipayText;
    private CheckBox mCheckSavePay;
    private OnPayTypeClickListener payTypeClickListener;
    private String scanResult;
    private ImageView wechatSelect;
    private CheckedTextView wechatText;

    public interface OnPayTypeClickListener {
        void onCancel();

        void onToPayClick(boolean z, String str);
    }

    public static ChoosePayTypeDialog showChoosePayDialog(Activity context, String text, OnPayTypeClickListener listener, OnDismissListener dismissListener) {
        if (context.isDestroyed()) {
            return null;
        }
        ChoosePayTypeDialog dialog = new ChoosePayTypeDialog(context, text, listener);
        dialog.setOnDismissListener(dismissListener);
        dialog.show();
        return dialog;
    }

    protected ChoosePayTypeDialog(Context context, String result, OnPayTypeClickListener listener) {
        super(context);
        this.scanResult = result;
        this.payTypeClickListener = listener;
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_pay_choose);
        this.alipayText = (CheckedTextView) findViewById(R.id.alipay);
        this.alipayText.setOnClickListener(this);
        this.wechatText = (CheckedTextView) findViewById(R.id.wechat);
        this.wechatText.setOnClickListener(this);
        this.alipaySelect = (ImageView) findViewById(R.id.alipay_checked_status);
        this.wechatSelect = (ImageView) findViewById(R.id.wechat_selected_status);
        this.mCheckSavePay = (CheckBox) findViewById(R.id.save_pay_type);
        findViewById(R.id.cancel).setOnClickListener(this);
        findViewById(R.id.to_pay).setOnClickListener(this);
        setCancelable(true);
        setCanceledOnTouchOutside(false);
        updateSelectStatus(SPUtils.getLocalBoolean(Constants.KEY_IS_WECHAT_PAY_TYPE, true));
    }

    public void onClick(View v) {
        if (this.payTypeClickListener != null) {
            if (v.getId() == R.id.to_pay) {
                updateSettingSaveType();
                SPUtils.saveToLocal(Constants.KEY_IS_WECHAT_PAY_TYPE, Boolean.valueOf(this.wechatText.isChecked()));
                this.payTypeClickListener.onToPayClick(this.wechatText.isChecked(), this.scanResult);
                setOnDismissListener(null);
                dismiss();
            } else if (v.getId() == R.id.cancel) {
                this.payTypeClickListener.onCancel();
                dismiss();
            } else {
                updateSelectStatus(v.getId() == R.id.wechat);
            }
        }
    }

    private void updateSettingSaveType() {
        if (this.mCheckSavePay.isChecked()) {
            SPUtils.saveToLocal(Constants.KEY_PREFERENCE_PAY_SELECT, Integer.valueOf(this.wechatText.isChecked() ? 1 : 0));
        }
    }

    private void updateSelectStatus(boolean selectWechat) {
        boolean z;
        int i;
        int i2 = 0;
        CheckedTextView checkedTextView = this.alipayText;
        if (selectWechat) {
            z = false;
        } else {
            z = true;
        }
        checkedTextView.setChecked(z);
        this.wechatText.setChecked(selectWechat);
        ImageView imageView = this.alipaySelect;
        if (selectWechat) {
            i = 8;
        } else {
            i = 0;
        }
        imageView.setVisibility(i);
        ImageView imageView2 = this.wechatSelect;
        if (!selectWechat) {
            i2 = 8;
        }
        imageView2.setVisibility(i2);
    }
}
