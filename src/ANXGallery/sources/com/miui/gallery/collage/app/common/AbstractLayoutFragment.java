package com.miui.gallery.collage.app.common;

import com.miui.gallery.collage.core.layout.LayoutModel;

public abstract class AbstractLayoutFragment extends CollageRenderFragment {
    public abstract void onSelectMargin(float f);

    public abstract void onSelectModel(LayoutModel layoutModel);

    public abstract void onSelectRatio(float f);
}
