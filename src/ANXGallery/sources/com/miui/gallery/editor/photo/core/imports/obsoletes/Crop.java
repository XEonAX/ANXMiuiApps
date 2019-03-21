package com.miui.gallery.editor.photo.core.imports.obsoletes;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.Keep;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.compat.interpolator.PathInterpolatorCompat;
import com.miui.gallery.editor.photo.core.imports.obsoletes.EditorView.Plugin;
import com.miui.gallery.editor.photo.core.imports.obsoletes.TranslateDetector.OnTranslateListener;
import com.miui.gallery.editor.photo.utils.parcelable.ParcelableMatrix;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ScreenUtils;
import java.util.ArrayList;
import java.util.List;

public class Crop extends Plugin {
    private float mAdjustDegree;
    private AnimatorSet mAnimatorSet;
    private AspectRatio mAspectRatio = AspectRatio.RATIO_NONE;
    private Rect mBgBounds = new Rect();
    private Rect mBgPadding = new Rect();
    private BoundsFixCallback mBoundsFixCallback = new BoundsFixCallback() {
        public void onDone() {
            Crop.this.postCropFinish();
        }
    };
    private ValueAnimator mCanvasAnimator;
    private Rect mClipBounds = new Rect();
    private RectF mCropArea = new RectF();
    private boolean mCropAreaChanged = false;
    private Drawable mCropWindow;
    private Runnable mEditFinished = new Runnable() {
        public void run() {
            Crop.this.animCropAreaChanged(null);
        }
    };
    private EventState mEventState = EventState.IDLE;
    private boolean mFirstIn = true;
    private Matrix mGlobalMatrix = new Matrix();
    private int mGuideLineAlpha;
    private ObjectAnimator mGuideLineAnimator;
    private Runnable mGuideLineFinished = new Runnable() {
        public void run() {
            Crop.this.animGuideLine(false);
            if (Crop.this.mOnCropChangedListener != null) {
                Crop.this.mOnCropChangedListener.changeRotationState(true);
            }
        }
    };
    private GuideLine mGuideLineMode = GuideLine.CROP;
    private float mGuideLineSize;
    private float mInitialDegree;
    private Matrix mInitialMatrix;
    private RectF mInvertArea = new RectF();
    private Matrix mInvertMatrix = new Matrix();
    private int mMaskColor;
    private int mMaskColorAlpha;
    private ObjectAnimator mMaskColorAnimator;
    private Matrix mMatrix = new Matrix();
    private int mMsgCropFinish;
    private int mMsgGuideLineFinish;
    private PointF mOffset = new PointF();
    private OnCropChangedListener mOnCropChangedListener;
    private Paint mPaint = new Paint();
    private AnimatorListener mPerformCropFinish = new AnimatorListener() {
        public void onAnimationStart(Animator animation) {
            Crop.this.getEventHandler().removeMessages(Crop.this.mMsgCropFinish);
        }

        public void onAnimationEnd(Animator animation) {
            Crop.this.performCropFinished();
        }

        public void onAnimationCancel(Animator animation) {
        }

        public void onAnimationRepeat(Animator animation) {
        }
    };
    private RectF mRect = new RectF();
    private ResizeDetector mResizeDetector;
    private float mResizeEdgeSlop;
    private int mRotateDegree;
    private AnimatorListener mRotateListener = new AnimatorListener() {
        public void onAnimationStart(Animator animation) {
        }

        public void onAnimationEnd(Animator animation) {
            Crop.this.getImageMatrix().postConcat(Crop.this.mGlobalMatrix);
            Crop.this.mRotateDegree = Crop.this.mRotateDegree - 90;
            Crop.this.mGlobalMatrix.mapRect(Crop.this.mCropArea);
            Crop.this.mGlobalMatrix.reset();
        }

        public void onAnimationCancel(Animator animation) {
        }

        public void onAnimationRepeat(Animator animation) {
        }
    };
    private AnimatorUpdateListener mRotateUpdateListener = new AnimatorUpdateListener() {
        public void onAnimationUpdate(ValueAnimator animation) {
            float centerX = Crop.this.mCropArea.centerX();
            float centerY = Crop.this.mCropArea.centerY();
            float scale = ((Float) animation.getAnimatedValue("scale")).floatValue();
            Crop.this.mGlobalMatrix.setRotate(((Float) animation.getAnimatedValue("rotate")).floatValue(), centerX, centerY);
            Crop.this.mGlobalMatrix.postScale(scale, scale, centerX, centerY);
            Crop.this.invalidate();
        }
    };
    private PropertyValuesHolder mRotateValues;
    private ScaleGestureDetector mScaleGestureDetector;
    private PropertyValuesHolder mScaleValues;
    private boolean mStartGuideLine = true;
    private RectF mTouchBounds = new RectF();
    private TranslateDetector mTranslateDetector;
    private Matrix mUnmodifiedMatrix = new Matrix();
    private ValueAnimator mWindowAnimator;
    private AnimatorUpdateListener mWindowUpdateListener = new AnimatorUpdateListener() {
        public void onAnimationUpdate(ValueAnimator animation) {
            Crop.this.mCropArea.set((RectF) Crop.this.mWindowAnimator.getAnimatedValue());
            Crop.this.invalidate();
        }
    };
    private PropertyValuesHolder mWindowValues;
    private PorterDuffXfermode mXferModeClear = new PorterDuffXfermode(Mode.CLEAR);

    public interface OnCropChangedListener {
        void changeRotationState(boolean z);

        void onChanged();
    }

    public static class AspectRatio {
        private static final AspectRatio RATIO_NONE = new AspectRatio(0.0f, 0.0f);
        private float mHeight;
        private float mWidth;

        AspectRatio(float width, float height) {
            this.mWidth = width;
            this.mHeight = height;
        }

        public float getHeight(float width) {
            return (width / this.mWidth) * this.mHeight;
        }

        public float getWidth(float height) {
            return (height / this.mHeight) * this.mWidth;
        }
    }

    public static class CropEntry implements Parcelable {
        public static final Creator<CropEntry> CREATOR = new Creator<CropEntry>() {
            public CropEntry createFromParcel(Parcel source) {
                return new CropEntry(source);
            }

            public CropEntry[] newArray(int size) {
                return new CropEntry[size];
            }
        };
        private RectF mCropArea = new RectF();
        private ParcelableMatrix mMatrix = new ParcelableMatrix();
        private RectF mSampleSize = new RectF();

        CropEntry(RectF sample, RectF area, Matrix matrix, float degree) {
            this.mSampleSize.set(sample);
            this.mCropArea.set(area);
            this.mMatrix.set(matrix);
            normalize(this.mSampleSize, this.mCropArea, this.mMatrix, degree);
        }

        public Bitmap apply(Bitmap bitmap) {
            Matrix matrix = new Matrix();
            float scaleX = this.mSampleSize.width() / ((float) bitmap.getWidth());
            float scaleY = this.mSampleSize.height() / ((float) bitmap.getHeight());
            matrix.set(this.mMatrix);
            matrix.postTranslate(-this.mCropArea.left, -this.mCropArea.top);
            matrix.preScale(scaleX, scaleY);
            matrix.postScale(1.0f / scaleX, 1.0f / scaleY);
            int width = Math.round(this.mCropArea.width() / scaleX);
            int height = Math.round(this.mCropArea.height() / scaleY);
            if (width <= 0 || height <= 0) {
                return null;
            }
            Bitmap result = Bitmap.createBitmap(width, height, Config.ARGB_8888);
            new Canvas(result).drawBitmap(bitmap, matrix, new Paint(3));
            return result;
        }

        private static void normalize(RectF sample, RectF cropArea, Matrix matrix, float degree) {
            Matrix normalize = new Matrix();
            RectF scaled = new RectF();
            RectF origin = new RectF();
            normalize.setRotate(degree);
            normalize.mapRect(origin, sample);
            matrix.mapRect(scaled, sample);
            normalize.setScale(origin.width() / scaled.width(), origin.height() / scaled.height());
            normalize.mapRect(cropArea);
            matrix.postConcat(normalize);
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeParcelable(this.mSampleSize, flags);
            dest.writeParcelable(this.mCropArea, flags);
            dest.writeParcelable(this.mMatrix, flags);
        }

        protected CropEntry(Parcel in) {
            this.mSampleSize = (RectF) in.readParcelable(RectF.class.getClassLoader());
            this.mCropArea = (RectF) in.readParcelable(RectF.class.getClassLoader());
            this.mMatrix = (ParcelableMatrix) in.readParcelable(ParcelableMatrix.class.getClassLoader());
        }
    }

    private enum EventState {
        IDLE,
        RESIZE,
        SCALE,
        TRANSLATE,
        ANIMATOR,
        ROTATION,
        SKIP
    }

    private enum GuideLine {
        PREVIEW(0),
        CROP(3),
        ROTATE(9);
        
        int mCount;

        private GuideLine(int count) {
            this.mCount = count;
        }
    }

    private class ResizeDetector {
        private RectF mPreEdit;
        private int mResizeEdge;
        private PointF mResizeStart;

        private ResizeDetector() {
            this.mResizeEdge = 0;
            this.mResizeStart = new PointF();
            this.mPreEdit = new RectF();
        }

        /* synthetic */ ResizeDetector(Crop x0, AnonymousClass1 x1) {
            this();
        }

