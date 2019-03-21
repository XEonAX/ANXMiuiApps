package com.miui.gallery.card.ui.detail;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.miui.gallery.R;
import com.miui.gallery.card.model.BaseMedia;
import com.miui.gallery.widget.SlideShowView;
import com.miui.gallery.widget.SlideShowView.OnRefreshedListener;
import java.util.List;

public class SlideShowHeaderView extends RelativeLayout {
    private boolean mIsPlayEnable;
    private boolean mIsPlayIconInited;
    private final OnGlobalLayoutListener mOnGlobalLayoutListener;
    private final View mPlayIcon;
    private ObjectAnimator mPlayIconAlphaAnim;
    private final SlideShowController mSlideShowController;
    private final SlideShowView mSlideShowView;

    public SlideShowHeaderView(Context context) {
        this(context, null);
    }

    public SlideShowHeaderView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlideShowHeaderView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIsPlayIconInited = false;
        this.mOnGlobalLayoutListener = new OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                if (SlideShowHeaderView.this.mIsPlayIconInited) {
                    SlideShowHeaderView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    return;
                }
                int iconHeight = SlideShowHeaderView.this.mPlayIcon.getMeasuredHeight();
                if (iconHeight != 0) {
                    SlideShowHeaderView.this.mIsPlayIconInited = true;
                    int iconWidth = SlideShowHeaderView.this.mPlayIcon.getMeasuredWidth();
                    int slideWidth = SlideShowHeaderView.this.mSlideShowView.getMeasuredWidth();
                    int slidHeight = SlideShowHeaderView.this.mSlideShowView.getMeasuredHeight();
                    int marginValue = SlideShowHeaderView.this.getContext().getResources().getDimensionPixelSize(R.dimen.story_slide_header_play_icon_margin);
                    LayoutParams lp = new LayoutParams(-2, -2);
                    lp.setMargins((slideWidth - iconWidth) - marginValue, (slidHeight - iconHeight) - marginValue, 0, 0);
                    SlideShowHeaderView.this.mPlayIcon.setLayoutParams(lp);
                }
            }
        };
        LayoutInflater.from(context).inflate(R.layout.slide_show_header, this);
        this.mSlideShowView = (SlideShowView) findViewById(R.id.slide);
        this.mSlideShowView.setSlideDuration(3500);
        this.mSlideShowController = new SlideShowController(this.mSlideShowView, 3500);
        this.mPlayIcon = findViewById(R.id.play_icon);
        getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
    }

    public void resume() {
        this.mSlideShowController.resume();
    }

    public void pause() {
        this.mSlideShowController.pause();
    }

    public void updateMedias(List<? extends BaseMedia> mediaInfos) {
        this.mSlideShowController.updateMedias(mediaInfos);
    }

    public View getPlayIcon() {
        return this.mPlayIcon;
    }

    public boolean isPlayEnable() {
        return this.mIsPlayEnable;
    }

    public void setPlayEnable(boolean enable) {
        this.mIsPlayEnable = enable;
        if (enable && this.mPlayIcon.getAlpha() != 1.0f) {
            startPlayIconAlphaAnim(true);
        } else if (!enable && this.mPlayIcon.getAlpha() != 0.0f) {
            startPlayIconAlphaAnim(false);
        }
    }

    private void startPlayIconAlphaAnim(boolean isAppear) {
        if (this.mPlayIconAlphaAnim != null && this.mPlayIconAlphaAnim.isRunning()) {
            this.mPlayIconAlphaAnim.cancel();
        }
        if (isAppear) {
            this.mPlayIconAlphaAnim = ObjectAnimator.ofFloat(this.mPlayIcon, "alpha", new float[]{this.mPlayIcon.getAlpha(), 1.0f});
        } else {
            this.mPlayIconAlphaAnim = ObjectAnimator.ofFloat(this.mPlayIcon, "alpha", new float[]{this.mPlayIcon.getAlpha(), 0.0f});
        }
        this.mPlayIconAlphaAnim.setDuration(150);
        this.mPlayIconAlphaAnim.start();
    }

    public void setSlideRefreshedListener(OnRefreshedListener listener) {
        this.mSlideShowView.setRefreshListener(listener);
    }
}
