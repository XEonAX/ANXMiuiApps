package miui.upnp.typedef.device;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PropertyChanged implements Parcelable {
    public static final Creator<PropertyChanged> CREATOR = new Creator<PropertyChanged>() {
        public PropertyChanged createFromParcel(Parcel source) {
            return new PropertyChanged(source);
        }

        public PropertyChanged[] newArray(int size) {
            return new PropertyChanged[size];
        }
    };
    private String name;
    private String value;

    public PropertyChanged(String name, String value) {
        this.name = name;
        this.value = value;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public PropertyChanged(Parcel in) {
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        this.name = in.readString();
        this.value = in.readString();
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.name);
        out.writeString(this.value);
    }

    public int describeContents() {
        return 0;
    }
}
