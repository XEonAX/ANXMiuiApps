package com.miui.gallery.collage.core.poster;

import com.miui.gallery.collage.core.RenderData;
import com.miui.gallery.collage.render.CollageRender;

class PosterRenderData extends RenderData {
    CollageRender.RenderData mRenderData;

    PosterRenderData(CollageRender.RenderData renderData) {
        this.mRenderData = renderData;
    }
}
