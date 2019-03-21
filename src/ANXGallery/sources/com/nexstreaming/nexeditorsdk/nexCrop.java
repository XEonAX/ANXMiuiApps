package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.FaceDetector;
import android.media.FaceDetector.Face;
import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.nexstreaming.kminternal.kinemaster.utils.facedetect.a;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexCropOf;
import java.io.File;

public final class nexCrop implements Cloneable {
    public static final int ABSTRACT_DIMENSION = 100000;
    static final String TAG = "nexCrop";
    private int clip_druation = 0;
    private int facedetect_speed = BaiduSceneResult.SHOOTING;
    private boolean m_endLock = false;
    private float[] m_endMatrix;
    int m_endPositionBottom = 0;
    int m_endPositionLeft = 0;
    int m_endPositionRight = 0;
    int m_endPositionTop = 0;
    private float m_faceBounds_bottom;
    private float m_faceBounds_left;
    private float m_faceBounds_right;
    private boolean m_faceBounds_set;
    private float m_faceBounds_top;
    int m_facePositionBottom = 0;
    int m_facePositionLeft = 0;
    int m_facePositionRight = 0;
    int m_facePositionTop = 0;
    private int m_height = 0;
    private final String m_mediaPath;
    int m_rotatedEndPositionBottom = 0;
    int m_rotatedEndPositionLeft = 0;
    int m_rotatedEndPositionRight = 0;
    int m_rotatedEndPositionTop = 0;
    int m_rotatedFacePositionBottom = 0;
    int m_rotatedFacePositionLeft = 0;
    int m_rotatedFacePositionRight = 0;
    int m_rotatedFacePositionTop = 0;
    int m_rotatedStartPositionBottom = 0;
    int m_rotatedStartPositionLeft = 0;
    int m_rotatedStartPositionRight = 0;
    int m_rotatedStartPositionTop = 0;
    int m_rotation = 0;
    private boolean m_startLock = false;
    private float[] m_startMatrix;
    int m_startPositionBottom = 0;
    int m_startPositionLeft = 0;
    int m_startPositionRight = 0;
    int m_startPositionTop = 0;
    private int m_width = 0;

    public enum CropMode {
        FIT,
        FILL,
        PAN_RAND,
        PAN_FACE,
        NONE,
        PANORAMA
    }

    private boolean isSolid() {
        return this.m_mediaPath != null && this.m_mediaPath.startsWith("@solid:") && this.m_mediaPath.endsWith(".jpg");
    }

    protected static nexCrop clone(nexCrop nexcrop) {
        try {
            return (nexCrop) nexcrop.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }

    nexCrop(String str, int i, int i2, int i3, int i4) {
        this.m_mediaPath = str;
        this.m_width = i;
        this.m_height = i2;
        this.m_rotation = i3;
        this.clip_druation = i4;
        randomizeStartEndPosition(false, CropMode.PAN_RAND);
    }

    void setRotate(int i) {
        if (i != this.m_rotation) {
            this.m_rotation = i;
            if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
                if (this.m_rotatedStartPositionLeft == 0 && this.m_rotatedStartPositionBottom == 0 && this.m_rotatedStartPositionRight == 0 && this.m_rotatedStartPositionTop == 0) {
                    randomizeStartEndPosition(false, CropMode.PAN_RAND);
                }
            } else if (this.m_startPositionLeft == 0 && this.m_startPositionBottom == 0 && this.m_startPositionRight == 0 && this.m_startPositionTop == 0) {
                randomizeStartEndPosition(false, CropMode.PAN_RAND);
            }
        }
    }

    public int getRotate() {
        return this.m_rotation;
    }

    public int getWidth() {
        return this.m_width;
    }

    public int getHeight() {
        return this.m_height;
    }

    private Matrix matrixForRect(Rect rect) {
        return matrixForRect((float) rect.left, (float) rect.top, (float) rect.right, (float) rect.bottom);
    }

    private Matrix matrixForRect(float f, float f2, float f3, float f4) {
        Matrix matrix = new Matrix();
        matrix.postTranslate(-f, -f2);
        matrix.postScale(1.7777778f / (f3 - f), 1.0f / (f4 - f2));
        return matrix;
    }

    public void shrinkToAspect(Rect rect, float f) {
        int width;
        if (((float) rect.width()) / ((float) rect.height()) < f) {
            width = (int) (((float) rect.width()) / f);
            rect.top = rect.centerY() - (width / 2);
            rect.bottom = width + rect.top;
            return;
        }
        width = (int) (((float) rect.height()) * f);
        rect.left = rect.centerX() - (width / 2);
        rect.right = width + rect.left;
    }

