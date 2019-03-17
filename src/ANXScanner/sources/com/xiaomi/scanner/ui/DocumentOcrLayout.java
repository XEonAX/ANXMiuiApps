package com.xiaomi.scanner.ui;

import android.content.ClipboardManager;
import android.content.Context;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.ui.LanguageChooser.LanguageSwitchListener;
import com.xiaomi.scanner.util.Util;

public class DocumentOcrLayout extends RelativeLayout implements OnClickListener {
    private View mBackView;
    private View mCopyView;
    private LanguageChooser mLanguageChooser;
    private MessageDispatcher mMessageDispatcher;
    private TextView mResultView;
    private View mSaveView;

    public DocumentOcrLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void onFinishInflate() {
        int i;
        this.mBackView = findViewById(R.id.document_ocr_back);
        this.mCopyView = findViewById(R.id.document_ocr_copy);
        this.mSaveView = findViewById(R.id.document_ocr_save);
        this.mResultView = (TextView) findViewById(R.id.document_ocr_result);
        this.mLanguageChooser = (LanguageChooser) findViewById(R.id.document_language_chooser);
        this.mBackView.setOnClickListener(this);
        this.mCopyView.setOnClickListener(this);
        this.mSaveView.setOnClickListener(this);
        this.mResultView.setMovementMethod(ScrollingMovementMethod.getInstance());
        if (!Util.hasNativageBar || Utils.isFullScreenDevice()) {
            i = 0;
        } else {
            i = Utils.getNavigationBarHeight();
        }
        setPadding(0, 0, 0, i);
    }

    public void setResult(String result) {
        if (this.mResultView != null) {
            this.mResultView.setText(result);
        }
    }

    public void setMessageDispatcher(MessageDispatcher messageDispatcher) {
        this.mMessageDispatcher = messageDispatcher;
    }

    public void setLanguageChooserListener(LanguageSwitchListener listener) {
        if (this.mLanguageChooser != null) {
            this.mLanguageChooser.addLanguageSwitchListener(listener);
        }
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.document_ocr_back /*2131558623*/:
                onBack();
                return;
            case R.id.document_ocr_copy /*2131558624*/:
                copyToClipboard(this.mResultView.getText());
                return;
            case R.id.document_ocr_save /*2131558625*/:
                save(this.mResultView.getText());
                return;
            default:
                return;
        }
    }

    private void onBack() {
        if (this.mMessageDispatcher != null) {
            this.mMessageDispatcher.dispatchMessage(0, R.id.document_ocr_back, 2, null, null);
        }
    }

    private void copyToClipboard(CharSequence charSequence) {
        Context context = getContext();
        if (context == null) {
            return;
        }
        if (TextUtils.isEmpty(charSequence)) {
            Toast.makeText(context, R.string.document_recognize_null_tip, 0).show();
            return;
        }
        ((ClipboardManager) context.getSystemService("clipboard")).setText(charSequence);
        Toast.makeText(context, R.string.copy_text_success, 0).show();
    }

    private void save(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            Toast.makeText(getContext(), R.string.document_recognize_null_tip, 0).show();
        } else if (this.mMessageDispatcher != null) {
            this.mMessageDispatcher.dispatchMessage(0, R.id.document_ocr_save, 2, charSequence, null);
        }
    }
}
