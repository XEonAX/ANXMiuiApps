package com.meicam.sdk;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NvsFxDescription {
    long m_fxDescription = 0;

    public static class ParamInfoObject {
        public static final String PARAM_BOOL_DEF_VAL = "boolDefVal";
        public static final String PARAM_COLOR_DEF_A = "colorDefA";
        public static final String PARAM_COLOR_DEF_B = "colorDefB";
        public static final String PARAM_COLOR_DEF_G = "colorDefG";
        public static final String PARAM_COLOR_DEF_R = "colorDefR";
        public static final String PARAM_FLOAT_DEF_VAL = "floatDefVal";
        public static final String PARAM_FLOAT_MAX_VAL = "floatMaxVal";
        public static final String PARAM_FLOAT_MIN_VAL = "floatMinVal";
        public static final String PARAM_INT_DEF_VAL = "intDefVal";
        public static final String PARAM_INT_MAX_VAL = "intMaxVal";
        public static final String PARAM_INT_MIN_VAL = "intMinVal";
        public static final String PARAM_MENU_ARRAY = "menuArray";
        public static final String PARAM_MENU_DEF_VAL = "menuDefVal";
        public static final String PARAM_NAME = "paramName";
        public static final String PARAM_POSITION2D_DEF_X = "position2DDefX";
        public static final String PARAM_POSITION2D_DEF_Y = "position2DDefY";
        public static final String PARAM_POSITION3D_DEF_X = "position3DDefX";
        public static final String PARAM_POSITION3D_DEF_Y = "position3DDefY";
        public static final String PARAM_POSITION3D_DEF_Z = "position3DDefZ";
        public static final String PARAM_STRING_DEF = "stringDef";
        public static final String PARAM_STRING_TYPE = "stringType";
        public static final int PARAM_STRING_TYPE_DIRECTORYPATH = 3;
        public static final int PARAM_STRING_TYPE_FILEPATH = 2;
        public static final int PARAM_STRING_TYPE_INVALID = -1;
        public static final int PARAM_STRING_TYPE_LABEL = 4;
        public static final int PARAM_STRING_TYPE_MULTILINE = 1;
        public static final int PARAM_STRING_TYPE_SINGLELINE = 0;
        public static final String PARAM_TYPE = "paramType";
        public static final String PARAM_TYPE_BOOL = "BOOL";
        public static final String PARAM_TYPE_COLOR = "COLOR";
        public static final String PARAM_TYPE_FLOAT = "FLOAT";
        public static final String PARAM_TYPE_INT = "INT";
        public static final String PARAM_TYPE_MENU = "MENU";
        public static final String PARAM_TYPE_POSITION2D = "POSITION2D";
        public static final String PARAM_TYPE_POSITION3D = "POSITION3D";
        public static final String PARAM_TYPE_STRING = "STRING";
        private Map<String, Object> m_mapParams = new HashMap();

        ParamInfoObject() {
        }

        public final int getInteger(String str) {
            return ((Integer) this.m_mapParams.get(str)).intValue();
        }

        public final double getFloat(String str) {
            return ((Double) this.m_mapParams.get(str)).doubleValue();
        }

        public final String getString(String str) {
            return (String) this.m_mapParams.get(str);
        }

        public final Object getObject(String str) {
            return this.m_mapParams.get(str);
        }

        public final boolean getBoolean(String str) {
            return ((Integer) this.m_mapParams.get(str)).intValue() != 0;
        }

        final void setInteger(String str, int i) {
            this.m_mapParams.put(str, Integer.valueOf(i));
        }

        final void setFloat(String str, double d) {
            this.m_mapParams.put(str, Double.valueOf(d));
        }

        final void setString(String str, String str2) {
            this.m_mapParams.put(str, str2);
        }

        final void setObject(String str, Object obj) {
            this.m_mapParams.put(str, obj);
        }
    }

    private native List<ParamInfoObject> nativeGetAllParamsInfo(long j);

    private native String nativeGetName(long j);

    void setFxDescription(long j) {
        this.m_fxDescription = j;
    }

    public String getName() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetName(this.m_fxDescription);
    }

    public List<ParamInfoObject> getAllParamsInfo() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAllParamsInfo(this.m_fxDescription);
    }
}
