package com.miui.gallery.settingsbackup;

import android.content.Context;
import com.miui.gallery.preference.GalleryPreferences;
import com.miui.gallery.preference.PreferenceHelper;
import com.miui.gallery.util.Log;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class GallerySettingsBackupHelper {
    public static final JSONObject backupToCloud(Context context) {
        JSONObject json = new JSONObject();
        List<String> prefKeys = GalleryPreferences.getAutoBackupPrefKeys();
        if (prefKeys != null) {
            try {
                for (String key : prefKeys) {
                    savePrefEntry(key, json);
                }
            } catch (Throwable e) {
                Log.e("GallerySettingsBackupHelper", e);
            }
        }
        return json;
    }

    public static final void restoreFromCloud(Context context, JSONObject json) {
        if (json != null) {
            List<String> prefKeys = GalleryPreferences.getAutoBackupPrefKeys();
            if (prefKeys != null) {
                for (String key : prefKeys) {
                    restorePrefEntry(key, json);
                }
            }
        }
    }

    private static void savePrefEntry(String key, JSONObject json) throws JSONException {
        Object obj = PreferenceHelper.getAll().get(key);
        if (obj != null) {
            json.put(key, obj);
        }
    }

    private static void restorePrefEntry(String key, JSONObject json) {
        Object obj = json.opt(key);
        if (obj == null) {
            return;
        }
        if (obj instanceof Boolean) {
            PreferenceHelper.putBoolean(key, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Integer) {
            PreferenceHelper.putInt(key, ((Integer) obj).intValue());
        } else if (obj instanceof Float) {
            PreferenceHelper.putFloat(key, ((Float) obj).floatValue());
        } else if (obj instanceof Long) {
            PreferenceHelper.putLong(key, ((Long) obj).longValue());
        } else if (obj instanceof String) {
            PreferenceHelper.putString(key, (String) obj);
        }
    }
}
