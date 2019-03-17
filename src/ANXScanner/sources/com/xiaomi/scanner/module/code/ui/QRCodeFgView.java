package com.xiaomi.scanner.module.code.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.ui.PreviewWithRectView;

public final class QRCodeFgView extends FrameLayout {
    private static final Tag TAG = new Tag(QRCodeFgView.class.getSimpleName());
    private int mColor;
    private ImageView mLaserScanner;
    private PreviewWithRectView mMaskView;
    private Rect mScannerFrame;

    public QRCodeFgView(Context context) {
        this(context, null);
    }

    public QRCodeFgView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public QRCodeFgView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setBackgroundColor(0);
        this.mMaskView = new PreviewWithRectView(context);
        this.mMaskView.setLayoutParams(new LayoutParams(-1, -1));
        addView(this.mMaskView);
        this.mLaserScanner = new ImageView(context);
        LayoutParams lp = new LayoutParams(-2, -2);
        lp.gravity = 1;
        this.mLaserScanner.setImageResource(R.drawable.scan_line);
        this.mLaserScanner.setScaleType(ScaleType.FIT_XY);
        this.mLaserScanner.setLayoutParams(lp);
        this.mLaserScanner.setVisibility(4);
        addView(this.mLaserScanner);
    }

    public void startLaserAnim() {
        if (this.mLaserScanner.getDrawable() == null || this.mScannerFrame == null) {
            Log.w(TAG, "mScannerFrame=" + this.mScannerFrame);
            return;
        }
        this.mLaserScanner.setVisibility(0);
        this.mLaserScanner.clearAnimation();
        Rect frame = this.mScannerFrame;
        TranslateAnimation anim = new TranslateAnimation(1, 0.0f, 1, 0.0f, 0, (float) frame.top, 0, (float) (frame.bottom - this.mLaserScanner.getDrawable().getIntrinsicHeight()));
        anim.setDuration(3000);
        anim.setRepeatMode(2);
        anim.setRepeatCount(-1);
        this.mLaserScanner.startAnimation(anim);
    }

    public void setScannerFrame(Rect frame) {
        this.mColor = getResources().getColor(R.color.viewfinder_mask);
        this.mScannerFrame = new Rect(frame);
        this.mLaserScanner.getLayoutParams().width = (int) (((float) frame.width()) * 0.95f);
        this.mMaskView.setDataAndDraw(this.mScannerFrame, this.mColor, true);
    }

    public void stopLaserAnim() {
        this.mLaserScanner.clearAnimation();
        this.mLaserScanner.setVisibility(4);
    }

    public void clear() {
        this.mMaskView.clear();
    }
}
