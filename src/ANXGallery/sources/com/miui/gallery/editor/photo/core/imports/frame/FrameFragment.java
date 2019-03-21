package com.miui.gallery.editor.photo.core.imports.frame;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractFrameFragment;
import java.util.ArrayList;
import java.util.List;

public class FrameFragment extends AbstractFrameFragment {
    private FrameEditorView mFrameEditorView;
    private String mSimpleString;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        ViewGroup layout = (ViewGroup) inflater.inflate(R.layout.editor_view_frame, container, false);
        this.mFrameEditorView = (FrameEditorView) layout.findViewById(R.id.frame_editor);
        this.mFrameEditorView.setBitmap(getBitmap());
        return layout;
    }

    public boolean isEmpty() {
        return this.mFrameEditorView.isEmpty();
    }

    protected List<String> onSample() {
        List<String> list = new ArrayList();
        list.add(this.mSimpleString);
        return list;
    }

    protected RenderData onExport() {
        return new FrameRenderData(this.mFrameEditorView.export());
    }

    public boolean isSupportBitmap(Bitmap bitmap) {
        float ratio = ((float) bitmap.getHeight()) / ((float) bitmap.getWidth());
        if (ratio < 1.0f) {
            ratio = 1.0f / ratio;
        }
        return ratio <= 3.0f;
    }

    public int getUnSupportStringRes() {
        return R.string.frame_not_support_image_ratio;
    }

    public void clear() {
    }

    public void setRatio(float ratio, String simpleString) {
        this.mSimpleString = simpleString;
        if (this.mFrameEditorView != null) {
            this.mFrameEditorView.setRatio(ratio);
        }
    }

    public void setScaleProgress(float progress) {
        if (this.mFrameEditorView != null) {
            this.mFrameEditorView.setScaleProgress(progress);
        }
    }
}
