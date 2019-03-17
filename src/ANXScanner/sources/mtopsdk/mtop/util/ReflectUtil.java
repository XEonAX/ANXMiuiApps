package mtopsdk.mtop.util;

import com.alibaba.fastjson.JSON;
import com.alipay.sdk.util.h;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import mtopsdk.common.util.SymbolExpUtil;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.domain.IMTOPDataObject;
import mtopsdk.mtop.domain.MtopRequest;

public class ReflectUtil {
    private static final String API_NAME = "API_NAME";
    private static final String NEED_ECODE = "NEED_ECODE";
    private static final String NEED_SESSION = "NEED_SESSION";
    private static final String ORIGINALJSON = "ORIGINALJSON";
    private static final String SERIAL_VERSION_UID = "serialVersionUID";
    private static final String TAG = "mtopsdk.ReflectUtil";
    private static final String VERSION = "VERSION";

    public static MtopRequest convertToMtopRequest(Object obj) {
        MtopRequest mtopRequest = new MtopRequest();
        if (obj != null) {
            parseParams(mtopRequest, obj);
        }
        return mtopRequest;
    }

    public static MtopRequest convertToMtopRequest(IMTOPDataObject iMTOPDataObject) {
        MtopRequest mtopRequest = new MtopRequest();
        if (iMTOPDataObject != null) {
            parseParams(mtopRequest, iMTOPDataObject);
        }
        return mtopRequest;
    }

