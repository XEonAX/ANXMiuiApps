package com.miui.internal.content.res;

public class ThemeDefinition {
    static final String TAG_BOOLEAN = "bool";
    static final String TAG_COLOR = "color";
    static final String TAG_DIMEN = "dimen";
    static final String TAG_DRAWABLE = "drawable";
    static final String TAG_INTEGER = "integer";
    static final String TAG_INTEGER_ARRAY = "integer-array";
    static final String TAG_STRING = "string";
    static final String TAG_STRING_ARRAY = "string-array";

    public static class CompatibilityInfo {
        public CompatibilityType mCompatibilityType = CompatibilityType.NONE;

        public boolean isValid() {
            return true;
        }
    }

    public enum CompatibilityType {
        FALLBACK,
        NEW_DEF_VALUE,
        NONE;

        public static CompatibilityType getType(String type) {
            if ("fallback".equals(type)) {
                return FALLBACK;
            }
            if ("newDefValue".equals(type)) {
                return NEW_DEF_VALUE;
            }
            return NONE;
        }
    }

    public static class FallbackInfo extends CompatibilityInfo {
        public String mResFallbackName;
        public String mResFallbackPkgName;
        public String mResOriginalName;
        public String mResPkgName;
        public String[] mResPreferredConfigs;
        public ResourceType mResType;

        public FallbackInfo() {
            this.mResType = ResourceType.NONE;
            this.mCompatibilityType = CompatibilityType.FALLBACK;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.mResPkgName);
            stringBuilder.append("/");
            stringBuilder.append(this.mResType);
            stringBuilder.append("/");
            stringBuilder.append(this.mResOriginalName);
            stringBuilder.append("/");
            stringBuilder.append(this.mResFallbackName);
            stringBuilder.append("/");
            stringBuilder.append(this.mResFallbackPkgName);
            return stringBuilder.toString();
        }

        public boolean isValid() {
            return (ThemeToolUtils.isEmpty(this.mResPkgName) || this.mResType == ResourceType.NONE || ThemeToolUtils.isEmpty(this.mResOriginalName) || ThemeToolUtils.isEmpty(this.mResFallbackName)) ? false : true;
        }
    }

    public static class NewDefaultValue extends CompatibilityInfo {
        public String mResName;
        public String mResPkgName;
        public ResourceType mResType;
        public String mResValue;

        public NewDefaultValue() {
            this.mResType = ResourceType.NONE;
            this.mCompatibilityType = CompatibilityType.NEW_DEF_VALUE;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.mResPkgName);
            stringBuilder.append("/");
            stringBuilder.append(this.mResType);
            stringBuilder.append("/");
            stringBuilder.append(this.mResName);
            stringBuilder.append("/");
            stringBuilder.append(this.mResValue);
            return stringBuilder.toString();
        }

        public boolean isValid() {
            return (ThemeToolUtils.isEmpty(this.mResPkgName) || this.mResType == ResourceType.NONE || ThemeToolUtils.isEmpty(this.mResName) || ThemeToolUtils.isEmpty(this.mResValue)) ? false : true;
        }
    }

    public enum ResourceType {
        BOOLEAN,
        COLOR,
        DIMEN,
        DRAWABLE,
        INTEGER,
        STRING,
        INTEGER_ARRAY,
        STRING_ARRAY,
        NONE;

        public String toString() {
            switch (this) {
                case BOOLEAN:
                    return ThemeDefinition.TAG_BOOLEAN;
                case COLOR:
                    return ThemeDefinition.TAG_COLOR;
                case DRAWABLE:
                    return ThemeDefinition.TAG_DRAWABLE;
                case DIMEN:
                    return ThemeDefinition.TAG_DIMEN;
                case INTEGER:
                    return ThemeDefinition.TAG_INTEGER;
                case STRING:
                    return "string";
                case INTEGER_ARRAY:
                    return ThemeDefinition.TAG_INTEGER_ARRAY;
                case STRING_ARRAY:
                    return ThemeDefinition.TAG_STRING_ARRAY;
                default:
                    return "none";
            }
        }

        public static ResourceType getType(String type) {
            if (ThemeDefinition.TAG_BOOLEAN.equals(type)) {
                return BOOLEAN;
            }
            if (ThemeDefinition.TAG_COLOR.equals(type)) {
                return COLOR;
            }
            if (ThemeDefinition.TAG_DIMEN.equals(type)) {
                return DIMEN;
            }
            if (ThemeDefinition.TAG_DRAWABLE.equals(type)) {
                return DRAWABLE;
            }
            if (ThemeDefinition.TAG_INTEGER.equals(type)) {
                return INTEGER;
            }
            if ("string".equals(type)) {
                return STRING;
            }
            if (ThemeDefinition.TAG_INTEGER_ARRAY.equals(type)) {
                return INTEGER_ARRAY;
            }
            if (ThemeDefinition.TAG_STRING_ARRAY.equals(type)) {
                return STRING_ARRAY;
            }
            return NONE;
        }
    }
}
