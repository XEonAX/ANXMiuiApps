package com.miui.gallery.editor.photo.app;

import android.app.Fragment;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import com.miui.gallery.R;
import com.miui.gallery.compat.view.ViewCompat;
import com.miui.gallery.editor.photo.widgets.StrokeImageView;
import com.miui.gallery.threadpool.ThreadManager;

public class PreviewFragment extends Fragment {
    Callbacks mCallbacks;
    private Button mCompareBtn;
    private StrokeImageView mImageView;
    private boolean mIsOnExit = false;
    private boolean mLoadDone = true;
    OnViewReadyListener mOnViewReadyListener;
    private boolean mOverwriteBackground;
    private View mProgressView;

    interface Callbacks {
        boolean isPreviewChanged();

        Bitmap onLoadPreview();

        Bitmap onLoadPreviewOriginal();
    }

    interface OnViewReadyListener {
        void onViewReady();
    }

    private class OnPreDrawListener implements android.view.ViewTreeObserver.OnPreDrawListener {
        private OnPreDrawListener() {
        }

        /* synthetic */ OnPreDrawListener(PreviewFragment x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onPreDraw() {
            PreviewFragment.this.mImageView.getViewTreeObserver().removeOnPreDrawListener(this);
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    PreviewFragment.this.mOnViewReadyListener.onViewReady();
                }
            });
            return true;
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        FrameLayout layout = (FrameLayout) inflater.inflate(R.layout.preview_container, container, false);
        this.mImageView = (StrokeImageView) layout.findViewById(R.id.preview);
        this.mCompareBtn = (Button) layout.findViewById(R.id.compare_btn);
        this.mProgressView = layout.findViewById(R.id.progress_bar);
        ViewCompat.setTransitionName(this.mImageView, R.string.photo_editor_transition_image_view);
        if (getArguments() != null) {
            this.mOverwriteBackground = getArguments().getBoolean("overwrite_background");
        }
        if (this.mOverwriteBackground) {
            TypedValue value = new TypedValue();
            getActivity().getTheme().resolveAttribute(16842801, value, true);
            this.mImageView.setBackgroundColor(value.data);
        }
        return layout;
    }

    public void showForLoadDown() {
        if (this.mLoadDone) {
            this.mImageView.setVisibility(0);
            this.mImageView.setImageBitmap(this.mCallbacks.onLoadPreview());
            enableComparison(this.mCallbacks.isPreviewChanged());
            this.mProgressView.setVisibility(8);
        }
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (this.mOnViewReadyListener != null) {
            this.mImageView.getViewTreeObserver().addOnPreDrawListener(new OnPreDrawListener(this, null));
        }
        showForLoadDown();
    }

    public void enableComparison(boolean enable) {
        if (enable) {
            this.mCompareBtn.setVisibility(0);
            this.mCompareBtn.bringToFront();
            this.mCompareBtn.setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View v, MotionEvent event) {
                    if (event.getAction() == 0) {
                        PreviewFragment.this.mImageView.setImageBitmap(PreviewFragment.this.mCallbacks.onLoadPreviewOriginal());
                        PreviewFragment.this.mCompareBtn.setSelected(true);
                    } else if (1 == event.getAction() || 3 == event.getAction()) {
                        PreviewFragment.this.mImageView.setImageBitmap(PreviewFragment.this.mCallbacks.onLoadPreview());
                        PreviewFragment.this.mCompareBtn.setSelected(false);
                    }
                    return true;
                }
            });
            return;
        }
        this.mCompareBtn.setVisibility(8);
    }

    public void refreshPreview(final Bitmap bitmap) {
        this.mImageView.postDelayed(new Runnable() {
            public void run() {
                if (PreviewFragment.this.isAdded() && !PreviewFragment.this.mIsOnExit) {
                    PreviewFragment.this.mImageView.setImageBitmap(bitmap);
                }
            }
        }, 400);
    }

    public void onExit(boolean exported) {
        this.mIsOnExit = true;
        if (this.mImageView != null) {
            this.mImageView.setStrokeVisible(false);
            if (!exported) {
                Bitmap preview = this.mCallbacks.onLoadPreview();
                Bitmap original = this.mCallbacks.onLoadPreviewOriginal();
                if (preview != null && original != null && preview.getWidth() == original.getWidth() && preview.getHeight() == original.getHeight()) {
                    this.mImageView.setImageBitmap(original);
                }
            }
        }
    }

    public void onDetach() {
        super.onDetach();
        if (this.mImageView != null) {
            this.mImageView.setImageBitmap(null);
        }
    }

    public void setLoadDone(boolean loadDone) {
        this.mLoadDone = loadDone;
    }
}
