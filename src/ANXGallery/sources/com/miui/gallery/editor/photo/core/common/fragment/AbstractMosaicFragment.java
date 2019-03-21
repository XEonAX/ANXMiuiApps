package com.miui.gallery.editor.photo.core.common.fragment;

import com.miui.gallery.editor.photo.app.OperationUpdateListener;
import com.miui.gallery.editor.photo.core.RenderFragment;
import com.miui.gallery.editor.photo.core.common.model.MosaicData;

public abstract class AbstractMosaicFragment extends RenderFragment {
    public abstract boolean canRevert();

    public abstract boolean canRevoke();

    public abstract void doRevert();

    public abstract void doRevoke();

    public abstract void setMosaicData(MosaicData mosaicData);

    public abstract void setMosaicPaintSize(int i);

    public abstract void setOperationUpdateListener(OperationUpdateListener operationUpdateListener);
}
