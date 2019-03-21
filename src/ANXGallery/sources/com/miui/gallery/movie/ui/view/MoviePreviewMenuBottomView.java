package com.miui.gallery.movie.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.util.Log;

public class MoviePreviewMenuBottomView extends LinearLayout implements OnClickListener {
    private TextView mEditView;
    private IMenuBottomViewClickListener mListener;
    private View mPlayArea;
    private ImageView mPlayView;
    private View mPreViewBottomView;
    private TextView mSaveView;

    public interface IMenuBottomViewClickListener {
        void onEditBtnClick();

        void onPlayAreaClick();

        void onSaveBtnClick();
    }

    public MoviePreviewMenuBottomView(Context context) {
        super(context);
        init(context);
    }

    public MoviePreviewMenuBottomView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mPreViewBottomView = findViewById(R.id.ll_movie_preview_bottom_area);
        this.mPlayArea = findViewById(R.id.fl_preview_play_area);
        this.mSaveView = (TextView) findViewById(R.id.tv_movie_save);
        this.mEditView = (TextView) findViewById(R.id.tv_movie_editor);
        this.mPlayView = (ImageView) findViewById(R.id.iv_movie_play);
        this.mPreViewBottomView.setOnClickListener(this);
        this.mSaveView.setOnClickListener(this);
        this.mEditView.setOnClickListener(this);
        this.mPlayArea.setOnClickListener(this);
    }

    private void init(Context context) {
        inflate(context, R.layout.movie_fragment_preview_bottom, this);
    }

    public void onClick(View v) {
        if (this.mListener == null) {
            Log.d("MoviePreviewMenuBottomView", "the listener is null . ");
            return;
        }
        switch (v.getId()) {
            case R.id.tv_movie_editor /*2131886548*/:
                this.mListener.onEditBtnClick();
                return;
            case R.id.fl_preview_play_area /*2131886549*/:
                this.mListener.onPlayAreaClick();
                return;
            case R.id.tv_movie_save /*2131886551*/:
                this.mListener.onSaveBtnClick();
                return;
            default:
                return;
        }
    }

    public void updatePlayBtnState(boolean isPlaying) {
        this.mPlayView.setSelected(isPlaying);
        this.mPlayView.setContentDescription(isPlaying ? getResources().getString(R.string.movie_content_describe_pause) : getResources().getString(R.string.movie_content_describe_play));
    }

    public void setIMenuBottomViewClickListener(IMenuBottomViewClickListener listener) {
        this.mListener = listener;
    }

    public void removeListener() {
        this.mListener = null;
    }
}
