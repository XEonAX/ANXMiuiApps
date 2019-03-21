package com.miui.gallery.editor.photo.core.common.fragment;

import com.miui.gallery.editor.photo.app.OperationUpdateListener;
import com.miui.gallery.editor.photo.core.RenderFragment;
import com.miui.gallery.editor.photo.core.common.model.DoodleData;

public abstract class AbstractDoodleFragment extends RenderFragment {
    public abstract boolean canRevert();

    public abstract boolean canRevoke();

    public abstract void doRevert();

    public abstract void doRevoke();

    public abstract void setColor(int i);

    public abstract void setDoodleData(DoodleData doodleData);

    public abstract void setOperationUpdateListener(OperationUpdateListener operationUpdateListener);

    public abstract void setPaintSize(float f);
}
