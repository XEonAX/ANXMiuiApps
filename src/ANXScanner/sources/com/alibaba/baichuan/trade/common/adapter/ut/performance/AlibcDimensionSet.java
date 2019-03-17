package com.alibaba.baichuan.trade.common.adapter.ut.performance;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class AlibcDimensionSet {
    private List<AlibcDimension> a = new ArrayList(3);

    private AlibcDimensionSet() {
    }

    public static AlibcDimensionSet create() {
        return new AlibcDimensionSet();
    }

    public static AlibcDimensionSet create(Collection<String> collection) {
        AlibcDimensionSet alibcDimensionSet = new AlibcDimensionSet();
        if (collection != null) {
            for (String alibcDimension : collection) {
                alibcDimensionSet.addDimension(new AlibcDimension(alibcDimension));
            }
        }
        return alibcDimensionSet;
    }

    public static AlibcDimensionSet create(String[] strArr) {
        AlibcDimensionSet alibcDimensionSet = new AlibcDimensionSet();
        if (strArr != null) {
            for (String alibcDimension : strArr) {
                alibcDimensionSet.addDimension(new AlibcDimension(alibcDimension));
            }
        }
        return alibcDimensionSet;
    }

    public AlibcDimensionSet addDimension(AlibcDimension alibcDimension) {
        if (!this.a.contains(alibcDimension)) {
            this.a.add(alibcDimension);
        }
        return this;
    }

    public AlibcDimensionSet addDimension(String str) {
        return addDimension(new AlibcDimension(str));
    }

    public AlibcDimensionSet addDimension(String str, String str2) {
        return addDimension(new AlibcDimension(str, str2));
    }

    public AlibcDimension getDimension(String str) {
        for (AlibcDimension alibcDimension : this.a) {
            if (alibcDimension.getName().equals(str)) {
                return alibcDimension;
            }
        }
        return null;
    }

    public List<AlibcDimension> getDimensions() {
        return this.a;
    }

    public void setConstantValue(AlibcDimensionValueSet alibcDimensionValueSet) {
        if (this.a != null && alibcDimensionValueSet != null) {
            for (AlibcDimension alibcDimension : this.a) {
                if (alibcDimension.getConstantValue() != null && alibcDimensionValueSet.getValue(alibcDimension.getName()) == null) {
                    alibcDimensionValueSet.setValue(alibcDimension.getName(), alibcDimension.getConstantValue());
                }
            }
        }
    }

    public boolean valid(AlibcDimensionValueSet alibcDimensionValueSet) {
        if (this.a != null) {
            if (alibcDimensionValueSet == null) {
                return false;
            }
            for (AlibcDimension name : this.a) {
                if (!alibcDimensionValueSet.containValue(name.getName())) {
                    return false;
                }
            }
        }
        return true;
    }
}
