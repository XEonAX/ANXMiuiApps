package com.xiaomi.settingsdk.backup.data;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class SettingItem<T> implements Parcelable, Comparable<SettingItem<?>> {
    public String key;
    private T value;

    protected abstract T stringToValue(String str);

    protected abstract String valueToString(T t);

    public T getValue() {
        return this.value;
    }

    public void setValue(T value) {
        this.value = value;
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
