package com.miui.gallery.util;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.threadpool.ThreadManager;
import java.lang.ref.WeakReference;

public class AppFocusedCheckHelper {
    private OnAppFocusedListener mAppFocusedListener;
    private CheckAppFocusedCallback mCheckAppFocusedCallback = new CheckAppFocusedCallback() {
        public void onCheck(boolean appFocused) {
            AppFocusedCheckHelper.this.mIsAppFocused = appFocused;
        }
    };
    private Runnable mCheckAppFocusedRunnable = new CheckAppFocusedRunnable(this.mCheckAppFocusedCallback);
    private volatile boolean mIsAppFocused;

    public interface OnAppFocusedListener {
        void onAppFocused();
    }

    private interface CheckAppFocusedCallback {
        void onCheck(boolean z);
    }

    private static class CheckAppFocusedRunnable implements Runnable {
        private final WeakReference<CheckAppFocusedCallback> mCallbackRef;

        CheckAppFocusedRunnable(CheckAppFocusedCallback callback) {
            this.mCallbackRef = new WeakReference(callback);
        }

        public void run() {
            CheckAppFocusedCallback callback = (CheckAppFocusedCallback) this.mCallbackRef.get();
            if (callback != null) {
                callback.onCheck(MiscUtil.isAppProcessInForeground(GalleryApp.sGetAndroidContext()));
            }
        }
    }

    public AppFocusedCheckHelper(OnAppFocusedListener listener) {
        this.mAppFocusedListener = listener;
    }

    public void onStart() {
        if (!this.mIsAppFocused) {
            if (this.mAppFocusedListener != null) {
                this.mAppFocusedListener.onAppFocused();
            }
            this.mIsAppFocused = true;
        }
    }

    public void onStop() {
        updateAppFocusedState();
    }

    public void onDestroy() {
        removeCheckAppFocusedMessage();
        this.mCheckAppFocusedRunnable = null;
    }

    private void removeCheckAppFocusedMessage() {
        if (this.mCheckAppFocusedRunnable != null) {
            ThreadManager.getWorkHandler().removeCallbacks(this.mCheckAppFocusedRunnable);
        }
    }

    private void updateAppFocusedState() {
        if (!ThreadManager.getWorkHandler().hasCallbacksCompat(this.mCheckAppFocusedRunnable)) {
            ThreadManager.getWorkHandler().postDelayed(this.mCheckAppFocusedRunnable, 500);
        }
    }
}
