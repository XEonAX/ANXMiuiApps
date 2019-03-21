package com.miui.gallery.video.editor;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.miui.gallery.video.editor.widget.DisplayWrapper;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class VideoEditor {
    protected DisplayWrapper mDisplayWrapper;
    protected boolean mIsInit = false;
    private OnVideoThumbnailChangedListener mOnVideoThumbnailChangedListener;
    private int mState = -1;
    private LinkedList<StateChangeListener> mStateChangeListeners = new LinkedList();

    public interface EnocdeStateInterface {
        void onEncodeEnd(boolean z, int i, int i2);

        void onEncodeProgress(int i);

        void onEncodeStart();
    }

    public interface OnCompletedListener {
        void onCompleted();
    }

    public interface OnGetVideoThumbnailListener {
        void onGetVideoThumbnailCompleted(List<VideoThumbnail> list);
    }

    public class NotSupportVideoException extends Exception {
    }

    public interface OnVideoThumbnailChangedListener {
        void onVideoThumbnailChanged();
    }

    public interface StateChangeListener {
        void onStateChanged(int i);

        void onTimeChanged(int i);
    }

    public interface TrimStateInterface extends EnocdeStateInterface {
        void onTrimEnd(String str);

        void onTrimProgress(int i);

        void onTrimStart();
    }

    public abstract void adjustBrightness(int i);

    public abstract void adjustContrast(int i);

    public abstract void adjustSaturation(int i);

    public abstract void adjustSharpness(int i);

    public abstract void adjustVignetteRange(int i);

    public abstract boolean apply(OnCompletedListener onCompletedListener);

    public abstract void autoTrim(int i, TrimStateInterface trimStateInterface);

    public abstract void cancelExport(OnCompletedListener onCompletedListener);

    public abstract void export(String str, EnocdeStateInterface enocdeStateInterface);

    public abstract float getCurrentDisplayRatio();

    public abstract int getProjectTotalTime();

    public abstract int getVideoFrames();

    public abstract String getVideoPath();

    public abstract int getVideoStartTime();

    public abstract int getVideoTotalTime();

    public abstract boolean hasEdit();

    public abstract boolean haveSavedEditState();

    public abstract boolean isSourceAudioEnable();

    public abstract boolean isSupportAutoTrim();

    public abstract void load(String str, OnCompletedListener onCompletedListener);

    public abstract void pause();

    public abstract Bitmap pickThumbnail(int i);

    public abstract void play();

    public abstract void release();

    public abstract boolean resetProject(OnCompletedListener onCompletedListener);

    public abstract void restoreEditState();

    public abstract void resume();

    public abstract void saveEditState();

    public abstract void seek(int i, OnCompletedListener onCompletedListener);

    public abstract boolean setAutoWaterMark(String str, int i);

    public abstract void setBackgroundMusic(String str);

    protected abstract void setDisplayView(View view);

    public abstract void setFilter(Filter filter);

    public abstract boolean setSmartEffectTemplate(SmartEffect smartEffect);

    public abstract void setSourceAudioEnable(Boolean bool);

    public abstract void setTrimInfo(int i, int i2);

    public abstract void setVideoEditorAdjust(boolean z);

    public abstract boolean setWarterMark(int i, String str);

    public abstract void startPreview();

    public abstract void toThirdEditor(Context context);

    public boolean isInit() {
        return this.mIsInit;
    }

    public static VideoEditor create(Context context, String type) {
        if ("nex".equals(type)) {
            return new NexVideoEditor(context);
        }
        return null;
    }

    public void setOnVideoThumbnailChangedListener(OnVideoThumbnailChangedListener listener) {
        this.mOnVideoThumbnailChangedListener = listener;
    }

    public void notifyThumbnailChanged() {
        if (this.mOnVideoThumbnailChangedListener != null) {
            this.mOnVideoThumbnailChangedListener.onVideoThumbnailChanged();
        }
    }

    public int getState() {
        return this.mState;
    }

    protected void setState(int state) {
        if (this.mState != state) {
            this.mState = state;
            Iterator it = this.mStateChangeListeners.iterator();
            while (it.hasNext()) {
                ((StateChangeListener) it.next()).onStateChanged(this.mState);
            }
        }
    }

    protected void onTimeChanged(int time) {
        Iterator it = this.mStateChangeListeners.iterator();
        while (it.hasNext()) {
            ((StateChangeListener) it.next()).onTimeChanged(time);
        }
    }

    public void addStateChangeListener(StateChangeListener stateChangeInterface) {
        if (!this.mStateChangeListeners.contains(stateChangeInterface)) {
            this.mStateChangeListeners.add(stateChangeInterface);
        }
    }

    public void removeStateChangeListener(StateChangeListener stateChangeInterface) {
        if (this.mStateChangeListeners.contains(stateChangeInterface)) {
            this.mStateChangeListeners.remove(stateChangeInterface);
        }
    }

    public void setDisplayWrapper(DisplayWrapper view) {
        this.mDisplayWrapper = view;
    }

    public DisplayWrapper getDisplayWrapper() {
        return this.mDisplayWrapper;
    }

    public void autoTrim(TrimStateInterface tsi) {
        autoTrim(25000, tsi);
    }
}
