package android.hardware.display;

import android.os.Parcel;
import android.os.Parcelable;

public final class WifiDisplay implements Parcelable {
    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
    }

    public String getDeviceAddress() {
        return null;
    }

    public String getDeviceName() {
        return null;
    }
}
