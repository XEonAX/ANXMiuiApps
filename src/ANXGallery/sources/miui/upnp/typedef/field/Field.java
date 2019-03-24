package miui.upnp.typedef.field;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Field implements Parcelable {
    public static final Creator<Field> CREATOR = new Creator<Field>() {
        public Field createFromParcel(Parcel in) {
            return new Field(in);
        }

        public Field[] newArray(int size) {
            return new Field[size];
        }
    };
    private FieldDefinition definition;
    private Object value;

    public Field(FieldDefinition definition, Object value) {
        init(definition, value);
    }

    private void init(FieldDefinition definition, Object value) {
        if (value == null) {
            value = definition.getDataType().createObjectValue();
        }
        this.definition = definition;
        this.value = value;
    }

    public FieldDefinition getDefinition() {
        return this.definition;
    }

    public void setDefinition(FieldDefinition definition) {
        this.definition = definition;
        this.value = definition.getDataType().createObjectValue();
    }

    public Object getValue() {
        return this.value;
    }

    public boolean setValue(Object value) {
        this.value = value;
        return true;
    }

    public Field(Parcel in) {
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        this.definition = (FieldDefinition) in.readParcelable(FieldDefinition.class.getClassLoader());
        this.value = in.readValue(Object.class.getClassLoader());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeParcelable(this.definition, flags);
        out.writeValue(this.value);
    }
}
