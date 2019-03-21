package com.miui.gallery.movie.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.gallery.R;

public class MoviePreviewMenuTitle extends LinearLayout implements OnClickListener {
    private IMenuTitleClickListener mListener;
    private TextView mLongVideoTitleView;
    private TextView mShortVideoTitleView;

    public interface IMenuTitleClickListener {
        void onLongVideoTitleViewClick();

        void onShortVideoTitleViewClick();
    }

    public MoviePreviewMenuTitle(Context context) {
        super(context);
        init(context);
    }

    public MoviePreviewMenuTitle(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mShortVideoTitleView = (TextView) findViewById(R.id.tv_short_video_title);
        this.mLongVideoTitleView = (TextView) findViewById(R.id.tv_long_video_title);
        this.mShortVideoTitleView.setOnClickListener(this);
        this.mLongVideoTitleView.setOnClickListener(this);
    }

    private void init(Context context) {
        inflate(context, R.layout.movie_fragment_preview_title, this);
    }

    public void onClick(View v) {
        if (this.mListener != null) {
            switch (v.getId()) {
                case R.id.tv_short_video_title /*2131886555*/:
                    if (!this.mShortVideoTitleView.isSelected()) {
                        this.mListener.onShortVideoTitleViewClick();
                        updateTitleViewState(true);
                        return;
                    }
                    return;
                case R.id.tv_long_video_title /*2131886556*/:
                    if (!this.mLongVideoTitleView.isSelected()) {
                        this.mListener.onLongVideoTitleViewClick();
                        updateTitleViewState(false);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public void setListener(IMenuTitleClickListener listener) {
        this.mListener = listener;
    }

    public void removeListener() {
        this.mListener = null;
    }

    public void updateTitleViewState(boolean isShortViewSelected) {
        this.mLongVideoTitleView.setSelected(!isShortViewSelected);
        this.mShortVideoTitleView.setSelected(isShortViewSelected);
    }
}
