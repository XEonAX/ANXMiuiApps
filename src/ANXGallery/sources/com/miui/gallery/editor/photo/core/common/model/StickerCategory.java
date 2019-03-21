package com.miui.gallery.editor.photo.core.common.model;

import com.miui.gallery.editor.photo.core.Metadata;

public abstract class StickerCategory extends Metadata {
    public final long id;

    public StickerCategory(long id, short priority, String name) {
        super(priority, name);
        this.id = id;
    }
}
