package com.alibaba.mtl.appmonitor.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Measure implements Parcelable {
    public static final Creator<Measure> CREATOR = new Creator<Measure>() {
        /* renamed from: b */
        public Measure createFromParcel(Parcel parcel) {
            return Measure.a(parcel);
        }

        /* renamed from: a */
        public Measure[] newArray(int i) {
            return new Measure[i];
        }
    };
    protected Double a;
    protected Double b;
    protected Double c;
    protected String name;

    public Measure(String name) {
        this(name, Double.valueOf(0.0d));
    }

    public Measure(String name, Double constantValue) {
        this(name, constantValue, Double.valueOf(0.0d), null);
    }

    public Measure(String name, Double constantValue, Double min, Double max) {
        double d = 0.0d;
        this.a = Double.valueOf(0.0d);
        this.b = Double.valueOf(0.0d);
        this.c = Double.valueOf(0.0d);
        this.a = min;
        this.b = max;
        this.name = name;
        if (constantValue != null) {
            d = constantValue.doubleValue();
        }
        this.c = Double.valueOf(d);
    }

    public void setRange(Double min, Double max) {
        this.a = min;
        this.b = max;
    }

    public Double getMin() {
        return this.a;
    }

    public void setMin(Double min) {
        this.a = min;
    }

    public Double getMax() {
        return this.b;
    }

    public void setMax(Double max) {
        this.b = max;
    }

    public String getName() {
        return this.name;
    }

    public Double getConstantValue() {
        return this.c;
    }

    public void setConstantValue(Double constantValue) {
        this.c = constantValue;
    }

    public boolean valid(MeasureValue measureValue) {
        Double valueOf = Double.valueOf(measureValue.getValue());
        return valueOf != null && ((this.a == null || valueOf.doubleValue() >= this.a.doubleValue()) && (this.b == null || valueOf.doubleValue() <= this.b.doubleValue()));
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
        Measure measure = (Measure) obj;
        if (this.name == null) {
            if (measure.name != null) {
                return false;
            }
            return true;
        } else if (this.name.equals(measure.name)) {
            return true;
        } else {
            return false;
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        int i = 0;
        try {
            int i2;
            dest.writeInt(this.b == null ? 0 : 1);
            if (this.b != null) {
                dest.writeDouble(this.b.doubleValue());
            }
            if (this.a == null) {
                i2 = 0;
            } else {
                i2 = 1;
            }
            dest.writeInt(i2);
            if (this.a != null) {
                dest.writeDouble(this.a.doubleValue());
            }
            dest.writeString(this.name);
            if (this.c != null) {
                i = 1;
            }
            dest.writeInt(i);
            if (this.c != null) {
                dest.writeDouble(this.c.doubleValue());
            }
        } catch (Throwable th) {
        }
    }

    static Measure a(Parcel parcel) {
        Object obj = 1;
        try {
            Double valueOf;
            Object obj2;
            Double valueOf2;
            Double valueOf3;
            if ((parcel.readInt() == 0 ? 1 : null) == null) {
                valueOf = Double.valueOf(parcel.readDouble());
            } else {
                valueOf = null;
            }
            if (parcel.readInt() == 0) {
                obj2 = 1;
            } else {
                obj2 = null;
            }
            if (obj2 == null) {
                valueOf2 = Double.valueOf(parcel.readDouble());
            } else {
                valueOf2 = null;
            }
            String readString = parcel.readString();
            if (parcel.readInt() != 0) {
                obj = null;
            }
            if (obj == null) {
                valueOf3 = Double.valueOf(parcel.readDouble());
            } else {
                valueOf3 = null;
            }
            return new Measure(readString, valueOf3, valueOf2, valueOf);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
