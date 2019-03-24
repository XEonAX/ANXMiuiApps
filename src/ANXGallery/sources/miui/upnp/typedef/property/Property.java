package miui.upnp.typedef.property;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;

public class Property implements Parcelable {
    public static final Creator<Property> CREATOR = new Creator<Property>() {
        public Property createFromParcel(Parcel in) {
            return new Property(in);
        }

        public Property[] newArray(int size) {
            return new Property[size];
        }
    };
    private static final String TAG = Property.class.getSimpleName();
    private PropertyDefinition definition;
    private volatile PropertyValue value;

    public Property(PropertyDefinition definition, Object value) {
        init(definition, PropertyValue.create(value != null ? value : definition.getDataType().createObjectValue()));
    }

    private void init(PropertyDefinition definition, PropertyValue value) {
        if (value == null) {
            value = PropertyValue.create(definition.getDataType().createObjectValue());
        }
        this.definition = definition;
        this.value = value;
    }

    public PropertyDefinition getDefinition() {
        return this.definition;
    }

    public void setDefinition(PropertyDefinition definition) {
        this.definition = definition;
        this.value = PropertyValueUtil.createByType(definition.getDataType().getJavaDataType());
    }

    public PropertyValue getPropertyValue() {
        return this.value;
    }

    public Object getOldValue() {
        return this.value.getOldValue();
    }

    public Object getCurrentValue() {
        return this.value.getValue();
    }

    public String getOldStringValue() {
        return this.definition.getDataType().toStringValue(this.value.getOldValue());
    }

    public String getCurrentStringValue() {
        return this.definition.getDataType().toStringValue(this.value.getValue());
    }

    private boolean isMultipleValue(Object value) {
        if (this.definition.getAllowedValueType() == AllowedValueType.LIST && (value instanceof String) && ((String) value).split(",").length > 1) {
            return true;
        }
        return false;
    }

    public boolean setDataValue(Object newValue) {
        if (newValue == null) {
            Log.e(TAG, "newValue is null");
            return false;
        }
        boolean multiple = false;
        if (this.definition.getAllowedValueType() == AllowedValueType.LIST && (newValue instanceof String)) {
            String string = (String) newValue;
            String[] a = string.split(",");
            if (a.length > 1) {
                multiple = true;
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("multiple value: ");
                stringBuilder.append(string);
                Log.d(str, stringBuilder.toString());
                for (String v : a) {
                    if (this.definition.validate(v)) {
                        this.value.addMultipleValue(v);
                    } else {
                        Log.e(TAG, String.format("invalid value: %s, skip it!", new Object[]{v}));
                    }
                }
            }
        }
        if (multiple) {
            return true;
        }
        if (this.definition.validate(newValue)) {
            this.value.update(newValue);
            return true;
        }
        Log.e(TAG, String.format("invalid value: %s", new Object[]{newValue}));
        return false;
    }

    public boolean setDataValueByString(String string, boolean nullValueAllowed) {
        Object value = this.definition.getDataType().toObjectValue(string);
        if (value == null) {
            if (nullValueAllowed) {
                return true;
            }
            Log.d(TAG, "value is null");
            return false;
        } else if (setDataValue(value)) {
            return true;
        } else {
            Log.e(TAG, String.format("%s setDataValue failed: %s(%s), dataType is: %s", new Object[]{this.definition.getName(), string, value.getClass().getSimpleName(), this.definition.getDataType().getStringType()}));
            return false;
        }
    }

    public boolean isChanged() {
        return this.value.isChanged();
    }

    public void cleanState() {
        this.value.cleanState();
    }

    public Property(Parcel in) {
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        this.definition = (PropertyDefinition) in.readParcelable(PropertyDefinition.class.getClassLoader());
        this.value = (PropertyValue) in.readParcelable(PropertyValue.class.getClassLoader());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeParcelable(this.definition, flags);
        out.writeParcelable(this.value, flags);
    }
}
