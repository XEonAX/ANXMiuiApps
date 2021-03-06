package com.taobao.ma.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import com.alibaba.fastjson.asm.Opcodes;

public final class ViewfinderZxingView extends View {
    private static final int POINT_SIZE = 6;
    private static final int[] SCANNER_ALPHA = new int[]{0, 64, 128, Opcodes.CHECKCAST, 255, Opcodes.CHECKCAST, 128, 64};
    public long ANIMATION_DELAY = 90;
    public int VIEWFINDER_CORNER_HEIGHT = 16;
    public int VIEWFINDER_CORNER_WIDTH = 8;
    public int VIEWFINDER_HEIGHT = 660;
    public int VIEWFINDER_MIDDLE_LINE_PADDING = 15;
    public int VIEWFINDER_MIDDLE_LINE_WIDTH = 5;
    public int VIEWFINDER_WIDTH = 660;
    private boolean isFirst = false;
    public int laserColor = Color.parseColor("#ffcc0000");
    private Context mContext;
    private DisplayMetrics metrics;
    private final Paint paint;
    private int scannerAlpha;

    public ViewfinderZxingView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mContext = context;
        this.paint = new Paint(1);
        this.scannerAlpha = 0;
        this.metrics = this.mContext.getResources().getDisplayMetrics();
    }

    public void onDraw(Canvas canvas) {
        Rect frame = getViewFinderRect();
        if (frame != null) {
            if (!this.isFirst) {
                this.isFirst = true;
                this.VIEWFINDER_CORNER_HEIGHT = (int) (((float) this.VIEWFINDER_CORNER_HEIGHT) * this.metrics.density);
            }
            this.paint.setColor(-1);
            canvas.drawRect((float) frame.left, (float) frame.top, (float) (frame.left + this.VIEWFINDER_CORNER_HEIGHT), (float) (frame.top + this.VIEWFINDER_CORNER_WIDTH), this.paint);
            canvas.drawRect((float) frame.left, (float) frame.top, (float) (frame.left + this.VIEWFINDER_CORNER_WIDTH), (float) (frame.top + this.VIEWFINDER_CORNER_HEIGHT), this.paint);
            canvas.drawRect((float) (frame.right - this.VIEWFINDER_CORNER_HEIGHT), (float) frame.top, (float) frame.right, (float) (frame.top + this.VIEWFINDER_CORNER_WIDTH), this.paint);
            canvas.drawRect((float) (frame.right - this.VIEWFINDER_CORNER_WIDTH), (float) frame.top, (float) frame.right, (float) (frame.top + this.VIEWFINDER_CORNER_HEIGHT), this.paint);
            canvas.drawRect((float) frame.left, (float) (frame.bottom - this.VIEWFINDER_CORNER_WIDTH), (float) (frame.left + this.VIEWFINDER_CORNER_HEIGHT), (float) frame.bottom, this.paint);
            canvas.drawRect((float) frame.left, (float) (frame.bottom - this.VIEWFINDER_CORNER_HEIGHT), (float) (frame.left + this.VIEWFINDER_CORNER_WIDTH), (float) frame.bottom, this.paint);
            canvas.drawRect((float) (frame.right - this.VIEWFINDER_CORNER_HEIGHT), (float) (frame.bottom - this.VIEWFINDER_CORNER_WIDTH), (float) frame.right, (float) frame.bottom, this.paint);
            canvas.drawRect((float) (frame.right - this.VIEWFINDER_CORNER_WIDTH), (float) (frame.bottom - this.VIEWFINDER_CORNER_HEIGHT), (float) frame.right, (float) frame.bottom, this.paint);
            this.paint.setColor(this.laserColor);
            this.paint.setAlpha(SCANNER_ALPHA[this.scannerAlpha]);
            this.scannerAlpha = (this.scannerAlpha + 1) % SCANNER_ALPHA.length;
            int middle = (frame.height() / 2) + frame.top;
            canvas.drawRect((float) (frame.left + 2), (float) (middle - 1), (float) (frame.right - 1), (float) (middle + 2), this.paint);
            postInvalidateDelayed(this.ANIMATION_DELAY, frame.left - 6, frame.top - 6, frame.right + 6, frame.bottom + 6);
        }
    }

    private Rect getViewFinderRect() {
        Point screenResolution = getScreenSize();
        int width = this.VIEWFINDER_WIDTH;
        int height = this.VIEWFINDER_HEIGHT;
        int leftOffset = (screenResolution.x - width) / 2;
        int topOffset = (screenResolution.y - height) / 2;
        return new Rect(leftOffset, topOffset, leftOffset + width, topOffset + height);
    }

    private Point getScreenSize() {
        return new Point(this.metrics.widthPixels, this.metrics.heightPixels);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mContext = null;
        this.isFirst = false;
        this.metrics = null;
    }
}
