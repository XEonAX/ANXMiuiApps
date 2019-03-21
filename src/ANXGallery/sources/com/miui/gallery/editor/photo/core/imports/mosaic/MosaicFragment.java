package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.OperationUpdateListener;
import com.miui.gallery.editor.photo.core.GLFragment;
import com.miui.gallery.editor.photo.core.GLFragment.GLContext;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractMosaicFragment;
import com.miui.gallery.editor.photo.core.common.model.MosaicData;
import java.util.List;

public class MosaicFragment extends AbstractMosaicFragment implements Callback, GLFragment {
    private MosaicContext mMosaicContext = new MosaicContext(this, null);
    private MosaicGLView mMosaicView;
    private MosaicGLEntity mNextEntity;
    private int mNextPaintSize = -1;
    private OperationUpdateListener mOperationUpdateListener;

    private class MosaicContext extends GLContext {
        private MosaicContext() {
        }

        /* synthetic */ MosaicContext(MosaicFragment x0, AnonymousClass1 x1) {
            this();
        }

        void surfaceCreated() {
            super.performCreated();
        }

        void surfaceDestroyed() {
            super.performDestroyed();
        }

        protected void onResume() {
        }

        protected void onPause() {
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        FrameLayout layout = (FrameLayout) inflater.inflate(R.layout.editor_view_container, container, false);
        this.mMosaicView = new MosaicGLView(getActivity());
        this.mMosaicView.setBitmap(getBitmap());
        if (this.mNextEntity != null) {
            this.mMosaicView.setCurrentEntity(this.mNextEntity);
            this.mNextEntity = null;
        }
        if (this.mNextPaintSize != 1) {
            this.mMosaicView.setMosaicPaintSize(this.mNextPaintSize);
            this.mNextPaintSize = -1;
        }
        if (this.mOperationUpdateListener != null) {
            this.mMosaicView.setOperationUpdateListener(this.mOperationUpdateListener);
            this.mOperationUpdateListener = null;
        }
        int paddingLeft = getResources().getDimensionPixelSize(R.dimen.photo_editor_preview_padding);
        this.mMosaicView.setPadding(paddingLeft, getResources().getDimensionPixelSize(R.dimen.photo_editor_preview_padding_top), paddingLeft, 0);
        this.mMosaicView.postDelayed(new Runnable() {
            public void run() {
                MosaicFragment.this.mMosaicContext.surfaceCreated();
            }
        }, 1000);
        layout.addView(this.mMosaicView, -1, -1);
        return layout;
    }

    public boolean isEmpty() {
        return this.mMosaicView.isEmpty();
    }

    protected List<String> onSample() {
        return this.mMosaicView.generateSample();
    }

    protected RenderData onExport() {
        return new MosaicRenderData(this.mMosaicView.export());
    }

    public void clear() {
        this.mMosaicView.onClear();
    }

    public void setMosaicData(MosaicData mosaicData) {
        MosaicGLEntity mosaicEntity = (MosaicGLEntity) mosaicData;
        if (this.mMosaicView != null) {
            this.mMosaicView.setCurrentEntity(mosaicEntity);
        } else {
            this.mNextEntity = mosaicEntity;
        }
    }

    public void setMosaicPaintSize(int size) {
        if (this.mMosaicView != null) {
            this.mMosaicView.setMosaicPaintSize(size);
        } else {
            this.mNextPaintSize = size;
        }
    }

    public void setOperationUpdateListener(OperationUpdateListener operationUpdateListener) {
        if (this.mMosaicView != null) {
            this.mMosaicView.setOperationUpdateListener(operationUpdateListener);
        } else {
            this.mOperationUpdateListener = operationUpdateListener;
        }
    }

    public boolean canRevoke() {
        return this.mMosaicView.canRevoke();
    }

    public boolean canRevert() {
        return this.mMosaicView.canRevert();
    }

    public void doRevoke() {
        this.mMosaicView.doRevoke();
    }

    public void doRevert() {
        this.mMosaicView.doRevert();
    }

    public void surfaceCreated(SurfaceHolder holder) {
    }

    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
    }

    public void surfaceDestroyed(SurfaceHolder holder) {
        this.mMosaicContext.surfaceDestroyed();
    }

    public GLContext getGLContext() {
        return this.mMosaicContext;
    }
}
