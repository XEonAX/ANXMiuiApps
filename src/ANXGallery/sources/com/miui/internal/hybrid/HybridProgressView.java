package com.miui.internal.hybrid;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.miui.internal.R;

public class HybridProgressView extends ImageView {
    private static final int fl = 10000;
    private static final int fm = 42;
    private static final int fn = 10;
    private static final int fo = 40;
    private static final int fp = 9500;
    private static final int fq = 800;
    private int fr;
    private int fs;
    private int ft;
    private Rect fu;
    private Drawable fv;
    private Rect fw;
    private Context mContext;
    private Handler mHandler;

    public HybridProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        d(context);
    }

    public HybridProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d(context);
    }

    public HybridProgressView(Context context) {
        super(context);
        d(context);
    }

    private void d(Context context) {
        this.mContext = context;
        this.fu = new Rect(0, 0, 0, 0);
        this.fr = 0;
        this.fs = 0;
        this.fv = this.mContext.getResources().getDrawable(R.drawable.hybrid_progress_reverse);
        this.mHandler = new Handler() {
            public void handleMessage(Message message) {
                if (message.what != 42) {
                    return;
                }
                if (HybridProgressView.this.fr < HybridProgressView.this.fs) {
                    HybridProgressView.this.fr = Math.min(HybridProgressView.this.fs, HybridProgressView.this.fr + HybridProgressView.this.ft);
                    HybridProgressView.this.fu.right = (HybridProgressView.this.getWidth() * HybridProgressView.this.fr) / 10000;
                    HybridProgressView.this.invalidate();
                    sendMessageDelayed(HybridProgressView.this.mHandler.obtainMessage(42), 40);
                } else if (HybridProgressView.this.fr <= HybridProgressView.fp && HybridProgressView.this.fr >= 800) {
                    HybridProgressView.this.fr = HybridProgressView.this.fr + 30;
                    HybridProgressView.this.fu.right = (HybridProgressView.this.getWidth() * HybridProgressView.this.fr) / 10000;
                    HybridProgressView.this.invalidate();
                    sendMessageDelayed(HybridProgressView.this.mHandler.obtainMessage(42), 40);
                }
            }
        };
        this.fw = new Rect(0, 0, 0, 0);
    }

    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.fu.left = 0;
        this.fu.right = ((i3 - i) * this.fr) / 10000;
        this.fu.top = 0;
        this.fu.bottom = i4 - i2;
    }

    public void setProgress(int i) {
        i *= 100;
        if (this.fs <= 800) {
            this.fr = this.fs;
        }
        this.fs = i;
        this.ft = (this.fs - this.fr) / 10;
        this.mHandler.removeMessages(42);
        this.mHandler.sendEmptyMessage(42);
    }

    public int getMax() {
        return 100;
    }

    public void onDraw(Canvas canvas) {
        Drawable drawable = getDrawable();
        drawable.setBounds(this.fu);
        drawable.draw(canvas);
        float width = ((float) getWidth()) - ((((float) getWidth()) * ((float) this.fr)) / 10000.0f);
        canvas.save();
        canvas.translate(-width, 0.0f);
        this.fw.set(0, 0, getWidth(), getHeight());
        this.fv.setBounds(this.fw);
        this.fv.draw(canvas);
        canvas.translate(width, 0.0f);
        canvas.restore();
    }
}
