package com.xiaomi.settingsdk.backup.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class SettingItem<T> implements Parcelable, Comparable<SettingItem<?>> {
    private static final String KEY_KEY = "key";
    private static final String KEY_TYPE = "type";
    protected static final String KEY_VALUE = "value";
    protected static final String TAG = "SettingsBackup";
    public String key;
    private T value;

    protected abstract Object getJsonValue();

    protected abstract String getType();

    protected abstract void setValueFromJson(JSONObject jSONObject);

    protected abstract T stringToValue(String str);

    protected abstract String valueToString(T t);

    public T getValue() {
        return this.value;
    }

    public void setValue(T value) {
        this.value = value;
    }

    public static SettingItem<?> fromJson(JSONObject json) {
        if (json == null) {
            throw new IllegalArgumentException("json cannot be null");
        }
        SettingItem<?> obj = createByType(json.optString(KEY_TYPE));
        if (obj == null) {
            return null;
        }
        obj.key = json.optString(KEY_KEY);
        obj.setValueFromJson(json);
        return obj;
    }

    private static SettingItem<?> createByType(String type) {
        if (KeyStringSettingItem.TYPE.equals(type)) {
            return new KeyStringSettingItem();
        }
        if (KeyBinarySettingItem.TYPE.equals(type)) {
            return new KeyBinarySettingItem();
        }
        if (KeyJsonSettingItem.TYPE.equals(type)) {
            return new KeyJsonSettingItem();
        }
        Log.w("SettingsBackup", "type: " + type + " are not handled!");
        return null;
    }

    public JSONObject toJson() {
        JSONObject obj = new JSONObject();
        try {
            obj.put(KEY_KEY, this.key);
            obj.put(KEY_TYPE, getType());
            obj.put("value", getJsonValue());
        } catch (JSONException e) {
            Log.e("SettingsBackup", "JSONException occorred when toJson()", e);
        }
        return obj;
    }

    public int describeContents() {
        return 0;
    }

    protected void fillFromParcel(Parcel source) {
        String key = source.readString();
        String rawValue = source.readString();
        this.key = key;
        setValue(stringToValue(rawValue));
    }

    public void writeToParcel(Parcel dest, int flags) {
        String rawValue = valueToString(getValue());
        dest.writeString(this.key);
        dest.writeString(rawValue);
    }

    public int compareTo(SettingItem<?> another) {
        if (another == null) {
            return 1;
        }
        if (this.key != null || another.key == null) {
            return this.key.compareTo(another.key);
        }
        return -1;
    }
}