        protected boolean onTouchEvent(MotionEvent event) {
            if (event.getAction() == 0) {
                resolveResizeEdge(event.getX(), event.getY());
                if (this.mResizeEdge == 0) {
                    return false;
                }
                Crop.this.mEventState = EventState.RESIZE;
                Crop.this.mCropAreaChanged = true;
                this.mResizeStart.set(event.getX(), event.getY());
                Crop.this.postCropProceed();
                return true;
            } else if (Crop.this.mEventState != EventState.RESIZE) {
                return false;
            } else {
                if (event.getAction() == 2) {
                    if (event.getActionIndex() != 0) {
                        return false;
                    }
                    boolean isFreeCrop;
                    float offsetX = event.getX() - this.mResizeStart.x;
                    float offsetY = event.getY() - this.mResizeStart.y;
                    this.mPreEdit.set(Crop.this.mCropArea);
                    if (Crop.this.mAspectRatio == AspectRatio.RATIO_NONE) {
                        isFreeCrop = true;
                    } else {
                        isFreeCrop = false;
                    }
                    PointF offsets = isFreeCrop ? onFreeResize(offsetX, offsetY) : onFixedResize(offsetX, offsetY);
                    PointF pointF = this.mResizeStart;
                    pointF.x += offsets.x;
                    pointF = this.mResizeStart;
                    pointF.y += offsets.y;
                    fixImageBounds(Crop.this.mCropArea);
                    Crop.this.invalidate();
                } else if (event.getAction() == 1 || event.getAction() == 3 || (event.getActionMasked() == 6 && event.getActionIndex() == 0)) {
                    this.mResizeEdge = 0;
                    Crop.this.mEventState = EventState.SKIP;
                    Crop.this.postCropFinish();
                    Crop.this.endManualRotate();
                }
                return true;
            }
        }

        private float checkOtherBoundOffset(int direction, float changeOffset, RectF bounds) {
            RectF access$900;
            if ((direction & 1) != 0) {
                float leftBoundOffset = Crop.this.mCropArea.left - bounds.left;
                if (leftBoundOffset <= 0.0f) {
                    return changeOffset;
                }
                float toLeft;
                if (changeOffset > leftBoundOffset) {
                    toLeft = leftBoundOffset;
                } else {
                    toLeft = changeOffset;
                }
                changeOffset -= toLeft;
                access$900 = Crop.this.mCropArea;
                access$900.left -= toLeft;
                Crop.this.getImageMatrix().postTranslate(-toLeft, 0.0f);
                return changeOffset;
            } else if ((direction & 16) != 0) {
                float topBoundOffset = Crop.this.mCropArea.top - bounds.top;
                if (topBoundOffset <= 0.0f) {
                    return changeOffset;
                }
                float toTop;
                if (changeOffset > topBoundOffset) {
                    toTop = topBoundOffset;
                } else {
                    toTop = changeOffset;
                }
                changeOffset -= toTop;
                access$900 = Crop.this.mCropArea;
                access$900.top -= toTop;
                Crop.this.getImageMatrix().postTranslate(0.0f, -toTop);
                return changeOffset;
            } else if ((direction & 256) != 0) {
                float rightBoundOffset = bounds.right - Crop.this.mCropArea.right;
                if (rightBoundOffset <= 0.0f) {
                    return changeOffset;
                }
                float toRight;
                if (changeOffset > rightBoundOffset) {
                    toRight = rightBoundOffset;
                } else {
                    toRight = changeOffset;
                }
                changeOffset -= toRight;
                access$900 = Crop.this.mCropArea;
                access$900.right += toRight;
                Crop.this.getImageMatrix().postTranslate(toRight, 0.0f);
                return changeOffset;
            } else if ((direction & 4096) == 0) {
                return changeOffset;
            } else {
                float bottomBoundOffset = bounds.bottom - Crop.this.mCropArea.bottom;
                if (bottomBoundOffset <= 0.0f) {
                    return changeOffset;
                }
                float toBottom;
                if (changeOffset > bottomBoundOffset) {
                    toBottom = bottomBoundOffset;
                } else {
                    toBottom = changeOffset;
                }
                changeOffset -= toBottom;
                access$900 = Crop.this.mCropArea;
                access$900.bottom += toBottom;
                Crop.this.getImageMatrix().postTranslate(0.0f, toBottom);
                return changeOffset;
            }
        }

