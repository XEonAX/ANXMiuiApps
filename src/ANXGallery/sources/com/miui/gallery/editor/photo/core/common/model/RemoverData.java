package com.miui.gallery.editor.photo.core.common.model;

import com.miui.gallery.editor.photo.core.Metadata;

public class RemoverData extends Metadata {
    public int mIcon;
    public int mType;

    public RemoverData(short priority, String name, int icon, int type) {
        super(priority, name);
        this.mIcon = icon;
        this.mType = type;
    }
}
