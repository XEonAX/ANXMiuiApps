package com.alibaba.mtl.appmonitor.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.alibaba.mtl.appmonitor.c.a;
import com.alibaba.mtl.appmonitor.c.b;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class DimensionValueSet implements Parcelable, b {
    public static final Creator<DimensionValueSet> CREATOR = new Creator<DimensionValueSet>() {
        /* renamed from: b */
        public DimensionValueSet createFromParcel(Parcel parcel) {
            return DimensionValueSet.a(parcel);
        }

        /* renamed from: a */
        public DimensionValueSet[] newArray(int i) {
            return new DimensionValueSet[i];
        }
    };
    protected Map<String, String> map;

    public static DimensionValueSet create() {
        return (DimensionValueSet) a.a().a(DimensionValueSet.class, new Object[0]);
    }

    @Deprecated
    public static DimensionValueSet create(int initialCapacity) {
        return (DimensionValueSet) a.a().a(DimensionValueSet.class, new Object[0]);
    }

    @Deprecated
    public DimensionValueSet() {
        if (this.map == null) {
            this.map = new LinkedHashMap();
        }
    }

    public static DimensionValueSet fromStringMap(Map<String, String> values) {
        DimensionValueSet dimensionValueSet = (DimensionValueSet) a.a().a(DimensionValueSet.class, new Object[0]);
        for (Entry entry : values.entrySet()) {
            dimensionValueSet.map.put(entry.getKey(), entry.getValue() != null ? (String) entry.getValue() : "null");
        }
        return dimensionValueSet;
    }

    public DimensionValueSet setValue(String name, String value) {
        Map map = this.map;
        if (value == null) {
            value = "null";
        }
        map.put(name, value);
        return this;
    }

    public DimensionValueSet addValues(DimensionValueSet dimensionValues) {
        if (dimensionValues != null) {
            Map map = dimensionValues.getMap();
            if (map != null) {
                for (Entry entry : map.entrySet()) {
                    this.map.put(entry.getKey(), entry.getValue() != null ? (String) entry.getValue() : "null");
                }
            }
        }
        return this;
    }

    public boolean containValue(String name) {
        return this.map.containsKey(name);
    }

    public String getValue(String name) {
        return (String) this.map.get(name);
    }

    public Map<String, String> getMap() {
        return this.map;
    }

    public void setMap(Map<String, String> map) {
        for (Entry entry : map.entrySet()) {
            this.map.put(entry.getKey(), entry.getValue() != null ? (String) entry.getValue() : "null");
        }
    }

    public int hashCode() {
        return (this.map == null ? 0 : this.map.hashCode()) + 31;
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
        DimensionValueSet dimensionValueSet = (DimensionValueSet) obj;
        if (this.map == null) {
            if (dimensionValueSet.map != null) {
                return false;
            }
            return true;
        } else if (this.map.equals(dimensionValueSet.map)) {
            return true;
        } else {
            return false;
        }
    }

    public void clean() {
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

    static DimensionValueSet a(Parcel parcel) {
        DimensionValueSet create;
        Throwable th;
        try {
            create = create();
            try {
                create.map = parcel.readHashMap(DimensionValueSet.class.getClassLoader());
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                return create;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            create = null;
            th = th4;
        }
        return create;
    }
}