        private PointF onFreeResize(float offsetX, float offsetY) {
            float changeOffset;
            float scale;
            RectF bounds = Crop.this.getBounds();
            RectF image = Crop.this.getImageBounds();
            int minSize = calculateMinSize();
            RectF imageArea = new RectF();
            Crop.this.getImageMatrix().mapRect(imageArea, image);
            Crop.this.getImageMatrix().invert(Crop.this.mInvertMatrix);
            Crop.this.mInvertMatrix.mapRect(Crop.this.mInvertArea, Crop.this.mCropArea);
            cropInImagePoints = new float[4];
            Crop.this.mInvertMatrix.mapPoints(cropInImagePoints, new float[]{Crop.this.mCropArea.left, Crop.this.mCropArea.top, Crop.this.mCropArea.right, Crop.this.mCropArea.bottom});
            float[] imageCropBound = getImageCropBound(imageArea);
            boolean handlerByCornerBound = false;
            float topBoundOffset;
            float leftBoundOffset;
            if ((this.mResizeEdge & 1) == 0 || (this.mResizeEdge & 16) == 0) {
                float bottomBoundOffset;
                if ((this.mResizeEdge & 1) == 0 || (this.mResizeEdge & 4096) == 0) {
                    float rightBoundOffset;
                    if ((this.mResizeEdge & 256) == 0 || (this.mResizeEdge & 16) == 0) {
                        if ((this.mResizeEdge & 256) != 0 && (this.mResizeEdge & 4096) != 0 && offsetX >= 0.0f && offsetY >= 0.0f) {
                            rightBoundOffset = imageCropBound[0] - Crop.this.mCropArea.right;
                            if (offsetX > rightBoundOffset) {
                                offsetX = rightBoundOffset;
                            }
                            bottomBoundOffset = imageCropBound[1] - Crop.this.mCropArea.bottom;
                            if (offsetY > bottomBoundOffset) {
                                offsetY = bottomBoundOffset;
                            }
                            if (bounds.bottom <= Crop.this.mCropArea.bottom && bottomBoundOffset != 0.0f) {
                                changeOffset = Math.abs(offsetY);
                                handlerByCornerBound = changeOffset > 0.0f;
                                scale = 1.0f - (checkOtherBoundOffset(16, changeOffset, bounds) / image.height());
                                Crop.this.getImageMatrix().preScale(scale, scale, cropInImagePoints[0], cropInImagePoints[1]);
                            } else if (bounds.right <= Crop.this.mCropArea.right && rightBoundOffset != 0.0f) {
                                changeOffset = Math.abs(offsetX);
                                handlerByCornerBound = changeOffset > 0.0f;
                                scale = 1.0f - (checkOtherBoundOffset(1, changeOffset, bounds) / image.width());
                                Crop.this.getImageMatrix().preScale(scale, scale, cropInImagePoints[0], cropInImagePoints[1]);
                            }
                        }
                    } else if (offsetX >= 0.0f && offsetY <= 0.0f) {
                        rightBoundOffset = imageCropBound[0] - Crop.this.mCropArea.right;
                        if (offsetX > rightBoundOffset) {
                            offsetX = rightBoundOffset;
                        }
                        topBoundOffset = imageCropBound[1] - Crop.this.mCropArea.top;
                        if (offsetY < topBoundOffset) {
                            offsetY = topBoundOffset;
                        }
                        if (bounds.top >= Crop.this.mCropArea.top) {
                            changeOffset = Math.abs(offsetY);
                            handlerByCornerBound = changeOffset > 0.0f;
                            scale = 1.0f - (checkOtherBoundOffset(4096, changeOffset, bounds) / image.height());
                            Crop.this.getImageMatrix().preScale(scale, scale, cropInImagePoints[0], cropInImagePoints[3]);
                        } else if (bounds.right <= Crop.this.mCropArea.right) {
                            changeOffset = Math.abs(offsetX);
                            handlerByCornerBound = changeOffset > 0.0f;
                            scale = 1.0f - (checkOtherBoundOffset(1, changeOffset, bounds) / image.width());
                            Crop.this.getImageMatrix().preScale(scale, scale, cropInImagePoints[0], cropInImagePoints[3]);
                        }
                    }
                } else if (offsetX <= 0.0f && offsetY >= 0.0f) {
                    leftBoundOffset = imageCropBound[0] - Crop.this.mCropArea.left;
                    if (offsetX < leftBoundOffset) {
                        offsetX = leftBoundOffset;
                    }
                    bottomBoundOffset = imageCropBound[1] - Crop.this.mCropArea.bottom;
                    if (offsetY > bottomBoundOffset) {
                        offsetY = bottomBoundOffset;
                    }
                    if (bounds.bottom <= Crop.this.mCropArea.bottom) {
                        changeOffset = Math.abs(offsetY);
                        handlerByCornerBound = changeOffset > 0.0f;
                        scale = 1.0f - (checkOtherBoundOffset(16, changeOffset, bounds) / image.height());
                        Crop.this.getImageMatrix().preScale(scale, scale, cropInImagePoints[2], cropInImagePoints[1]);
                    } else if (bounds.left >= Crop.this.mCropArea.left) {
                        changeOffset = Math.abs(offsetX);
                        handlerByCornerBound = changeOffset > 0.0f;
                        scale = 1.0f - (checkOtherBoundOffset(256, changeOffset, bounds) / image.width());
                        Crop.this.getImageMatrix().preScale(scale, scale, cropInImagePoints[2], cropInImagePoints[1]);
                    }
                }
            } else if (offsetX <= 0.0f && offsetY <= 0.0f) {
                leftBoundOffset = imageCropBound[0] - Crop.this.mCropArea.left;
                if (offsetX < leftBoundOffset) {
                    offsetX = leftBoundOffset;
                }
                topBoundOffset = imageCropBound[1] - Crop.this.mCropArea.top;
                if (offsetY < topBoundOffset) {
                    offsetY = topBoundOffset;
                }
                if (bounds.top >= Crop.this.mCropArea.top) {
                    changeOffset = Math.abs(offsetY);
                    handlerByCornerBound = changeOffset > 0.0f;
                    scale = 1.0f - (checkOtherBoundOffset(4096, changeOffset, bounds) / image.height());
                    Crop.this.getImageMatrix().preScale(scale, scale, cropInImagePoints[2], cropInImagePoints[3]);
                } else if (bounds.left >= Crop.this.mCropArea.left) {
                    changeOffset = Math.abs(offsetX);
                    handlerByCornerBound = changeOffset > 0.0f;
                    scale = 1.0f - (checkOtherBoundOffset(256, changeOffset, bounds) / image.width());
                    Crop.this.getImageMatrix().preScale(scale, scale, cropInImagePoints[2], cropInImagePoints[3]);
                }
            }
            if (handlerByCornerBound) {
                Crop.this.mOffset.set(0.0f, 0.0f);
                return Crop.this.mOffset;
            }
            float boundOffset;
            float min;
            float max;
            RectF access$900;
            if ((this.mResizeEdge & 1) != 0) {
                boundOffset = imageCropBound[0] - Crop.this.mCropArea.left;
                min = bounds.left - Crop.this.mCropArea.left;
                max = constraint(Crop.this.mCropArea.right - Crop.this.mCropArea.left, (float) (-minSize));
                if (offsetX < boundOffset) {
                    offsetX = boundOffset;
                }
                if (offsetX < min) {
                    changeOffset = checkOtherBoundOffset(256, min - offsetX, bounds);
                    if (changeOffset > 0.0f) {
                        scale = 1.0f - (changeOffset / image.width());
                        Crop.this.getImageMatrix().preScale(scale, scale, cropInImagePoints[2], (cropInImagePoints[1] + cropInImagePoints[3]) / 2.0f);
                        access$900 = Crop.this.mCropArea;
                        access$900.top += ((1.0f - scale) * Crop.this.mCropArea.height()) / 2.0f;
                        access$900 = Crop.this.mCropArea;
                        access$900.bottom -= ((1.0f - scale) * Crop.this.mCropArea.height()) / 2.0f;
                    }
                    offsetX = min;
                } else if (offsetX > max) {
                    offsetX = max;
                }
                access$900 = Crop.this.mCropArea;
                access$900.left += offsetX;
            } else if ((this.mResizeEdge & 256) != 0) {
                boundOffset = imageCropBound[0] - Crop.this.mCropArea.right;
                max = bounds.right - Crop.this.mCropArea.right;
                min = constraint(Crop.this.mCropArea.left - Crop.this.mCropArea.right, (float) minSize);
                if (offsetX > boundOffset) {
                    offsetX = boundOffset;
                }
                if (offsetX > max) {
                    changeOffset = checkOtherBoundOffset(1, offsetX - max, bounds);
                    if (changeOffset > 0.0f) {
                        scale = 1.0f - (changeOffset / image.width());
                        Crop.this.getImageMatrix().preScale(scale, scale, cropInImagePoints[0], (cropInImagePoints[1] + cropInImagePoints[3]) / 2.0f);
                        access$900 = Crop.this.mCropArea;
                        access$900.top += ((1.0f - scale) * Crop.this.mCropArea.height()) / 2.0f;
                        access$900 = Crop.this.mCropArea;
                        access$900.bottom -= ((1.0f - scale) * Crop.this.mCropArea.height()) / 2.0f;
                    }
                    offsetX = max;
                } else if (offsetX < min) {
                    offsetX = min;
                }
                access$900 = Crop.this.mCropArea;
                access$900.right += offsetX;
            }
            if ((this.mResizeEdge & 16) != 0) {
                boundOffset = imageCropBound[1] - Crop.this.mCropArea.top;
                min = bounds.top - Crop.this.mCropArea.top;
                max = constraint(Crop.this.mCropArea.bottom - Crop.this.mCropArea.top, (float) (-minSize));
                if (offsetY < boundOffset) {
                    offsetY = boundOffset;
                }
                if (offsetY < min) {
                    changeOffset = checkOtherBoundOffset(4096, min - offsetY, bounds);
                    if (changeOffset > 0.0f) {
                        scale = 1.0f - (changeOffset / image.height());
                        Crop.this.getImageMatrix().preScale(scale, scale, (cropInImagePoints[0] + cropInImagePoints[2]) / 2.0f, cropInImagePoints[3]);
                        access$900 = Crop.this.mCropArea;
                        access$900.left += ((1.0f - scale) * Crop.this.mCropArea.width()) / 2.0f;
                        access$900 = Crop.this.mCropArea;
                        access$900.right -= ((1.0f - scale) * Crop.this.mCropArea.width()) / 2.0f;
                    }
                    offsetY = min;
                } else if (offsetY > max) {
                    offsetY = max;
                }
                access$900 = Crop.this.mCropArea;
                access$900.top += offsetY;
            } else if ((this.mResizeEdge & 4096) != 0) {
                boundOffset = imageCropBound[1] - Crop.this.mCropArea.bottom;
                max = bounds.bottom - Crop.this.mCropArea.bottom;
                min = constraint(Crop.this.mCropArea.top - Crop.this.mCropArea.bottom, (float) minSize);
                if (offsetY > boundOffset) {
                    offsetY = boundOffset;
                }
                if (offsetY > max) {
                    changeOffset = checkOtherBoundOffset(16, offsetY - max, bounds);
                    if (changeOffset > 0.0f) {
                        scale = 1.0f - (changeOffset / image.height());
                        Crop.this.getImageMatrix().preScale(scale, scale, (cropInImagePoints[0] + cropInImagePoints[2]) / 2.0f, cropInImagePoints[1]);
                        access$900 = Crop.this.mCropArea;
                        access$900.left += ((1.0f - scale) * Crop.this.mCropArea.width()) / 2.0f;
                        access$900 = Crop.this.mCropArea;
                        access$900.right -= ((1.0f - scale) * Crop.this.mCropArea.width()) / 2.0f;
                    }
                    offsetY = max;
                } else if (offsetY < min) {
                    offsetY = min;
                }
                access$900 = Crop.this.mCropArea;
                access$900.bottom += offsetY;
            }
            Crop.this.mOffset.set(offsetX, offsetY);
            return Crop.this.mOffset;
        }

