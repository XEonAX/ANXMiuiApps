package com.miui.gallery.editor.photo.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.util.AttributeSet;
import com.miui.arcsoftbeauty.ArcsoftBeautyJni;
import com.miui.filtersdk.beauty.BeautyParameterType;
import com.miui.filtersdk.beauty.BeautyProcessorManager;
import com.miui.filtersdk.beauty.IntelligentBeautyProcessor;
import com.miui.filtersdk.filter.YUVBeautyFilter;
import com.miui.filtersdk.utils.Rotation;
import com.miui.gallery.editor.photo.app.miuibeautify.MiuiBeautyFragment;
import com.miui.gallery.editor.photo.widgets.base.MagicBaseView;
import com.miui.gallery.editor.photo.widgets.base.MagicBaseView.ScaleType;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.util.Map;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class BeautyImageView extends MagicBaseView {
    private IntelligentBeautyProcessor mBeautyProcessor;
    private int mBufferSize;
    private Context mContext;
    private boolean mFirstRenderFinished;
    private boolean mHasRawYuv;
    private InitRenderCallback mInitRenderCallback;
    private byte[] mPicData;
    private int mRenderRecordIndex;
    private YUVBeautyFilter mYUVFilter;

    public interface InitRenderCallback {
        void onRenderFinish();
    }

    public BeautyImageView(Context context) {
        this(context, null);
    }

    public BeautyImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mRenderRecordIndex = -1;
        this.mFirstRenderFinished = false;
        this.mContext = context;
        getHolder().addCallback(this);
        this.scaleType = ScaleType.CENTER_INSIDE;
        this.mYUVFilter = getYUVBeautyRender();
        this.mHasRawYuv = false;
    }

    public void onSurfaceCreated(GL10 gl, EGLConfig config) {
        super.onSurfaceCreated(gl, config);
        this.mYUVFilter.init();
    }

    public void onSurfaceChanged(GL10 gl, int width, int height) {
        super.onSurfaceChanged(gl, width, height);
        adjustSize(Rotation.NORMAL.asInt(), false, false);
    }

    public void onDrawFrame(GL10 gl) {
        GLES20.glClearColor(1.0f, 1.0f, 1.0f, 0.0f);
        GLES20.glClear(16640);
        this.mYUVFilter.onDrawFrame(0, this.gLCubeBuffer, this.gLTextureBuffer);
        if (!this.mFirstRenderFinished) {
            if (this.mInitRenderCallback != null) {
                this.mInitRenderCallback.onRenderFinish();
            }
            this.mFirstRenderFinished = true;
        }
    }

    private void refreshDisplay() {
        requestRender();
    }

    public void setPicData(Bitmap bitmap) {
        setPicData(bitmap, true);
    }

    public void setPicData(Bitmap bitmap, boolean refresh) {
        this.imageWidth = bitmap.getWidth();
        this.imageHeight = bitmap.getHeight();
        if (!this.mHasRawYuv) {
            this.mBufferSize = ((this.imageWidth * this.imageHeight) * 3) / 2;
            this.mPicData = new byte[this.mBufferSize];
            ArcsoftBeautyJni.encodeYUV420SP(bitmap, this.imageWidth, this.imageHeight, this.mPicData);
            writeRecordFile();
            this.mHasRawYuv = true;
        }
        reloadTexture(false);
        if (refresh) {
            refreshDisplay();
        }
    }

    private YUVBeautyFilter getYUVBeautyRender() {
        YUVBeautyFilter filter = new YUVBeautyFilter();
        IntelligentBeautyProcessor beautyProcessor = BeautyProcessorManager.INSTANCE.getBeautyProcessor();
        beautyProcessor.setRotation(0);
        this.mBeautyProcessor = beautyProcessor;
        filter.setBeautyProcessor(beautyProcessor);
        return filter;
    }

    public void reloadTexture(boolean coverRawBuffer) {
        if (coverRawBuffer) {
            this.mYUVFilter.genYUVTextures(this.mPicData, this.imageWidth, this.imageHeight);
            this.mBeautyProcessor.clearBeautyParameters();
            return;
        }
        byte[] image = new byte[(((this.imageWidth * this.imageHeight) * 3) / 2)];
        System.arraycopy(this.mPicData, 0, image, 0, ((this.imageWidth * this.imageHeight) * 3) / 2);
        this.mYUVFilter.genYUVTextures(image, this.imageWidth, this.imageHeight);
    }

    public void updateBeautyProcessor(Map<BeautyParameterType, Float> parametesMap) {
        if (parametesMap == null || parametesMap.size() == 0) {
            this.mBeautyProcessor.clearBeautyParameters();
        } else {
            this.mBeautyProcessor.setBeautyParamsDegree(parametesMap);
        }
    }

    public void getBmpFromCurrBuffer(Bitmap compare) {
        ArcsoftBeautyJni.updateBmpWithYuvBuffer(compare, this.imageWidth, this.imageHeight, this.mPicData);
    }

    public void writeRecordFile() {
        IOException e;
        Throwable th;
        this.mYUVFilter.genYUVTextures(this.mPicData, this.imageWidth, this.imageHeight);
        this.mBeautyProcessor.clearBeautyParameters();
        this.mRenderRecordIndex = (this.mRenderRecordIndex + 1) % MiuiBeautyFragment.BEAUTY_RECORDS_MAX;
        RandomAccessFile memmapFile = null;
        try {
            RandomAccessFile memmapFile2 = new RandomAccessFile(getTmpRecordFile(this.mRenderRecordIndex), "rw");
            try {
                memmapFile2.getChannel().map(MapMode.READ_WRITE, 0, (long) this.mBufferSize).put(this.mPicData);
                BaseMiscUtil.closeSilently(memmapFile2);
                memmapFile = memmapFile2;
            } catch (IOException e2) {
                e = e2;
                memmapFile = memmapFile2;
                try {
                    e.printStackTrace();
                    BaseMiscUtil.closeSilently(memmapFile);
                } catch (Throwable th2) {
                    th = th2;
                    BaseMiscUtil.closeSilently(memmapFile);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                memmapFile = memmapFile2;
                BaseMiscUtil.closeSilently(memmapFile);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            e.printStackTrace();
            BaseMiscUtil.closeSilently(memmapFile);
        }
    }

    public void setInitRenderCallback(InitRenderCallback callback) {
        this.mInitRenderCallback = callback;
    }

    public void renderPreviousBuffer() {
        this.mRenderRecordIndex = (this.mRenderRecordIndex - 1) % MiuiBeautyFragment.BEAUTY_RECORDS_MAX;
        if (this.mRenderRecordIndex < 0) {
            this.mRenderRecordIndex += MiuiBeautyFragment.BEAUTY_RECORDS_MAX;
        }
        readRecordBuffer();
        reloadTexture(false);
        refreshDisplay();
    }

    public void renderNextBuffer() {
        this.mRenderRecordIndex = (this.mRenderRecordIndex + 1) % MiuiBeautyFragment.BEAUTY_RECORDS_MAX;
        readRecordBuffer();
        reloadTexture(false);
        refreshDisplay();
    }

    private void readRecordBuffer() {
        IOException e;
        Throwable th;
        RandomAccessFile memmapFile = null;
        try {
            RandomAccessFile memmapFile2 = new RandomAccessFile(getTmpRecordFile(this.mRenderRecordIndex), "r");
            try {
                FileChannel fileChannel = memmapFile2.getChannel();
                fileChannel.map(MapMode.READ_ONLY, 0, fileChannel.size()).get(this.mPicData);
                BaseMiscUtil.closeSilently(memmapFile2);
                memmapFile = memmapFile2;
            } catch (IOException e2) {
                e = e2;
                memmapFile = memmapFile2;
                try {
                    e.printStackTrace();
                    BaseMiscUtil.closeSilently(memmapFile);
                } catch (Throwable th2) {
                    th = th2;
                    BaseMiscUtil.closeSilently(memmapFile);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                memmapFile = memmapFile2;
                BaseMiscUtil.closeSilently(memmapFile);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            e.printStackTrace();
            BaseMiscUtil.closeSilently(memmapFile);
        }
    }

    public boolean clearAllRecords() {
        boolean res = true;
        for (int i = 0; i < MiuiBeautyFragment.BEAUTY_RECORDS_MAX; i++) {
            File file = getTmpRecordFile(i);
            if (!(file == null || !file.exists() || file.delete())) {
                Log.e("BeautyImageView", "Failed to delete beauty record file: " + file.getPath());
                res = false;
            }
        }
        return res;
    }

    private File getTmpRecordFile(int index) {
        File file = new File(this.mContext.getCacheDir(), "beauty-records");
        if (file.exists() || file.mkdir()) {
            return new File(file, "beauty_record_temp_" + index);
        }
        return null;
    }
}
