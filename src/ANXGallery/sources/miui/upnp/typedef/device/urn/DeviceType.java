package miui.upnp.typedef.device.urn;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import miui.upnp.typedef.device.urn.Urn.Type;
import miui.upnp.typedef.device.urn.schemas.Schemas;

public class DeviceType extends Urn implements Parcelable {
    public static final Creator<DeviceType> CREATOR = new Creator<DeviceType>() {
        public DeviceType createFromParcel(Parcel in) {
            return new DeviceType(in);
        }

        public DeviceType[] newArray(int size) {
            return new DeviceType[size];
        }
    };

    public DeviceType(String subType, String version) {
        super.setType(Type.DEVICE);
        super.setDomain(Schemas.UPNP);
        super.setSubType(subType);
        super.setVersion(version);
    }

    public static DeviceType create(String string) {
        DeviceType thiz = new DeviceType();
        if (thiz.parse(string)) {
            return thiz;
        }
        return null;
    }

    public boolean parse(String string) {
        boolean ret = super.parse(string);
        if (ret && getType() == Type.DEVICE) {
            return true;
        }
        return ret;
    }

    public String getName() {
        return getSubType();
    }

    public DeviceType(Parcel in) {
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        parse(in.readString());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeString(toString());
    }
}
