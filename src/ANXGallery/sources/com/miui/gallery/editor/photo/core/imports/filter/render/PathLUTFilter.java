package com.miui.gallery.editor.photo.core.imports.filter.render;

import com.miui.filtersdk.filter.base.ColorLookupFilter;
import com.miui.filtersdk.utils.OpenGlUtils;

public class PathLUTFilter extends ColorLookupFilter {
    public PathLUTFilter(String table) {
        super(table);
    }

    protected void onInitialized() {
        runOnDraw(new Runnable() {
            public void run() {
                PathLUTFilter.this.mLookupSourceTexture = OpenGlUtils.loadTexture(OpenGlUtils.getImageFromPath(PathLUTFilter.this.mTable), -1, true);
            }
        });
    }
}
