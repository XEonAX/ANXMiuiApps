package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Pair;
import com.xiaomi.channel.commonutils.misc.CollectionUtils;
import java.util.List;

public class OnlineConfig {
    private static volatile OnlineConfig instance;
    protected SharedPreferences preferences;

    public static OnlineConfig getInstance(Context context) {
        if (instance == null) {
            synchronized (OnlineConfig.class) {
                if (instance == null) {
                    instance = new OnlineConfig(context);
                }
            }
        }
        return instance;
    }

    private OnlineConfig(Context context) {
        this.preferences = context.getSharedPreferences("mipush_oc", 0);
    }

    public void updateNormalConfigs(List<Pair<Integer, Object>> configList) {
        if (!CollectionUtils.isEmpty(configList)) {
            Editor editor = this.preferences.edit();
            for (Pair<Integer, Object> config : configList) {
                if (!(config.first == null || config.second == null)) {
                    putConfig(editor, config, getNormalOcKey(((Integer) config.first).intValue()));
                }
            }
            editor.commit();
        }
    }

    public void updateCustomConfigs(List<Pair<Integer, Object>> configList) {
        if (!CollectionUtils.isEmpty(configList)) {
            Editor editor = this.preferences.edit();
            for (Pair<Integer, Object> config : configList) {
                if (config.first != null) {
                    String key = getCustomOcKey(((Integer) config.first).intValue());
                    if (config.second == null) {
                        editor.remove(key);
                    } else {
                        putConfig(editor, config, key);
                    }
                }
            }
            editor.commit();
        }
    }

    private void putConfig(Editor editor, Pair<Integer, Object> config, String key) {
        if (config.second instanceof Integer) {
            editor.putInt(key, ((Integer) config.second).intValue());
        } else if (config.second instanceof Long) {
            editor.putLong(key, ((Long) config.second).longValue());
        } else if (config.second instanceof String) {
            editor.putString(key, (String) config.second);
        } else if (config.second instanceof Boolean) {
            editor.putBoolean(key, ((Boolean) config.second).booleanValue());
        }
    }

    public int getIntValue(int key, int defaultVal) {
        String customKey = getCustomOcKey(key);
        if (this.preferences.contains(customKey)) {
            return this.preferences.getInt(customKey, 0);
        }
        String normalKey = getNormalOcKey(key);
        if (this.preferences.contains(normalKey)) {
            return this.preferences.getInt(normalKey, 0);
        }
        return defaultVal;
    }

    public boolean getBooleanValue(int key, boolean defaultVal) {
        String customKey = getCustomOcKey(key);
        if (this.preferences.contains(customKey)) {
            return this.preferences.getBoolean(customKey, false);
        }
        String normalKey = getNormalOcKey(key);
        if (this.preferences.contains(normalKey)) {
            return this.preferences.getBoolean(normalKey, false);
        }
        return defaultVal;
    }

    private String getNormalOcKey(int key) {
        return "normal_oc_" + key;
    }

    private String getCustomOcKey(int key) {
        return "custom_oc_" + key;
    }
}
