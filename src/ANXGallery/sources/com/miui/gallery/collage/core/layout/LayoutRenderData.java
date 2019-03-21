package com.miui.gallery.collage.core.layout;

import com.miui.gallery.collage.core.RenderData;
import com.miui.gallery.collage.render.CollageRender;

class LayoutRenderData extends RenderData {
    CollageRender.RenderData mRenderData;

    LayoutRenderData(CollageRender.RenderData renderData) {
        this.mRenderData = renderData;
    }
}
