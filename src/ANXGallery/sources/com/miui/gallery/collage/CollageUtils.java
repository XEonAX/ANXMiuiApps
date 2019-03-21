package com.miui.gallery.collage;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.miui.gallery.editor.photo.utils.IoUtils;
import com.miui.gallery.util.Log;
import java.io.IOException;
import java.io.InputStream;

public class CollageUtils {
    public static Drawable getDrawableByAssets(Resources res, String path) {
        Drawable drawable;
        InputStream inputStream = null;
        try {
            inputStream = res.getAssets().open(path);
            drawable = Drawable.createFromStream(inputStream, null);
        } catch (IOException e) {
            drawable = null;
            Log.e("CollageUtils", "load poster element img fail ! path %s", (Object) path);
        } finally {
            IoUtils.close("CollageUtils", inputStream);
        }
        return drawable;
    }

    public static String loadResourceFileString(AssetManager assetManager, String name) {
        String result = null;
        InputStream inputStream = null;
        try {
            inputStream = assetManager.open(name);
            result = IoUtils.readInputStreamToString("CollageUtils", inputStream);
        } catch (Throwable e) {
            Log.e("CollageUtils", e);
        } finally {
            IoUtils.close(inputStream);
        }
        return result;
    }

    public static Gson generateCustomGson() {
        return new GsonBuilder().create();
    }
}
