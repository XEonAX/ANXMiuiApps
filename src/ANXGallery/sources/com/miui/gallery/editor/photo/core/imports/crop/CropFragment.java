package com.miui.gallery.editor.photo.core.imports.crop;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractCropFragment;
import com.miui.gallery.editor.photo.core.common.model.CropData.AspectRatio;
import com.miui.gallery.editor.photo.core.imports.obsoletes.Crop;
import com.miui.gallery.editor.photo.core.imports.obsoletes.Crop.OnCropChangedListener;
import com.miui.gallery.editor.photo.core.imports.obsoletes.EditorView;
import com.miui.gallery.preference.GalleryPreferences.PhotoEditor;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import miui.view.animation.CubicEaseInOutInterpolator;

public class CropFragment extends AbstractCropFragment {
    private AspectRatio mAspectRatio;
    private float mAutoCropDegree;
    private int mCanvasRotateTimes;
    private Crop mCrop;
    private View mCropTips;
    private Handler mCropTipsHandler;
    private EditorView mEditorView;
    private boolean mMirrored;
    private OnCropChangedListener mOnCropChangedListener = new OnCropChangedListener() {
        public void onChanged() {
            CropFragment.this.onChanged();
        }

        public void changeRotationState(boolean enable) {
            CropFragment.this.changeRotationState(enable);
        }
    };
    private OnLayoutChangeListener mOnLayoutChangeListener = new OnLayoutChangeListener() {
        public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
            CropFragment.this.mCrop.start();
        }
    };
    private float mTuningDegree;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        ViewGroup layout = (ViewGroup) inflater.inflate(R.layout.crop_preview_container, container, false);
        this.mEditorView = (EditorView) layout.findViewById(R.id.editor_view);
        this.mCropTips = layout.findViewById(R.id.crop_tips);
        this.mCrop = new Crop(getActivity());
        this.mEditorView.install(this.mCrop);
        this.mEditorView.setDrawBoundLine(false);
        this.mEditorView.setBitmap(getBitmap());
        this.mEditorView.addOnLayoutChangeListener(this.mOnLayoutChangeListener);
        this.mCrop.setOnCropChangedListener(this.mOnCropChangedListener);
        return layout;
    }

    public boolean doTouchEvent(MotionEvent event) {
        event.setLocation(event.getX(), event.getY() + ((float) this.mEditorView.getHeight()));
        return this.mEditorView.onTouchEvent(event);
    }

    public void onDestroyView() {
        super.onDestroyView();
        this.mEditorView.removeOnLayoutChangeListener(this.mOnLayoutChangeListener);
        if (this.mCropTipsHandler != null) {
            this.mCropTipsHandler.removeMessages(0);
        }
    }

    public RenderData onExport() {
        return new CropStateData(this.mCrop.export());
    }

    protected List<String> onSample() {
        List<String> sample = new ArrayList();
        if (this.mMirrored) {
            sample.add("mirror");
        }
        boolean rotated = false;
        if (this.mTuningDegree != 0.0f) {
            if (this.mAutoCropDegree == this.mTuningDegree) {
                sample.add("rotate_auto");
            } else {
                sample.add("rotate_manual");
            }
            rotated = true;
        }
        if (this.mCanvasRotateTimes % 4 != 0) {
            sample.add("rotate_canvas");
            rotated = true;
        }
        if (rotated) {
            sample.add("rotate");
        }
        RectF sampleSize = this.mCrop.getSampleSize();
        RectF cropSize = this.mCrop.getCroppedSize();
        if (!(Math.round(sampleSize.width()) == Math.round(cropSize.width()) && Math.round(sampleSize.height()) == Math.round(cropSize.height()))) {
            sample.add("crop");
        }
        Locale locale = Locale.US;
        String str = "aspect_ratio: %s";
        Object[] objArr = new Object[1];
        objArr[0] = this.mAspectRatio == null ? "free" : this.mAspectRatio.name;
        sample.add(String.format(locale, str, objArr));
        return sample;
    }

    public void clear() {
        this.mCrop.reset();
    }

    public void restore() {
        super.restore();
        this.mEditorView.setBitmap(getBitmap());
        this.mCrop.reset();
        if (this.mCropTipsHandler != null) {
            this.mCropTipsHandler.removeMessages(0);
            this.mCropTipsHandler.sendEmptyMessage(0);
        }
    }

    public void setBitmap(Bitmap bitmap) {
        super.setBitmap(bitmap);
        if (this.mEditorView != null) {
            this.mEditorView.setBitmap(bitmap);
        }
    }

    public boolean isEmpty() {
        RectF sampleSize = this.mCrop.getSampleSize();
        RectF cropSize = this.mCrop.getCroppedSize();
        boolean cropped;
        if (Math.round(sampleSize.width()) == Math.round(cropSize.width()) && Math.round(sampleSize.height()) == Math.round(cropSize.height())) {
            cropped = false;
        } else {
            cropped = true;
        }
        if (this.mMirrored || this.mTuningDegree != 0.0f || this.mCanvasRotateTimes % 4 != 0 || cropped) {
            return false;
        }
        return true;
    }

    protected void onSetAspectRatio(AspectRatio ratio) {
        this.mCrop.setFixedAspectRatio(ratio.width, ratio.height);
        this.mAspectRatio = ratio;
    }

    protected void onDoMirror() {
        this.mCrop.mirror();
        this.mMirrored = !this.mMirrored;
    }

    protected void onDoRotate() {
        this.mCrop.rotate();
        this.mCanvasRotateTimes++;
    }

    public void prepareTuning() {
        this.mCrop.beginRotate();
    }

    public void finishTuning() {
        this.mCrop.finishRotate();
    }

    protected void onTurning(float degree) {
        this.mCrop.setRotateDegree(degree);
        this.mTuningDegree = degree;
    }

    protected void onAutoCrop(float degree) {
        this.mCrop.setRotateDegreeWithAnimation(degree);
        this.mTuningDegree = degree;
        this.mAutoCropDegree = degree;
        if (PhotoEditor.isCropTipsShow()) {
            PhotoEditor.addCropTipsShowTimes();
            showAnimator(true);
            this.mCropTipsHandler = new Handler() {
                public void handleMessage(Message msg) {
                    super.handleMessage(msg);
                    CropFragment.this.showAnimator(false);
                }
            };
            this.mCropTipsHandler.sendEmptyMessageDelayed(0, 3000);
        }
    }

    private void showAnimator(final boolean isShow) {
        float f;
        float f2 = 1.0f;
        View view = this.mCropTips;
        Property property = View.ALPHA;
        float[] fArr = new float[2];
        if (isShow) {
            f = 0.0f;
        } else {
            f = 1.0f;
        }
        fArr[0] = f;
        if (!isShow) {
            f2 = 0.0f;
        }
        fArr[1] = f2;
        ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(view, property, fArr);
        objectAnimator.setDuration(300);
        objectAnimator.setInterpolator(new CubicEaseInOutInterpolator());
        objectAnimator.addListener(new AnimatorListenerAdapter() {
            public void onAnimationStart(Animator animation) {
                super.onAnimationStart(animation);
                if (isShow) {
                    CropFragment.this.mCropTips.setAlpha(0.0f);
                    CropFragment.this.mCropTips.setVisibility(0);
                }
            }

            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                if (!isShow) {
                    CropFragment.this.mCropTips.setVisibility(8);
                }
            }
        });
        objectAnimator.start();
    }
}
