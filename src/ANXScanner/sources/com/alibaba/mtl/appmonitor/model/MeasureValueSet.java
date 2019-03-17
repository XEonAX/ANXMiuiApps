package com.alibaba.mtl.appmonitor.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.alibaba.mtl.appmonitor.c.a;
import com.alibaba.mtl.appmonitor.c.b;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class MeasureValueSet implements Parcelable, b {
    public static final Creator<MeasureValueSet> CREATOR = new Creator<MeasureValueSet>() {
        /* renamed from: b */
        public MeasureValueSet createFromParcel(Parcel parcel) {
            return MeasureValueSet.a(parcel);
        }

        /* renamed from: a */
        public MeasureValueSet[] newArray(int i) {
            return new MeasureValueSet[i];
        }
    };
    private Map<String, MeasureValue> map = new LinkedHashMap();

    public static MeasureValueSet create() {
        return (MeasureValueSet) a.a().a(MeasureValueSet.class, new Object[0]);
    }

    @Deprecated
    public static MeasureValueSet create(int initialCapacity) {
        return (MeasureValueSet) a.a().a(MeasureValueSet.class, new Object[0]);
    }

    public static MeasureValueSet create(Map<String, Double> values) {
        MeasureValueSet measureValueSet = (MeasureValueSet) a.a().a(MeasureValueSet.class, new Object[0]);
        if (values != null) {
            for (String str : values.keySet()) {
                if (((Double) values.get(str)) != null) {
                    measureValueSet.map.put(str, a.a().a(MeasureValue.class, r2));
                }
            }
        }
        return measureValueSet;
    }

    public static MeasureValueSet fromStringMap(Map<String, String> values) {
        MeasureValueSet measureValueSet = (MeasureValueSet) a.a().a(MeasureValueSet.class, new Object[0]);
        if (values != null) {
            for (Entry entry : values.entrySet()) {
                if (a((String) entry.getValue()) != null) {
                    measureValueSet.map.put(entry.getKey(), a.a().a(MeasureValue.class, r2));
                }
            }
        }
        return measureValueSet;
    }

    private static Double a(String str) {
        try {
            return Double.valueOf(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public MeasureValueSet setValue(String name, double value) {
        this.map.put(name, a.a().a(MeasureValue.class, Double.valueOf(value)));
        return this;
    }

    public void setValue(String name, MeasureValue value) {
        this.map.put(name, value);
    }

    public MeasureValue getValue(String name) {
        return (MeasureValue) this.map.get(name);
    }

    public Map<String, MeasureValue> getMap() {
        return this.map;
    }

    public void setMap(Map<String, MeasureValue> map) {
        this.map = map;
    }

    public boolean containValue(String name) {
        return this.map.containsKey(name);
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    public void merge(MeasureValueSet t) {
        for (String str : this.map.keySet()) {
            ((MeasureValue) this.map.get(str)).merge(t.getValue(str));
        }
    }

    public void clean() {
        for (b a : this.map.values()) {
            a.a().a(a);
        }
        this.map.clear();
    }

    public void fill(Object... params) {
        if (this.map == null) {
            this.map = new LinkedHashMap();
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeMap(this.map);
    }

    static MeasureValueSet a(Parcel parcel) {
        MeasureValueSet measureValueSet = null;
        try {
            measureValueSet = create();
            measureValueSet.map = parcel.readHashMap(DimensionValueSet.class.getClassLoader());
            return measureValueSet;
        } catch (Throwable th) {
            return measureValueSet;
        }
    }
}
