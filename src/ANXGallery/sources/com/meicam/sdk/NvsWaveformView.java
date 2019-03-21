package com.meicam.sdk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.meicam.sdk.NvsWaveformDataGenerator.WaveformDataCallback;

public class NvsWaveformView extends View implements WaveformDataCallback {
    private long m_audioFileDuration = 0;
    private String m_audioFilePath;
    private long m_audioFileSampleCount = 0;
    private long m_currentTaskId = 0;
    private float[] m_leftWaveformData;
    private boolean m_needUpdateWaveformData = false;
    private float[] m_rightWaveformData;
    private long m_samplesPerGroup = 0;
    private boolean m_singleChannelMode = false;
    private long m_trimIn = 0;
    private long m_trimOut = 0;
    private int m_waveformColor = -16777216;
    private NvsWaveformDataGenerator m_waveformDataGenerator;

    public NvsWaveformView(Context context) {
        super(context);
        NvsUtils.checkFunctionInMainThread();
        init();
    }

    public NvsWaveformView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        NvsUtils.checkFunctionInMainThread();
        init();
    }

    public NvsWaveformView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        NvsUtils.checkFunctionInMainThread();
        init();
    }

    public NvsWaveformView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        NvsUtils.checkFunctionInMainThread();
        init();
    }

    public void setAudioFilePath(String str) {
        NvsUtils.checkFunctionInMainThread();
        if (this.m_audioFilePath != null && this.m_audioFilePath != null && this.m_audioFilePath.equals(str)) {
            return;
        }
        if (str == null) {
            this.m_audioFilePath = null;
            this.m_audioFileSampleCount = 0;
            cancelCurrentTask();
            invalidate();
        } else if (this.m_waveformDataGenerator != null) {
            long audioFileDuration = this.m_waveformDataGenerator.getAudioFileDuration(str);
            long audioFileSampleCount = this.m_waveformDataGenerator.getAudioFileSampleCount(str);
            if (audioFileDuration > 0 && audioFileSampleCount > 0) {
                this.m_audioFilePath = str;
                this.m_audioFileDuration = audioFileDuration;
                this.m_audioFileSampleCount = audioFileSampleCount;
                this.m_trimIn = 0;
                this.m_trimOut = audioFileDuration;
                this.m_needUpdateWaveformData = true;
                cancelCurrentTask();
                invalidate();
            }
        }
    }

    public String getAudioFilePath() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_audioFilePath;
    }

    public void setTrimIn(long j) {
        NvsUtils.checkFunctionInMainThread();
        long max = Math.max(j, 0);
        if (max != this.m_trimIn) {
            this.m_trimIn = max;
            validateWaveformData();
        }
    }

    public long getTrimIn() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_trimIn;
    }

    public void setTrimOut(long j) {
        NvsUtils.checkFunctionInMainThread();
        long min = Math.min(Math.max(j, this.m_trimIn + 1), this.m_audioFileDuration);
        if (min != this.m_trimOut) {
            this.m_trimOut = min;
            validateWaveformData();
        }
    }

    public long getTrimOut() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_trimOut;
    }

    public void setWaveformColor(int i) {
        NvsUtils.checkFunctionInMainThread();
        if (i != this.m_waveformColor) {
            this.m_waveformColor = i;
            invalidate();
        }
    }

    public int getWaveformColor() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_waveformColor;
    }

    public void setSingleChannelMode(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        if (z != this.m_singleChannelMode) {
            this.m_singleChannelMode = z;
            invalidate();
        }
    }

    public boolean getSingleChannelMode() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_singleChannelMode;
    }

    public void onWaveformDataReady(long j, String str, long j2, long j3, float[] fArr, float[] fArr2) {
        this.m_leftWaveformData = fArr;
        this.m_rightWaveformData = fArr2;
        this.m_samplesPerGroup = j3;
        this.m_currentTaskId = 0;
        invalidate();
    }

    public void onWaveformDataGenerationFailed(long j, String str, long j2) {
    }

    private void init() {
        if (!isInEditMode()) {
            this.m_waveformDataGenerator = new NvsWaveformDataGenerator();
            this.m_waveformDataGenerator.setWaveformDataCallback(this);
        }
        setBackgroundColor(-1);
    }

    private long calcExpectedSamplesPerGroup() {
        long j = (long) ((((double) (this.m_trimOut - this.m_trimIn)) / ((double) this.m_audioFileDuration)) * ((double) this.m_audioFileSampleCount));
        int width = getWidth();
        if (width <= 0) {
            return 1;
        }
        return Math.max((j + ((long) (width / 2))) / ((long) width), 1);
    }

    private void validateWaveformData() {
        if (this.m_samplesPerGroup <= 0) {
            this.m_needUpdateWaveformData = true;
            cancelCurrentTask();
        } else if (calcExpectedSamplesPerGroup() != this.m_samplesPerGroup) {
            this.m_needUpdateWaveformData = true;
            cancelCurrentTask();
            invalidate();
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (i3 != i) {
            validateWaveformData();
        }
        super.onSizeChanged(i, i2, i3, i4);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!isInEditMode() && this.m_audioFileDuration > 0) {
            if (this.m_needUpdateWaveformData && this.m_waveformDataGenerator != null) {
                this.m_needUpdateWaveformData = false;
                this.m_currentTaskId = this.m_waveformDataGenerator.generateWaveformData(this.m_audioFilePath, calcExpectedSamplesPerGroup(), 0);
            }
            if (this.m_samplesPerGroup > 0 && this.m_leftWaveformData != null) {
                int length = this.m_leftWaveformData.length / 2;
                int length2 = (this.m_rightWaveformData == null || this.m_singleChannelMode) ? 0 : this.m_rightWaveformData.length / 2;
                if (length != 0) {
                    int width = getWidth();
                    int height = getHeight();
                    if (length2 != 0) {
                        height /= 2;
                    }
                    Rect rect = new Rect();
                    Paint paint = new Paint();
                    paint.setStyle(Style.FILL);
                    paint.setAntiAlias(false);
                    paint.setColor(this.m_waveformColor);
                    if (Color.alpha(this.m_waveformColor) == 255) {
                    }
                    paint.setXfermode(new PorterDuffXfermode(Mode.SRC));
                    long j = (long) ((((double) this.m_trimIn) / ((double) this.m_audioFileDuration)) * ((double) this.m_audioFileSampleCount));
                    long j2 = (long) ((((double) (this.m_trimOut - this.m_trimIn)) / ((double) this.m_audioFileDuration)) * ((double) this.m_audioFileSampleCount));
                    if (j2 != 0) {
                        for (int i = 0; i < width; i++) {
                            int i2 = (int) ((((long) ((((double) i) / ((double) width)) * ((double) j2))) + j) / this.m_samplesPerGroup);
                            if (i2 < length) {
                                rect.set(i, (int) (((float) height) * (1.0f - ((this.m_leftWaveformData[(i2 * 2) + 1] + 1.0f) / 2.0f))), i + 1, (int) (((float) height) * (1.0f - ((this.m_leftWaveformData[i2 * 2] + 1.0f) / 2.0f))));
                                canvas.drawRect(rect, paint);
                            }
                            if (i2 < length2) {
                                rect.set(i, ((int) (((float) height) * (1.0f - ((this.m_rightWaveformData[(i2 * 2) + 1] + 1.0f) / 2.0f)))) + height, i + 1, ((int) ((1.0f - ((this.m_rightWaveformData[i2 * 2] + 1.0f) / 2.0f)) * ((float) height))) + height);
                                canvas.drawRect(rect, paint);
                            }
                        }
                    }
                }
            }
        }
    }

    protected void onAttachedToWindow() {
    }

    protected void onDetachedFromWindow() {
        cancelCurrentTask();
        if (this.m_waveformDataGenerator != null) {
            this.m_waveformDataGenerator.setWaveformDataCallback(null);
            this.m_waveformDataGenerator.release();
            this.m_waveformDataGenerator = null;
        }
        super.onDetachedFromWindow();
    }

    private void cancelCurrentTask() {
        if (!isInEditMode() && this.m_currentTaskId != 0) {
            if (this.m_waveformDataGenerator != null) {
                this.m_waveformDataGenerator.cancelTask(this.m_currentTaskId);
            }
            this.m_currentTaskId = 0;
        }
    }
}
