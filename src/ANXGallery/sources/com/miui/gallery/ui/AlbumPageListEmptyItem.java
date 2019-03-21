package com.miui.gallery.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.miui.gallery.Config.ScreenConfig;
import com.miui.gallery.R;

public class AlbumPageListEmptyItem extends RelativeLayout {
    private boolean mIsFirstLayout = true;
    private ViewGroup mTextContainer;
    private float mTextVerticalPercent = getResources().getFraction(R.fraction.album_page_empty_text_vertical_percent, 1, 1);
    private TextView mTextView;

    public AlbumPageListEmptyItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mTextView = (TextView) findViewById(R.id.text);
        if (this.mTextView == null) {
            throw new RuntimeException("textView shouldn't be null!");
        }
        this.mTextView.setVisibility(4);
        if (getParent() != null && (getParent() instanceof ViewGroup)) {
            this.mTextContainer = (ViewGroup) getParent();
        }
        setMinimumHeight(Math.max(ScreenConfig.getScreenHeight(), ScreenConfig.getScreenWidth()));
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.mIsFirstLayout || changed) {
            if (this.mTextView.getVisibility() != 0) {
                this.mTextView.setVisibility(0);
            }
            if (this.mTextContainer != null) {
                int totalHeight = (this.mTextContainer.getMeasuredHeight() - top) - ((int) Math.max(0.0f, this.mTextContainer.getTranslationY()));
                int textViewTop = (int) (((float) totalHeight) * this.mTextVerticalPercent);
                if (this.mTextView.getVisibility() != 8) {
                    this.mTextView.layout(this.mTextView.getLeft(), textViewTop, this.mTextView.getRight(), this.mTextView.getHeight() + textViewTop);
                }
                setBottom(top + totalHeight);
            }
            this.mIsFirstLayout = false;
        }
    }

    public void setTextContainer(ViewGroup textContainer) {
        this.mTextContainer = textContainer;
    }
}