        private float[] getImageCropBound(RectF imageAreaIn) {
            RectF image = Crop.this.getImageBounds();
            RectF imageArea = new RectF(imageAreaIn);
            CropCalculateUtils.doRound(imageArea);
            float[] imageLeftTopPoint = new float[2];
            Object imageRightTopPoint = new float[2];
            float[] imageLeftBottomPoint = new float[2];
            float[] imageRightBottomPoint = new float[2];
            Crop.this.getImageMatrix().mapPoints(imageLeftTopPoint, new float[]{image.left, image.top});
            Crop.this.getImageMatrix().mapPoints(imageRightTopPoint, new float[]{image.right, image.top});
            Crop.this.getImageMatrix().mapPoints(imageLeftBottomPoint, new float[]{image.left, image.bottom});
            Crop.this.getImageMatrix().mapPoints(imageRightBottomPoint, new float[]{image.right, image.bottom});
            CropCalculateUtils.doRound(imageLeftTopPoint);
            CropCalculateUtils.doRound((float[]) imageRightTopPoint);
            CropCalculateUtils.doRound(imageRightBottomPoint);
            CropCalculateUtils.doRound(imageLeftBottomPoint);
            List<float[]> imageRectPoints = new ArrayList();
            imageRectPoints.add(imageLeftTopPoint);
            imageRectPoints.add(imageRightTopPoint);
            imageRectPoints.add(imageRightBottomPoint);
            imageRectPoints.add(imageLeftBottomPoint);
            RectF cropArea = new RectF(Crop.this.mCropArea);
            CropCalculateUtils.doRound(cropArea);
            float[] cropLeftTop = new float[]{cropArea.left, cropArea.top};
            float[] cropLeftBottom = new float[]{cropArea.left, cropArea.bottom};
            float[] cropRightTop = new float[]{cropArea.right, cropArea.top};
            float[] cropRightBottom = new float[]{cropArea.right, cropArea.bottom};
            float[] imageCropBound = new float[2];
            if (imageArea.contains(cropArea)) {
                boolean handleByCorner = false;
                boolean isFreeCrop = Crop.this.mAspectRatio == AspectRatio.RATIO_NONE;
                if (Integer.bitCount(this.mResizeEdge) > 1) {
                    float[] intersectionSlash;
                    float[] intersectionHorizontal;
                    float[] intersectionVertical;
                    if ((this.mResizeEdge & 16) == 0 || (this.mResizeEdge & 1) == 0) {
                        if ((this.mResizeEdge & 16) == 0 || (this.mResizeEdge & 256) == 0) {
                            if ((this.mResizeEdge & 4096) == 0 || (this.mResizeEdge & 1) == 0) {
                                if (!((this.mResizeEdge & 4096) == 0 || (this.mResizeEdge & 256) == 0 || (isFreeCrop && (imageRightBottomPoint[0] <= cropRightBottom[0] || imageRightBottomPoint[1] <= cropRightBottom[1])))) {
                                    intersectionSlash = CropCalculateUtils.getRectIntersection(imageRectPoints, cropLeftTop, cropRightBottom);
                                    intersectionHorizontal = CropCalculateUtils.getRectIntersection(imageRectPoints, cropLeftTop, cropRightTop);
                                    intersectionVertical = CropCalculateUtils.getRectIntersection(imageRectPoints, cropLeftTop, cropLeftBottom);
                                    imageCropBound[0] = Math.min(intersectionSlash[0], intersectionHorizontal[0]);
                                    imageCropBound[1] = Math.min(intersectionSlash[1], intersectionVertical[1]);
                                    handleByCorner = true;
                                }
                            } else if (!isFreeCrop || (imageLeftBottomPoint[0] < cropLeftBottom[0] && imageLeftBottomPoint[1] > cropLeftBottom[1])) {
                                intersectionSlash = CropCalculateUtils.getRectIntersection(imageRectPoints, cropRightTop, cropLeftBottom);
                                intersectionHorizontal = CropCalculateUtils.getRectIntersection(imageRectPoints, cropRightTop, cropLeftTop);
                                intersectionVertical = CropCalculateUtils.getRectIntersection(imageRectPoints, cropRightTop, cropRightBottom);
                                imageCropBound[0] = Math.max(intersectionSlash[0], intersectionHorizontal[0]);
                                imageCropBound[1] = Math.min(intersectionSlash[1], intersectionVertical[1]);
                                handleByCorner = true;
                            }
                        } else if (!isFreeCrop || (imageRightTopPoint[0] > cropRightTop[0] && imageRightTopPoint[1] < cropRightTop[1])) {
                            intersectionSlash = CropCalculateUtils.getRectIntersection(imageRectPoints, cropLeftBottom, cropRightTop);
                            intersectionHorizontal = CropCalculateUtils.getRectIntersection(imageRectPoints, cropLeftBottom, cropRightBottom);
                            intersectionVertical = CropCalculateUtils.getRectIntersection(imageRectPoints, cropLeftBottom, cropLeftTop);
                            imageCropBound[0] = Math.min(intersectionSlash[0], intersectionHorizontal[0]);
                            imageCropBound[1] = Math.max(intersectionSlash[1], intersectionVertical[1]);
                            handleByCorner = true;
                        }
                    } else if (!isFreeCrop || (imageLeftTopPoint[0] < cropLeftTop[0] && imageLeftTopPoint[1] < cropLeftTop[1])) {
                        intersectionSlash = CropCalculateUtils.getRectIntersection(imageRectPoints, cropRightBottom, cropLeftTop);
                        intersectionHorizontal = CropCalculateUtils.getRectIntersection(imageRectPoints, cropRightBottom, cropLeftBottom);
                        intersectionVertical = CropCalculateUtils.getRectIntersection(imageRectPoints, cropRightBottom, cropRightTop);
                        imageCropBound[0] = Math.max(intersectionSlash[0], intersectionHorizontal[0]);
                        imageCropBound[1] = Math.max(intersectionSlash[1], intersectionVertical[1]);
                        handleByCorner = true;
                    }
                }
                if (!handleByCorner) {
                    if (isFreeCrop) {
                        if ((this.mResizeEdge & 16) != 0) {
                            if (CropCalculateUtils.isParallel(imageLeftTopPoint, imageLeftBottomPoint, cropLeftTop, cropLeftBottom)) {
                                imageCropBound[1] = imageArea.top;
                            }
                            imageCropBound[1] = Math.max(CropCalculateUtils.getRectIntersection(imageRectPoints, cropLeftBottom, cropLeftTop)[1], CropCalculateUtils.getRectIntersection(imageRectPoints, cropRightBottom, cropRightTop)[1]);
                        } else if ((this.mResizeEdge & 4096) != 0) {
                            if (CropCalculateUtils.isParallel(imageLeftTopPoint, imageLeftBottomPoint, cropLeftTop, cropLeftBottom)) {
                                imageCropBound[1] = imageArea.bottom;
                            }
                            imageCropBound[1] = Math.min(CropCalculateUtils.getRectIntersection(imageRectPoints, cropLeftTop, cropLeftBottom)[1], CropCalculateUtils.getRectIntersection(imageRectPoints, cropRightTop, cropRightBottom)[1]);
                        }
                        if ((this.mResizeEdge & 1) != 0) {
                            if (CropCalculateUtils.isParallel(imageLeftTopPoint, imageLeftBottomPoint, cropLeftTop, cropLeftBottom)) {
                                imageCropBound[0] = imageArea.left;
                            }
                            imageCropBound[0] = Math.max(CropCalculateUtils.getRectIntersection(imageRectPoints, cropRightTop, cropLeftTop)[0], CropCalculateUtils.getRectIntersection(imageRectPoints, cropRightBottom, cropLeftBottom)[0]);
                        } else if ((this.mResizeEdge & 256) != 0) {
                            if (CropCalculateUtils.isParallel(imageLeftTopPoint, imageLeftBottomPoint, cropLeftTop, cropLeftBottom)) {
                                imageCropBound[0] = imageArea.right;
                            }
                            imageCropBound[0] = Math.min(CropCalculateUtils.getRectIntersection(imageRectPoints, cropLeftTop, cropRightTop)[0], CropCalculateUtils.getRectIntersection(imageRectPoints, cropLeftBottom, cropRightBottom)[0]);
                        }
                    } else {
                        float[] imageCropCenter;
                        if ((this.mResizeEdge & 16) != 0) {
                            imageCropCenter = new float[]{(cropArea.left + cropArea.right) / 2.0f, cropArea.bottom};
                            imageCropBound[1] = Math.max(cropArea.bottom - (((2.0f * cropArea.height()) / cropArea.width()) * Math.min(imageCropCenter[0] - CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropLeftBottom)[0], CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropRightBottom)[0] - imageCropCenter[0])), Math.max(CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropLeftTop)[1], CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropRightTop)[1]));
                        } else if ((this.mResizeEdge & 4096) != 0) {
                            imageCropCenter = new float[]{(cropArea.left + cropArea.right) / 2.0f, cropArea.top};
                            imageCropBound[1] = Math.min(cropArea.top + (((2.0f * cropArea.height()) / cropArea.width()) * Math.min(imageCropCenter[0] - CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropLeftTop)[0], CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropRightTop)[0] - imageCropCenter[0])), Math.min(CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropLeftBottom)[1], CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropRightBottom)[1]));
                        }
                        if ((this.mResizeEdge & 1) != 0) {
                            imageCropCenter = new float[]{cropArea.right, (cropArea.top + cropArea.bottom) / 2.0f};
                            imageCropBound[0] = Math.max(cropArea.right - (((2.0f * cropArea.width()) / cropArea.height()) * Math.min(imageCropCenter[1] - CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropRightTop)[1], CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropRightBottom)[1] - imageCropCenter[1])), Math.max(CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropLeftTop)[0], CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropLeftBottom)[0]));
                        } else if ((this.mResizeEdge & 256) != 0) {
                            imageCropCenter = new float[]{cropArea.left, (cropArea.top + cropArea.bottom) / 2.0f};
                            imageCropBound[0] = Math.min(cropArea.left + (((2.0f * cropArea.width()) / cropArea.height()) * Math.min(imageCropCenter[1] - CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropLeftTop)[1], CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropLeftBottom)[1] - imageCropCenter[1])), Math.min(CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropRightTop)[0], CropCalculateUtils.getRectIntersection(imageRectPoints, imageCropCenter, cropRightBottom)[0]));
                        }
                    }
                }
            } else {
                Log.d("Crop", "not in bound");
                if ((this.mResizeEdge & 16) != 0) {
                    imageCropBound[1] = imageAreaIn.top;
                } else if ((this.mResizeEdge & 4096) != 0) {
                    imageCropBound[1] = imageAreaIn.bottom;
                }
                if ((this.mResizeEdge & 1) != 0) {
                    imageCropBound[0] = imageAreaIn.left;
                } else if ((this.mResizeEdge & 256) != 0) {
                    imageCropBound[0] = imageAreaIn.right;
                }
            }
            return imageCropBound;
        }

        private PointF onFixedResize(float offsetX, float offsetY) {
            if (Integer.bitCount(this.mResizeEdge) == 1) {
                return onFixedResizeEdge(offsetX, offsetY);
            }
            return onFixedResizeVertex(offsetX, offsetY);
        }

        private PointF onFixedResizeEdge(float offsetX, float offsetY) {
            int minSize = calculateMinSize();
            RectF bounds = Crop.this.getBounds();
            RectF imageArea = new RectF();
            RectF image = Crop.this.getImageBounds();
            Crop.this.getImageMatrix().mapRect(imageArea, image);
            Crop.this.getImageMatrix().invert(Crop.this.mInvertMatrix);
            Crop.this.mInvertMatrix.mapRect(Crop.this.mInvertArea, Crop.this.mCropArea);
            Crop.this.mOffset.set(offsetX, offsetY);
            cropInImagePoints = new float[4];
            Crop.this.mInvertMatrix.mapPoints(cropInImagePoints, new float[]{Crop.this.mCropArea.left, Crop.this.mCropArea.top, Crop.this.mCropArea.right, Crop.this.mCropArea.bottom});
            float[] imageCropBound = getImageCropBound(imageArea);
            float scale;
            RectF access$900;
            if (this.mResizeEdge == 1 || this.mResizeEdge == 256) {
                float maxOffsetX;
                float maxOffsetTop;
                float maxOffsetBottom;
                float offsetTop;
                float offsetBottom;
                float imageOffsetX = 0.0f;
                if (this.mResizeEdge == 1) {
                    offsetX *= -1.0f;
                    if (offsetX >= 0.0f) {
                        maxOffsetX = Crop.this.mCropArea.left - bounds.left;
                        imageOffsetX = Crop.this.mCropArea.left - imageCropBound[0];
                    } else {
                        maxOffsetX = constraint(Crop.this.mCropArea.right - Crop.this.mCropArea.left, (float) (-minSize));
                    }
                } else if (offsetX >= 0.0f) {
                    maxOffsetX = bounds.right - Crop.this.mCropArea.right;
                    imageOffsetX = imageCropBound[0] - Crop.this.mCropArea.right;
                } else {
                    maxOffsetX = constraint(Crop.this.mCropArea.right - Crop.this.mCropArea.left, (float) (-minSize));
                }
                if (offsetX > 0.0f) {
                    maxOffsetTop = Crop.this.mCropArea.top - bounds.top;
                    maxOffsetBottom = bounds.bottom - Crop.this.mCropArea.bottom;
                    maxOffsetX = Math.min(Crop.this.mAspectRatio.getWidth(Math.min(maxOffsetBottom, maxOffsetTop)), maxOffsetX);
                } else {
                    maxOffsetTop = constraint(Crop.this.mCropArea.bottom - Crop.this.mCropArea.top, (float) (-minSize)) / 2.0f;
                    maxOffsetBottom = maxOffsetTop;
                }
                offsetX = Math.min(offsetX, imageOffsetX);
                if (offsetX > maxOffsetX) {
                    scale = 1.0f - ((offsetX - maxOffsetX) / image.width());
                    Crop.this.getImageMatrix().preScale(scale, scale, this.mResizeEdge == 1 ? cropInImagePoints[2] : cropInImagePoints[0], (cropInImagePoints[1] + cropInImagePoints[3]) / 2.0f);
                }
                if (Math.abs(offsetX) > maxOffsetX) {
                    offsetX = maxOffsetX * ((float) (offsetX > 0.0f ? 1 : -1));
                }
                float absOffsetY = Crop.this.mAspectRatio.getHeight(Math.abs(offsetX));
                if (absOffsetY / 2.0f <= maxOffsetTop && absOffsetY / 2.0f <= maxOffsetBottom) {
                    offsetTop = absOffsetY / 2.0f;
                    offsetBottom = offsetTop;
                } else if (maxOffsetTop < maxOffsetBottom) {
                    offsetTop = maxOffsetTop;
                    offsetBottom = absOffsetY - offsetTop;
                } else {
                    offsetBottom = maxOffsetBottom;
                    offsetTop = absOffsetY - offsetBottom;
                }
                if (offsetX < 0.0f) {
                    offsetBottom *= -1.0f;
                } else {
                    offsetTop *= -1.0f;
                }
                if (this.mResizeEdge == 1) {
                    offsetX *= -1.0f;
                    access$900 = Crop.this.mCropArea;
                    access$900.left += offsetX;
                } else {
                    access$900 = Crop.this.mCropArea;
                    access$900.right += offsetX;
                }
                access$900 = Crop.this.mCropArea;
                access$900.top += offsetTop;
                access$900 = Crop.this.mCropArea;
                access$900.bottom += offsetBottom;
                Crop.this.mOffset.x = offsetX;
            } else if (this.mResizeEdge == 16 || this.mResizeEdge == 4096) {
                float maxOffsetY;
                float maxOffsetLeft;
                float maxOffsetRight;
                float offsetLeft;
                float offsetRight;
                float imageOffsetY = 0.0f;
                if (this.mResizeEdge == 16) {
                    offsetY *= -1.0f;
                    if (offsetY > 0.0f) {
                        maxOffsetY = Crop.this.mCropArea.top - bounds.top;
                        imageOffsetY = Crop.this.mCropArea.top - imageCropBound[1];
                    } else {
                        maxOffsetY = constraint(Crop.this.mCropArea.bottom - Crop.this.mCropArea.top, (float) (-minSize));
                    }
                } else if (offsetY > 0.0f) {
                    maxOffsetY = bounds.bottom - Crop.this.mCropArea.bottom;
                    imageOffsetY = imageCropBound[1] - Crop.this.mCropArea.bottom;
                } else {
                    maxOffsetY = constraint(Crop.this.mCropArea.bottom - Crop.this.mCropArea.top, (float) (-minSize));
                }
                if (offsetY > 0.0f) {
                    maxOffsetLeft = Crop.this.mCropArea.left - bounds.left;
                    maxOffsetRight = bounds.right - Crop.this.mCropArea.right;
                    maxOffsetY = Math.min(Crop.this.mAspectRatio.getHeight(Math.min(maxOffsetLeft, maxOffsetRight)), maxOffsetY);
                } else {
                    maxOffsetLeft = constraint(Crop.this.mCropArea.right - Crop.this.mCropArea.left, (float) (-minSize)) / 2.0f;
                    maxOffsetRight = maxOffsetLeft;
                }
                offsetY = Math.min(offsetY, imageOffsetY);
                if (offsetY > maxOffsetY) {
                    scale = 1.0f - ((offsetY - maxOffsetY) / image.height());
                    Crop.this.getImageMatrix().preScale(scale, scale, (cropInImagePoints[0] + cropInImagePoints[2]) / 2.0f, this.mResizeEdge == 16 ? cropInImagePoints[3] : cropInImagePoints[1]);
                }
                if (Math.abs(offsetY) > maxOffsetY) {
                    offsetY = maxOffsetY * ((float) (offsetY > 0.0f ? 1 : -1));
                }
                float absOffsetX = Crop.this.mAspectRatio.getWidth(Math.abs(offsetY));
                if (absOffsetX / 2.0f <= maxOffsetLeft && absOffsetX / 2.0f <= maxOffsetRight) {
                    offsetLeft = absOffsetX / 2.0f;
                    offsetRight = offsetLeft;
                } else if (maxOffsetLeft < maxOffsetRight) {
                    offsetLeft = maxOffsetLeft;
                    offsetRight = absOffsetX - offsetLeft;
                } else {
                    offsetRight = maxOffsetRight;
                    offsetLeft = absOffsetX - offsetRight;
                }
                if (offsetY < 0.0f) {
                    offsetRight *= -1.0f;
                } else {
                    offsetLeft *= -1.0f;
                }
                if (this.mResizeEdge == 16) {
                    offsetY *= -1.0f;
                    access$900 = Crop.this.mCropArea;
                    access$900.top += offsetY;
                } else {
                    access$900 = Crop.this.mCropArea;
                    access$900.bottom += offsetY;
                }
                access$900 = Crop.this.mCropArea;
                access$900.left += offsetLeft;
                access$900 = Crop.this.mCropArea;
                access$900.right += offsetRight;
                Crop.this.mOffset.y = offsetY;
            }
            return Crop.this.mOffset;
        }

        private PointF onFixedResizeVertex(float offsetX, float offsetY) {
            float maxOffsetX;
            float maxOffsetY;
            RectF access$900;
            int minSize = calculateMinSize();
            RectF bounds = Crop.this.getBounds();
            RectF imageArea = new RectF();
            RectF image = Crop.this.getImageBounds();
            Crop.this.getImageMatrix().mapRect(imageArea, image);
            Crop.this.getImageMatrix().invert(Crop.this.mInvertMatrix);
            Crop.this.mInvertMatrix.mapRect(Crop.this.mInvertArea, Crop.this.mCropArea);
            Crop.this.mOffset.set(offsetX, offsetY);
            if ((this.mResizeEdge & 16) != 0) {
                offsetY *= -1.0f;
            }
            if ((this.mResizeEdge & 1) != 0) {
                offsetX *= -1.0f;
            }
            float hypo = (float) Math.sqrt((double) ((Crop.this.mAspectRatio.mWidth * Crop.this.mAspectRatio.mWidth) + (Crop.this.mAspectRatio.mHeight * Crop.this.mAspectRatio.mHeight)));
            float xRate = Crop.this.mAspectRatio.mWidth / hypo;
            float yRate = Crop.this.mAspectRatio.mHeight / hypo;
            float offset = (xRate * offsetX) + (yRate * offsetY);
            offsetX = offset * xRate;
            offsetY = offset * yRate;
            cropInImagePoints = new float[4];
            Crop.this.mInvertMatrix.mapPoints(cropInImagePoints, new float[]{Crop.this.mCropArea.left, Crop.this.mCropArea.top, Crop.this.mCropArea.right, Crop.this.mCropArea.bottom});
            float[] imageCropBound = getImageCropBound(imageArea);
            float imageOffsetX = 0.0f;
            float imageOffsetY = 0.0f;
            if (offsetX <= 0.0f) {
                maxOffsetX = constraint(Crop.this.mCropArea.right - Crop.this.mCropArea.left, (float) (-minSize));
            } else if ((this.mResizeEdge & 1) != 0) {
                maxOffsetX = Crop.this.mCropArea.left - bounds.left;
                imageOffsetX = Crop.this.mCropArea.left - imageCropBound[0];
            } else {
                maxOffsetX = bounds.right - Crop.this.mCropArea.right;
                imageOffsetX = imageCropBound[0] - Crop.this.mCropArea.right;
            }
            if (offsetY <= 0.0f) {
                maxOffsetY = constraint(Crop.this.mCropArea.bottom - Crop.this.mCropArea.top, (float) (-minSize));
            } else if ((this.mResizeEdge & 16) != 0) {
                maxOffsetY = Crop.this.mCropArea.top - bounds.top;
                imageOffsetY = Crop.this.mCropArea.top - imageCropBound[1];
            } else {
                maxOffsetY = bounds.bottom - Crop.this.mCropArea.bottom;
                imageOffsetY = imageCropBound[1] - Crop.this.mCropArea.bottom;
            }
            if (offsetX > imageOffsetX) {
                offsetX = imageOffsetX;
                offsetY = Crop.this.mAspectRatio.getHeight(offsetX);
            }
            if (offsetY > imageOffsetY) {
                offsetY = imageOffsetY;
                offsetX = Crop.this.mAspectRatio.getWidth(offsetY);
            }
            if (offsetX > maxOffsetX || offsetY > maxOffsetY) {
                float scale;
                if ((offsetX - maxOffsetX) / image.width() > (offsetY - maxOffsetY) / image.height()) {
                    scale = 1.0f - ((offsetX - maxOffsetX) / image.width());
                } else {
                    scale = 1.0f - ((offsetY - maxOffsetY) / image.height());
                }
                Crop.this.getImageMatrix().preScale(scale, scale, (this.mResizeEdge & 1) != 0 ? Crop.this.mInvertArea.right : Crop.this.mInvertArea.left, (this.mResizeEdge & 16) != 0 ? Crop.this.mInvertArea.bottom : Crop.this.mInvertArea.top);
            }
            if (Math.abs(offsetX) > maxOffsetX) {
                offsetX = maxOffsetX * ((float) (offsetX > 0.0f ? 1 : -1));
                offsetY = (offsetX / Crop.this.mAspectRatio.mWidth) * Crop.this.mAspectRatio.mHeight;
            }
            if (Math.abs(offsetY) > maxOffsetY) {
                offsetY = maxOffsetY * ((float) (offsetY > 0.0f ? 1 : -1));
                offsetX = (offsetY / Crop.this.mAspectRatio.mHeight) * Crop.this.mAspectRatio.mWidth;
            }
            if ((this.mResizeEdge & 16) != 0) {
                offsetY *= -1.0f;
                access$900 = Crop.this.mCropArea;
                access$900.top += offsetY;
            } else if ((this.mResizeEdge & 4096) != 0) {
                access$900 = Crop.this.mCropArea;
                access$900.bottom += offsetY;
            }
            if ((this.mResizeEdge & 1) != 0) {
                offsetX *= -1.0f;
                access$900 = Crop.this.mCropArea;
                access$900.left += offsetX;
            } else if ((this.mResizeEdge & 256) != 0) {
                access$900 = Crop.this.mCropArea;
                access$900.right += offsetX;
            }
            Crop.this.mOffset.x = offsetX;
            Crop.this.mOffset.y = offsetY;
            return Crop.this.mOffset;
        }

        private void resolveResizeEdge(float x, float y) {
            float verticalEdgeSlop = Math.min(Crop.this.mResizeEdgeSlop, Crop.this.mCropArea.height() / 3.0f);
            float horizontalEdgeSlop = Math.min(Crop.this.mResizeEdgeSlop, Crop.this.mCropArea.width() / 3.0f);
            if (y > Crop.this.mCropArea.top - Crop.this.mResizeEdgeSlop && y < Crop.this.mCropArea.bottom + Crop.this.mResizeEdgeSlop) {
                if (x > Crop.this.mCropArea.left - Crop.this.mResizeEdgeSlop && x < Crop.this.mCropArea.left + horizontalEdgeSlop) {
                    this.mResizeEdge |= 1;
                } else if (x > Crop.this.mCropArea.right - horizontalEdgeSlop && x < Crop.this.mCropArea.right + Crop.this.mResizeEdgeSlop) {
                    this.mResizeEdge |= 256;
                }
            }
            if (x > Crop.this.mCropArea.left - Crop.this.mResizeEdgeSlop && x < Crop.this.mCropArea.right + Crop.this.mResizeEdgeSlop) {
                if (y > Crop.this.mCropArea.top - Crop.this.mResizeEdgeSlop && y < Crop.this.mCropArea.top + verticalEdgeSlop) {
                    this.mResizeEdge |= 16;
                } else if (y > Crop.this.mCropArea.bottom - verticalEdgeSlop && y < Crop.this.mCropArea.bottom + Crop.this.mResizeEdgeSlop) {
                    this.mResizeEdge |= 4096;
                }
            }
        }

        private void fixImageBounds(RectF displayArea) {
            Matrix imageMatrix = Crop.this.getImageMatrix();
            RectF image = Crop.this.getImageBounds();
            Matrix invertMatrix = new Matrix();
            imageMatrix.invert(invertMatrix);
            RectF invertRect = new RectF();
            invertMatrix.mapRect(invertRect, displayArea);
            if (!image.contains(invertRect)) {
                Matrix end = new Matrix(imageMatrix);
                if (invertRect.width() > image.width() || invertRect.height() > image.height()) {
                    float scale = Plugin.resolveScale(image, invertRect);
                    end.preScale(scale, scale, invertRect.centerX(), invertRect.centerY());
                }
                end.invert(invertMatrix);
                invertMatrix.mapRect(invertRect, displayArea);
                if (!image.contains(invertRect)) {
                    PointF offset = new PointF();
                    Plugin.resolveTranslate(Crop.this.getImageBounds(), invertRect, offset);
                    end.preTranslate(offset.x, offset.y);
                }
                imageMatrix.set(end);
            }
        }

        private int calculateMinSize() {
            return Math.max((int) (Crop.this.getImageMatrix().mapRadius(Crop.this.calculateMinPixels()) + 0.5f), 200);
        }

        private float constraint(float origin, float reserve) {
            float value = origin + reserve;
            if (origin * value < 0.0f) {
                return 0.0f;
            }
            return value;
        }
    }

    private class ScaleListener implements OnScaleGestureListener {
        private ScaleListener() {
        }

        /* synthetic */ ScaleListener(Crop x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onScale(ScaleGestureDetector detector) {
            Crop.this.mEventState = EventState.SCALE;
            float scale = detector.getScaleFactor();
            float size = Crop.this.getImageMatrix().mapRadius(Crop.this.calculateMinPixels());
            float minBound = Math.min(Crop.this.mCropArea.width(), Crop.this.mCropArea.height());
            if (scale * size > minBound) {
                scale = minBound / size;
            }
            Crop.this.getImageMatrix().postScale(scale, scale, detector.getFocusX(), detector.getFocusY());
            if (Crop.this.mOnCropChangedListener != null) {
                Crop.this.mOnCropChangedListener.onChanged();
            }
            Crop.this.invalidate();
            return true;
        }

        public boolean onScaleBegin(ScaleGestureDetector detector) {
            Crop.this.preTransform();
            return true;
        }

        public void onScaleEnd(ScaleGestureDetector detector) {
            Crop.this.fixImageBounds(Crop.this.mCropArea, Crop.this.mBoundsFixCallback);
            Crop.this.endManualRotate();
        }
    }

    private class TranslateListener implements OnTranslateListener {
        private TranslateListener() {
        }

        /* synthetic */ TranslateListener(Crop x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onTranslateBegin() {
            if (Crop.this.mEventState == EventState.IDLE) {
                Crop.this.mEventState = EventState.TRANSLATE;
                Crop.this.preTransform();
                return true;
            } else if (Crop.this.mEventState != EventState.SCALE) {
                return false;
            } else {
                Crop.this.preTransform();
                return true;
            }
        }

        public void onTranslate(float dx, float dy) {
            Crop.this.getImageMatrix().postTranslate(dx, dy);
            Crop.this.invalidate();
        }

        public void onTranslateEnd() {
            Crop.this.fixImageBounds(Crop.this.mCropArea, Crop.this.mBoundsFixCallback);
            Crop.this.mEventState = EventState.IDLE;
        }
    }

    @Keep
    public void setMaskColorAlpha(int editMaskColorAlpha) {
        this.mMaskColorAlpha = editMaskColorAlpha;
        invalidate();
    }

    public void setOnCropChangedListener(OnCropChangedListener onCropChangedListener) {
        this.mOnCropChangedListener = onCropChangedListener;
    }

    public Crop(Context context) {
        this.mCropWindow = context.getResources().getDrawable(R.drawable.crop_window);
        this.mCropWindow.getPadding(this.mBgPadding);
        this.mMaskColor = context.getResources().getColor(R.color.crop_view_mask_color);
        this.mMaskColorAlpha = 229;
        this.mGuideLineSize = context.getResources().getDimension(R.dimen.guide_line_size);
        this.mResizeEdgeSlop = context.getResources().getDimension(R.dimen.crop_menu_bound_touch_width);
        this.mTranslateDetector = new TranslateDetector(new TranslateListener(this, null));
        this.mScaleGestureDetector = new ScaleGestureDetector(context, new ScaleListener(this, null));
        this.mResizeDetector = new ResizeDetector(this, null);
    }

    public void mirror() {
        if (this.mCropAreaChanged) {
            if (this.mAnimatorSet == null || !this.mAnimatorSet.isStarted()) {
                animCropAreaChanged(new OneShotAnimateListener() {
                    public void onAnimationEnd(Animator animation) {
                        super.onAnimationEnd(animation);
                        Crop.this.doMirror();
                    }
                });
            }
        } else if (this.mImageAnimator == null || !this.mImageAnimator.isStarted()) {
            doMirror();
        }
    }

    private void doMirror() {
        Matrix end = new Matrix(getImageMatrix());
        end.postScale(-1.0f, 1.0f, this.mCropArea.centerX(), this.mCropArea.centerY());
        getImageMatrix().set(end);
        invalidate();
    }

    public void beginRotate() {
        this.mEventState = EventState.ROTATION;
        this.mInitialDegree = this.mAdjustDegree;
        this.mInitialMatrix = new Matrix(getImageMatrix());
        this.mGuideLineMode = GuideLine.ROTATE;
        this.mMaskColorAlpha = BaiduSceneResult.BANK_CARD;
        startGuideLine();
        invalidate();
    }

    public void beginAutoRotate() {
        this.mEventState = EventState.ROTATION;
        this.mInitialDegree = this.mAdjustDegree;
        this.mInitialMatrix = new Matrix(this.mUnmodifiedMatrix);
        this.mGuideLineMode = GuideLine.CROP;
        this.mMaskColorAlpha = 229;
        startGuideLine();
        invalidate();
    }

    public void finishRotate() {
        this.mMaskColorAlpha = 229;
        invalidate();
        postGuideLineFinish();
        this.mEventState = EventState.IDLE;
    }

    private void endManualRotate() {
        this.mInitialDegree = 0.0f;
        this.mInitialMatrix = null;
    }

    public void setRotateDegree(float degree) {
        if (!this.mCropAreaChanged) {
            if (this.mInitialMatrix == null) {
                beginRotate();
            }
            Matrix imageMatrix = getImageMatrix();
            imageMatrix.set(this.mInitialMatrix);
            RectF image = getImageBounds();
            imageMatrix.postRotate(degree - this.mInitialDegree, this.mCropArea.centerX(), this.mCropArea.centerY());
            this.mAdjustDegree = degree;
            imageMatrix.invert(this.mInvertMatrix);
            this.mInvertMatrix.mapRect(this.mInvertArea, this.mCropArea);
            float scale = 1.0f;
            if (this.mInvertArea.left < 0.0f) {
                scale = Math.max(1.0f, (this.mInvertArea.width() / 2.0f) / this.mInvertArea.centerX());
            }
            if (this.mInvertArea.right > image.right) {
                scale = Math.max(scale, (this.mInvertArea.width() / 2.0f) / (image.right - this.mInvertArea.centerX()));
            }
            if (this.mInvertArea.top < 0.0f) {
                scale = Math.max(scale, (this.mInvertArea.height() / 2.0f) / this.mInvertArea.centerY());
            }
            if (this.mInvertArea.bottom > image.bottom) {
                scale = Math.max(scale, (this.mInvertArea.height() / 2.0f) / (image.bottom - this.mInvertArea.centerY()));
            }
            imageMatrix.preScale(scale, scale, this.mInvertArea.centerX(), this.mInvertArea.centerY());
            invalidate();
        }
    }

    public void setRotateDegreeWithAnimation(float degree) {
        if (!this.mCropAreaChanged && this.mEventState != EventState.ROTATION) {
            beginAutoRotate();
            Matrix startMatrix = new Matrix(this.mInitialMatrix);
            Matrix endMatrix = new Matrix(this.mInitialMatrix);
            RectF image = getImageBounds();
            endMatrix.postRotate(degree - this.mInitialDegree, this.mCropArea.centerX(), this.mCropArea.centerY());
            this.mAdjustDegree = degree;
            endMatrix.invert(this.mInvertMatrix);
            this.mInvertMatrix.mapRect(this.mInvertArea, this.mCropArea);
            float scale = 1.0f;
            if (this.mInvertArea.left < 0.0f) {
                scale = Math.max(1.0f, (this.mInvertArea.width() / 2.0f) / this.mInvertArea.centerX());
            }
            if (this.mInvertArea.right > image.right) {
                scale = Math.max(scale, (this.mInvertArea.width() / 2.0f) / (image.right - this.mInvertArea.centerX()));
            }
            if (this.mInvertArea.top < 0.0f) {
                scale = Math.max(scale, (this.mInvertArea.height() / 2.0f) / this.mInvertArea.centerY());
            }
            if (this.mInvertArea.bottom > image.bottom) {
                scale = Math.max(scale, (this.mInvertArea.height() / 2.0f) / (image.bottom - this.mInvertArea.centerY()));
            }
            endMatrix.preScale(scale, scale, this.mInvertArea.centerX(), this.mInvertArea.centerY());
            setupImageAnimator(startMatrix, endMatrix, new OneShotAnimateListener() {
                public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    Crop.this.finishRotate();
                }

                public void onAnimationCancel(Animator animation) {
                    super.onAnimationCancel(animation);
                    Crop.this.finishRotate();
                }
            });
            this.mImageAnimator.setDuration(400);
            this.mImageAnimator.setInterpolator(PathInterpolatorCompat.getPathInterpolator(0.6f, 0.1f, 0.35f, 1.0f));
            this.mImageAnimator.start();
        }
    }

    public void rotate() {
        if (this.mCropAreaChanged) {
            if (this.mAnimatorSet == null || !this.mAnimatorSet.isStarted()) {
                animCropAreaChanged(new OneShotAnimateListener() {
                    public void onAnimationEnd(Animator animation) {
                        super.onAnimationEnd(animation);
                        Crop.this.doRotate();
                    }
                });
            }
        } else if (this.mCanvasAnimator == null || !this.mCanvasAnimator.isStarted()) {
            doRotate();
        }
    }

    private void doRotate() {
        this.mMatrix.setRotate(-90.0f, this.mCropArea.centerX(), this.mCropArea.centerY());
        this.mMatrix.mapRect(this.mRect, this.mCropArea);
        animRotate(Math.min(getBounds().width() / this.mRect.width(), getBounds().height() / this.mRect.height()), 100, null).start();
    }

    public void setFixedAspectRatio(int width, int height) {
        if (this.mAspectRatio.mWidth != ((float) width) || this.mAspectRatio.mHeight != ((float) height)) {
            if (width == 0 && height == 0) {
                this.mAspectRatio = AspectRatio.RATIO_NONE;
                return;
            }
            if (width == -1 && height == -1) {
                width = getImage().getWidth();
                height = getImage().getHeight();
            } else if (width == -2 && height == -2) {
                width = ScreenUtils.getScreenWidth();
                height = ScreenUtils.getFullScreenHeight((Activity) getContext());
            }
            if (this.mWindowAnimator != null && this.mWindowAnimator.isStarted()) {
                this.mWindowAnimator.end();
            }
            if (this.mImageAnimator != null && this.mImageAnimator.isStarted()) {
                this.mImageAnimator.end();
            }
            if (this.mCanvasAnimator != null && this.mCanvasAnimator.isStarted()) {
                this.mCanvasAnimator.end();
            }
            if (this.mAnimatorSet != null && this.mAnimatorSet.isStarted()) {
                this.mAnimatorSet.end();
            }
            this.mAspectRatio = new AspectRatio((float) width, (float) height);
            float cur = this.mCropArea.width() / this.mCropArea.height();
            float dst = this.mAspectRatio.mWidth / this.mAspectRatio.mHeight;
            if (Math.abs(cur - dst) > Float.MIN_NORMAL) {
                getEventHandler().removeMessages(this.mMsgCropFinish);
                RectF area = new RectF(this.mCropArea);
                if (cur > dst) {
                    float deltaY = ((area.width() / dst) - area.height()) / 2.0f;
                    area.top -= deltaY;
                    area.bottom += deltaY;
                } else {
                    float deltaX = ((area.height() * dst) - area.width()) / 2.0f;
                    area.left -= deltaX;
                    area.right += deltaX;
                }
                this.mMatrix.setRectToRect(area, getBounds(), ScaleToFit.CENTER);
                this.mMatrix.mapRect(area);
                Matrix start = new Matrix(getImageMatrix());
                Matrix end = new Matrix(getImageMatrix());
                getImageMatrix().invert(this.mInvertMatrix);
                this.mInvertMatrix.mapRect(this.mInvertArea, area);
                float scale = Plugin.resolveScale(getImageBounds(), this.mInvertArea);
                end.preScale(scale, scale, this.mInvertArea.centerX(), this.mInvertArea.centerY());
                end.invert(this.mInvertMatrix);
                this.mInvertMatrix.mapRect(this.mInvertArea, area);
                Plugin.resolveTranslate(getImageBounds(), this.mInvertArea, this.mOffset);
                end.preTranslate(this.mOffset.x, this.mOffset.y);
                this.mCropAreaChanged = true;
                setupWindowAnimator(new RectF(this.mCropArea), area, null);
                setupImageAnimator(start, end, null);
                setupAnimatorSet(this.mImageAnimator, this.mWindowAnimator, null);
                this.mAnimatorSet.start();
            }
        }
    }

    public RectF getSampleSize() {
        RectF sample = new RectF(getImageBounds());
        getImageMatrix().mapRect(sample);
        return sample;
    }

    public RectF getCroppedSize() {
        return this.mCropArea;
    }

    public CropEntry export() {
        if (this.mCropAreaChanged) {
            getEventHandler().removeMessages(this.mMsgCropFinish);
            this.mCropAreaChanged = false;
        }
        return new CropEntry(getImageBounds(), this.mCropArea, getImageMatrix(), this.mAdjustDegree + ((float) this.mRotateDegree));
    }

    protected void onStart() {
        this.mMsgCropFinish = getEventHandler().register(this.mEditFinished);
        this.mMsgGuideLineFinish = getEventHandler().register(this.mGuideLineFinished);
        if (this.mFirstIn) {
            reset();
            this.mFirstIn = false;
        }
    }

    public void reset() {
        getImageMatrix().mapRect(this.mCropArea, getImageBounds());
        this.mUnmodifiedMatrix.set(getImageMatrix());
        this.mTouchBounds.set(getBounds());
        this.mAdjustDegree = 0.0f;
        this.mRotateDegree = 0;
        this.mAspectRatio = AspectRatio.RATIO_NONE;
    }

    protected void onMatrixChanged() {
        super.onMatrixChanged();
        getImageMatrix().mapRect(this.mCropArea, getImageBounds());
        this.mUnmodifiedMatrix.set(getImageMatrix());
    }

    private void animTouchMaskColor(boolean down) {
        if (this.mMaskColorAnimator != null && this.mMaskColorAnimator.isRunning()) {
            this.mMaskColorAnimator.cancel();
        }
        if (down) {
            this.mMaskColorAnimator = ObjectAnimator.ofInt(this, "maskColorAlpha", new int[]{229, BaiduSceneResult.BANK_CARD});
        } else {
            this.mMaskColorAnimator = ObjectAnimator.ofInt(this, "maskColorAlpha", new int[]{BaiduSceneResult.BANK_CARD, 229});
        }
        this.mMaskColorAnimator.setDuration(300);
        this.mMaskColorAnimator.start();
    }

    protected boolean onTouchEvent(MotionEvent event) {
        int action = event.getActionMasked();
        if (this.mEventState == EventState.ROTATION) {
            return true;
        }
        if (action == 0) {
            if (this.mTouchBounds.contains(event.getX(), event.getY())) {
                this.mEventState = EventState.IDLE;
            } else if (this.mEventState != EventState.SKIP) {
                if (this.mEventState != EventState.IDLE) {
                    return false;
                }
                this.mEventState = EventState.SKIP;
            }
        } else if (this.mEventState == EventState.SKIP && this.mTouchBounds.contains(event.getX(), event.getY())) {
            this.mEventState = EventState.IDLE;
            event.setAction(0);
        }
        if (this.mEventState != EventState.SKIP) {
            if (action == 0) {
                startGuideLine();
                animTouchMaskColor(true);
                this.mGuideLineMode = GuideLine.CROP;
                if (this.mOnCropChangedListener != null) {
                    this.mOnCropChangedListener.changeRotationState(false);
                }
            } else if (action == 3 || action == 1) {
                animTouchMaskColor(false);
                postGuideLineFinish();
            }
        }
        switch (this.mEventState) {
            case ANIMATOR:
            case SKIP:
                return true;
            case TRANSLATE:
                this.mScaleGestureDetector.onTouchEvent(event);
                this.mTranslateDetector.onTouchEvent(event);
                return true;
            case SCALE:
                this.mScaleGestureDetector.onTouchEvent(event);
                this.mTranslateDetector.onTouchEvent(event);
                return true;
            case RESIZE:
                this.mResizeDetector.onTouchEvent(event);
                return true;
            case IDLE:
                this.mResizeDetector.onTouchEvent(event);
                this.mScaleGestureDetector.onTouchEvent(event);
                this.mTranslateDetector.onTouchEvent(event);
                return true;
            default:
                return false;
        }
    }

    protected void config(Canvas canvas) {
        super.config(canvas);
        canvas.concat(this.mGlobalMatrix);
    }

    protected void drawOverlay(Canvas canvas) {
        if (this.mMaskColorAlpha != 229 || this.mStartGuideLine) {
            drawGuideLines(canvas);
        }
        this.mBgBounds.set(Math.round(this.mCropArea.left - ((float) this.mBgPadding.left)), Math.round(this.mCropArea.top - ((float) this.mBgPadding.top)), Math.round(this.mCropArea.right + ((float) this.mBgPadding.right)), Math.round(this.mCropArea.bottom + ((float) this.mBgPadding.bottom)));
        this.mCropWindow.setBounds(this.mBgBounds);
        this.mCropWindow.draw(canvas);
        getImageMatrix().mapRect(getImageDisplayBounds(), getImageBounds());
        this.mGlobalMatrix.mapRect(getImageDisplayBounds());
        float maskTop = getImageDisplayBounds().top;
        if (maskTop > 0.0f) {
            maskTop = 0.0f;
        }
        canvas.getClipBounds(this.mClipBounds);
        this.mPaint.setColor(this.mMaskColor);
        this.mPaint.setAlpha(this.mMaskColorAlpha);
        this.mPaint.setStyle(Style.FILL);
        canvas.drawRect(0.0f, maskTop, (float) this.mClipBounds.right, (float) this.mBgBounds.top, this.mPaint);
        canvas.drawRect(0.0f, (float) this.mBgBounds.top, (float) this.mBgBounds.left, (float) this.mBgBounds.bottom, this.mPaint);
        canvas.drawRect((float) this.mBgBounds.right, (float) this.mBgBounds.top, (float) this.mClipBounds.right, (float) this.mBgBounds.bottom, this.mPaint);
        canvas.drawRect(0.0f, (float) this.mBgBounds.bottom, (float) this.mClipBounds.right, (float) this.mClipBounds.bottom, this.mPaint);
    }

    private void performCropFinished() {
        this.mCropAreaChanged = false;
    }

    private void postCropProceed() {
        if (this.mCropAreaChanged) {
            getEventHandler().removeMessages(this.mMsgCropFinish);
        }
    }

    private void postCropFinish() {
        if (this.mCropAreaChanged) {
            getEventHandler().sendEmptyMessageDelayed(this.mMsgCropFinish, 1000);
            if (this.mOnCropChangedListener != null) {
                this.mOnCropChangedListener.onChanged();
            }
        }
    }

    private Animator animRotate(float scale, long duration, OneShotAnimateListener listener) {
        if (this.mCanvasAnimator == null) {
            this.mCanvasAnimator = new ValueAnimator();
            this.mRotateValues = PropertyValuesHolder.ofFloat("rotate", new float[]{0.0f, 0.0f});
            this.mScaleValues = PropertyValuesHolder.ofFloat("scale", new float[]{0.0f, 0.0f});
            this.mCanvasAnimator.addUpdateListener(this.mRotateUpdateListener);
            this.mCanvasAnimator.addListener(this.mRotateListener);
        }
        this.mCanvasAnimator.setDuration(duration);
        this.mRotateValues.setFloatValues(new float[]{0.0f, -90.0f});
        this.mScaleValues.setFloatValues(new float[]{1.0f, scale});
        this.mCanvasAnimator.setValues(new PropertyValuesHolder[]{this.mRotateValues, this.mScaleValues});
        if (listener != null) {
            this.mCanvasAnimator.addListener(listener);
        }
        return this.mCanvasAnimator;
    }

    private void setupWindowAnimator(RectF start, RectF end, OneShotAnimateListener listener) {
        if (this.mWindowAnimator == null) {
            this.mWindowAnimator = new ValueAnimator();
            this.mWindowValues = PropertyValuesHolder.ofObject("window", new RectFEvaluator(), new Object[]{start, end});
            this.mWindowAnimator.addUpdateListener(this.mWindowUpdateListener);
        }
        this.mWindowAnimator.setDuration(300);
        this.mWindowValues.setObjectValues(new Object[]{start, end});
        this.mWindowAnimator.setValues(new PropertyValuesHolder[]{this.mWindowValues});
        if (listener != null) {
            this.mWindowAnimator.addListener(listener);
        }
    }

    private void setupAnimatorSet(Animator image, Animator window, OneShotAnimateListener listener) {
        if (this.mAnimatorSet == null) {
            this.mAnimatorSet = new AnimatorSet();
            this.mAnimatorSet.playTogether(new Animator[]{image, window});
            this.mAnimatorSet.addListener(this.mPerformCropFinish);
        }
        this.mAnimatorSet.setDuration(300);
        if (listener != null) {
            this.mAnimatorSet.addListener(listener);
        }
    }

    private void animCropAreaChanged(OneShotAnimateListener listener) {
        Matrix startMatrix = new Matrix(getImageMatrix());
        Matrix endMatrix = new Matrix(getImageMatrix());
        RectF startArea = new RectF(this.mCropArea);
        RectF endArea = new RectF();
        this.mMatrix.setRectToRect(this.mCropArea, getBounds(), ScaleToFit.CENTER);
        this.mMatrix.mapRect(endArea, this.mCropArea);
        endMatrix.postConcat(this.mMatrix);
        setupImageAnimator(startMatrix, endMatrix, null);
        setupWindowAnimator(startArea, endArea, null);
        setupAnimatorSet(this.mImageAnimator, this.mWindowAnimator, listener);
        this.mAnimatorSet.start();
    }

    private float calculateMinPixels() {
        return Math.max(32.0f, Math.max(getImageBounds().height(), getImageBounds().width()) / 10.0f);
    }

    private void preTransform() {
        postCropProceed();
        if (this.mImageAnimator != null && this.mImageAnimator.isStarted()) {
            this.mImageAnimator.cancel();
        }
    }

    @Keep
    public void setGuideLineAlpha(int guideLineAlpha) {
        this.mGuideLineAlpha = guideLineAlpha;
        invalidate();
    }

    private void postGuideLineFinish() {
        getEventHandler().removeMessages(this.mMsgGuideLineFinish);
        getEventHandler().sendEmptyMessageDelayed(this.mMsgGuideLineFinish, 1300);
    }

    private void startGuideLine() {
        getEventHandler().removeMessages(this.mMsgGuideLineFinish);
        this.mStartGuideLine = true;
        animGuideLine(true);
    }

    private void animGuideLine(boolean show) {
        if (this.mGuideLineAnimator != null && this.mGuideLineAnimator.isRunning()) {
            this.mGuideLineAnimator.cancel();
        }
        if (show) {
            if (this.mGuideLineAlpha < 255) {
                this.mGuideLineAnimator = ObjectAnimator.ofInt(this, "guideLineAlpha", new int[]{this.mGuideLineAlpha, 255});
            }
        } else if (this.mGuideLineAlpha > 0) {
            this.mGuideLineAnimator = ObjectAnimator.ofInt(this, "guideLineAlpha", new int[]{this.mGuideLineAlpha, 0});
            this.mGuideLineAnimator.addListener(new AnimatorListener() {
                public void onAnimationStart(Animator animation) {
                }

                public void onAnimationEnd(Animator animation) {
                    Crop.this.mStartGuideLine = false;
                }

                public void onAnimationCancel(Animator animation) {
                    Crop.this.mStartGuideLine = false;
                }

                public void onAnimationRepeat(Animator animation) {
                }
            });
        }
        if (this.mGuideLineAnimator != null) {
            this.mGuideLineAnimator.setDuration(300);
            this.mGuideLineAnimator.start();
        }
    }

    private void drawGuideLines(Canvas canvas) {
        if (this.mGuideLineMode.mCount != 0) {
            this.mPaint.reset();
            this.mPaint.setStrokeWidth(this.mGuideLineSize);
            this.mPaint.setColor(-1);
            this.mPaint.setAlpha(this.mGuideLineAlpha);
            this.mPaint.setStyle(Style.STROKE);
            float offsetX = (this.mCropArea.right - this.mCropArea.left) / ((float) this.mGuideLineMode.mCount);
            float offsetY = (this.mCropArea.bottom - this.mCropArea.top) / ((float) this.mGuideLineMode.mCount);
            for (int i = 1; i < this.mGuideLineMode.mCount; i++) {
                Canvas canvas2 = canvas;
                canvas2.drawLine(this.mCropArea.left, (((float) i) * offsetY) + this.mCropArea.top, this.mCropArea.right, (((float) i) * offsetY) + this.mCropArea.top, this.mPaint);
                canvas2 = canvas;
                canvas2.drawLine((((float) i) * offsetX) + this.mCropArea.left, this.mCropArea.top, (((float) i) * offsetX) + this.mCropArea.left, this.mCropArea.bottom, this.mPaint);
            }
        }
    }
}
