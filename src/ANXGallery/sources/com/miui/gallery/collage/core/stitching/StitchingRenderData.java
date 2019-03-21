package com.miui.gallery.collage.core.stitching;

import com.miui.gallery.collage.core.RenderData;
import com.miui.gallery.collage.widget.CollageStitchingLayout;

class StitchingRenderData extends RenderData {
    CollageStitchingLayout.RenderData mRenderData;
    int mWidth;

    StitchingRenderData(CollageStitchingLayout.RenderData renderData) {
        this.mRenderData = renderData;
    }
}
