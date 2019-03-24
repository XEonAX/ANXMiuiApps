package miui.upnp.manager.ctrlpoint;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import miui.upnp.typedef.device.Device;
import miui.upnp.typedef.device.urn.DeviceType;

public class UnknownDevice extends AbstractDevice {
    public static final Creator<UnknownDevice> CREATOR = new Creator<UnknownDevice>() {
        public UnknownDevice createFromParcel(Parcel in) {
            return new UnknownDevice(in, null);
        }

        public UnknownDevice[] newArray(int size) {
            return new UnknownDevice[size];
        }
    };
    public static final DeviceType DEVICE_TYPE = new DeviceType("?", "?");
    private static final Object classLock = UnknownDevice.class;

    /* synthetic */ UnknownDevice(Parcel x0, AnonymousClass1 x1) {
        this(x0);
    }

    public static UnknownDevice create(Device device) {
        UnknownDevice unknownDevice;
        synchronized (classLock) {
            unknownDevice = new UnknownDevice(device);
        }
        return unknownDevice;
    }

    private UnknownDevice(Device device) {
        this.device = device;
    }

    private UnknownDevice(Parcel in) {
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        this.device = (Device) in.readParcelable(Device.class.getClassLoader());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeParcelable(this.device, flags);
    }
}
