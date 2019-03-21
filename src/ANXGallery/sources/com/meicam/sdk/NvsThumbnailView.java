package com.meicam.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;

public class NvsThumbnailView extends View {
    private long m_iconGetter = 0;
    private String m_mediaFilePath;
    private boolean m_needUpdate = false;
    private boolean m_painting = false;
    private Bitmap m_thumbnail = null;
    private long m_thumbnailView = 0;

    private native void nativeCancelIconTask(long j);

    private native void nativeClose(long j);

    private native void nativeGetThumbnail(long j, String str);

    private native long nativeInit();

    public NvsThumbnailView(Context context) {
        super(context);
    }

    public NvsThumbnailView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NvsThumbnailView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public NvsThumbnailView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void setMediaFilePath(String str) {
        NvsUtils.checkFunctionInMainThread();
        if (this.m_mediaFilePath == null || str == null || !this.m_mediaFilePath.equals(str)) {
            this.m_mediaFilePath = str;
            this.m_needUpdate = true;
            cancelIconTask();
            invalidate();
        }
    }

    public String getMediaFilePath() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_mediaFilePath;
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.m_mediaFilePath != null && !this.m_mediaFilePath.isEmpty()) {
            if (this.m_thumbnail != null && !this.m_needUpdate) {
                Rect rect = new Rect();
                getDrawingRect(rect);
                int width = this.m_thumbnail.getWidth();
                int height = this.m_thumbnail.getHeight();
                double width2 = ((double) width) / ((double) rect.width());
                double height2 = ((double) height) / ((double) rect.height());
                double d;
                if (width2 > height2) {
                    d = ((double) width) / height2;
                    rect.left += (int) ((((double) rect.width()) - d) / 2.0d);
                    rect.right = (int) (d + ((double) rect.left));
                } else {
                    d = ((double) height) / width2;
                    rect.top += (int) ((((double) rect.height()) - d) / 2.0d);
                    rect.bottom = (int) (d + ((double) rect.top));
                }
                canvas.drawBitmap(this.m_thumbnail, null, rect, new Paint(2));
            } else if (this.m_thumbnailView != 0 && this.m_iconGetter != 0) {
                this.m_needUpdate = false;
                this.m_painting = true;
                if (!isInEditMode()) {
                    nativeGetThumbnail(this.m_iconGetter, this.m_mediaFilePath);
                }
                this.m_painting = false;
            }
        }
    }

    protected void onAttachedToWindow() {
        if (!isInEditMode()) {
            this.m_thumbnailView = nativeInit();
        }
    }

    protected void onDetachedFromWindow() {
        cancelIconTask();
        if (this.m_thumbnailView != 0) {
            nativeClose(this.m_thumbnailView);
            this.m_thumbnailView = 0;
            this.m_iconGetter = 0;
        }
        this.m_thumbnail = null;
        super.onDetachedFromWindow();
    }

    private void cancelIconTask() {
        if (!isInEditMode()) {
            nativeCancelIconTask(this.m_iconGetter);
        }
    }

    protected void notifyThumbnailArrived(final Bitmap bitmap) {
        if (this.m_painting) {
            new Handler().post(new Runnable() {
                public void run() {
                    NvsThumbnailView.this.m_thumbnail = bitmap;
                    NvsThumbnailView.this.invalidate();
                }
            });
            return;
        }
        this.m_thumbnail = bitmap;
        invalidate();
    }
}
