package android.view;

import android.content.Context;
import android.provider.MiuiSettings.System;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class MiuiWindowManager {
    private static final int TYPE_LAYER_MULTIPLIER = 10000;
    private static final int TYPE_LAYER_OFFSET = 1000;
    private static SparseIntArray sTypeLayers;

    public static class LayoutParams extends android.view.WindowManager.LayoutParams {
        public static final int EXTRA_FLAG_ENABLE_NOTCH_CONFIG = 256;
        public static final int EXTRA_FLAG_FINDDEVICE_KEYGUARD = 2048;
        public static final int EXTRA_FLAG_LAYOUT_NOTCH_LANDSCAPE = 1024;
        public static final int EXTRA_FLAG_LAYOUT_NOTCH_PORTRAIT = 512;
        public static final int EXTRA_FLAG_NAVIGATION_BAR_DARK_MODE = 64;
        public static final int EXTRA_FLAG_SHOW_ON_FINDDEVICE_KEYGUARD = 4096;
        public static final int EXTRA_FLAG_STATUS_BAR_DARK_MODE = 16;
        public static final int EXTRA_FLAG_STATUS_BAR_HIDE = 32;
        public static final int EXTRA_FLAG_STATUS_BAR_LOW_PROFILE = 2;
        public static final int EXTRA_FLAG_STATUS_BAR_MASK = 59;
        public static final int EXTRA_FLAG_STATUS_BAR_SIMPLE_MODE = 8;
        public static final int EXTRA_FLAG_STATUS_BAR_TRANSPARENT = 1;
        public static final int PRIVATE_FLAG_LOCKSCREEN_DISPALY_DESKTOP = 134217728;
    }

    private static void loadTypeLayerIfNeed(Context context) {
        if (sTypeLayers == null || sTypeLayers.size() <= 0) {
            String strJsonTypeLayer = System.getStringForUser(context.getContentResolver(), "window_type_layer", 0);
            if (TextUtils.isEmpty(strJsonTypeLayer)) {
                throw new RuntimeException("Window type layer has not set to setting.");
            }
            try {
                JSONObject jsonTypeLayer = new JSONObject(strJsonTypeLayer);
                sTypeLayers = new SparseIntArray();
                Iterator<String> iterator = jsonTypeLayer.keys();
                while (iterator.hasNext()) {
                    String strType = (String) iterator.next();
                    sTypeLayers.put(Integer.parseInt(strType), jsonTypeLayer.getInt(strType));
                }
            } catch (JSONException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public static int getLayer(Context context, int type) {
        loadTypeLayerIfNeed(context);
        int typeLayer = 2;
        if (sTypeLayers != null) {
            typeLayer = sTypeLayers.get(type, 2);
        }
        return (typeLayer * 10000) + 1000;
    }
}
