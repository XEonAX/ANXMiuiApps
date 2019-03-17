package com.xiaomi.scanner.module.code.ui;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.xiaomi.scanner.R;

public class TextViewPreference extends Preference {
    ImageView mImageView;
    private boolean mIsShow;
    private OnSmsClickListener mListener;

    public interface OnSmsClickListener {
        void onSmsClick();
    }

    public TextViewPreference(Context context, boolean isShow) {
        this(context, null);
        this.mIsShow = isShow;
        if (this.mImageView != null && isShow) {
            this.mImageView.setVisibility(0);
        }
    }

    public TextViewPreference(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public TextViewPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setLayoutResource(R.layout.preference_text_view);
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        this.mImageView = (ImageView) view.findViewById(R.id.sms_imageView);
        this.mImageView.setVisibility(this.mIsShow ? 0 : 8);
        this.mImageView.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (TextViewPreference.this.mListener != null) {
                    TextViewPreference.this.mListener.onSmsClick();
                }
            }
        });
    }

    public void setOnSmsClickListener(OnSmsClickListener onClickListener) {
        this.mListener = onClickListener;
    }
}
