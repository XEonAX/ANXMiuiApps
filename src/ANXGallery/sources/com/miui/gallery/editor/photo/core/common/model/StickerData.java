package com.miui.gallery.editor.photo.core.common.model;

import com.miui.gallery.editor.photo.core.Metadata;

public abstract class StickerData extends Metadata {
    public final String icon;

    public StickerData(short priority, String name, String iconPath) {
        super(priority, name);
        this.icon = iconPath;
    }
}
