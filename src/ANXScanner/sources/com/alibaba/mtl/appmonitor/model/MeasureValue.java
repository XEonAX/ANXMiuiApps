package com.alibaba.mtl.appmonitor.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.alibaba.mtl.appmonitor.c.a;
import com.alibaba.mtl.appmonitor.c.b;

public class MeasureValue implements Parcelable, b {
    public static final Creator<MeasureValue> CREATOR = new Creator<MeasureValue>() {
        /* renamed from: b */
        public MeasureValue createFromParcel(Parcel parcel) {
            return MeasureValue.a(parcel);
        }

        /* renamed from: a */
        public MeasureValue[] newArray(int i) {
            return new MeasureValue[i];
        }
    };
    private Double d;
    private boolean n;
    private double value;

    @Deprecated
    public MeasureValue(double value) {
        this.value = value;
    }

    @Deprecated
    public MeasureValue(double value, double offset) {
        this.d = Double.valueOf(offset);
        this.value = value;
        this.n = false;
    }

    public static MeasureValue create() {
        return (MeasureValue) a.a().a(MeasureValue.class, new Object[0]);
    }

    public static MeasureValue create(double value) {
        return (MeasureValue) a.a().a(MeasureValue.class, Double.valueOf(value));
    }

    public static MeasureValue create(double value, double offset) {
        return (MeasureValue) a.a().a(MeasureValue.class, Double.valueOf(value), Double.valueOf(offset));
    }

    public Double getOffset() {
        return this.d;
    }

    public boolean isFinish() {
        return this.n;
    }

    public void setFinish(boolean finish) {
        this.n = finish;
    }

    public void setOffset(double offset) {
        this.d = Double.valueOf(offset);
    }

    public double getValue() {
        return this.value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public synchronized void merge(MeasureValue t) {
        if (t != null) {
            try {
                this.value += t.getValue();
                if (t.getOffset() != null) {
                    if (this.d == null) {
                        this.d = Double.valueOf(0.0d);
                    }
                    this.d = Double.valueOf(this.d.doubleValue() + t.getOffset().doubleValue());
                }
            } catch (Throwable th) {
            }
        }
    }

    public synchronized void clean() {
        this.value = 0.0d;
        this.d = null;
        this.n = false;
    }

    public synchronized void fill(Object... params) {
        if (params != null) {
            if (params.length > 0) {
                this.value = ((Double) params[0]).doubleValue();
            }
            if (params.length > 1) {
                this.d = (Double) params[1];
                this.n = false;
            }
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        try {
            dest.writeInt(this.n ? 1 : 0);
            dest.writeDouble(this.d == null ? 0.0d : this.d.doubleValue());
            dest.writeDouble(this.value);
        } catch (Throwable th) {
        }
    }

    static MeasureValue a(Parcel parcel) {
        MeasureValue create;
        Throwable th;
        try {
            boolean z = parcel.readInt() != 0;
            Double valueOf = Double.valueOf(parcel.readDouble());
            double readDouble = parcel.readDouble();
            create = create();
            try {
                create.n = z;
                create.d = valueOf;
                create.value = readDouble;
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                return create;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            create = null;
            th = th4;
            th.printStackTrace();
            return create;
        }
        return create;
    }
}
