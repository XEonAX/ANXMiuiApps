package com.miui.gallery.movie;

import android.content.Context;
import java.io.File;
import miui.os.FileUtils;

public class MovieConfig {
    public static String sAssetInstallRootPath;
    public static String sAssetStorePath;
    public static String sAudioDir;
    private static boolean sInited;
    private static float sMovieRatio;
    public static String sTemplateDir;

    public static void init(Context context) {
        if (!sInited) {
            String movieDir = context.getExternalFilesDir("movie").getAbsolutePath();
            sTemplateDir = movieDir + File.separator + "template";
            sAudioDir = movieDir + File.separator + "audio";
            sAssetStorePath = sTemplateDir + File.separator + "movie_asset_store" + File.separator + "asset_store";
            sAssetInstallRootPath = sTemplateDir + File.separator + "movie_asset_store" + File.separator + "assets";
            FileUtils.addNoMedia(movieDir);
            sInited = true;
        }
    }

    public static float getMovieRatio() {
        return sMovieRatio;
    }

    public static void setMovieRatio(float movieRatio) {
        sMovieRatio = movieRatio;
    }
}
