package miui.upnp.typedef.property;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import miui.upnp.typedef.datatype.DataType;

public class AllowedValueList implements Parcelable {
    public static final Creator<AllowedValueList> CREATOR = new Creator<AllowedValueList>() {
        public AllowedValueList createFromParcel(Parcel in) {
            return new AllowedValueList(in);
        }

        public AllowedValueList[] newArray(int size) {
            return new AllowedValueList[size];
        }
    };
    private static final String TAG = AllowedValueList.class.getSimpleName();
    private ArrayList<Object> allowedValues = new ArrayList();
    private DataType dataType;

    public AllowedValueList(DataType t) {
        this.dataType = t;
    }

    public ArrayList<Object> getAllowedValues() {
        return this.allowedValues;
    }

    public boolean appendAllowedValue(Object value) {
        if (this.dataType.getJavaDataType().isInstance(value)) {
            this.allowedValues.add(value);
            return true;
        }
        Log.d(TAG, "append dataType invalid");
        return false;
    }

    public boolean isValid(Object value) {
        if (this.dataType.getJavaDataType().isInstance(value)) {
            boolean valid = this.allowedValues.contains(value);
            if (valid) {
                return valid;
            }
            if ((value instanceof String) && ((String) value).equalsIgnoreCase("NONE")) {
                Log.e(TAG, "value is \"NONE\", As a legal value to process!");
                return true;
            }
            StringBuilder builder = new StringBuilder(1024);
            builder.append(valid);
            builder.append("invalid, ");
            builder.append("value must be one of these: ");
            Iterator it = this.allowedValues.iterator();
            while (it.hasNext()) {
                builder.append(it.next());
                builder.append(",");
            }
            Log.e(TAG, builder.toString());
            return valid;
        }
        Log.d(TAG, "dataType invalid");
        return false;
    }

    private AllowedValueList() {
    }

    public AllowedValueList(Parcel in) {
        readFromParcel(in);
    }

    public void readFromParcel(Parcel in) {
        this.dataType = DataType.valueOf(in.readString());
        in.readList(this.allowedValues, Object.class.getClassLoader());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.dataType.toString());
        out.writeList(this.allowedValues);
    }
}
