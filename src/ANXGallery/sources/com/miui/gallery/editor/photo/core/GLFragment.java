package com.miui.gallery.editor.photo.core;

import com.miui.gallery.threadpool.ThreadManager;
import java.util.concurrent.atomic.AtomicBoolean;

public interface GLFragment {

    public static abstract class GLContext {
        private AtomicBoolean mCreated = new AtomicBoolean(false);
        private OnCreatedListener mListener;

        public interface OnCreatedListener {
            void onCreated();
        }

        protected abstract void onPause();

        protected abstract void onResume();

        protected final void performCreated() {
            this.mCreated.set(true);
            if (this.mListener != null) {
                ThreadManager.getMainHandler().post(new Runnable() {
                    public void run() {
                        GLContext.this.mListener.onCreated();
                    }
                });
            }
        }

        protected final void performDestroyed() {
            this.mCreated.set(false);
        }

        public final void performResume() {
            onResume();
        }

        public final void performPause() {
            onPause();
        }

        public final void setOnCreatedListener(OnCreatedListener listener) {
            this.mListener = listener;
        }
    }

    GLContext getGLContext();
}
