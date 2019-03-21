package com.miui.gallery.editor.photo.core.common.fragment;

import com.miui.gallery.editor.photo.core.RenderFragment;
import com.miui.gallery.editor.photo.core.common.model.RemoverData;

public abstract class AbstractRemoverFragment extends RenderFragment {
    public abstract void setPaintSize(float f);

    public abstract void setRemoverData(RemoverData removerData);
}
