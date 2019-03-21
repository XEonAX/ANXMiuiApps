package com.miui.gallery.editor.photo.core.imports.doodle;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.OperationUpdateListener;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractDoodleFragment;
import com.miui.gallery.editor.photo.core.common.model.DoodleData;
import com.miui.gallery.editor.photo.core.imports.doodle.DoodleEditorView.DoodleCallback;
import java.util.ArrayList;
import java.util.List;

public class DoodleFragment extends AbstractDoodleFragment {
    private int mCurrentColor = -16777216;
    private DoodleCallback mDoodleCallback = new DoodleCallback() {
        public void onDoodleGenerate(String name) {
            DoodleFragment.this.mStats.add(name);
        }
    };
    private DoodleEditorView mDoodleEditorView;
    private OperationUpdateListener mOperationUpdateListener;
    private List<String> mStats = new ArrayList();

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        ViewGroup layout = (ViewGroup) inflater.inflate(R.layout.editor_view_container, container, false);
        this.mDoodleEditorView = new DoodleEditorView(getActivity());
        this.mDoodleEditorView.setBitmap(getBitmap());
        this.mDoodleEditorView.setColor(this.mCurrentColor);
        this.mDoodleEditorView.setDoodleCallback(this.mDoodleCallback);
        int paddingLeft = getResources().getDimensionPixelSize(R.dimen.photo_editor_preview_padding);
        this.mDoodleEditorView.setPadding(paddingLeft, getResources().getDimensionPixelSize(R.dimen.photo_editor_preview_padding_top), paddingLeft, 0);
        layout.addView(this.mDoodleEditorView, -1, -1);
        if (this.mOperationUpdateListener != null) {
            this.mDoodleEditorView.setOperationUpdateListener(this.mOperationUpdateListener);
            this.mOperationUpdateListener = null;
        }
        return layout;
    }

    public boolean isEmpty() {
        return this.mDoodleEditorView.isEmpty();
    }

    protected List<String> onSample() {
        List<String> list = new ArrayList();
        list.addAll(this.mStats);
        return list;
    }

    protected RenderData onExport() {
        return new DoodleRenderData(this.mDoodleEditorView.export());
    }

    public void clear() {
        this.mDoodleEditorView.onClear();
    }

    public void setDoodleData(DoodleData doodleData) {
        if (this.mDoodleEditorView != null) {
            this.mDoodleEditorView.setCurrentDoodleItem(((DoodleConfig) doodleData).getDoodleItem());
            this.mDoodleEditorView.clearActivation();
        }
    }

    public void setOperationUpdateListener(OperationUpdateListener operationUpdateListener) {
        if (this.mDoodleEditorView != null) {
            this.mDoodleEditorView.setOperationUpdateListener(operationUpdateListener);
        } else {
            this.mOperationUpdateListener = operationUpdateListener;
        }
    }

    public boolean canRevoke() {
        return this.mDoodleEditorView.canRevoke();
    }

    public boolean canRevert() {
        return this.mDoodleEditorView.canRevert();
    }

    public void doRevoke() {
        this.mDoodleEditorView.doRevoke();
    }

    public void doRevert() {
        this.mDoodleEditorView.doRevert();
    }

    public void setColor(int color) {
        this.mCurrentColor = color;
        if (this.mDoodleEditorView != null) {
            this.mDoodleEditorView.setColor(color);
        }
    }

    public void setPaintSize(float paintSize) {
        this.mDoodleEditorView.setPaintSize(paintSize);
    }
}