    public void growToAspect(Rect rect, float f) {
        int height;
        if (((float) rect.width()) / ((float) rect.height()) < f) {
            height = (int) (((float) rect.height()) * f);
            rect.left = rect.centerX() - (height / 2);
            rect.right = height + rect.left;
            return;
        }
        height = (int) (((float) rect.width()) / f);
        rect.top = rect.centerY() - (height / 2);
        rect.bottom = height + rect.top;
    }

    public void randomizeStartEndPosition(boolean z, CropMode cropMode) {
        int height;
        int width;
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        getStartPosition(rect);
        getEndPosition(rect2);
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            height = getHeight();
            width = getWidth();
        } else {
            height = getWidth();
            width = getHeight();
        }
        if (height >= 1 && width >= 1) {
            int aspectRatio;
            Rect rect3;
            if (isSolid()) {
                rect = new Rect(2, 2, height - 2, width - 2);
                setStartPosition(rect);
                setEndPosition(rect);
            } else if (cropMode == CropMode.FILL) {
                rect = new Rect(0, 0, height, width);
                shrinkToAspect(rect, nexApplicationConfig.getAspectRatio());
                setStartPosition(rect);
                setEndPosition(rect);
            } else if (cropMode == CropMode.FIT) {
                rect = new Rect(0, 0, height, width);
                growToAspect(rect, nexApplicationConfig.getAspectRatio());
                setStartPosition(rect);
                setEndPosition(rect);
            } else if (cropMode == CropMode.PANORAMA) {
                float f = (float) (height / width);
                if (f < nexApplicationConfig.getAspectRatio()) {
                    aspectRatio = (int) (((float) height) / nexApplicationConfig.getAspectRatio());
                    rect2 = new Rect(0, 0, height, aspectRatio);
                    rect3 = new Rect(0, width - aspectRatio, height, width);
                    if (Math.random() < 0.5d) {
                        setStartPosition(rect2);
                        setEndPosition(rect3);
                        return;
                    }
                    setStartPosition(rect3);
                    setEndPosition(rect2);
                } else if (f > nexApplicationConfig.getAspectRatio()) {
                    aspectRatio = (int) (((float) width) * nexApplicationConfig.getAspectRatio());
                    rect2 = new Rect(0, 0, aspectRatio, width);
                    rect3 = new Rect(height - aspectRatio, 0, height, width);
                    if (Math.random() < 0.5d) {
                        setStartPosition(rect2);
                        setEndPosition(rect3);
                        return;
                    }
                    setStartPosition(rect3);
                    setEndPosition(rect2);
                } else {
                    rect = new Rect(0, 0, height, width);
                    shrinkToAspect(rect, nexApplicationConfig.getAspectRatio());
                    setStartPosition(rect);
                    setEndPosition(rect);
                }
            } else {
                rect3 = new Rect();
                if (rect3.isEmpty()) {
                    rect3.set(0, 0, (height * 3) / 4, (width * 3) / 4);
                    rect3.offset((int) ((((double) height) * Math.random()) / 4.0d), (int) ((((double) width) * Math.random()) / 4.0d));
                } else {
                    aspectRatio = (height / 4) - rect3.width();
                    if (aspectRatio >= 2) {
                        rect3.left -= aspectRatio / 2;
                        rect3.right = (aspectRatio / 2) + rect3.right;
                    }
                    aspectRatio = (width / 4) - rect3.height();
                    if (aspectRatio >= 2) {
                        rect3.top -= aspectRatio / 2;
                        rect3.bottom = (aspectRatio / 2) + rect3.bottom;
                    }
                    growToAspect(rect3, nexApplicationConfig.getAspectRatio());
                    if (!rect3.intersect(0, 0, height, width)) {
                        rect3.set(0, 0, (height * 2) / 3, (width * 2) / 3);
                        rect3.offset((int) ((((double) height) * Math.random()) / 3.0d), (int) ((((double) width) * Math.random()) / 3.0d));
                    }
                }
                shrinkToAspect(rect3, nexApplicationConfig.getAspectRatio());
                rect2 = new Rect(0, 0, height, width);
                applyCropSpeed(rect2, rect3, height, width, getFaceDetectSpeed(), getClipDuration());
                shrinkToAspect(rect2, nexApplicationConfig.getAspectRatio());
                shrinkToAspect(rect3, nexApplicationConfig.getAspectRatio());
                if (!rect3.isEmpty()) {
                    if (Math.random() < 0.5d) {
                        setStartPosition(rect2);
                        setEndPosition(rect3);
                    } else {
                        setStartPosition(rect3);
                        setEndPosition(rect2);
                    }
                }
                Math.random();
            }
        }
    }

    public void randomizeStartEndPosition(boolean z, CropMode cropMode, float f) {
        int height;
        int width;
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        getStartPosition(rect);
        getEndPosition(rect2);
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            height = getHeight();
            width = getWidth();
        } else {
            height = getWidth();
            width = getHeight();
        }
        if (height >= 1 && width >= 1) {
            int i;
            Rect rect3;
            if (isSolid()) {
                rect = new Rect(2, 2, height - 2, width - 2);
                setStartPosition(rect);
                setEndPosition(rect);
            } else if (cropMode == CropMode.FILL) {
                rect = new Rect(0, 0, height, width);
                shrinkToAspect(rect, f);
                setStartPosition(rect);
                setEndPosition(rect);
            } else if (cropMode == CropMode.FIT) {
                rect = new Rect(0, 0, height, width);
                growToAspect(rect, f);
                setStartPosition(rect);
                setEndPosition(rect);
            } else if (cropMode == CropMode.PANORAMA) {
                float f2 = (float) (height / width);
                if (f2 < f) {
                    i = (int) (((float) height) / f);
                    rect2 = new Rect(0, 0, height, i);
                    rect3 = new Rect(0, width - i, height, width);
                    if (Math.random() < 0.5d) {
                        setStartPosition(rect2);
                        setEndPosition(rect3);
                        return;
                    }
                    setStartPosition(rect3);
                    setEndPosition(rect2);
                } else if (f2 > f) {
                    i = (int) (((float) width) * f);
                    rect2 = new Rect(0, 0, i, width);
                    rect3 = new Rect(height - i, 0, height, width);
                    if (Math.random() < 0.5d) {
                        setStartPosition(rect2);
                        setEndPosition(rect3);
                        return;
                    }
                    setStartPosition(rect3);
                    setEndPosition(rect2);
                } else {
                    rect = new Rect(0, 0, height, width);
                    shrinkToAspect(rect, f);
                    setStartPosition(rect);
                    setEndPosition(rect);
                }
            } else {
                rect3 = new Rect();
                if (rect3.isEmpty()) {
                    rect3.set(0, 0, (height * 3) / 4, (width * 3) / 4);
                    rect3.offset((int) ((((double) height) * Math.random()) / 4.0d), (int) ((((double) width) * Math.random()) / 4.0d));
                } else {
                    i = (height / 4) - rect3.width();
                    if (i >= 2) {
                        rect3.left -= i / 2;
                        rect3.right = (i / 2) + rect3.right;
                    }
                    i = (width / 4) - rect3.height();
                    if (i >= 2) {
                        rect3.top -= i / 2;
                        rect3.bottom = (i / 2) + rect3.bottom;
                    }
                    growToAspect(rect3, f);
                    if (!rect3.intersect(0, 0, height, width)) {
                        rect3.set(0, 0, (height * 2) / 3, (width * 2) / 3);
                        rect3.offset((int) ((((double) height) * Math.random()) / 3.0d), (int) ((((double) width) * Math.random()) / 3.0d));
                    }
                }
                shrinkToAspect(rect3, f);
                rect2 = new Rect(0, 0, height, width);
                applyCropSpeed(rect2, rect3, height, width, getFaceDetectSpeed(), this.clip_druation);
                shrinkToAspect(rect2, nexApplicationConfig.getAspectRatio());
                shrinkToAspect(rect3, nexApplicationConfig.getAspectRatio());
                if (!rect3.isEmpty()) {
                    if (Math.random() < 0.5d) {
                        setStartPosition(rect2);
                        setEndPosition(rect3);
                    } else {
                        setStartPosition(rect3);
                        setEndPosition(rect2);
                    }
                }
                Math.random();
            }
        }
    }

    public void getStartPosition(Rect rect) {
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            rect.bottom = (this.m_rotatedStartPositionBottom * this.m_width) / ABSTRACT_DIMENSION;
            rect.left = (this.m_rotatedStartPositionLeft * this.m_height) / ABSTRACT_DIMENSION;
            rect.right = (this.m_rotatedStartPositionRight * this.m_height) / ABSTRACT_DIMENSION;
            rect.top = (this.m_rotatedStartPositionTop * this.m_width) / ABSTRACT_DIMENSION;
            return;
        }
        rect.bottom = (this.m_startPositionBottom * this.m_height) / ABSTRACT_DIMENSION;
        rect.left = (this.m_startPositionLeft * this.m_width) / ABSTRACT_DIMENSION;
        rect.right = (this.m_startPositionRight * this.m_width) / ABSTRACT_DIMENSION;
        rect.top = (this.m_startPositionTop * this.m_height) / ABSTRACT_DIMENSION;
    }

    public void setStartPosition(Rect rect) {
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            this.m_rotatedStartPositionBottom = (rect.bottom * ABSTRACT_DIMENSION) / this.m_width;
            this.m_rotatedStartPositionLeft = (rect.left * ABSTRACT_DIMENSION) / this.m_height;
            this.m_rotatedStartPositionRight = (rect.right * ABSTRACT_DIMENSION) / this.m_height;
            this.m_rotatedStartPositionTop = (rect.top * ABSTRACT_DIMENSION) / this.m_width;
        } else {
            this.m_startPositionBottom = (rect.bottom * ABSTRACT_DIMENSION) / this.m_height;
            this.m_startPositionLeft = (rect.left * ABSTRACT_DIMENSION) / this.m_width;
            this.m_startPositionRight = (rect.right * ABSTRACT_DIMENSION) / this.m_width;
            this.m_startPositionTop = (rect.top * ABSTRACT_DIMENSION) / this.m_height;
        }
        if (this.m_startMatrix == null) {
            this.m_startMatrix = new float[9];
        }
        matrixForRect(rect).setValues(this.m_startMatrix);
    }

    public void setStartPositionRaw(Rect rect) {
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            this.m_rotatedStartPositionBottom = rect.bottom;
            this.m_rotatedStartPositionLeft = rect.left;
            this.m_rotatedStartPositionRight = rect.right;
            this.m_rotatedStartPositionTop = rect.top;
            return;
        }
        this.m_startPositionBottom = rect.bottom;
        this.m_startPositionLeft = rect.left;
        this.m_startPositionRight = rect.right;
        this.m_startPositionTop = rect.top;
    }

    public void setEndPositionRaw(Rect rect) {
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            this.m_rotatedEndPositionBottom = rect.bottom;
            this.m_rotatedEndPositionLeft = rect.left;
            this.m_rotatedEndPositionRight = rect.right;
            this.m_rotatedEndPositionTop = rect.top;
            return;
        }
        this.m_endPositionBottom = rect.bottom;
        this.m_endPositionLeft = rect.left;
        this.m_endPositionRight = rect.right;
        this.m_endPositionTop = rect.top;
    }

    public void getEndPosition(Rect rect) {
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            rect.bottom = (this.m_rotatedEndPositionBottom * this.m_width) / ABSTRACT_DIMENSION;
            rect.left = (this.m_rotatedEndPositionLeft * this.m_height) / ABSTRACT_DIMENSION;
            rect.right = (this.m_rotatedEndPositionRight * this.m_height) / ABSTRACT_DIMENSION;
            rect.top = (this.m_rotatedEndPositionTop * this.m_width) / ABSTRACT_DIMENSION;
            return;
        }
        rect.bottom = (this.m_endPositionBottom * this.m_height) / ABSTRACT_DIMENSION;
        rect.left = (this.m_endPositionLeft * this.m_width) / ABSTRACT_DIMENSION;
        rect.right = (this.m_endPositionRight * this.m_width) / ABSTRACT_DIMENSION;
        rect.top = (this.m_endPositionTop * this.m_height) / ABSTRACT_DIMENSION;
    }

    public void setEndPosition(Rect rect) {
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            this.m_rotatedEndPositionBottom = (rect.bottom * ABSTRACT_DIMENSION) / this.m_width;
            this.m_rotatedEndPositionLeft = (rect.left * ABSTRACT_DIMENSION) / this.m_height;
            this.m_rotatedEndPositionRight = (rect.right * ABSTRACT_DIMENSION) / this.m_height;
            this.m_rotatedEndPositionTop = (rect.top * ABSTRACT_DIMENSION) / this.m_width;
        } else {
            this.m_endPositionBottom = (rect.bottom * ABSTRACT_DIMENSION) / this.m_height;
            this.m_endPositionLeft = (rect.left * ABSTRACT_DIMENSION) / this.m_width;
            this.m_endPositionRight = (rect.right * ABSTRACT_DIMENSION) / this.m_width;
            this.m_endPositionTop = (rect.top * ABSTRACT_DIMENSION) / this.m_height;
        }
        if (this.m_endMatrix == null) {
            this.m_endMatrix = new float[9];
        }
        matrixForRect(rect).setValues(this.m_endMatrix);
    }

    public void setFacePosition(Rect rect) {
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            this.m_rotatedFacePositionBottom = (rect.bottom * ABSTRACT_DIMENSION) / this.m_width;
            this.m_rotatedFacePositionLeft = (rect.left * ABSTRACT_DIMENSION) / this.m_height;
            this.m_rotatedFacePositionRight = (rect.right * ABSTRACT_DIMENSION) / this.m_height;
            this.m_rotatedFacePositionTop = (rect.top * ABSTRACT_DIMENSION) / this.m_width;
            return;
        }
        this.m_facePositionBottom = (rect.bottom * ABSTRACT_DIMENSION) / this.m_height;
        this.m_facePositionLeft = (rect.left * ABSTRACT_DIMENSION) / this.m_width;
        this.m_facePositionRight = (rect.right * ABSTRACT_DIMENSION) / this.m_width;
        this.m_facePositionTop = (rect.top * ABSTRACT_DIMENSION) / this.m_height;
    }

    public void getFacePositionRaw(Rect rect) {
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            rect.left = this.m_rotatedFacePositionLeft;
            rect.top = this.m_rotatedFacePositionTop;
            rect.right = this.m_rotatedFacePositionRight;
            rect.bottom = this.m_rotatedFacePositionBottom;
            return;
        }
        rect.left = this.m_facePositionLeft;
        rect.top = this.m_facePositionTop;
        rect.right = this.m_facePositionRight;
        rect.bottom = this.m_facePositionBottom;
    }

    public void getStartPositionRaw(Rect rect) {
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            rect.bottom = this.m_rotatedStartPositionBottom;
            rect.left = this.m_rotatedStartPositionLeft;
            rect.right = this.m_rotatedStartPositionRight;
            rect.top = this.m_rotatedStartPositionTop;
            return;
        }
        rect.bottom = this.m_startPositionBottom;
        rect.left = this.m_startPositionLeft;
        rect.right = this.m_startPositionRight;
        rect.top = this.m_startPositionTop;
    }

    public void getEndPositionRaw(Rect rect) {
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            rect.bottom = this.m_rotatedEndPositionBottom;
            rect.left = this.m_rotatedEndPositionLeft;
            rect.right = this.m_rotatedEndPositionRight;
            rect.top = this.m_rotatedEndPositionTop;
            return;
        }
        rect.bottom = this.m_endPositionBottom;
        rect.left = this.m_endPositionLeft;
        rect.right = this.m_endPositionRight;
        rect.top = this.m_endPositionTop;
    }

    public void resetStartEndPosition() {
        this.m_startPositionLeft = 0;
        this.m_startPositionBottom = ABSTRACT_DIMENSION;
        this.m_startPositionRight = ABSTRACT_DIMENSION;
        this.m_startPositionTop = 0;
        this.m_endPositionLeft = 0;
        this.m_endPositionBottom = ABSTRACT_DIMENSION;
        this.m_endPositionRight = ABSTRACT_DIMENSION;
        this.m_endPositionTop = 0;
        this.m_rotatedStartPositionLeft = 0;
        this.m_rotatedStartPositionBottom = ABSTRACT_DIMENSION;
        this.m_rotatedStartPositionRight = ABSTRACT_DIMENSION;
        this.m_rotatedStartPositionTop = 0;
        this.m_rotatedEndPositionLeft = 0;
        this.m_rotatedEndPositionBottom = ABSTRACT_DIMENSION;
        this.m_rotatedEndPositionRight = ABSTRACT_DIMENSION;
        this.m_rotatedEndPositionTop = 0;
    }

    void fitStartEndPosition(int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        if (this.m_rotation == 90 || this.m_rotation == nexClip.kClip_Rotate_270) {
            width = getHeight();
            height = getWidth();
        }
        Rect rect = new Rect(0, 0, width, height);
        growToAspect(rect, ((float) i) / ((float) i2));
        setStartPosition(rect);
        setEndPosition(rect);
    }

    private static Rect getFitRwaPosition(int i, int i2, float f, float f2, boolean z) {
        Rect rect = new Rect(0, 0, i, i2);
        float f3 = f / f2;
        int height;
        if (((float) rect.width()) / ((float) rect.height()) < f3) {
            height = (int) (f3 * ((float) rect.height()));
            rect.left = rect.centerX() - (height / 2);
            rect.right = height + rect.left;
        } else {
            height = (int) (((float) rect.width()) / f3);
            rect.top = rect.centerY() - (height / 2);
            rect.bottom = height + rect.top;
        }
        int i3 = (rect.left * ABSTRACT_DIMENSION) / i;
        int i4 = (rect.right * ABSTRACT_DIMENSION) / i;
        int i5 = (rect.top * ABSTRACT_DIMENSION) / i2;
        rect.set(i3, i5, i4, (rect.bottom * ABSTRACT_DIMENSION) / i2);
        if (i5 == 0) {
            Log.d(TAG, "getFitRwaPosition() raw=" + rect.toString());
        } else if (z) {
            enhancedCrop(rect, i, i2, f, f2);
        }
        return rect;
    }

    static void enhancedCrop(Rect rect, int i, int i2, float f, float f2) {
        int i3 = rect.left;
        int i4 = rect.top;
        int i5 = rect.right;
        int i6 = rect.bottom;
        if (rect.top != 0) {
            float f3 = (float) (i6 - i4);
            float f4 = (f3 / f2) / ((1.0f / ((float) i2)) * 100000.0f);
            i4 = (int) (((float) Math.abs(i4)) / (f3 / f2));
            int i7 = (int) (((float) i4) / 10.0f);
            int i8 = i4 + i7;
            int i9 = i4 - i7;
            float f5 = 1.0f;
            i7 = i4 - i7;
            while (i7 < i8) {
                float min = (float) Math.min(Math.ceil((double) (((float) i7) * f4)) - ((double) (((float) i7) * f4)), ((double) (((float) i7) * f4)) - Math.floor((double) (((float) i7) * f4)));
                if (f5 > min) {
                    i6 = i7;
                } else {
                    min = f5;
                    i6 = i9;
                }
                i7++;
                i9 = i6;
                f5 = min;
            }
            i4 = Math.round((f3 / f2) * ((float) i9)) * -1;
            rect.set(i3, i4, i5, (int) (((float) i4) + f3));
            Log.d(TAG, "enhancedCrop() highQuality=" + i9 + ", q=" + rect.toString());
        }
    }

    public void getFaceBounds(Rect rect, Context context) {
        a a = a.a(this.m_mediaPath);
        if (a == null) {
            Log.d(TAG, "Second face detection with use filter");
            a = new a(new File(this.m_mediaPath), true, context);
        }
        float width;
        if (a != null) {
            RectF rectF = new RectF();
            a.a(rectF);
            width = (float) getWidth();
            float height = (float) getHeight();
            rect.set((int) (rectF.left * width), (int) (rectF.top * height), (int) (width * rectF.right), (int) (rectF.bottom * height));
            return;
        }
        calculateFaceBounds();
        if (this.m_faceBounds_set) {
            width = (float) getWidth();
            float height2 = (float) getHeight();
            rect.set((int) (this.m_faceBounds_left * width), (int) (this.m_faceBounds_top * height2), (int) (width * this.m_faceBounds_right), (int) (height2 * this.m_faceBounds_bottom));
            return;
        }
        rect.setEmpty();
    }

    private void calculateFaceBounds() {
        if (!this.m_faceBounds_set) {
            Bitmap loadImageForFaceRecognition = loadImageForFaceRecognition();
            if (loadImageForFaceRecognition != null) {
                Face[] faceArr = new Face[32];
                int findFaces = new FaceDetector(loadImageForFaceRecognition.getWidth(), loadImageForFaceRecognition.getHeight(), 32).findFaces(loadImageForFaceRecognition, faceArr);
                RectF rectF = new RectF();
                RectF rectF2 = new RectF();
                PointF pointF = new PointF();
                float width = (float) getWidth();
                float height = (float) getHeight();
                float f = width / 30.0f;
                float f2 = height / 30.0f;
                for (int i = 0; i < findFaces; i++) {
                    Log.d(TAG, "face : " + i + " c=" + faceArr[i].confidence() + " e=" + faceArr[i].eyesDistance() + " faceMinWidth=" + f + " faceMinHeight=" + f2);
                    if (((double) faceArr[i].confidence()) >= 0.4d) {
                        faceArr[i].getMidPoint(pointF);
                        float eyesDistance = faceArr[i].eyesDistance();
                        if (eyesDistance >= f && eyesDistance >= f2) {
                            float f3 = (pointF.x + (eyesDistance / 2.0f)) / width;
                            float f4 = f3;
                            rectF2.set((pointF.x - (eyesDistance / 2.0f)) / width, (pointF.y - (eyesDistance / 3.0f)) / height, f4, (((eyesDistance / 3.0f) * 2.0f) + pointF.y) / height);
                            rectF.union(rectF2);
                        }
                    }
                }
                loadImageForFaceRecognition.recycle();
                Log.d(TAG, "face bounds : " + rectF);
                if (!rectF.isEmpty()) {
                    float width2 = 0.6f - rectF.width();
                    float height2 = 0.6f - rectF.height();
                    if (width2 > 0.0f) {
                        rectF.left -= width2 / 2.0f;
                        rectF.right = (width2 / 2.0f) + rectF.right;
                    }
                    if (height2 > 0.0f) {
                        rectF.top -= height2 / 2.0f;
                        rectF.bottom += height2 / 2.0f;
                    }
                }
                Log.d(TAG, "face bounds (final) : " + rectF);
                this.m_faceBounds_set = true;
                this.m_faceBounds_left = Math.max(0.0f, rectF.left);
                this.m_faceBounds_top = Math.max(0.0f, rectF.top);
                this.m_faceBounds_right = Math.min(rectF.right, 1.0f);
                this.m_faceBounds_bottom = Math.min(rectF.bottom, 1.0f);
            }
        }
    }

    private Bitmap loadImageForFaceRecognition() {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(this.m_mediaPath, options);
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Config.RGB_565;
        if (options.outWidth < 1 || options.outHeight < 1) {
            return null;
        }
        int i = (options.outHeight * 720) / options.outWidth;
        options.inSampleSize = 1;
        while (true) {
            if (((double) (options.outHeight / options.inSampleSize)) <= ((double) i) * 1.5d && ((double) (options.outWidth / options.inSampleSize)) <= ((double) 720) * 1.5d) {
                break;
            }
            options.inSampleSize *= 2;
        }
        Log.d(TAG, "loadImageForFaceRecognition:   bounds decoded : width,height=" + options.outWidth + "," + options.outHeight + "; target w,h=" + 720 + "," + i + "; sampleSize=" + options.inSampleSize);
        Bitmap decodeFile = BitmapFactory.decodeFile(this.m_mediaPath, options);
        if (decodeFile == null) {
            return null;
        }
        if (decodeFile.getConfig() == Config.RGB_565) {
            return decodeFile;
        }
        Bitmap createBitmap = Bitmap.createBitmap(decodeFile.getWidth(), decodeFile.getHeight(), Config.RGB_565);
        new Canvas(createBitmap).drawBitmap(decodeFile, 0.0f, 0.0f, null);
        decodeFile.recycle();
        return createBitmap;
    }

    nexCropOf getSaveData() {
        nexCropOf nexcropof = new nexCropOf();
        nexcropof.m_startPositionLeft = this.m_startPositionLeft;
        nexcropof.m_startPositionBottom = this.m_startPositionBottom;
        nexcropof.m_startPositionRight = this.m_startPositionRight;
        nexcropof.m_startPositionTop = this.m_startPositionTop;
        nexcropof.m_endPositionLeft = this.m_endPositionLeft;
        nexcropof.m_endPositionBottom = this.m_endPositionBottom;
        nexcropof.m_endPositionRight = this.m_endPositionRight;
        nexcropof.m_endPositionTop = this.m_endPositionTop;
        nexcropof.m_rotatedStartPositionLeft = this.m_rotatedStartPositionLeft;
        nexcropof.m_rotatedStartPositionBottom = this.m_rotatedStartPositionBottom;
        nexcropof.m_rotatedStartPositionRight = this.m_rotatedStartPositionRight;
        nexcropof.m_rotatedStartPositionTop = this.m_rotatedStartPositionTop;
        nexcropof.m_rotatedEndPositionLeft = this.m_rotatedEndPositionLeft;
        nexcropof.m_rotatedEndPositionBottom = this.m_rotatedEndPositionBottom;
        nexcropof.m_rotatedEndPositionRight = this.m_rotatedEndPositionRight;
        nexcropof.m_rotatedEndPositionTop = this.m_rotatedEndPositionTop;
        nexcropof.m_facePositionLeft = this.m_facePositionLeft;
        nexcropof.m_facePositionTop = this.m_facePositionTop;
        nexcropof.m_facePositionRight = this.m_facePositionRight;
        nexcropof.m_facePositionBottom = this.m_facePositionBottom;
        nexcropof.m_rotatedFacePositionLeft = this.m_rotatedFacePositionLeft;
        nexcropof.m_rotatedFacePositionTop = this.m_rotatedFacePositionTop;
        nexcropof.m_rotatedFacePositionRight = this.m_rotatedFacePositionRight;
        nexcropof.m_rotatedFacePositionBottom = this.m_rotatedFacePositionBottom;
        nexcropof.m_rotation = this.m_rotation;
        nexcropof.m_width = this.m_width;
        nexcropof.m_height = this.m_height;
        nexcropof.m_faceBounds_left = this.m_faceBounds_left;
        nexcropof.m_faceBounds_top = this.m_faceBounds_top;
        nexcropof.m_faceBounds_right = this.m_faceBounds_right;
        nexcropof.m_faceBounds_bottom = this.m_faceBounds_bottom;
        nexcropof.m_faceBounds_set = this.m_faceBounds_set;
        return nexcropof;
    }

    nexCrop(String str, nexCropOf nexcropof) {
        this.m_startPositionLeft = nexcropof.m_startPositionLeft;
        this.m_startPositionBottom = nexcropof.m_startPositionBottom;
        this.m_startPositionRight = nexcropof.m_startPositionRight;
        this.m_startPositionTop = nexcropof.m_startPositionTop;
        this.m_endPositionLeft = nexcropof.m_endPositionLeft;
        this.m_endPositionBottom = nexcropof.m_endPositionBottom;
        this.m_endPositionRight = nexcropof.m_endPositionRight;
        this.m_endPositionTop = nexcropof.m_endPositionTop;
        this.m_rotatedStartPositionLeft = nexcropof.m_rotatedStartPositionLeft;
        this.m_rotatedStartPositionBottom = nexcropof.m_rotatedStartPositionBottom;
        this.m_rotatedStartPositionRight = nexcropof.m_rotatedStartPositionRight;
        this.m_rotatedStartPositionTop = nexcropof.m_rotatedStartPositionTop;
        this.m_rotatedEndPositionLeft = nexcropof.m_rotatedEndPositionLeft;
        this.m_rotatedEndPositionBottom = nexcropof.m_rotatedEndPositionBottom;
        this.m_rotatedEndPositionRight = nexcropof.m_rotatedEndPositionRight;
        this.m_rotatedEndPositionTop = nexcropof.m_rotatedEndPositionTop;
        this.m_facePositionLeft = nexcropof.m_facePositionLeft;
        this.m_facePositionTop = nexcropof.m_facePositionTop;
        this.m_facePositionRight = nexcropof.m_facePositionRight;
        this.m_facePositionBottom = nexcropof.m_facePositionBottom;
        this.m_rotatedFacePositionLeft = nexcropof.m_rotatedFacePositionLeft;
        this.m_rotatedFacePositionTop = nexcropof.m_rotatedFacePositionTop;
        this.m_rotatedFacePositionRight = nexcropof.m_rotatedFacePositionRight;
        this.m_rotatedFacePositionBottom = nexcropof.m_rotatedFacePositionBottom;
        this.m_rotation = nexcropof.m_rotation;
        this.m_width = nexcropof.m_width;
        this.m_height = nexcropof.m_height;
        this.m_mediaPath = str;
        this.m_faceBounds_left = nexcropof.m_faceBounds_left;
        this.m_faceBounds_top = nexcropof.m_faceBounds_top;
        this.m_faceBounds_right = nexcropof.m_faceBounds_right;
        this.m_faceBounds_bottom = nexcropof.m_faceBounds_bottom;
        this.m_faceBounds_set = nexcropof.m_faceBounds_set;
    }

    public void setFaceDetectSpeed(int i) {
        this.facedetect_speed = i;
    }

    public int getFaceDetectSpeed() {
        return this.facedetect_speed;
    }

    public void setClipDuration(int i) {
        this.clip_druation = i;
    }

    public int getClipDuration() {
        return this.clip_druation;
    }

    public void applyCropSpeed(Rect rect, Rect rect2, int i, int i2, int i3, int i4) {
        if (!(getEndPosionLock() || rect2.intersect(0, 0, i, i2))) {
            rect2.set(0, 0, (i * 2) / 3, (i2 * 2) / 3);
            rect2.offset((int) ((((double) i) * Math.random()) / 3.0d), (int) ((((double) i2) * Math.random()) / 3.0d));
        }
        int i5 = (int) (((double) i3) * ((((double) ((float) i4)) * 0.5d) / 1000.0d));
        if (i3 < BaiduSceneResult.SHOOTING) {
            rect.set(rect2.left - ((i * i5) / 1000), rect2.top - ((i2 * i5) / 1000), rect2.right + ((i * i5) / 1000), (((i5 * i2) / 1000) * 3) + rect2.bottom);
        } else {
            rect.set(rect2.left - (i / 4), rect2.top - (i2 / 4), rect2.right + (i / 4), rect2.bottom + (i2 / 4));
        }
        if (!rect.intersect(0, 0, i, i2)) {
            rect.set(0, 0, (i * 3) / 4, (i2 * 3) / 4);
            rect.offset((int) ((((double) i) * Math.random()) / 4.0d), (int) ((((double) i2) * Math.random()) / 4.0d));
        }
    }

    public void setStartPositionLock(boolean z) {
        this.m_startLock = z;
    }

    public boolean getStartPosionLock() {
        return this.m_startLock;
    }

    public void setEndPositionLock(boolean z) {
        this.m_endLock = z;
    }

    public boolean getEndPosionLock() {
        return this.m_endLock;
    }
}
