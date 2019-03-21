package com.meicam.sdk;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.meicam.sdk.NvsMultiThumbnailSequenceView.ThumbnailSequenceDesc;
import java.util.ArrayList;

public class NvsThumbnailSequenceView extends ViewGroup {
    private long m_duration = 4000000;
    private NvsMultiThumbnailSequenceView m_internalView;
    private String m_mediaFilePath;
    private boolean m_needsUpdateInternalView = false;
    private long m_startTime = 0;
    private boolean m_stillImageHint = false;
    private float m_thumbnailAspectRatio = 0.5625f;
    private int m_thumbnailImageFillMode = 0;

    public NvsThumbnailSequenceView(Context context) {
        super(context);
        NvsUtils.checkFunctionInMainThread();
        init(context);
    }

    public NvsThumbnailSequenceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        NvsUtils.checkFunctionInMainThread();
        init(context);
    }

    public NvsThumbnailSequenceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        NvsUtils.checkFunctionInMainThread();
        init(context);
    }

    public NvsThumbnailSequenceView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        NvsUtils.checkFunctionInMainThread();
        init(context);
    }

    private void init(Context context) {
        this.m_internalView = new NvsMultiThumbnailSequenceView(context);
        this.m_internalView.setScrollEnabled(false);
        addView(this.m_internalView, new LayoutParams(-1, -1));
    }

    public void setThumbnailImageFillMode(int i) {
        NvsUtils.checkFunctionInMainThread();
        if (!(this.m_thumbnailImageFillMode == 1 || this.m_thumbnailImageFillMode == 0)) {
            this.m_thumbnailImageFillMode = 0;
        }
        if (this.m_thumbnailImageFillMode != i) {
            this.m_thumbnailImageFillMode = i;
            updateInternalView();
        }
    }

    public int getThumbnailImageFillMode() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_thumbnailImageFillMode;
    }

    public void setMediaFilePath(String str) {
        NvsUtils.checkFunctionInMainThread();
        if (this.m_mediaFilePath == null || str == null || !this.m_mediaFilePath.equals(str)) {
            this.m_mediaFilePath = str;
            updateInternalView();
        }
    }

    public String getMediaFilePath() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_mediaFilePath;
    }

    public void setStartTime(long j) {
        NvsUtils.checkFunctionInMainThread();
        if (j < 0) {
            j = 0;
        }
        if (j != this.m_startTime) {
            this.m_startTime = j;
            updateInternalView();
        }
    }

    public long getStartTime() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_startTime;
    }

    public void setDuration(long j) {
        NvsUtils.checkFunctionInMainThread();
        if (j <= 0) {
            j = 1;
        }
        if (j != this.m_duration) {
            this.m_duration = j;
            updateInternalView();
        }
    }

    public long getDuration() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_duration;
    }

    public void setThumbnailAspectRatio(float f) {
        NvsUtils.checkFunctionInMainThread();
        if (f < 0.1f) {
            f = 0.1f;
        } else if (f > 10.0f) {
            f = 10.0f;
        }
        if (Math.abs(this.m_thumbnailAspectRatio - f) >= 0.001f) {
            this.m_thumbnailAspectRatio = f;
            updateInternalView();
        }
    }

    public float getThumbnailAspectRatio() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_thumbnailAspectRatio;
    }

    public void setStillImageHint(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        if (z != this.m_stillImageHint) {
            this.m_stillImageHint = z;
            updateInternalView();
        }
    }

    public boolean getStillImageHint() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_stillImageHint;
    }

    protected void onMeasure(int i, int i2) {
        this.m_internalView.measure(i, i2);
        super.onMeasure(i, i2);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.m_internalView.layout(0, 0, getWidth(), getHeight());
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (i3 != i) {
            updateInternalView();
        }
        super.onSizeChanged(i, i2, i3, i4);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    private void updateInternalView() {
        this.m_needsUpdateInternalView = true;
        new Handler().post(new Runnable() {
            public void run() {
                NvsThumbnailSequenceView.this.doUpdateInternalView();
            }
        });
    }

    private void doUpdateInternalView() {
        if (this.m_needsUpdateInternalView) {
            this.m_needsUpdateInternalView = false;
            this.m_internalView.setThumbnailAspectRatio(this.m_thumbnailAspectRatio);
            this.m_internalView.setPixelPerMicrosecond(((double) getWidth()) / ((double) this.m_duration));
            this.m_internalView.setThumbnailImageFillMode(this.m_thumbnailImageFillMode);
            if (this.m_mediaFilePath == null) {
                this.m_internalView.setThumbnailSequenceDescArray(null);
                return;
            }
            ThumbnailSequenceDesc thumbnailSequenceDesc = new ThumbnailSequenceDesc();
            thumbnailSequenceDesc.mediaFilePath = this.m_mediaFilePath;
            thumbnailSequenceDesc.inPoint = 0;
            thumbnailSequenceDesc.outPoint = this.m_duration;
            thumbnailSequenceDesc.trimIn = this.m_startTime;
            thumbnailSequenceDesc.trimOut = thumbnailSequenceDesc.trimIn + this.m_duration;
            thumbnailSequenceDesc.stillImageHint = this.m_stillImageHint;
            ArrayList arrayList = new ArrayList();
            arrayList.add(thumbnailSequenceDesc);
            this.m_internalView.setThumbnailSequenceDescArray(arrayList);
        }
    }
}
