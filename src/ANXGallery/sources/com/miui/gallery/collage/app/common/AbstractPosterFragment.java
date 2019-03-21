package com.miui.gallery.collage.app.common;

import com.miui.gallery.collage.core.layout.LayoutModel;
import com.miui.gallery.collage.core.poster.PosterModel;

public abstract class AbstractPosterFragment extends CollageRenderFragment {
    public abstract void onSelectModel(PosterModel posterModel, LayoutModel layoutModel);
}
