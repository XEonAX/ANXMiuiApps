package com.miui.gallery.editor.photo.core;

import android.content.Context;
import android.graphics.Bitmap;
import com.miui.gallery.util.Log;
import java.util.List;

public abstract class RenderEngine {
    public abstract Bitmap render(Bitmap bitmap, RenderData renderData);

    public void release() {
    }

    public static Bitmap render(Context context, Bitmap bitmap, List<RenderData> dataList, RenderEngine[] allocatedEngines) {
        if (bitmap == null) {
            Log.w("RenderEngine", "no bitmap need to render");
            return null;
        }
        int size = dataList.size();
        int i = 0;
        while (i < size) {
            RenderData current = (RenderData) dataList.get(i);
            int j = i + 1;
            while (j < dataList.size()) {
                RenderData data = (RenderData) dataList.get(j);
                Log.d("RenderEngine", "try merge %s with %s", current.getType(), data.getType());
                RenderData next = current.merge(data);
                if (next == null) {
                    Log.d("RenderEngine", "not support");
                    break;
                }
                Log.d("RenderEngine", "merged");
                current = next;
                j++;
            }
            i = j;
            RenderEngine engine = findEngine(context, current, allocatedEngines);
            if (engine == null) {
                return null;
            }
            bitmap = engine.render(bitmap, current);
            if (bitmap == null) {
                Log.w("RenderEngine", "render %s failed, return", current.getType());
                return null;
            }
        }
        Log.w("RenderEngine", "render %d finish", Integer.valueOf(dataList.size()));
        return bitmap;
    }

    public static RenderEngine findEngine(Context context, RenderData data, RenderEngine[] allocatedEngines) {
        Effect effect = data.getType();
        RenderEngine engine = allocatedEngines[effect.ordinal()];
        if (engine != null) {
            return engine;
        }
        SdkProvider provider = SdkManager.INSTANCE.getProvider(effect);
        if (provider == null) {
            return engine;
        }
        engine = provider.createEngine(context);
        allocatedEngines[effect.ordinal()] = engine;
        return engine;
    }
}
