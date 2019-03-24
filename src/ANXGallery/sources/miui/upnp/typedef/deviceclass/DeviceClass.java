package miui.upnp.typedef.deviceclass;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;
import miui.upnp.typedef.device.urn.DeviceType;

public class DeviceClass implements Parcelable, Serializable {
    public static final Creator<DeviceClass> CREATOR = new Creator<DeviceClass>() {
        public DeviceClass createFromParcel(Parcel source) {
            return new DeviceClass(source, null);
        }

        public DeviceClass[] newArray(int size) {
            return new DeviceClass[size];
        }
    };
    private Class<?> clazz;
    private DeviceType deviceType;

    public DeviceClass(DeviceType type, Class<?> clazz) {
        this.deviceType = type;
        this.clazz = clazz;
    }

    public DeviceType getDeviceType() {
        return this.deviceType;
    }

    public Class<?> getClazz() {
        return this.clazz;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DeviceClass)) {
            return false;
        }
        return this.deviceType.equals(((DeviceClass) obj).deviceType);
    }

    public int hashCode() {
        return this.deviceType.hashCode();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.deviceType.toString());
        dest.writeSerializable(this.clazz);
    }

    private void readFromParcel(Parcel in) {
        this.deviceType = DeviceType.create(in.readString());
        this.clazz = (Class) in.readSerializable();
    }

    private DeviceClass(Parcel in) {
        readFromParcel(in);
    }
}
