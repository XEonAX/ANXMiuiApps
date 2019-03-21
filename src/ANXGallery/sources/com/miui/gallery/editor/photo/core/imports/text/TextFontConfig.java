package com.miui.gallery.editor.photo.core.imports.text;

import android.content.Context;
import java.io.File;

public class TextFontConfig {
    public static String FONT_PATH;

    public static void init(Context context) {
        File root = context.getExternalFilesDir(null);
        if (root == null) {
            root = context.getFilesDir();
        }
        FONT_PATH = (root + File.separator + "text_font") + File.separator + "font";
    }
}
