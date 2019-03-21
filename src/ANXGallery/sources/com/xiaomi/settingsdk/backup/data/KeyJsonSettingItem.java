package com.xiaomi.settingsdk.backup.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

public class KeyJsonSettingItem extends SettingItem<JSONObject> {
    public static final Creator<KeyJsonSettingItem> CREATOR = new Creator<KeyJsonSettingItem>() {
        public KeyJsonSettingItem[] newArray(int size) {
            return new KeyJsonSettingItem[size];
        }

        public KeyJsonSettingItem createFromParcel(Parcel source) {
            KeyJsonSettingItem obj = new KeyJsonSettingItem();
            obj.fillFromParcel(source);
            return obj;
        }
    };

    protected JSONObject stringToValue(String rawValue) {
        try {
            return new JSONObject(rawValue);
        } catch (JSONException e) {
            Log.e("SettingsBackup", "JSONException occorred when stringToValue()", e);
            return null;
        }
    }

    protected String valueToString(JSONObject actualValue) {
        return actualValue.toString();
    }
}
