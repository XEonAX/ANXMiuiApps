package com.miui.gallery.movie.ui.view;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.movie.MovieConfig;
import java.util.Locale;
import miui.view.animation.QuadraticEaseInOutInterpolator;

public abstract class BaseMovieView extends ViewGroup {
    protected View mDisplayView;
    private View mExtraContent;
    private Handler mHandler = new Handler() {
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    BaseMovieView.showView(BaseMovieView.this.mLoadingView, true);
                    break;
            }
            super.handleMessage(msg);
        }
    };
    private ImageView mIVDelete;
    private ImageView mIvPlay;
    private View mLoadingView;
    private float mPercent;
    private PlayProgressView mPlayProgress;
    private Button mPreviewBtn;
    private IProgressChangeListener mProgressChangeListener;
    private int mScaledTouchSlop;
    private TextView mTVDuration;
    private boolean mTouchAvailable;
    private float mViewWidth = 0.0f;

    public interface IProgressChangeListener {
        void onVideoProgressChanged();

        void onVideoProgressChanging(int i, float f);
    }

    protected abstract View createDisplayView();

    public BaseMovieView(Context context) {
        super(context);
    }

    public BaseMovieView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public BaseMovieView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void init() {
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.movie_view_display, this);
        this.mDisplayView = createDisplayView();
        this.mExtraContent = findViewById(R.id.extra_content);
        addView(this.mDisplayView, 0);
        this.mDisplayView.setLayoutParams(new LayoutParams(-1, -1));
        this.mScaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.mIvPlay = (ImageView) findViewById(R.id.iv_play);
        this.mPlayProgress = (PlayProgressView) findViewById(R.id.play_progress);
        this.mTVDuration = (TextView) findViewById(R.id.tv_movie_duration);
        this.mIVDelete = (ImageView) findViewById(R.id.iv_movie_delete);
        this.mPreviewBtn = (Button) findViewById(R.id.preview_btn);
        this.mLoadingView = findViewById(R.id.progress_bar);
        this.mDisplayView.setOnTouchListener(new OnTouchListener() {
            private boolean changed;
            private float downX = 0.0f;
            private float dx = 0.0f;
            private int layout = -1;
            private float moveX = 0.0f;

            public boolean onTouch(View v, MotionEvent event) {
                if (!BaseMovieView.this.mTouchAvailable) {
                    return false;
                }
                switch (event.getAction()) {
                    case 0:
                        this.downX = event.getX();
                        this.changed = false;
                        return false;
                    case 1:
                    case 3:
                        if (!this.changed) {
                            return false;
                        }
                        if (BaseMovieView.this.mProgressChangeListener != null) {
                            BaseMovieView.this.mProgressChangeListener.onVideoProgressChanged();
                        }
                        return this.changed;
                    case 2:
                        this.moveX = event.getX();
                        this.dx = this.moveX - this.downX;
                        if (Math.abs(this.dx) <= ((float) BaseMovieView.this.mScaledTouchSlop) || BaseMovieView.this.mViewWidth <= 0.0f) {
                            return false;
                        }
                        int i;
                        BaseMovieView.this.mPercent = Math.abs(this.dx) / BaseMovieView.this.mViewWidth;
                        if (this.dx < 0.0f) {
                            i = 0;
                        } else {
                            i = 1;
                        }
                        this.layout = i;
                        this.changed = true;
                        if (BaseMovieView.this.mProgressChangeListener == null) {
                            return false;
                        }
                        BaseMovieView.this.mProgressChangeListener.onVideoProgressChanging(this.layout, BaseMovieView.this.mPercent);
                        return false;
                    default:
                        return false;
                }
            }
        });
    }

    public void setTouchAvailable(boolean touchAvailable) {
        this.mTouchAvailable = touchAvailable;
    }

    public void setDuration(int second) {
        if (this.mTVDuration != null) {
            this.mTVDuration.setText(String.format(Locale.US, "00:%02d", new Object[]{Integer.valueOf(second)}));
        }
    }

    public void updatePlayProgress(float progress) {
        this.mPlayProgress.setProgress(progress);
    }

    public void showPlayProgress(boolean show) {
        showView(this.mPlayProgress, show);
    }

    public void showPlayBtn(boolean show) {
        showView(this.mIvPlay, show);
    }

    public void showDuration(boolean show) {
        showView(this.mTVDuration, show);
    }

    public void showDeleteIcon(boolean show) {
        showView(this.mIVDelete, show);
    }

    public void showPreviewBtn(boolean show) {
        showView(this.mPreviewBtn, show);
    }

    public void showLoadingView(boolean show) {
        if (show) {
            this.mHandler.removeMessages(1);
            this.mHandler.sendEmptyMessageDelayed(1, 500);
            return;
        }
        this.mHandler.removeMessages(1);
        showView(this.mLoadingView, false);
    }

    public void showExtraContent(boolean show) {
        float f;
        float f2 = 1.0f;
        View view = this.mExtraContent;
        Property property = View.ALPHA;
        float[] fArr = new float[2];
        if (show) {
            f = 0.0f;
        } else {
            f = 1.0f;
        }
        fArr[0] = f;
        if (!show) {
            f2 = 0.0f;
        }
        fArr[1] = f2;
        Animator translate = ObjectAnimator.ofFloat(view, property, fArr);
        translate.setInterpolator(new QuadraticEaseInOutInterpolator());
        translate.setDuration(220);
        translate.start();
    }

    public void setPreviewBtnClickListener(OnClickListener listener) {
        this.mPreviewBtn.setOnClickListener(listener);
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
        int width = MeasureSpec.getSize(widthMeasureSpec);
        int height = MeasureSpec.getSize(heightMeasureSpec);
        float movieRatio = MovieConfig.getMovieRatio();
        float wAspectRatio = ((float) width) / ((float) height);
        int displayWidth = width;
        int displayHeight = height;
        if (Float.compare(movieRatio, -1.0f) != 0) {
            if (wAspectRatio < movieRatio) {
                displayHeight = (int) (((float) displayWidth) / movieRatio);
            } else {
                displayWidth = (int) (((float) displayHeight) * movieRatio);
            }
        }
        this.mDisplayView.measure(MeasureSpec.makeMeasureSpec(displayWidth, 1073741824), MeasureSpec.makeMeasureSpec(displayHeight, 1073741824));
        this.mExtraContent.measure(MeasureSpec.makeMeasureSpec(displayWidth, 1073741824), MeasureSpec.makeMeasureSpec(displayHeight, 1073741824));
        this.mViewWidth = (float) displayWidth;
        setMeasuredDimension(width, height);
    }

    public void setIvPlayListener(OnClickListener listener) {
        this.mIvPlay.setOnClickListener(listener);
    }

    public void setOnClickListener(OnClickListener l) {
        this.mDisplayView.setOnClickListener(l);
    }

    public void setProgressChangeListener(IProgressChangeListener progressChangeListener) {
        this.mProgressChangeListener = progressChangeListener;
    }

    public void setDeleteClickListener(OnClickListener l) {
        if (this.mIVDelete != null) {
            this.mIVDelete.setOnClickListener(l);
        }
    }

    public static void showView(View view, boolean show) {
        if (view != null) {
            view.setVisibility(show ? 0 : 4);
        }
    }
}
