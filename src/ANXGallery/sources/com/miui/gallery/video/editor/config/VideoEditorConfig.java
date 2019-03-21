package com.miui.gallery.video.editor.config;

import android.content.Context;
import java.io.File;

public class VideoEditorConfig {
    public static String ASSET_INSTALL_ROOT_PATH;
    public static String ASSET_STORE_PATH;
    public static String AUDIO_PATH;
    public static String SMART_EFFECT_PATH;
    public static String WATER_MARK_PATH;

    public static void init(Context context) {
        File root = context.getExternalFilesDir(null);
        if (root == null) {
            root = context.getFilesDir();
        }
        String absoluteDir = root + File.separator + "video_editor";
        AUDIO_PATH = absoluteDir + File.separator + "video_editor_audio_dir";
        ASSET_STORE_PATH = absoluteDir + File.separator + "video_editor_asset_store" + File.separator + "assetstore";
        ASSET_INSTALL_ROOT_PATH = absoluteDir + File.separator + "video_editor_asset_store" + File.separator + "assets";
        SMART_EFFECT_PATH = ASSET_STORE_PATH;
        WATER_MARK_PATH = ASSET_STORE_PATH;
    }
}
