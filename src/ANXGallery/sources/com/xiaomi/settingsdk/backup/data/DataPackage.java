package com.xiaomi.settingsdk.backup.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONObject;

public class DataPackage implements Parcelable {
    public static final Creator<DataPackage> CREATOR = new Creator<DataPackage>() {
        public DataPackage[] newArray(int size) {
            return new DataPackage[size];
        }

        public DataPackage createFromParcel(Parcel source) {
            return DataPackage.parseDataPackageBundle(source.readBundle());
        }
    };
    private final Map<String, SettingItem<?>> mDataItems = new HashMap();
    private final Map<String, ParcelFileDescriptor> mFileItems = new HashMap();

    private static DataPackage parseDataPackageBundle(Bundle dataPackageBundle) {
        if (dataPackageBundle == null) {
            return null;
        }
        dataPackageBundle.setClassLoader(SettingItem.class.getClassLoader());
        DataPackage pkg = new DataPackage();
        for (String key : dataPackageBundle.keySet()) {
            Parcelable value = dataPackageBundle.getParcelable(key);
            if (value instanceof SettingItem) {
                pkg.mDataItems.put(key, (SettingItem) value);
            }
            if (value instanceof ParcelFileDescriptor) {
                pkg.mFileItems.put(key, (ParcelFileDescriptor) value);
            }
        }
        return pkg;
    }

    private Bundle getDataPackageBundle() {
        Bundle dataPackageBundle = new Bundle();
        for (Entry<String, SettingItem<?>> kv : this.mDataItems.entrySet()) {
            dataPackageBundle.putParcelable((String) kv.getKey(), (SettingItem) kv.getValue());
        }
        for (Entry<String, ParcelFileDescriptor> kv2 : this.mFileItems.entrySet()) {
            dataPackageBundle.putParcelable((String) kv2.getKey(), (ParcelFileDescriptor) kv2.getValue());
        }
        return dataPackageBundle;
    }

    public void addKeyJson(String key, JSONObject value) {
        KeyJsonSettingItem item = new KeyJsonSettingItem();
        item.key = key;
        item.setValue(value);
        this.mDataItems.put(key, item);
    }

    public SettingItem<?> get(String key) {
        return (SettingItem) this.mDataItems.get(key);
    }

    public void appendToWrappedBundle(Bundle bundle) {
        bundle.putBundle("data_package", getDataPackageBundle());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeBundle(getDataPackageBundle());
    }
}
