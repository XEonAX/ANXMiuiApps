package com.miui.gallery.editor.photo.core.common.fragment;

import android.view.MotionEvent;
import com.miui.gallery.editor.photo.core.RenderFragment;
import com.miui.gallery.editor.photo.core.common.model.CropData.AspectRatio;

public abstract class AbstractCropFragment extends RenderFragment {
    private OnCropStateChangedListener mCropChangedListener;
    private boolean mHasChanged;

    public interface OnCropStateChangedListener {
        void changeRotationState(boolean z);

        void onCropped();

        void onRestored();
    }

    public abstract void finishTuning();

    protected abstract void onAutoCrop(float f);

    protected abstract void onDoMirror();

    protected abstract void onDoRotate();

    protected abstract void onSetAspectRatio(AspectRatio aspectRatio);

    protected abstract void onTurning(float f);

    public abstract void prepareTuning();

    public boolean doTouchEvent(MotionEvent event) {
        return false;
    }

    public void setAspectRatio(AspectRatio ratio) {
        onChanged();
        onSetAspectRatio(ratio);
    }

    public void doMirror() {
        onChanged();
        onDoMirror();
    }

    public void doRotate() {
        onChanged();
        onDoRotate();
    }

    public void tuning(float degree) {
        onChanged();
        onTurning(degree);
    }

    public void autoCrop(float degree) {
        if (!this.mHasChanged) {
            this.mHasChanged = true;
        }
        onAutoCrop(degree);
    }

    public void onChanged() {
        if (!this.mHasChanged) {
            this.mHasChanged = true;
            notifyCropped();
        }
    }

    public void restore() {
        if (this.mHasChanged) {
            this.mHasChanged = false;
            notifyRestored();
        }
    }

    public void changeRotationState(boolean enable) {
        if (this.mCropChangedListener != null) {
            this.mCropChangedListener.changeRotationState(enable);
        }
    }

    protected final void notifyCropped() {
        if (this.mCropChangedListener != null) {
            this.mCropChangedListener.onCropped();
        }
    }

    protected final void notifyRestored() {
        if (this.mCropChangedListener != null) {
            this.mCropChangedListener.onRestored();
        }
    }

    public void setOnCropChangedListener(OnCropStateChangedListener listener) {
        this.mCropChangedListener = listener;
    }
}
