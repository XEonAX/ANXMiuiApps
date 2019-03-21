package com.miui.gallery.movie.core;

import android.view.View;

public abstract class MovieManager implements IMovieController, IMovieManager {
    protected View mDisplayView;
    protected int mState;

    public interface EncodeStateInterface {
        void onEncodeEnd(boolean z, boolean z2, int i);

        void onEncodeProgress(int i);

        void onEncodeStart();
    }

    public interface StateChangeListener {
        void onPlaybackEOF();

        void onPlaybackPreloadingCompletion();

        void onPlaybackTimeChanged(int i);

        void onStateChanged(int i);
    }

    public abstract void addStateChangeListener(StateChangeListener stateChangeListener);

    public View getDisplayView() {
        return this.mDisplayView;
    }

    public void setState(int state) {
        this.mState = state;
    }

    public int getState() {
        return this.mState;
    }

    public void keepScreenOn(boolean screenOn) {
        if (this.mDisplayView != null) {
            this.mDisplayView.setKeepScreenOn(screenOn);
        }
    }

    public void onResume() {
        keepScreenOn(true);
    }

    public void onPause() {
        keepScreenOn(false);
    }

    public void destroy() {
    }
}
