package com.xiaomi.scanner.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.preference.PreferenceManager;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.util.ArrayList;
import java.util.List;

public class SettingsManager {
    public static final String CAMERA_SCOPE_PREFIX = "_preferences_camera_";
    public static final String MODULE_SCOPE_PREFIX = "_preferences_module_";
    public static final String SCOPE_GLOBAL = "default_scope";
    private static final Tag TAG = new Tag("SettingsManager");
    private final Context mContext;
    private SharedPreferences mCustomPreferences;
    private final SharedPreferences mDefaultPreferences;
    private final DefaultsStore mDefaultsStore = new DefaultsStore();
    private final List<OnSettingChangedListener> mListeners = new ArrayList();
    private final String mPackageName;
    private final List<OnSharedPreferenceChangeListener> mSharedPreferenceListeners = new ArrayList();

    public interface OnSettingChangedListener {
        void onSettingChanged(SettingsManager settingsManager, String str);
    }

    public SettingsManager(Context context) {
        this.mContext = context;
        this.mPackageName = this.mContext.getPackageName();
        this.mDefaultPreferences = PreferenceManager.getDefaultSharedPreferences(this.mContext);
    }

    public SharedPreferences getDefaultPreferences() {
        return this.mDefaultPreferences;
    }

    protected SharedPreferences openPreferences(String scope) {
        SharedPreferences preferences = this.mContext.getSharedPreferences(this.mPackageName + scope, 0);
        for (OnSharedPreferenceChangeListener listener : this.mSharedPreferenceListeners) {
            preferences.registerOnSharedPreferenceChangeListener(listener);
        }
        return preferences;
    }

    protected void closePreferences(SharedPreferences preferences) {
        for (OnSharedPreferenceChangeListener listener : this.mSharedPreferenceListeners) {
            preferences.unregisterOnSharedPreferenceChangeListener(listener);
        }
    }

    public static String getCameraSettingScope(String cameraIdValue) {
        return CAMERA_SCOPE_PREFIX + cameraIdValue;
    }

    public static String getModuleSettingScope(String moduleScopeNamespace) {
        return MODULE_SCOPE_PREFIX + moduleScopeNamespace;
    }

