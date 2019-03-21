package com.miui.gallery.settingssync;

import android.text.TextUtils;
import com.miui.gallery.preference.GalleryPreferences.SettingsSync;
import com.miui.gallery.settingssync.GallerySettingsSyncContract.Model;
import com.miui.gallery.settingssync.GallerySettingsSyncContract.Repository;
import com.miui.gallery.settingssync.GallerySettingsSyncContract.SyncableSetting;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GallerySettingSyncModel implements Model {
    private final Repository mRepository;

    public GallerySettingSyncModel(Repository repository) {
        this.mRepository = repository;
    }

    public boolean isDirty() {
        return SettingsSync.isDirty() || !SettingsSync.isFirstUploadComplete();
    }

    public void markDirty(boolean value) {
        SettingsSync.markDirty(value);
        if (!value && !SettingsSync.isFirstUploadComplete()) {
            SettingsSync.setFirstUploadComplete();
            Log.d("GallerySettingSyncModel", "First setting upload complete");
        }
    }

    public JSONObject getUploadSettings() {
        Object e;
        List<SyncableSetting> syncableSettings = this.mRepository.getSyncableSettings();
        if (BaseMiscUtil.isValid(syncableSettings)) {
            try {
                JSONArray extraSettings = null;
                JSONArray exportSettings = null;
                for (SyncableSetting setting : syncableSettings) {
                    JSONArray exportSettings2;
                    JSONArray extraSettings2;
                    try {
                        JSONObject settingJSON = convertSettingToJSON(setting);
                        if (settingJSON != null) {
                            if (setting.isExport()) {
                                if (exportSettings == null) {
                                    exportSettings2 = new JSONArray();
                                } else {
                                    exportSettings2 = exportSettings;
                                }
                                try {
                                    exportSettings2.put(settingJSON);
                                    extraSettings2 = extraSettings;
                                } catch (JSONException e2) {
                                    e = e2;
                                    extraSettings2 = extraSettings;
                                }
                            } else {
                                if (extraSettings == null) {
                                    extraSettings2 = new JSONArray();
                                } else {
                                    extraSettings2 = extraSettings;
                                }
                                try {
                                    extraSettings2.put(settingJSON);
                                    exportSettings2 = exportSettings;
                                } catch (JSONException e3) {
                                    e = e3;
                                    exportSettings2 = exportSettings;
                                }
                            }
                            extraSettings = extraSettings2;
                            exportSettings = exportSettings2;
                        }
                    } catch (JSONException e4) {
                        e = e4;
                        extraSettings2 = extraSettings;
                        exportSettings2 = exportSettings;
                    }
                }
                if (exportSettings == null && extraSettings == null) {
                    return null;
                }
                JSONObject settings = new JSONObject();
                if (exportSettings != null) {
                    settings.put("itemList", exportSettings);
                }
                if (extraSettings == null) {
                    return settings;
                }
                settings.put("extraConfig", extraSettings);
                return settings;
            } catch (JSONException e5) {
                e = e5;
                Log.e("GallerySettingSyncModel", "Failed form settings to JSONObject, %s", e);
                return null;
            }
        }
        Log.d("GallerySettingSyncModel", "No syncable settings found!");
        return null;
    }

    public boolean onDownloadSettings(JSONObject settings) {
        if (settings == null) {
            Log.w("GallerySettingSyncModel", "No download settings received!");
            return true;
        }
        List<SyncableSetting> syncableSettings = this.mRepository.getSyncableSettings();
        if (BaseMiscUtil.isValid(syncableSettings)) {
            try {
                JSONArray exportSettings = settings.optJSONArray("itemList");
                JSONArray extraSettings = settings.optJSONArray("extraConfig");
                saveJSONToSettings(syncableSettings, exportSettings);
                saveJSONToSettings(syncableSettings, extraSettings);
                return true;
            } catch (Object e) {
                Log.e("GallerySettingSyncModel", "Failed save settings from JSONObject, %s", e);
                return false;
            }
        }
        Log.d("GallerySettingSyncModel", "No syncable settings found!");
        return true;
    }

    private JSONObject convertSettingToJSON(SyncableSetting syncableSetting) throws JSONException {
        Boolean enabled = syncableSetting.isEnabled();
        String value = syncableSetting.getValue();
        if (enabled == null && value == null) {
            return null;
        }
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("name", syncableSetting.getName());
        if (enabled != null) {
            jsonObject.put("enable", enabled);
        }
        if (value == null) {
            return jsonObject;
        }
        jsonObject.put("value", value);
        return jsonObject;
    }

    private void saveJSONToSettings(List<SyncableSetting> syncableSettings, JSONArray settings) throws JSONException {
        if (settings != null && settings.length() > 0) {
            for (int i = 0; i < settings.length(); i++) {
                JSONObject settingItem = settings.getJSONObject(i);
                String name = settingItem.optString("name");
                if (!TextUtils.isEmpty(name)) {
                    SyncableSetting setting = findSettingByName(syncableSettings, name);
                    if (setting != null) {
                        saveJSONToSetting(setting, settingItem);
                    }
                }
            }
        }
    }

    private void saveJSONToSetting(SyncableSetting syncableSetting, JSONObject json) throws JSONException {
        Boolean isEnabled = null;
        String value = null;
        if (json.has("enable")) {
            isEnabled = Boolean.valueOf(json.getBoolean("enable"));
        }
        if (json.has("value")) {
            value = json.getString("value");
        }
        syncableSetting.writeValue(isEnabled, value);
    }

    private SyncableSetting findSettingByName(List<SyncableSetting> syncableSettings, String settingName) {
        for (SyncableSetting setting : syncableSettings) {
            if (settingName.endsWith(setting.getName())) {
                return setting;
            }
        }
        return null;
    }
}
