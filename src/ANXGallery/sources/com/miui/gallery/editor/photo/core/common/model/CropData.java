package com.miui.gallery.editor.photo.core.common.model;

import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.Metadata;

public abstract class CropData extends Metadata {
    public static CropData MIRROR = new CropData((short) -2, "mirror", R.drawable.crop_menu_item_horizontal_mirror, R.string.photo_editor_talkback_crop_mirror) {
    };
    public static CropData ROTATE = new CropData((short) -1, "rotate", R.drawable.crop_menu_item_rotate, R.string.photo_editor_talkback_crop_rotate) {
    };
    public final int icon;
    public final int talkbackName;

    public static class AspectRatio extends CropData {
        public final int height;
        public final int width;

        public AspectRatio(short priority, String name, int icon, int talkbackName, int width, int height) {
            super(priority, name, icon, talkbackName);
            this.width = width;
            this.height = height;
        }
    }

    CropData(short priority, String name, int icon, int talkbackName) {
        super(priority, name);
        this.icon = icon;
        this.talkbackName = talkbackName;
    }
}
