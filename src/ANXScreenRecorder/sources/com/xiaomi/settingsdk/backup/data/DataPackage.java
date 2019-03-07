package com.xiaomi.settingsdk.backup.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.File;
import java.io.FileNotFoundException;
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
    public static final String KEY_DATA_PACKAGE = "data_package";
    public static final String KEY_VERSION = "version";
    private final Map<String, SettingItem<?>> mDataItems = new HashMap();
    private final Map<String, ParcelFileDescriptor> mFileItems = new HashMap();

    public Map<String, SettingItem<?>> getDataItems() {
        return this.mDataItems;
    }

    public Map<String, ParcelFileDescriptor> getFileItems() {
        return this.mFileItems;
    }

    public static int getVersionFromBundle(Bundle bundle) {
        return bundle.getInt(KEY_VERSION);
    }

    public static DataPackage fromWrappedBundle(Bundle bundle) {
        Bundle cloned = (Bundle) bundle.clone();
        cloned.setClassLoader(SettingItem.class.getClassLoader());
        return parseDataPackageBundle(cloned.getBundle(KEY_DATA_PACKAGE));
    }

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

    public void addAbstractDataItem(String key, SettingItem<?> item) {
        this.mDataItems.put(key, item);
    }

    public void addKeyJson(String key, JSONObject value) {
        KeyJsonSettingItem item = new KeyJsonSettingItem();
        item.key = key;
        item.setValue(value);
        this.mDataItems.put(key, item);
    }

    public void addKeyValue(String key, String value) {
        KeyStringSettingItem item = new KeyStringSettingItem();
        item.key = key;
        item.setValue(value);
        this.mDataItems.put(key, item);
    }

    public void addKeyFile(String key, File file) throws FileNotFoundException {
        this.mFileItems.put(key, ParcelFileDescriptor.open(file, 268435456));
    }

    public SettingItem<?> get(String key) {
        return (SettingItem) this.mDataItems.get(key);
    }

    public ParcelFileDescriptor getFile(String key) {
        return (ParcelFileDescriptor) this.mFileItems.get(key);
    }

    public void appendToWrappedBundle(Bundle bundle) {
        bundle.putBundle(KEY_DATA_PACKAGE, getDataPackageBundle());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeBundle(getDataPackageBundle());
    }
}
