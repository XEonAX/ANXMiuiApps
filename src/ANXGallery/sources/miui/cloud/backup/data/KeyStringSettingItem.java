package miui.cloud.backup.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.json.JSONObject;

public class KeyStringSettingItem extends SettingItem<String> {
    public static final Creator<KeyStringSettingItem> CREATOR = new Creator<KeyStringSettingItem>() {
        public KeyStringSettingItem[] newArray(int size) {
            return new KeyStringSettingItem[size];
        }

        public KeyStringSettingItem createFromParcel(Parcel source) {
            KeyStringSettingItem obj = new KeyStringSettingItem();
            obj.fillFromParcel(source);
            return obj;
        }
    };
    public static final String TYPE = "string";

    protected String stringToValue(String rawValue) {
        return rawValue;
    }

    protected String valueToString(String actualValue) {
        return actualValue;
    }

    protected Object getJsonValue() {
        return getValue();
    }

    protected void setValueFromJson(JSONObject json) {
        setValue(json.optString("value"));
    }

    protected String getType() {
        return TYPE;
    }
}
