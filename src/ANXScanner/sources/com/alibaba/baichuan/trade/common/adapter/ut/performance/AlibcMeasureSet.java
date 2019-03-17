package com.alibaba.baichuan.trade.common.adapter.ut.performance;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class AlibcMeasureSet {
    private List<AlibcMeasure> a = new ArrayList(3);

    private AlibcMeasureSet() {
    }

    public static AlibcMeasureSet create() {
        return new AlibcMeasureSet();
    }

    public static AlibcMeasureSet create(Collection<String> collection) {
        AlibcMeasureSet alibcMeasureSet = new AlibcMeasureSet();
        if (collection != null) {
            for (String addMeasure : collection) {
                alibcMeasureSet.addMeasure(addMeasure);
            }
        }
        return alibcMeasureSet;
    }

    public static AlibcMeasureSet create(String[] strArr) {
        AlibcMeasureSet alibcMeasureSet = new AlibcMeasureSet();
        if (strArr != null) {
            for (String addMeasure : strArr) {
                alibcMeasureSet.addMeasure(addMeasure);
            }
        }
        return alibcMeasureSet;
    }

    public AlibcMeasureSet addMeasure(AlibcMeasure alibcMeasure) {
        if (!this.a.contains(alibcMeasure)) {
            this.a.add(alibcMeasure);
        }
        return this;
    }

    public AlibcMeasureSet addMeasure(String str) {
        return addMeasure(new AlibcMeasure(str));
    }

    public AlibcMeasure getMeasure(String str) {
        for (AlibcMeasure alibcMeasure : this.a) {
            if (alibcMeasure.getName().equals(str)) {
                return alibcMeasure;
            }
        }
        return null;
    }

    public List<AlibcMeasure> getMeasures() {
        return this.a;
    }

    public void setConstantValue(AlibcMeasureValueSet alibcMeasureValueSet) {
        if (this.a != null && alibcMeasureValueSet != null) {
            for (AlibcMeasure alibcMeasure : this.a) {
                if (alibcMeasure.getConstantValue() != null && alibcMeasureValueSet.getValue(alibcMeasure.getName()) == null) {
                    alibcMeasureValueSet.setValue(alibcMeasure.getName(), alibcMeasure.getConstantValue().doubleValue());
                }
            }
        }
    }

    public void upateMeasure(AlibcMeasure alibcMeasure) {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            if (TextUtils.equals(((AlibcMeasure) this.a.get(i)).c, alibcMeasure.c)) {
                ((AlibcMeasure) this.a.get(i)).setMax(alibcMeasure.getMax());
                ((AlibcMeasure) this.a.get(i)).setMin(alibcMeasure.getMin());
                ((AlibcMeasure) this.a.get(i)).setConstantValue(alibcMeasure.getConstantValue());
            }
        }
    }

    public void upateMeasures(List<AlibcMeasure> list) {
        int size = this.a.size();
        int size2 = list.size();
        for (int i = 0; i < size; i++) {
            for (int i2 = 0; i2 < size2; i2++) {
                if (TextUtils.equals(((AlibcMeasure) this.a.get(i)).c, ((AlibcMeasure) list.get(i2)).c)) {
                    ((AlibcMeasure) this.a.get(i)).setMax(((AlibcMeasure) list.get(i2)).getMax());
                    ((AlibcMeasure) this.a.get(i)).setMin(((AlibcMeasure) list.get(i2)).getMin());
                }
            }
        }
    }

    public boolean valid(AlibcMeasureValueSet alibcMeasureValueSet) {
        if (this.a != null) {
            if (alibcMeasureValueSet == null) {
                return false;
            }
            for (int i = 0; i < this.a.size(); i++) {
                AlibcMeasure alibcMeasure = (AlibcMeasure) this.a.get(i);
                if (alibcMeasure != null) {
                    String name = alibcMeasure.getName();
                    if (!alibcMeasureValueSet.containValue(name) || !alibcMeasure.valid(alibcMeasureValueSet.getValue(name))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }
}
