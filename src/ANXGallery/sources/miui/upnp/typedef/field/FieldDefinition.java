package miui.upnp.typedef.field;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import miui.upnp.typedef.datatype.DataType;

public class FieldDefinition implements Parcelable {
    public static final Creator<FieldDefinition> CREATOR = new Creator<FieldDefinition>() {
        public FieldDefinition createFromParcel(Parcel in) {
            return new FieldDefinition(in);
        }

        public FieldDefinition[] newArray(int size) {
            return new FieldDefinition[size];
        }
    };
    private DataType dataType;
    private String name;

    public FieldDefinition(String name, DataType dataType) {
        this.name = name;
        this.dataType = dataType;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public DataType getDataType() {
        return this.dataType;
    }

    public void setDataType(DataType dataType) {
        this.dataType = dataType;
    }

    public int hashCode() {
        return (31 * 1) + (this.name == null ? 0 : this.name.hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FieldDefinition other = (FieldDefinition) obj;
        if (this.name == null) {
            if (other.name != null) {
                return false;
            }
        } else if (!this.name.equals(other.name)) {
            return false;
        }
        return true;
    }

    private FieldDefinition() {
    }

    public FieldDefinition(Parcel in) {
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        this.name = in.readString();
        this.dataType = DataType.valueOf(in.readString());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.name);
        out.writeString(this.dataType.toString());
    }
}
