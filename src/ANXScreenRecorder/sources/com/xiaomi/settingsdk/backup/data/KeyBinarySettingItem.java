package com.xiaomi.settingsdk.backup.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Base64;
import com.xiaomi.stat.MiStat.Param;
import org.json.JSONObject;

public class KeyBinarySettingItem extends SettingItem<byte[]> {
    public static final Creator<KeyBinarySettingItem> CREATOR = new Creator<KeyBinarySettingItem>() {
        public KeyBinarySettingItem[] newArray(int size) {
            return new KeyBinarySettingItem[size];
        }

        public KeyBinarySettingItem createFromParcel(Parcel source) {
            KeyBinarySettingItem obj = new KeyBinarySettingItem();
            obj.fillFromParcel(source);
            return obj;
        }
    };
    public static final String TYPE = "binary";

    protected byte[] stringToValue(String rawValue) {
        return Base64.decode(rawValue, 2);
    }

    protected String valueToString(byte[] actualValue) {
        return Base64.encodeToString(actualValue, 2);
    }

    protected Object getJsonValue() {
        return valueToString((byte[]) getValue());
    }

    protected void setValueFromJson(JSONObject json) {
        setValue(stringToValue(json.optString(Param.VALUE)));
    }

    protected String getType() {
        return TYPE;
    }
}
