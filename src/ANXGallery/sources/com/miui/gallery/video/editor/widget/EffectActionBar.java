package com.miui.gallery.video.editor.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.gallery.R;

public class EffectActionBar extends LinearLayout implements OnClickListener {
    private ActionListener mActionListener;
    private ImageView mCancelButton;
    private ImageView mOkButton;
    private TextView mTitle;

    public interface ActionListener {
        void onApplyAction();

        void onCancelAction();
    }

    public EffectActionBar(Context context) {
        super(context);
    }

    public EffectActionBar(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public EffectActionBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mOkButton = (ImageView) findViewById(R.id.video_editor_btn_ok);
        this.mCancelButton = (ImageView) findViewById(R.id.video_editor_btn_cancel);
        this.mTitle = (TextView) findViewById(R.id.video_editor_title);
        this.mOkButton.setOnClickListener(this);
        this.mCancelButton.setOnClickListener(this);
    }

    public void setActionListener(ActionListener listener) {
        this.mActionListener = listener;
    }

    public void setTitle(CharSequence charSequence) {
        if (this.mTitle != null) {
            this.mTitle.setText(charSequence);
        }
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.video_editor_btn_cancel /*2131886792*/:
                if (this.mActionListener != null) {
                    this.mActionListener.onCancelAction();
                    return;
                }
                return;
            case R.id.video_editor_btn_ok /*2131886794*/:
                if (this.mActionListener != null) {
                    this.mActionListener.onApplyAction();
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void removeListener() {
        this.mActionListener = null;
    }
}
