package com.miui.gallery.editor.photo.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.RenderRecord;

public class CommonBottomMenuWithUndo extends LinearLayout implements MenuUpdateListener {
    private ImageView mDiscard;
    private ImageView mRedo;
    private RenderRecord mRenderRecordListener;
    private ImageView mSave;
    private boolean mShowTitle = true;
    private TextView mTitle;
    private ImageView mUndo;

    public CommonBottomMenuWithUndo(Context context) {
        super(context);
    }

    public CommonBottomMenuWithUndo(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mUndo = (ImageView) findViewById(R.id.undo);
        this.mRedo = (ImageView) findViewById(R.id.redo);
        this.mTitle = (TextView) findViewById(R.id.title);
        this.mDiscard = (ImageView) findViewById(R.id.discard);
        this.mSave = (ImageView) findViewById(R.id.save);
        init();
    }

    private void init() {
        this.mUndo.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (CommonBottomMenuWithUndo.this.mRenderRecordListener != null) {
                    CommonBottomMenuWithUndo.this.mRenderRecordListener.previousRecord();
                }
            }
        });
        this.mRedo.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (CommonBottomMenuWithUndo.this.mRenderRecordListener != null) {
                    CommonBottomMenuWithUndo.this.mRenderRecordListener.nextRecord();
                }
            }
        });
    }

    public void setTitle(int titleResId) {
        this.mTitle.setText(titleResId);
    }

    public TextView getTitle() {
        return this.mTitle;
    }

    public void setRenderRecordListener(RenderRecord listener) {
        this.mRenderRecordListener = listener;
    }

    public void updateBottomBar(boolean showTitle) {
        if (showTitle) {
            this.mTitle.setVisibility(0);
            this.mUndo.setVisibility(8);
            this.mRedo.setVisibility(8);
            return;
        }
        this.mTitle.setVisibility(8);
        this.mUndo.setVisibility(0);
        this.mRedo.setVisibility(0);
    }

    public void onMenuUpdated(boolean undoEnable, boolean redoEnable) {
        if (this.mShowTitle) {
            updateBottomBar(false);
            this.mShowTitle = false;
        }
        this.mUndo.setEnabled(undoEnable);
        this.mRedo.setEnabled(redoEnable);
    }

    public void onMenuEnabled(boolean enable) {
        this.mUndo.setClickable(enable);
        this.mRedo.setClickable(enable);
        this.mDiscard.setClickable(enable);
        this.mSave.setClickable(enable);
    }

    public boolean isShowTitle() {
        return this.mShowTitle;
    }
}
