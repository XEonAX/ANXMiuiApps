package com.miui.gallery.editor.photo.core.imports.text;

import com.miui.gallery.module.GalleryModuleManager;

public class TextManager {
    public static void loadModule() {
        if (!GalleryModuleManager.getInstance().isModuleLoaded("com.miui.gallery.extra.videoeditor.v1000")) {
            GalleryModuleManager.getInstance().loadModule(true, null, "com.miui.gallery.extra.videoeditor.v1000");
        }
    }
}
