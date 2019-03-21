package com.miui.gallery.editor.photo.core.imports.text.utils;

import android.graphics.Typeface;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TextStyle;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import java.util.List;
import java.util.Locale;

public class TextTools {
    public static void checkResourceExist(List<TextStyle> fonts) {
        if (BaseMiscUtil.isValid(fonts)) {
            for (TextStyle fontResource : fonts) {
                if (fontResource.isLocal()) {
                    fontResource.setTypeFace(Typeface.DEFAULT);
                    fontResource.setState(17);
                } else if (fontResource.isExtra() && FileUtils.isFileExist(fontResource.getFilePath())) {
                    fontResource.setTypeFace(Typeface.createFromFile(fontResource.getFilePath()));
                    fontResource.setState(17);
                }
            }
        }
    }

    public static boolean isZhCNLanguage() {
        return Locale.getDefault().toString().equals("zh_CN");
    }
}