    private static void parseParams(MtopRequest mtopRequest, Object obj) {
        try {
            Map hashMap = new HashMap();
            Class cls = obj.getClass();
            HashSet hashSet = new HashSet();
            hashSet.addAll(Arrays.asList(cls.getFields()));
            hashSet.addAll(Arrays.asList(cls.getDeclaredFields()));
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                Field field = (Field) it.next();
                String name = field.getName();
                if (!(name.indexOf(SymbolExpUtil.SYMBOL_DOLLAR) != -1 || name.equals(SERIAL_VERSION_UID) || name.equals(ORIGINALJSON))) {
                    field.setAccessible(true);
                    Object obj2;
                    Boolean valueOf;
                    boolean z;
                    if (name.equals(API_NAME)) {
                        obj2 = field.get(obj);
                        if (obj2 != null) {
                            mtopRequest.setApiName(obj2.toString());
                        }
                    } else if (name.equals(VERSION)) {
                        obj2 = field.get(obj);
                        if (obj2 != null) {
                            mtopRequest.setVersion(obj2.toString());
                        }
                    } else if (name.equals(NEED_ECODE)) {
                        valueOf = Boolean.valueOf(field.getBoolean(obj));
                        z = valueOf != null && valueOf.booleanValue();
                        mtopRequest.setNeedEcode(z);
                    } else if (name.equals(NEED_SESSION)) {
                        valueOf = Boolean.valueOf(field.getBoolean(obj));
                        z = valueOf != null && valueOf.booleanValue();
                        mtopRequest.setNeedSession(z);
                    } else {
                        obj2 = field.get(obj);
                        if (obj2 != null) {
                            if (obj2 instanceof String) {
                                hashMap.put(name, obj2.toString());
                            } else {
                                hashMap.put(name, JSON.toJSONString(obj2));
                            }
                        }
                    }
                }
            }
            mtopRequest.dataParams = hashMap;
            mtopRequest.setData(converMapToDataStr(hashMap));
        } catch (Throwable e) {
            TBSdkLog.e(TAG, "parseParams failed.", e);
        }
    }

    public static String converMapToDataStr(Map<String, String> map) {
        StringBuilder stringBuilder = new StringBuilder(64);
        stringBuilder.append("{");
        if (!(map == null || map.isEmpty())) {
            for (Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (!(str == null || str2 == null)) {
                    try {
                        stringBuilder.append(JSON.toJSONString(str));
                        stringBuilder.append(SymbolExpUtil.SYMBOL_COLON);
                        stringBuilder.append(JSON.toJSONString(str2));
                        stringBuilder.append(",");
                    } catch (Throwable th) {
                        TBSdkLog.e(TAG, "[converMapToDataStr] convert key=" + str + ",value=" + str2 + " to dataStr error ---" + th.toString());
                    }
                }
            }
            int length = stringBuilder.length();
            if (length > 1) {
                stringBuilder.deleteCharAt(length - 1);
            }
        }
        stringBuilder.append(h.d);
        return stringBuilder.toString();
    }

    @Deprecated
    public static Map<String, String> parseDataParams(IMTOPDataObject iMTOPDataObject) {
        if (iMTOPDataObject == null) {
            return new HashMap();
        }
        return parseFields(iMTOPDataObject, iMTOPDataObject.getClass());
    }

    @Deprecated
    private static Map<String, String> parseDataParams(Object obj) {
        if (obj == null) {
            return new HashMap();
        }
        return parseFields(obj, obj.getClass());
    }

    @Deprecated
    private static Map<String, String> parseFields(Object obj, Class<?> cls) {
        Map hashMap = new HashMap();
        parseFieldsToMap(obj, cls.getDeclaredFields(), hashMap, false);
        parseFieldsToMap(obj, cls.getFields(), hashMap, true);
        return hashMap;
    }

    @Deprecated
    private static void parseFieldsToMap(Object obj, Field[] fieldArr, HashMap<String, String> hashMap, boolean z) {
        if (fieldArr != null && fieldArr.length != 0) {
            int i = 0;
            String str = null;
            while (i < fieldArr.length) {
                Object obj2;
                try {
                    str = fieldArr[i].getName();
                    if (excludeField(str, hashMap, z)) {
                        i++;
                    } else {
                        fieldArr[i].setAccessible(true);
                        obj2 = fieldArr[i].get(obj);
                        if (obj2 != null) {
                            try {
                                if (obj2 instanceof String) {
                                    hashMap.put(str, obj2.toString());
                                } else {
                                    hashMap.put(str, JSON.toJSONString(obj2));
                                }
                            } catch (Throwable th) {
                                TBSdkLog.e(TAG, "[parseFieldsToMap]transform biz param to json string error.---" + th.toString());
                            }
                        }
                        i++;
                    }
                } catch (Throwable th2) {
                    Throwable th3 = th2;
                    String str2 = str;
                    TBSdkLog.e(TAG, "[parseFieldsToMap]get biz param error through reflection.---" + th3.toString());
                    str = str2;
                    obj2 = null;
                }
            }
        }
    }

    @Deprecated
    private static boolean excludeField(String str, HashMap<String, String> hashMap, boolean z) {
        if (str.indexOf(SymbolExpUtil.SYMBOL_DOLLAR) != -1 || API_NAME.equals(str) || VERSION.equals(str) || NEED_ECODE.equals(str) || NEED_SESSION.equals(str) || SERIAL_VERSION_UID.equalsIgnoreCase(str) || ORIGINALJSON.equalsIgnoreCase(str)) {
            return true;
        }
        if (z && hashMap.containsKey(str)) {
            return true;
        }
        return false;
    }

    @Deprecated
    public static void parseUrlParams(MtopRequest mtopRequest, Object obj) {
        if (obj != null) {
            Object fieldValueByName = getFieldValueByName(API_NAME, obj);
            if (fieldValueByName != null) {
                mtopRequest.setApiName(fieldValueByName.toString());
            }
            fieldValueByName = getFieldValueByName(VERSION, obj);
            if (fieldValueByName != null) {
                mtopRequest.setVersion(fieldValueByName.toString());
            }
            if (needEcode(obj)) {
                mtopRequest.setNeedEcode(true);
            }
            if (needSession(obj)) {
                mtopRequest.setNeedSession(true);
            }
        }
    }

    @Deprecated
    public static Object getFieldValueByName(String str, Object obj) {
        if (obj == null || str == null) {
            return null;
        }
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        int i = 0;
        while (i < declaredFields.length) {
            Field field = declaredFields[i];
            field.setAccessible(true);
            if (field.getName().equals(str)) {
                try {
                    return field.get(obj);
                } catch (IllegalArgumentException e) {
                    TBSdkLog.e(TAG, e.toString());
                } catch (IllegalAccessException e2) {
                    TBSdkLog.e(TAG, e2.toString());
                }
            } else {
                i++;
            }
        }
        return null;
    }

    @Deprecated
    public static boolean needEcode(Object obj) {
        Boolean bool;
        Object fieldValueByName = getFieldValueByName(NEED_ECODE, obj);
        Boolean valueOf = Boolean.valueOf(false);
        if (fieldValueByName != null) {
            bool = (Boolean) fieldValueByName;
        } else {
            bool = valueOf;
        }
        return bool.booleanValue();
    }

    @Deprecated
    public static boolean needSession(Object obj) {
        Boolean bool;
        Object fieldValueByName = getFieldValueByName(NEED_SESSION, obj);
        Boolean valueOf = Boolean.valueOf(false);
        if (fieldValueByName != null) {
            bool = (Boolean) fieldValueByName;
        } else {
            bool = valueOf;
        }
        return bool.booleanValue();
    }

    @Deprecated
    public static boolean needJsonType(Object obj) {
        Boolean bool;
        Object fieldValueByName = getFieldValueByName(ORIGINALJSON, obj);
        Boolean valueOf = Boolean.valueOf(false);
        if (fieldValueByName != null) {
            bool = (Boolean) fieldValueByName;
        } else {
            bool = valueOf;
        }
        return bool.booleanValue();
    }
}
