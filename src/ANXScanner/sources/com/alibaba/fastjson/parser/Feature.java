package com.alibaba.fastjson.parser;

public enum Feature {
    AutoCloseSource,
    AllowComment,
    AllowUnQuotedFieldNames,
    AllowSingleQuotes,
    InternFieldNames,
    AllowISO8601DateFormat,
    AllowArbitraryCommas,
    UseBigDecimal,
    IgnoreNotMatch,
    SortFeidFastMatch,
    DisableASM,
    DisableCircularReferenceDetect,
    InitStringFieldAsEmpty,
    SupportArrayToBean,
    OrderedField,
    DisableSpecialKeyDetect,
    UseObjectArray,
    SupportNonPublicField,
    IgnoreAutoType,
    DisableFieldSmartMatch;
    
    public final int mask;

    public final int getMask() {
        return this.mask;
    }

    public static boolean isEnabled(int features, Feature feature) {
        return (feature.mask & features) != 0;
    }

    public static int config(int features, Feature feature, boolean state) {
        if (state) {
            return features | feature.mask;
        }
        return features & (feature.mask ^ -1);
    }

    public static int of(Feature[] features) {
        int i = 0;
        if (features == null) {
            return 0;
        }
        int value = 0;
        while (i < features.length) {
            value |= features[i].mask;
            i++;
        }
        return value;
    }
}