    private OnSharedPreferenceChangeListener getSharedPreferenceListener(final OnSettingChangedListener listener) {
        return new OnSharedPreferenceChangeListener() {
            public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
                listener.onSettingChanged(SettingsManager.this, key);
            }
        };
    }

    public void addListener(OnSettingChangedListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("OnSettingChangedListener cannot be null.");
        } else if (!this.mListeners.contains(listener)) {
            this.mListeners.add(listener);
            OnSharedPreferenceChangeListener sharedPreferenceListener = getSharedPreferenceListener(listener);
            this.mSharedPreferenceListeners.add(sharedPreferenceListener);
            this.mDefaultPreferences.registerOnSharedPreferenceChangeListener(sharedPreferenceListener);
            if (this.mCustomPreferences != null) {
                this.mCustomPreferences.registerOnSharedPreferenceChangeListener(sharedPreferenceListener);
            }
            Log.v(TAG, "listeners: " + this.mListeners);
        }
    }

    public void removeListener(OnSettingChangedListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException();
        } else if (this.mListeners.contains(listener)) {
            int index = this.mListeners.indexOf(listener);
            this.mListeners.remove(listener);
            OnSharedPreferenceChangeListener sharedPreferenceListener = (OnSharedPreferenceChangeListener) this.mSharedPreferenceListeners.get(index);
            this.mSharedPreferenceListeners.remove(index);
            this.mDefaultPreferences.unregisterOnSharedPreferenceChangeListener(sharedPreferenceListener);
            if (this.mCustomPreferences != null) {
                this.mCustomPreferences.unregisterOnSharedPreferenceChangeListener(sharedPreferenceListener);
            }
        }
    }

    public void removeAllListeners() {
        for (OnSharedPreferenceChangeListener listener : this.mSharedPreferenceListeners) {
            this.mDefaultPreferences.unregisterOnSharedPreferenceChangeListener(listener);
            if (this.mCustomPreferences != null) {
                this.mCustomPreferences.unregisterOnSharedPreferenceChangeListener(listener);
            }
        }
        this.mSharedPreferenceListeners.clear();
        this.mListeners.clear();
    }

    private SharedPreferences getPreferencesFromScope(String scope) {
        if (scope.equals(SCOPE_GLOBAL)) {
            return this.mDefaultPreferences;
        }
        if (this.mCustomPreferences != null) {
            closePreferences(this.mCustomPreferences);
        }
        this.mCustomPreferences = openPreferences(scope);
        return this.mCustomPreferences;
    }

    public void setDefaults(String key, String defaultValue, String[] possibleValues) {
        this.mDefaultsStore.storeDefaults(key, defaultValue, possibleValues);
    }

    public void setDefaults(String key, int defaultValue, int[] possibleValues) {
        String defaultValueString = Integer.toString(defaultValue);
        String[] possibleValuesString = new String[possibleValues.length];
        for (int i = 0; i < possibleValues.length; i++) {
            possibleValuesString[i] = Integer.toString(possibleValues[i]);
        }
        this.mDefaultsStore.storeDefaults(key, defaultValueString, possibleValuesString);
    }

    public void setDefaults(String key, boolean defaultValue) {
        this.mDefaultsStore.storeDefaults(key, defaultValue ? "1" : "0", new String[]{"0", "1"});
    }

    public String getStringDefault(String key) {
        return this.mDefaultsStore.getDefaultValue(key);
    }

    public Integer getIntegerDefault(String key) {
        String defaultValueString = this.mDefaultsStore.getDefaultValue(key);
        return Integer.valueOf(defaultValueString == null ? 0 : Integer.parseInt(defaultValueString));
    }

    public boolean getBooleanDefault(String key) {
        String defaultValueString = this.mDefaultsStore.getDefaultValue(key);
        if (defaultValueString == null || Integer.parseInt(defaultValueString) == 0) {
            return false;
        }
        return true;
    }

    public String getString(String scope, String key, String defaultValue) {
        return getPreferencesFromScope(scope).getString(key, defaultValue);
    }

    public String getString(String scope, String key) {
        return getString(scope, key, getStringDefault(key));
    }

    public Integer getInteger(String scope, String key, Integer defaultValue) {
        return Integer.valueOf(Integer.parseInt(getString(scope, key, Integer.toString(defaultValue.intValue()))));
    }

    public Integer getInteger(String scope, String key) {
        return getInteger(scope, key, getIntegerDefault(key));
    }

    public Long getLong(String scope, String key, Long defaultValue) {
        try {
            return Long.valueOf(Long.parseLong(getString(scope, key, Long.toString(defaultValue.longValue()))));
        } catch (NumberFormatException e) {
            Log.e(TAG, "getLong error, key=" + key, e);
            return defaultValue;
        }
    }

    public boolean getBoolean(String scope, String key, boolean defaultValue) {
        return Integer.parseInt(getString(scope, key, defaultValue ? "1" : "0")) != 0;
    }

    public boolean getBoolean(String scope, String key) {
        return getBoolean(scope, key, getBooleanDefault(key));
    }

    public int getIndexOfCurrentValue(String scope, String key) {
        String[] possibleValues = this.mDefaultsStore.getPossibleValues(key);
        if (possibleValues == null || possibleValues.length == 0) {
            throw new IllegalArgumentException("No possible values for scope=" + scope + " key=" + key);
        }
        String value = getString(scope, key);
        for (int i = 0; i < possibleValues.length; i++) {
            if (value.equals(possibleValues[i])) {
                return i;
            }
        }
        throw new IllegalStateException("Current value for scope=" + scope + " key=" + key + " not in list of possible values");
    }

    public void set(String scope, String key, String value) {
        getPreferencesFromScope(scope).edit().putString(key, value).apply();
    }

    public void set(String scope, String key, int value) {
        set(scope, key, convert(value));
    }

    public void set(String scope, String key, long value) {
        set(scope, key, convert(value));
    }

    public void set(String scope, String key, boolean value) {
        set(scope, key, convert(value));
    }

    public void setToDefault(String scope, String key) {
        set(scope, key, getStringDefault(key));
    }

    public void setValueByIndex(String scope, String key, int index) {
        String[] possibleValues = this.mDefaultsStore.getPossibleValues(key);
        if (possibleValues.length == 0) {
            throw new IllegalArgumentException("No possible values for scope=" + scope + " key=" + key);
        } else if (index < 0 || index >= possibleValues.length) {
            throw new IndexOutOfBoundsException("For possible values of scope=" + scope + " key=" + key);
        } else {
            set(scope, key, possibleValues[index]);
        }
    }

    public boolean isSet(String scope, String key) {
        return getPreferencesFromScope(scope).contains(key);
    }

    public boolean isDefault(String scope, String key) {
        String defaultValue = getStringDefault(key);
        String value = getString(scope, key);
        return value == null ? false : value.equals(defaultValue);
    }

    public void remove(String scope, String key) {
        getPreferencesFromScope(scope).edit().remove(key).apply();
    }

    static String convert(int value) {
        return Integer.toString(value);
    }

    static String convert(long value) {
        return Long.toString(value);
    }

    static String convert(boolean value) {
        return value ? "1" : "0";
    }
}
