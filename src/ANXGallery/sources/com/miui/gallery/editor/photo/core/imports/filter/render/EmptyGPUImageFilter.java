package com.miui.gallery.editor.photo.core.imports.filter.render;

import com.miui.filtersdk.filter.base.BaseOriginalFilter;

public final class EmptyGPUImageFilter extends BaseOriginalFilter implements IFilterEmptyValidate {
    public boolean isEmpty() {
        return true;
    }
}
