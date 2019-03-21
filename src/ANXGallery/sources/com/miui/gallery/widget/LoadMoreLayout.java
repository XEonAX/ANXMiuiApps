package com.miui.gallery.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.miui.gallery.R;

public class LoadMoreLayout extends LinearLayout {
    private ProgressBar mProgressBar;
    private TextView mTitle;

    public LoadMoreLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mProgressBar = (ProgressBar) findViewById(R.id.progress);
        this.mTitle = (TextView) findViewById(R.id.title);
        this.mProgressBar.setVisibility(8);
    }

    public void startLoad() {
        this.mProgressBar.setVisibility(0);
        this.mTitle.setText(R.string.loading_dots);
    }

    public void setLoadComplete() {
        this.mProgressBar.setVisibility(8);
        this.mTitle.setText(R.string.load_complete);
    }
}
