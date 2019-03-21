package com.miui.gallery.editor.photo.core.common.model;

import com.miui.gallery.editor.photo.core.Metadata;

public abstract class TextData extends Metadata {
    public int backgroundColor;
    public final String iconPath;
    public boolean showBackgroundColor;

    public TextData(short priority, String name, String iconPath, int backgroundColor) {
        super(priority, name);
        this.iconPath = iconPath;
        this.backgroundColor = backgroundColor;
        this.showBackgroundColor = true;
    }

    public TextData(short priority, String name, String iconPath) {
        super(priority, name);
        this.iconPath = iconPath;
    }
}
