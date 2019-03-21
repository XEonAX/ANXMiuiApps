package com.miui.gallery.editor.photo.core.common.model;

import com.miui.gallery.editor.photo.core.Metadata;

public abstract class DoodleData extends Metadata {
    public final int normal;
    public final int selected;
    public final int talkback;

    public DoodleData(short priority, String name, int normal, int selected, int talkback) {
        super(priority, name);
        this.normal = normal;
        this.selected = selected;
        this.talkback = talkback;
    }
}
