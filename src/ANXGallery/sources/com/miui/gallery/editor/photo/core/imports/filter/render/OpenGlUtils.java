package com.miui.gallery.editor.photo.core.imports.filter.render;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.os.Build;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.util.HashMap;

public class OpenGlUtils {
    public static int loadTexture(Bitmap img, int usedTexId, boolean recycle) {
        boolean z = true;
        if (img == null || img.isRecycled()) {
            String str = "OpenGlUtils";
            String str2 = "img is null: %b";
            if (img != null) {
                z = false;
            }
            Log.d(str, str2, Boolean.valueOf(z));
            return -1;
        }
        int[] textures = new int[1];
        if (usedTexId == -1) {
            GLES20.glGenTextures(1, textures, 0);
            GLES20.glBindTexture(3553, textures[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLUtils.texImage2D(3553, 0, img, 0);
        } else {
            GLES20.glBindTexture(3553, usedTexId);
            GLUtils.texImage2D(3553, 0, img, 0);
            textures[0] = usedTexId;
        }
        if (recycle) {
            img.recycle();
        }
        return textures[0];
    }

    public static Bitmap ensureBitmapSize(Bitmap origin) {
        int maxSize = GLESUtils.getMaxTextureSize();
        if (origin != null && (origin.getWidth() > maxSize || origin.getHeight() > maxSize)) {
            try {
                if (origin.getWidth() > origin.getHeight()) {
                    return Bitmap.createScaledBitmap(origin, maxSize, (origin.getHeight() * maxSize) / origin.getWidth(), true);
                }
                return Bitmap.createScaledBitmap(origin, (origin.getWidth() * maxSize) / origin.getHeight(), maxSize, true);
            } catch (OutOfMemoryError error) {
                Log.e("OpenGlUtils", "ensureBitmapSize error:" + error.toString());
                HashMap<String, String> params = new HashMap();
                params.put(nexExportFormat.TAG_FORMAT_TYPE, "filter");
                params.put("model", Build.MODEL);
                BaseSamplingStatHelper.recordCountEvent("photo_editor", "memory_error", params);
                origin = null;
            }
        }
        return origin;
    }
}
