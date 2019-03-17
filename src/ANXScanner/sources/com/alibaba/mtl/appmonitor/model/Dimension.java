package com.alibaba.mtl.appmonitor.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Dimension implements Parcelable {
    public static final Creator<Dimension> CREATOR = new Creator<Dimension>() {
        /* renamed from: b */
        public Dimension createFromParcel(Parcel parcel) {
            return Dimension.a(parcel);
        }

        /* renamed from: a */
        public Dimension[] newArray(int i) {
            return new Dimension[i];
        }
    };
    protected String name;
    protected String y;

    public Dimension() {
        this.y = "null";
    }

    public Dimension(String name) {
        this(name, null);
    }

    public Dimension(String name, String constantValue) {
        this.y = "null";
        this.name = name;
        if (constantValue == null) {
            constantValue = "null";
        }
        this.y = constantValue;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getConstantValue() {
        return this.y;
    }

    public void setConstantValue(String constantValue) {
        this.y = constantValue;
    }

    public int hashCode() {
        return (this.name == null ? 0 : this.name.hashCode()) + 31;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        Dimension dimension = (Dimension) obj;
        if (this.name == null) {
            if (dimension.name != null) {
                return false;
            }
            return true;
        } else if (this.name.equals(dimension.name)) {
            return true;
        } else {
            return false;
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.y);
        dest.writeString(this.name);
    }

    static Dimension a(Parcel parcel) {
        try {
            return new Dimension(parcel.readString(), parcel.readString());
        } catch (Throwable th) {
            return null;
        }
    }
}
