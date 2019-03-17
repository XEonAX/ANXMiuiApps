package com.alibaba.mtl.appmonitor.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class MeasureSet implements Parcelable {
    public static final Creator<MeasureSet> CREATOR = new Creator<MeasureSet>() {
        /* renamed from: b */
        public MeasureSet createFromParcel(Parcel parcel) {
            return MeasureSet.a(parcel);
        }

        /* renamed from: a */
        public MeasureSet[] newArray(int i) {
            return new MeasureSet[i];
        }
    };
    private List<Measure> d = new ArrayList(3);

    public static MeasureSet create() {
        return new MeasureSet();
    }

    public static MeasureSet create(Collection<String> measures) {
        MeasureSet measureSet = new MeasureSet();
        if (measures != null) {
            for (String addMeasure : measures) {
                measureSet.addMeasure(addMeasure);
            }
        }
        return measureSet;
    }

    public static MeasureSet create(String[] measures) {
        MeasureSet measureSet = new MeasureSet();
        if (measures != null) {
            for (String addMeasure : measures) {
                measureSet.addMeasure(addMeasure);
            }
        }
        return measureSet;
    }

    private MeasureSet() {
    }

    public boolean valid(MeasureValueSet measureValues) {
        if (this.d != null) {
            if (measureValues == null) {
                return false;
            }
            for (int i = 0; i < this.d.size(); i++) {
                Measure measure = (Measure) this.d.get(i);
                if (measure != null) {
                    String name = measure.getName();
                    if (!measureValues.containValue(name) || !measure.valid(measureValues.getValue(name))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public MeasureSet addMeasure(Measure measure) {
        if (!this.d.contains(measure)) {
            this.d.add(measure);
        }
        return this;
    }

    public MeasureSet addMeasure(String name) {
        return addMeasure(new Measure(name));
    }

    public Measure getMeasure(String name) {
        for (Measure measure : this.d) {
            if (measure.getName().equals(name)) {
                return measure;
            }
        }
        return null;
    }

    public List<Measure> getMeasures() {
        return this.d;
    }

    public void setConstantValue(MeasureValueSet measureValues) {
        if (this.d != null && measureValues != null) {
            for (Measure measure : this.d) {
                if (measure.getConstantValue() != null && measureValues.getValue(measure.getName()) == null) {
                    measureValues.setValue(measure.getName(), measure.getConstantValue().doubleValue());
                }
            }
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        if (this.d != null) {
            try {
                Object[] toArray = this.d.toArray();
                Parcelable[] parcelableArr = null;
                if (toArray != null) {
                    Measure[] measureArr = new Measure[toArray.length];
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= toArray.length) {
                            break;
                        }
                        measureArr[i2] = (Measure) toArray[i2];
                        i = i2 + 1;
                    }
                    parcelableArr = measureArr;
                }
                dest.writeParcelableArray(parcelableArr, flags);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    static MeasureSet a(Parcel parcel) {
        MeasureSet create = create();
        try {
            Parcelable[] readParcelableArray = parcel.readParcelableArray(MeasureSet.class.getClassLoader());
            if (readParcelableArray != null) {
                List arrayList = new ArrayList(readParcelableArray.length);
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= readParcelableArray.length) {
                        break;
                    }
                    arrayList.add((Measure) readParcelableArray[i2]);
                    i = i2 + 1;
                }
                create.d = arrayList;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return create;
    }

    public void upateMeasures(List<Measure> configMeasures) {
        int size = this.d.size();
        int size2 = configMeasures.size();
        for (int i = 0; i < size; i++) {
            for (int i2 = 0; i2 < size2; i2++) {
                if (TextUtils.equals(((Measure) this.d.get(i)).name, ((Measure) configMeasures.get(i2)).name)) {
                    ((Measure) this.d.get(i)).setMax(((Measure) configMeasures.get(i2)).getMax());
                    ((Measure) this.d.get(i)).setMin(((Measure) configMeasures.get(i2)).getMin());
                }
            }
        }
    }

    public void upateMeasure(Measure newMeasure) {
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            if (TextUtils.equals(((Measure) this.d.get(i)).name, newMeasure.name)) {
                ((Measure) this.d.get(i)).setMax(newMeasure.getMax());
                ((Measure) this.d.get(i)).setMin(newMeasure.getMin());
                ((Measure) this.d.get(i)).setConstantValue(newMeasure.getConstantValue());
            }
        }
    }
}
