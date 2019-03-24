package miui.upnp.typedef.property;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import miui.upnp.typedef.datatype.DataType;

public class PropertyDefinition implements Parcelable {
    public static final Creator<PropertyDefinition> CREATOR = new Creator<PropertyDefinition>() {
        public PropertyDefinition createFromParcel(Parcel in) {
            return new PropertyDefinition(in);
        }

        public PropertyDefinition[] newArray(int size) {
            return new PropertyDefinition[size];
        }
    };
    private static final String TAG = PropertyDefinition.class.getSimpleName();
    private AllowedValueList allowedValueList;
    private AllowedValueRange allowedValueRange;
    private AllowedValueType allowedValueType = AllowedValueType.ANY;
    private DataType dataType;
    private String defaultValue;
    private String name;
    private boolean sendEvents;

    public PropertyDefinition(String n, DataType t) {
        setName(n);
        setDataType(t);
    }

    public PropertyDefinition(String n, DataType t, boolean event) {
        setName(n);
        setDataType(t);
        setSendEvents(event);
    }

    public boolean isSendEvents() {
        return this.sendEvents;
    }

    public void setSendEvents(String sendEvents) {
        this.sendEvents = DataType.BooleanValueOf(sendEvents).booleanValue();
    }

    public void setSendEvents(boolean sendEvents) {
        this.sendEvents = sendEvents;
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

    public String getDefaultValue() {
        return this.defaultValue;
    }

    public void setDefaultValue(String defaultValue) {
        this.defaultValue = defaultValue;
    }

    public AllowedValueType getAllowedValueType() {
        return this.allowedValueType;
    }

    public void setAllowedValueType(AllowedValueType allowedValueType) {
        this.allowedValueType = allowedValueType;
    }

    public AllowedValueList getAllowedValueList() {
        return this.allowedValueList;
    }

    public void setAllowedValueList(AllowedValueList allowedValueList) {
        this.allowedValueType = AllowedValueType.LIST;
        this.allowedValueList = allowedValueList;
    }

    public AllowedValueRange getAllowedValueRange() {
        return this.allowedValueRange;
    }

    public void setAllowedValueRange(AllowedValueRange allowedValueRange) {
        this.allowedValueType = AllowedValueType.RANGE;
        this.allowedValueRange = allowedValueRange;
    }

    public boolean validate(Object value) {
        if (value == null) {
            return false;
        }
        if (!this.dataType.getJavaDataType().equals(value.getClass())) {
            Log.e(TAG, String.format("dataType is %s, value type is %s, invalid!", new Object[]{this.dataType.getJavaDataType().getSimpleName(), value.getClass().getSimpleName()}));
            return false;
        } else if (this.allowedValueList != null) {
            return this.allowedValueList.isValid(value);
        } else {
            if (this.allowedValueRange != null) {
                return this.allowedValueRange.isValid(value);
            }
            return true;
        }
    }

    public Object valueOf(String value) {
        return this.dataType.toObjectValue(value);
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
        PropertyDefinition other = (PropertyDefinition) obj;
        if (this.name == null) {
            if (other.name != null) {
                return false;
            }
        } else if (!this.name.equals(other.name)) {
            return false;
        }
        return true;
    }

    public PropertyDefinition(Parcel in) {
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        boolean[] a = new boolean[1];
        in.readBooleanArray(a);
        this.sendEvents = a[0];
        this.name = in.readString();
        this.dataType = DataType.valueOf(in.readString());
        this.defaultValue = in.readString();
        this.allowedValueType = AllowedValueType.retrieveType(in.readInt());
        switch (this.allowedValueType) {
            case LIST:
                this.allowedValueList = (AllowedValueList) in.readParcelable(AllowedValueList.class.getClassLoader());
                return;
            case RANGE:
                this.allowedValueRange = (AllowedValueRange) in.readParcelable(AllowedValueRange.class.getClassLoader());
                return;
            default:
                return;
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeBooleanArray(new boolean[]{this.sendEvents});
        out.writeString(this.name);
        out.writeString(this.dataType.toString());
        out.writeString(this.defaultValue);
        out.writeInt(this.allowedValueType.toInt());
        switch (this.allowedValueType) {
            case LIST:
                out.writeParcelable(this.allowedValueList, flags);
                return;
            case RANGE:
                out.writeParcelable(this.allowedValueRange, flags);
                return;
            default:
                return;
        }
    }
}
