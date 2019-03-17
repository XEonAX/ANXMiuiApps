package com.alibaba.mtl.appmonitor.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.alibaba.mtl.log.d.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class DimensionSet implements Parcelable {
    public static final Creator<DimensionSet> CREATOR = new Creator<DimensionSet>() {
        /* renamed from: b */
        public DimensionSet createFromParcel(Parcel parcel) {
            return DimensionSet.a(parcel);
        }

        /* renamed from: a */
        public DimensionSet[] newArray(int i) {
            return new DimensionSet[i];
        }
    };
    private List<Dimension> c = new ArrayList(3);

    public static DimensionSet create() {
        return new DimensionSet();
    }

    public static DimensionSet create(Collection<String> dimensions) {
        DimensionSet dimensionSet = new DimensionSet();
        if (dimensions != null) {
            for (String dimension : dimensions) {
                dimensionSet.addDimension(new Dimension(dimension));
            }
        }
        return dimensionSet;
    }

    public static DimensionSet create(String[] dimensions) {
        DimensionSet dimensionSet = new DimensionSet();
        if (dimensions != null) {
            for (String dimension : dimensions) {
                dimensionSet.addDimension(new Dimension(dimension));
            }
        }
        return dimensionSet;
    }

    private DimensionSet() {
    }

    public boolean valid(DimensionValueSet dimensionValues) {
        if (this.c != null) {
            if (dimensionValues == null) {
                return false;
            }
            for (Dimension name : this.c) {
                if (!dimensionValues.containValue(name.getName())) {
                    return false;
                }
            }
        }
        return true;
    }

    public DimensionSet addDimension(Dimension dimension) {
        if (!this.c.contains(dimension)) {
            this.c.add(dimension);
        }
        return this;
    }

    public DimensionSet addDimension(String name) {
        return addDimension(new Dimension(name));
    }

    public DimensionSet addDimension(String name, String constantValue) {
        return addDimension(new Dimension(name, constantValue));
    }

    public Dimension getDimension(String name) {
        for (Dimension dimension : this.c) {
            if (dimension.getName().equals(name)) {
                return dimension;
            }
        }
        return null;
    }

    public void setConstantValue(DimensionValueSet dimensionValues) {
        if (this.c != null && dimensionValues != null) {
            for (Dimension dimension : this.c) {
                if (dimension.getConstantValue() != null && dimensionValues.getValue(dimension.getName()) == null) {
                    dimensionValues.setValue(dimension.getName(), dimension.getConstantValue());
                }
            }
        }
    }

    public List<Dimension> getDimensions() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        if (this.c != null) {
            try {
                Object[] toArray = this.c.toArray();
                Parcelable[] parcelableArr = null;
                if (toArray != null) {
                    Dimension[] dimensionArr = new Dimension[toArray.length];
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= toArray.length) {
                            break;
                        }
                        dimensionArr[i2] = (Dimension) toArray[i2];
                        i = i2 + 1;
                    }
                    parcelableArr = dimensionArr;
                }
                dest.writeParcelableArray(parcelableArr, flags);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    static DimensionSet a(Parcel parcel) {
        int i = 0;
        DimensionSet create = create();
        try {
            Parcelable[] readParcelableArray = parcel.readParcelableArray(DimensionSet.class.getClassLoader());
            if (readParcelableArray != null) {
                if (create.c == null) {
                    create.c = new ArrayList();
                }
                while (true) {
                    int i2 = i;
                    if (i2 >= readParcelableArray.length) {
                        break;
                    }
                    if (readParcelableArray[i2] == null || !(readParcelableArray[i2] instanceof Dimension)) {
                        i.a("DimensionSet", "parcelables[i]:", readParcelableArray[i2]);
                    } else {
                        create.c.add((Dimension) readParcelableArray[i2]);
                    }
                    i = i2 + 1;
                }
            }
        } catch (Throwable th) {
            i.a("DimensionSet", "[readFromParcel]", th);
        }
        return create;
    }
}
