package miui.bluetooth.ble;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.Arrays;

public final class ScanResult implements Parcelable {
    public static final Creator<ScanResult> CREATOR = new Creator<ScanResult>() {
        public ScanResult createFromParcel(Parcel source) {
            return new ScanResult(source, null);
        }

        public ScanResult[] newArray(int size) {
            return new ScanResult[size];
        }
    };
    private BluetoothDevice mDevice;
    private int mRssi;
    private ScanRecord mScanRecord;
    private long mTimestampNanos;
    private int mType;

    /* synthetic */ ScanResult(Parcel x0, AnonymousClass1 x1) {
        this(x0);
    }

    public ScanResult(BluetoothDevice device, ScanRecord scanRecord, int rssi, long timestampNanos, int type) {
        this.mType = 0;
        this.mDevice = device;
        this.mScanRecord = scanRecord;
        this.mRssi = rssi;
        this.mTimestampNanos = timestampNanos;
        this.mType = type;
    }

    private ScanResult(Parcel in) {
        this.mType = 0;
        readFromParcel(in);
    }

    public void writeToParcel(Parcel dest, int flags) {
        if (this.mDevice != null) {
            dest.writeInt(1);
            this.mDevice.writeToParcel(dest, flags);
        } else {
            dest.writeInt(0);
        }
        if (this.mScanRecord != null) {
            dest.writeInt(1);
            dest.writeByteArray(this.mScanRecord.getBytes());
        } else {
            dest.writeInt(0);
        }
        dest.writeInt(this.mRssi);
        dest.writeLong(this.mTimestampNanos);
    }

    private void readFromParcel(Parcel in) {
        if (in.readInt() == 1) {
            this.mDevice = (BluetoothDevice) BluetoothDevice.CREATOR.createFromParcel(in);
        }
        if (in.readInt() == 1) {
            this.mScanRecord = ScanRecord.parseFromBytes(in.createByteArray());
        }
        this.mRssi = in.readInt();
        this.mTimestampNanos = in.readLong();
    }

    public int describeContents() {
        return 0;
    }

    public BluetoothDevice getDevice() {
        return this.mDevice;
    }

    public ScanRecord getScanRecord() {
        return this.mScanRecord;
    }

    public int getRssi() {
        return this.mRssi;
    }

    public long getTimestampNanos() {
        return this.mTimestampNanos;
    }

    public int getDeviceType() {
        return this.mType;
    }

    public int hashCode() {
        return hash(this.mDevice, Integer.valueOf(this.mRssi), this.mScanRecord, Long.valueOf(this.mTimestampNanos));
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ScanResult other = (ScanResult) obj;
        if (!(equals(this.mDevice, other.mDevice) && this.mRssi == other.mRssi && equals(this.mScanRecord, other.mScanRecord) && this.mTimestampNanos == other.mTimestampNanos)) {
            z = false;
        }
        return z;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("ScanResult{mDevice=");
        stringBuilder.append(this.mDevice);
        stringBuilder.append(", mScanRecord=");
        stringBuilder.append(toString(this.mScanRecord));
        stringBuilder.append(", mRssi=");
        stringBuilder.append(this.mRssi);
        stringBuilder.append(", mTimestampNanos=");
        stringBuilder.append(this.mTimestampNanos);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    private static int hash(Object... values) {
        return Arrays.hashCode(values);
    }

    public static boolean equals(Object a, Object b) {
        if (a == null) {
            return b == null;
        } else {
            return a.equals(b);
        }
    }

    public static String toString(Object o) {
        return o == null ? "null" : o.toString();
    }
}
