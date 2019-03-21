package com.miui.gallery.video.editor.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.util.ToolsUtil;

public abstract class DisplayWrapper extends ViewGroup {
    public static int LEFT = 0;
    public static int RIGHT = 1;
    private int LAYOUT = -1;
    private float downX = 0.0f;
    private float dx = 0.0f;
    private float mAspectRatio = -1.0f;
    private ImageView mAudioVoice;
    private TextView mAutoTrimButton;
    private View mDisplayView;
    private View mExtraContent;
    private IProgress mIProgress;
    private ImageView mIvPlay;
    private float mPercent;
    private VideoPlayProgress mPlayProgress;
    private int mScaledTouchSlop;
    private ImageView mThumbnailImageView;
    private float mViewWidth = 0.0f;
    private float moveX = 0.0f;
    private float upX = 0.0f;

    public interface IProgress {
        void onVideoProgressChanged();

        void onVideoProgressChanging(int i, float f);
    }

    protected abstract View createDisplayView();

    public DisplayWrapper(Context context) {
        super(context);
    }

    public DisplayWrapper(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public DisplayWrapper(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mDisplayView = createDisplayView();
        this.mViewWidth = (float) getWidth();
        this.mExtraContent = findViewById(R.id.extra_content);
        addView(this.mDisplayView, 0);
        this.mScaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.mThumbnailImageView = (ImageView) findViewById(R.id.thumbnail);
        this.mIvPlay = (ImageView) findViewById(R.id.iv_play);
        this.mAudioVoice = (ImageView) findViewById(R.id.audio_voice);
        this.mPlayProgress = (VideoPlayProgress) findViewById(R.id.play_progress);
        this.mAutoTrimButton = (TextView) findViewById(R.id.video_editor_btn_auto_trim);
        this.mDisplayView.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case 0:
                        DisplayWrapper.this.downX = event.getX();
                        break;
                    case 1:
                        DisplayWrapper.this.upX = event.getX();
                        DisplayWrapper.this.dx = DisplayWrapper.this.upX - DisplayWrapper.this.downX;
                        if (DisplayWrapper.this.mIProgress != null) {
                            DisplayWrapper.this.mIProgress.onVideoProgressChanged();
                            break;
                        }
                        break;
                    case 2:
                        DisplayWrapper.this.moveX = event.getX();
                        DisplayWrapper.this.dx = DisplayWrapper.this.moveX - DisplayWrapper.this.downX;
                        if (Math.abs(DisplayWrapper.this.dx) > ((float) DisplayWrapper.this.mScaledTouchSlop) && DisplayWrapper.this.mViewWidth > 0.0f) {
                            DisplayWrapper.this.mPercent = Math.abs(DisplayWrapper.this.dx) / DisplayWrapper.this.mViewWidth;
                            DisplayWrapper.this.LAYOUT = DisplayWrapper.this.dx < 0.0f ? DisplayWrapper.LEFT : DisplayWrapper.RIGHT;
                            if (DisplayWrapper.this.mIProgress != null) {
                                DisplayWrapper.this.mIProgress.onVideoProgressChanging(DisplayWrapper.this.LAYOUT, DisplayWrapper.this.mPercent);
                                break;
                            }
                        }
                        break;
                }
                return false;
            }
        });
    }

    public void updatePlayProgress(int startX, int startY, int stopX, int stopY) {
        this.mPlayProgress.updateWidth(startX, startY, stopX, stopY);
    }

    public void showThumbnail(Bitmap bitmap) {
        this.mThumbnailImageView.setImageBitmap(bitmap);
    }

    public void showPlayProgress(boolean show) {
        if (show) {
            ToolsUtil.showView(this.mPlayProgress);
        } else {
            ToolsUtil.hideView(this.mPlayProgress);
        }
    }

    public void showPlayBtn(boolean show) {
        if (show) {
            ToolsUtil.showView(this.mIvPlay);
        } else {
            ToolsUtil.hideView(this.mIvPlay);
        }
    }

    public void showAudioVoice(boolean show) {
        if (show) {
            ToolsUtil.showView(this.mAudioVoice);
        } else {
            ToolsUtil.hideView(this.mAudioVoice);
        }
    }

    public void showAutoTrimBtn(boolean show) {
        if (show) {
            ToolsUtil.showView(this.mAutoTrimButton);
        } else {
            ToolsUtil.hideView(this.mAutoTrimButton);
        }
    }

    public void hideThumbnail() {
        if (this.mThumbnailImageView.getVisibility() == 0) {
            postDelayed(new Runnable() {
                public void run() {
                    DisplayWrapper.this.mThumbnailImageView.setImageBitmap(null);
                    DisplayWrapper.this.mThumbnailImageView.setVisibility(8);
                }
            }, 50);
        }
    }

    public View getDisplayView() {
        return this.mDisplayView;
    }

    public void setAspectRatio(float ratio) {
        this.mAspectRatio = ratio;
        requestLayout();
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int width = r - l;
        int height = b - t;
        if (this.mDisplayView != null) {
            int dl = (width - this.mDisplayView.getMeasuredWidth()) / 2;
            int dr = dl + this.mDisplayView.getMeasuredWidth();
            int dt = (int) (((double) (height - this.mDisplayView.getMeasuredHeight())) / 1.6d);
            int db = dt + this.mDisplayView.getMeasuredHeight();
            this.mDisplayView.layout(dl, dt, dr, db);
            this.mExtraContent.layout(dl, dt, dr, db);
        }
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int mWidth = MeasureSpec.getSize(widthMeasureSpec);
        int mHeight = MeasureSpec.getSize(heightMeasureSpec);
        float wAspectRatio = ((float) mWidth) / ((float) mHeight);
        int displayWidth = mWidth;
        int displayHeight = mHeight;
        if (Float.compare(this.mAspectRatio, -1.0f) != 0) {
            if (wAspectRatio < this.mAspectRatio) {
                displayHeight = (int) (((float) displayWidth) / this.mAspectRatio);
            } else {
                displayWidth = (int) (((float) displayHeight) * this.mAspectRatio);
            }
        }
        this.mDisplayView.measure(MeasureSpec.makeMeasureSpec(displayWidth, 1073741824), MeasureSpec.makeMeasureSpec(displayHeight, 1073741824));
        this.mExtraContent.measure(MeasureSpec.makeMeasureSpec(displayWidth, 1073741824), MeasureSpec.makeMeasureSpec(displayHeight, 1073741824));
        this.mViewWidth = (float) displayWidth;
        setMeasuredDimension(mWidth, mHeight);
    }

    public void setIvPlayListener(OnClickListener listener) {
        this.mIvPlay.setOnClickListener(listener);
    }

    public void setAutoTrimListener(OnClickListener listener) {
        this.mAutoTrimButton.setOnClickListener(listener);
    }

    public void setAutoTrimEnable(boolean enable) {
        this.mAutoTrimButton.setEnabled(enable);
    }

    public void setAudioVoiceListener(OnClickListener listener) {
        this.mAudioVoice.setOnClickListener(listener);
    }

    public void setClickListener(OnClickListener listener) {
        this.mDisplayView.setOnClickListener(listener);
    }

    public void setIProgress(IProgress IProgress) {
        this.mIProgress = IProgress;
    }

    public float getViewWidth() {
        return this.mViewWidth;
    }

    public void setAudioVoiceSelected(boolean selected) {
        this.mAudioVoice.setSelected(selected);
    }

    public boolean getAudioVoiceSelected() {
        return this.mAudioVoice.isSelected();
    }
}
