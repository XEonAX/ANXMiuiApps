package com.miui.gallery.collage.core;

import com.miui.gallery.collage.core.layout.LayoutPresenter;
import com.miui.gallery.collage.core.poster.PosterPresenter;
import com.miui.gallery.collage.core.stitching.StitchingPresenter;

public enum Effect {
    POSTER,
    LAYOUT,
    STITCHING;

    public CollagePresenter generatePresenter() {
        switch (this) {
            case LAYOUT:
                return new LayoutPresenter();
            case STITCHING:
                return new StitchingPresenter();
            default:
                return new PosterPresenter();
        }
    }
}
