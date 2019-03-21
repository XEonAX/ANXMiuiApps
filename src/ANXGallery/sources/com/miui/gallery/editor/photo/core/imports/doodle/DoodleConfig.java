package com.miui.gallery.editor.photo.core.imports.doodle;

import com.miui.gallery.editor.photo.core.common.model.DoodleData;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleItem;

public class DoodleConfig extends DoodleData {
    private DoodleItem mDoodleItem;

    DoodleConfig(short priority, String name, DoodleItem doodleItem) {
        super(priority, name, doodleItem.normal, doodleItem.selected, doodleItem.talkback);
        this.mDoodleItem = doodleItem;
    }

    DoodleItem getDoodleItem() {
        return this.mDoodleItem;
    }
}
