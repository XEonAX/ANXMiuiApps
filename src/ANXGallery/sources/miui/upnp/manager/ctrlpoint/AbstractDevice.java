package miui.upnp.manager.ctrlpoint;

import android.os.Parcelable;
import miui.upnp.typedef.device.Device;

public abstract class AbstractDevice implements Parcelable {
    public Device device;

    public boolean equals(Object o) {
        boolean z = true;
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        AbstractDevice that = (AbstractDevice) o;
        if (this.device == null ? that.device != null : !this.device.equals(that.device)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.device != null ? this.device.hashCode() : 0;
    }
}
