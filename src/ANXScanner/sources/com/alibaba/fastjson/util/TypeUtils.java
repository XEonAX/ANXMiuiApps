package com.alibaba.fastjson.util;

import com.ali.auth.third.login.LoginConstants;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONScanner;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.serializer.CalendarCodec;
import com.alibaba.fastjson.serializer.SerializeBeanInfo;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.xiaomi.scanner.camera.exif.ExifInterface.GpsTrackRef;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.security.AccessControlException;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Currency;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import mtopsdk.common.util.SymbolExpUtil;

public class TypeUtils {
    private static Class<? extends Annotation> class_OneToMany = null;
    private static boolean class_OneToMany_error = false;
    public static boolean compatibleWithFieldName;
    public static boolean compatibleWithJavaBean;
    private static volatile Map<Class, String[]> kotlinIgnores;
    private static volatile boolean kotlinIgnores_error;
    private static volatile boolean kotlin_class_klass_error;
    private static volatile boolean kotlin_error;
    private static volatile Constructor kotlin_kclass_constructor;
    private static volatile Method kotlin_kclass_getConstructors;
    private static volatile Method kotlin_kfunction_getParameters;
    private static volatile Method kotlin_kparameter_getName;
    private static volatile Class kotlin_metadata;
    private static volatile boolean kotlin_metadata_error;
    private static ConcurrentMap<String, Class<?>> mappings = new ConcurrentHashMap(16, 0.75f, 1);
    private static Method method_HibernateIsInitialized = null;
    private static boolean method_HibernateIsInitialized_error = false;
    private static Class<?> optionalClass;
    private static boolean optionalClassInited = false;
    private static Method oracleDateMethod;
    private static boolean oracleDateMethodInited = false;
    private static Method oracleTimestampMethod;
    private static boolean oracleTimestampMethodInited = false;
    private static Class<?> pathClass;
    private static boolean pathClass_error = false;
    private static boolean setAccessibleEnable = true;
    private static Class<? extends Annotation> transientClass;
    private static boolean transientClassInited = false;

    static {
        compatibleWithJavaBean = false;
        compatibleWithFieldName = false;
        try {
            compatibleWithJavaBean = "true".equals(IOUtils.getStringProperty(IOUtils.FASTJSON_COMPATIBLEWITHJAVABEAN));
            compatibleWithFieldName = "true".equals(IOUtils.getStringProperty(IOUtils.FASTJSON_COMPATIBLEWITHFIELDNAME));
        } catch (Throwable th) {
        }
        addBaseClassMappings();
    }

    public static String castToString(Object value) {
        if (value == null) {
            return null;
        }
        return value.toString();
    }

    public static Byte castToByte(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Number) {
            return Byte.valueOf(((Number) value).byteValue());
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() == 0 || "null".equals(strVal) || "NULL".equals(strVal)) {
                return null;
            }
            return Byte.valueOf(Byte.parseByte(strVal));
        }
        throw new JSONException("can not cast to byte, value : " + value);
    }

    public static Character castToChar(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Character) {
            return (Character) value;
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() == 0) {
                return null;
            }
            if (strVal.length() == 1) {
                return Character.valueOf(strVal.charAt(0));
            }
            throw new JSONException("can not cast to char, value : " + value);
        }
        throw new JSONException("can not cast to char, value : " + value);
    }

    public static Short castToShort(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Number) {
            return Short.valueOf(((Number) value).shortValue());
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() == 0 || "null".equals(strVal) || "NULL".equals(strVal)) {
                return null;
            }
            return Short.valueOf(Short.parseShort(strVal));
        }
        throw new JSONException("can not cast to short, value : " + value);
    }

    public static BigDecimal castToBigDecimal(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof BigDecimal) {
            return (BigDecimal) value;
        }
        if (value instanceof BigInteger) {
            return new BigDecimal((BigInteger) value);
        }
        String strVal = value.toString();
        if (strVal.length() == 0) {
            return null;
        }
        if ((value instanceof Map) && ((Map) value).size() == 0) {
            return null;
        }
        return new BigDecimal(strVal);
    }

    public static BigInteger castToBigInteger(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof BigInteger) {
            return (BigInteger) value;
        }
        if ((value instanceof Float) || (value instanceof Double)) {
            return BigInteger.valueOf(((Number) value).longValue());
        }
        String strVal = value.toString();
        if (strVal.length() == 0 || "null".equals(strVal) || "NULL".equals(strVal)) {
            return null;
        }
        return new BigInteger(strVal);
    }

    public static Float castToFloat(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Number) {
            return Float.valueOf(((Number) value).floatValue());
        }
        if (value instanceof String) {
            String strVal = value.toString();
            if (strVal.length() == 0 || "null".equals(strVal) || "NULL".equals(strVal)) {
                return null;
            }
            if (strVal.indexOf(44) != 0) {
                strVal = strVal.replaceAll(",", "");
            }
            return Float.valueOf(Float.parseFloat(strVal));
        }
        throw new JSONException("can not cast to float, value : " + value);
    }

    public static Double castToDouble(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Number) {
            return Double.valueOf(((Number) value).doubleValue());
        }
        if (value instanceof String) {
            String strVal = value.toString();
            if (strVal.length() == 0 || "null".equals(strVal) || "NULL".equals(strVal)) {
                return null;
            }
            if (strVal.indexOf(44) != 0) {
                strVal = strVal.replaceAll(",", "");
            }
            return Double.valueOf(Double.parseDouble(strVal));
        }
        throw new JSONException("can not cast to double, value : " + value);
    }

    public static Date castToDate(Object value) {
        Date date = null;
        if (value == null) {
            return null;
        }
        if (value instanceof Date) {
            return (Date) value;
        }
        if (value instanceof Calendar) {
            return ((Calendar) value).getTime();
        }
        long longValue = -1;
        if (value instanceof Number) {
            return new Date(((Number) value).longValue());
        }
        if (value instanceof String) {
            String strVal = (String) value;
            JSONScanner dateLexer = new JSONScanner(strVal);
            try {
                if (dateLexer.scanISO8601DateIfMatch(false)) {
                    date = dateLexer.getCalendar().getTime();
                    return date;
                }
                dateLexer.close();
                if (strVal.startsWith("/Date(") && strVal.endsWith(")/")) {
                    strVal = strVal.substring(6, strVal.length() - 2);
                }
                if (strVal.indexOf(45) != -1) {
                    String format;
                    if (strVal.length() == JSON.DEFFAULT_DATE_FORMAT.length()) {
                        format = JSON.DEFFAULT_DATE_FORMAT;
                    } else if (strVal.length() == 10) {
                        format = "yyyy-MM-dd";
                    } else if (strVal.length() == "yyyy-MM-dd HH:mm:ss".length()) {
                        format = "yyyy-MM-dd HH:mm:ss";
                    } else if (strVal.length() == 29 && strVal.charAt(26) == ':' && strVal.charAt(28) == '0') {
                        format = "yyyy-MM-dd'T'HH:mm:ss.SSSXXX";
                    } else {
                        format = "yyyy-MM-dd HH:mm:ss.SSS";
                    }
                    SimpleDateFormat dateFormat = new SimpleDateFormat(format, JSON.defaultLocale);
                    dateFormat.setTimeZone(JSON.defaultTimeZone);
                    try {
                        return dateFormat.parse(strVal);
                    } catch (ParseException e) {
                        throw new JSONException("can not cast to Date, value : " + strVal);
                    }
                } else if (strVal.length() == 0) {
                    return null;
                } else {
                    longValue = Long.parseLong(strVal);
                }
            } finally {
                dateLexer.close();
            }
        }
        if (longValue >= 0) {
            return new Date(longValue);
        }
        Class<?> clazz = value.getClass();
        if ("oracle.sql.TIMESTAMP".equals(clazz.getName())) {
            if (oracleTimestampMethod == null && !oracleTimestampMethodInited) {
                try {
                    oracleTimestampMethod = clazz.getMethod("toJdbc", new Class[0]);
                } catch (NoSuchMethodException e2) {
                } finally {
                    oracleTimestampMethodInited = true;
                }
            }
            try {
                return (Date) oracleTimestampMethod.invoke(value, new Object[0]);
            } catch (Exception e3) {
                throw new JSONException("can not cast oracle.sql.TIMESTAMP to Date", e3);
            }
        } else if ("oracle.sql.DATE".equals(clazz.getName())) {
            if (oracleDateMethod == null && !oracleDateMethodInited) {
                try {
                    oracleDateMethod = clazz.getMethod("toJdbc", new Class[0]);
                } catch (NoSuchMethodException e4) {
                } finally {
                    oracleDateMethodInited = true;
                }
            }
            try {
                return (Date) oracleDateMethod.invoke(value, new Object[0]);
            } catch (Exception e32) {
                throw new JSONException("can not cast oracle.sql.DATE to Date", e32);
            }
        } else {
            throw new JSONException("can not cast to Date, value : " + value);
        }
    }

    public static java.sql.Date castToSqlDate(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof java.sql.Date) {
            return (java.sql.Date) value;
        }
        if (value instanceof Date) {
            return new java.sql.Date(((Date) value).getTime());
        }
        if (value instanceof Calendar) {
            return new java.sql.Date(((Calendar) value).getTimeInMillis());
        }
        long longValue = 0;
        if (value instanceof Number) {
            longValue = ((Number) value).longValue();
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() == 0 || "null".equals(strVal) || "NULL".equals(strVal)) {
                return null;
            }
            if (isNumber(strVal)) {
                longValue = Long.parseLong(strVal);
            } else {
                JSONScanner scanner = new JSONScanner(strVal);
                if (scanner.scanISO8601DateIfMatch(false)) {
                    longValue = scanner.getCalendar().getTime().getTime();
                } else {
                    throw new JSONException("can not cast to Timestamp, value : " + strVal);
                }
            }
        }
        if (longValue > 0) {
            return new java.sql.Date(longValue);
        }
        throw new JSONException("can not cast to Date, value : " + value);
    }

    public static Timestamp castToTimestamp(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Calendar) {
            return new Timestamp(((Calendar) value).getTimeInMillis());
        }
        if (value instanceof Timestamp) {
            return (Timestamp) value;
        }
        if (value instanceof Date) {
            return new Timestamp(((Date) value).getTime());
        }
        long longValue = 0;
        if (value instanceof Number) {
            longValue = ((Number) value).longValue();
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() == 0 || "null".equals(strVal) || "NULL".equals(strVal)) {
                return null;
            }
            if (strVal.endsWith(".000000000")) {
                strVal = strVal.substring(0, strVal.length() - 10);
            } else if (strVal.endsWith(".000000")) {
                strVal = strVal.substring(0, strVal.length() - 7);
            }
            if (isNumber(strVal)) {
                longValue = Long.parseLong(strVal);
            } else {
                JSONScanner scanner = new JSONScanner(strVal);
                if (scanner.scanISO8601DateIfMatch(false)) {
                    longValue = scanner.getCalendar().getTime().getTime();
                } else {
                    throw new JSONException("can not cast to Timestamp, value : " + strVal);
                }
            }
        }
        if (longValue > 0) {
            return new Timestamp(longValue);
        }
        throw new JSONException("can not cast to Timestamp, value : " + value);
    }

    public static boolean isNumber(String str) {
        for (int i = 0; i < str.length(); i++) {
            char ch = str.charAt(i);
            if (ch == '+' || ch == '-') {
                if (i != 0) {
                    return false;
                }
            } else if (ch < '0' || ch > '9') {
                return false;
            }
        }
        return true;
    }

    public static Long castToLong(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Number) {
            return Long.valueOf(((Number) value).longValue());
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() == 0 || "null".equals(strVal) || "NULL".equals(strVal)) {
                return null;
            }
            if (strVal.indexOf(44) != 0) {
                strVal = strVal.replaceAll(",", "");
            }
            try {
                return Long.valueOf(Long.parseLong(strVal));
            } catch (NumberFormatException e) {
                JSONScanner dateParser = new JSONScanner(strVal);
                Calendar calendar = null;
                if (dateParser.scanISO8601DateIfMatch(false)) {
                    calendar = dateParser.getCalendar();
                }
                dateParser.close();
                if (calendar != null) {
                    return Long.valueOf(calendar.getTimeInMillis());
                }
            }
        }
        if (value instanceof Map) {
            Map map = (Map) value;
            if (map.size() == 2 && map.containsKey("andIncrement") && map.containsKey("andDecrement")) {
                Iterator iter = map.values().iterator();
                iter.next();
                return castToLong(iter.next());
            }
        }
        throw new JSONException("can not cast to long, value : " + value);
    }

    public static Integer castToInt(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Integer) {
            return (Integer) value;
        }
        if (value instanceof Number) {
            return Integer.valueOf(((Number) value).intValue());
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() == 0 || "null".equals(strVal) || "NULL".equals(strVal)) {
                return null;
            }
            if (strVal.indexOf(44) != 0) {
                strVal = strVal.replaceAll(",", "");
            }
            return Integer.valueOf(Integer.parseInt(strVal));
        } else if (value instanceof Boolean) {
            return Integer.valueOf(((Boolean) value).booleanValue() ? 1 : 0);
        } else {
            if (value instanceof Map) {
                Map map = (Map) value;
                if (map.size() == 2 && map.containsKey("andIncrement") && map.containsKey("andDecrement")) {
                    Iterator iter = map.values().iterator();
                    iter.next();
                    return castToInt(iter.next());
                }
            }
            throw new JSONException("can not cast to int, value : " + value);
        }
    }

    public static byte[] castToBytes(Object value) {
        if (value instanceof byte[]) {
            return (byte[]) value;
        }
        if (value instanceof String) {
            return IOUtils.decodeBase64((String) value);
        }
        throw new JSONException("can not cast to int, value : " + value);
    }

    public static Boolean castToBoolean(Object value) {
        boolean z = true;
        if (value == null) {
            return null;
        }
        if (value instanceof Boolean) {
            return (Boolean) value;
        }
        if (value instanceof Number) {
            if (((Number) value).intValue() != 1) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() == 0 || "null".equals(strVal) || "NULL".equals(strVal)) {
                return null;
            }
            if ("true".equalsIgnoreCase(strVal) || "1".equals(strVal)) {
                return Boolean.TRUE;
            }
            if (SymbolExpUtil.STRING_FALSE.equalsIgnoreCase(strVal) || "0".equals(strVal)) {
                return Boolean.FALSE;
            }
            if ("Y".equalsIgnoreCase(strVal) || GpsTrackRef.TRUE_DIRECTION.equals(strVal)) {
                return Boolean.TRUE;
            }
            if ("F".equalsIgnoreCase(strVal) || "N".equals(strVal)) {
                return Boolean.FALSE;
            }
        }
        throw new JSONException("can not cast to boolean, value : " + value);
    }

    public static <T> T castToJavaBean(Object obj, Class<T> clazz) {
        return cast(obj, (Class) clazz, ParserConfig.getGlobalInstance());
    }

    public static <T> T cast(Object obj, Class<T> clazz, ParserConfig config) {
        if (obj == null) {
            if (clazz == Integer.TYPE) {
                return Integer.valueOf(0);
            }
            if (clazz == Long.TYPE) {
                return Long.valueOf(0);
            }
            if (clazz == Short.TYPE) {
                return Short.valueOf((short) 0);
            }
            if (clazz == Byte.TYPE) {
                return Byte.valueOf((byte) 0);
            }
            if (clazz == Float.TYPE) {
                return Float.valueOf(0.0f);
            }
            if (clazz == Double.TYPE) {
                return Double.valueOf(0.0d);
            }
            return clazz == Boolean.TYPE ? Boolean.FALSE : null;
        } else if (clazz == null) {
            throw new IllegalArgumentException("clazz is null");
        } else if (clazz == obj.getClass()) {
            return obj;
        } else {
            if (!(obj instanceof Map)) {
                if (clazz.isArray()) {
                    if (obj instanceof Collection) {
                        Collection<Object> collection = (Collection) obj;
                        int index = 0;
                        Object array = Array.newInstance(clazz.getComponentType(), collection.size());
                        for (Object item : collection) {
                            Array.set(array, index, cast(item, clazz.getComponentType(), config));
                            index++;
                        }
                        return array;
                    } else if (clazz == byte[].class) {
                        return castToBytes(obj);
                    }
                }
                if (clazz.isAssignableFrom(obj.getClass())) {
                    return obj;
                }
                if (clazz == Boolean.TYPE || clazz == Boolean.class) {
                    return castToBoolean(obj);
                }
                if (clazz == Byte.TYPE || clazz == Byte.class) {
                    return castToByte(obj);
                }
                if (clazz == Character.TYPE || clazz == Character.class) {
                    return castToChar(obj);
                }
                if (clazz == Short.TYPE || clazz == Short.class) {
                    return castToShort(obj);
                }
                if (clazz == Integer.TYPE || clazz == Integer.class) {
                    return castToInt(obj);
                }
                if (clazz == Long.TYPE || clazz == Long.class) {
                    return castToLong(obj);
                }
                if (clazz == Float.TYPE || clazz == Float.class) {
                    return castToFloat(obj);
                }
                if (clazz == Double.TYPE || clazz == Double.class) {
                    return castToDouble(obj);
                }
                if (clazz == String.class) {
                    return castToString(obj);
                }
                if (clazz == BigDecimal.class) {
                    return castToBigDecimal(obj);
                }
                if (clazz == BigInteger.class) {
                    return castToBigInteger(obj);
                }
                if (clazz == Date.class) {
                    return castToDate(obj);
                }
                if (clazz == java.sql.Date.class) {
                    return castToSqlDate(obj);
                }
                if (clazz == Timestamp.class) {
                    return castToTimestamp(obj);
                }
                if (clazz.isEnum()) {
                    return castToEnum(obj, clazz, config);
                }
                Date date;
                Calendar calendar;
                if (Calendar.class.isAssignableFrom(clazz)) {
                    date = castToDate(obj);
                    if (clazz == Calendar.class) {
                        calendar = Calendar.getInstance(JSON.defaultTimeZone, JSON.defaultLocale);
                    } else {
                        try {
                            calendar = (Calendar) clazz.newInstance();
                        } catch (Exception e) {
                            throw new JSONException("can not cast to : " + clazz.getName(), e);
                        }
                    }
                    calendar.setTime(date);
                    return calendar;
                } else if (clazz.getName().equals("javax.xml.datatype.XMLGregorianCalendar")) {
                    date = castToDate(obj);
                    calendar = Calendar.getInstance(JSON.defaultTimeZone, JSON.defaultLocale);
                    calendar.setTime(date);
                    return CalendarCodec.instance.createXMLGregorianCalendar(calendar);
                } else {
                    if (obj instanceof String) {
                        String strVal = (String) obj;
                        if (strVal.length() == 0 || "null".equals(strVal) || "NULL".equals(strVal)) {
                            return null;
                        }
                        if (clazz == Currency.class) {
                            return Currency.getInstance(strVal);
                        }
                        if (clazz == Locale.class) {
                            return toLocale(strVal);
                        }
                    }
                    throw new JSONException("can not cast to : " + clazz.getName());
                }
            } else if (clazz == Map.class) {
                return obj;
            } else {
                Map map = (Map) obj;
                if (clazz != Object.class || map.containsKey(JSON.DEFAULT_TYPE_KEY)) {
                    return castToJavaBean((Map) obj, clazz, config);
                }
                return obj;
            }
        }
    }

    public static Locale toLocale(String strVal) {
        String[] items = strVal.split(LoginConstants.UNDER_LINE);
        if (items.length == 1) {
            return new Locale(items[0]);
        }
        if (items.length == 2) {
            return new Locale(items[0], items[1]);
        }
        return new Locale(items[0], items[1], items[2]);
    }

    public static <T> T castToEnum(Object obj, Class<T> clazz, ParserConfig mapping) {
        try {
            if (obj instanceof String) {
                String name = (String) obj;
                if (name.length() == 0) {
                    return null;
                }
                return Enum.valueOf(clazz, name);
            }
            if (obj instanceof Number) {
                int ordinal = ((Number) obj).intValue();
                Object[] values = clazz.getEnumConstants();
                if (ordinal < values.length) {
                    return values[ordinal];
                }
            }
            throw new JSONException("can not cast to : " + clazz.getName());
        } catch (Exception ex) {
            throw new JSONException("can not cast to : " + clazz.getName(), ex);
        }
    }

    public static <T> T cast(Object obj, Type type, ParserConfig mapping) {
        if (obj == null) {
            return null;
        }
        if (type instanceof Class) {
            return cast(obj, (Class) type, mapping);
        }
        if (type instanceof ParameterizedType) {
            return cast(obj, (ParameterizedType) type, mapping);
        }
        if (obj instanceof String) {
            String strVal = (String) obj;
            if (strVal.length() == 0 || "null".equals(strVal) || "NULL".equals(strVal)) {
                return null;
            }
        }
        if (type instanceof TypeVariable) {
            return obj;
        }
        throw new JSONException("can not cast to : " + type);
    }

    public static <T> T cast(Object obj, ParameterizedType type, ParserConfig mapping) {
        Type rawTye = type.getRawType();
        if (rawTye == Set.class || rawTye == HashSet.class || rawTye == TreeSet.class || rawTye == List.class || rawTye == ArrayList.class) {
            Type itemType = type.getActualTypeArguments()[0];
            if (obj instanceof Iterable) {
                T collection;
                if (rawTye == Set.class || rawTye == HashSet.class) {
                    collection = new HashSet();
                } else if (rawTye == TreeSet.class) {
                    collection = new TreeSet();
                } else {
                    collection = new ArrayList();
                }
                for (Object item : (Iterable) obj) {
                    collection.add(cast(item, itemType, mapping));
                }
                return collection;
            }
        }
        if (rawTye == Map.class || rawTye == HashMap.class) {
            Type keyType = type.getActualTypeArguments()[0];
            Type valueType = type.getActualTypeArguments()[1];
            if (obj instanceof Map) {
                T map = new HashMap();
                for (Entry entry : ((Map) obj).entrySet()) {
                    map.put(cast(entry.getKey(), keyType, mapping), cast(entry.getValue(), valueType, mapping));
                }
                return map;
            }
        }
        if ((obj instanceof String) && ((String) obj).length() == 0) {
            return null;
        }
        if (type.getActualTypeArguments().length == 1 && (type.getActualTypeArguments()[0] instanceof WildcardType)) {
            return cast(obj, rawTye, mapping);
        }
        throw new JSONException("can not cast to : " + type);
    }

    public static <T> T castToJavaBean(Map<String, Object> map, Class<T> clazz, ParserConfig config) {
        try {
            if (clazz == StackTraceElement.class) {
                int lineNumber;
                String declaringClass = (String) map.get("className");
                String methodName = (String) map.get("methodName");
                String fileName = (String) map.get("fileName");
                Number value = (Number) map.get("lineNumber");
                if (value == null) {
                    lineNumber = 0;
                } else {
                    lineNumber = value.intValue();
                }
                return new StackTraceElement(declaringClass, methodName, fileName, lineNumber);
            }
            Object iClassObject = map.get(JSON.DEFAULT_TYPE_KEY);
            if (iClassObject instanceof String) {
                String className = (String) iClassObject;
                if (config == null) {
                    config = ParserConfig.global;
                }
                Class<?> loadClazz = config.checkAutoType(className, null);
                if (loadClazz == null) {
                    throw new ClassNotFoundException(className + " not found");
                } else if (!loadClazz.equals(clazz)) {
                    return castToJavaBean(map, loadClazz, config);
                }
            }
            if (clazz.isInterface()) {
                JSONObject object;
                if (map instanceof JSONObject) {
                    object = (JSONObject) map;
                } else {
                    JSONObject jSONObject = new JSONObject((Map) map);
                }
                if (config == null) {
                    config = ParserConfig.getGlobalInstance();
                }
                if (((ObjectDeserializer) config.getDeserializers().get(clazz)) != null) {
                    return JSON.parseObject(JSON.toJSONString(object), (Class) clazz);
                }
                return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{clazz}, object);
            }
            if (clazz == Locale.class) {
                Object arg0 = map.get("language");
                Object arg1 = map.get("country");
                if (arg0 instanceof String) {
                    String language = (String) arg0;
                    if (arg1 instanceof String) {
                        return new Locale(language, (String) arg1);
                    }
                    if (arg1 == null) {
                        return new Locale(language);
                    }
                }
            }
            if (clazz == String.class && (map instanceof JSONObject)) {
                return map.toString();
            }
            if (config == null) {
                config = ParserConfig.getGlobalInstance();
            }
            JavaBeanDeserializer javaBeanDeser = null;
            ObjectDeserializer deserizer = config.getDeserializer((Type) clazz);
            if (deserizer instanceof JavaBeanDeserializer) {
                javaBeanDeser = (JavaBeanDeserializer) deserizer;
            }
            if (javaBeanDeser != null) {
                return javaBeanDeser.createInstance((Map) map, config);
            }
            throw new JSONException("can not get javaBeanDeserializer. " + clazz.getName());
        } catch (Exception e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    private static void addBaseClassMappings() {
        Class<?> clazz;
        int i = 0;
        mappings.put("byte", Byte.TYPE);
        mappings.put("short", Short.TYPE);
        mappings.put("int", Integer.TYPE);
        mappings.put("long", Long.TYPE);
        mappings.put("float", Float.TYPE);
        mappings.put("double", Double.TYPE);
        mappings.put("boolean", Boolean.TYPE);
        mappings.put("char", Character.TYPE);
        mappings.put("[byte", byte[].class);
        mappings.put("[short", short[].class);
        mappings.put("[int", int[].class);
        mappings.put("[long", long[].class);
        mappings.put("[float", float[].class);
        mappings.put("[double", double[].class);
        mappings.put("[boolean", boolean[].class);
        mappings.put("[char", char[].class);
        mappings.put("[B", byte[].class);
        mappings.put("[S", short[].class);
        mappings.put("[I", int[].class);
        mappings.put("[J", long[].class);
        mappings.put("[F", float[].class);
        mappings.put("[D", double[].class);
        mappings.put("[C", char[].class);
        mappings.put("[Z", boolean[].class);
        for (Class clazz2 : new Class[]{Object.class, Cloneable.class, loadClass("java.lang.AutoCloseable"), Exception.class, RuntimeException.class, IllegalAccessError.class, IllegalAccessException.class, IllegalArgumentException.class, IllegalMonitorStateException.class, IllegalStateException.class, IllegalThreadStateException.class, IndexOutOfBoundsException.class, InstantiationError.class, InstantiationException.class, InternalError.class, InterruptedException.class, LinkageError.class, NegativeArraySizeException.class, NoClassDefFoundError.class, NoSuchFieldError.class, NoSuchFieldException.class, NoSuchMethodError.class, NoSuchMethodException.class, NullPointerException.class, NumberFormatException.class, OutOfMemoryError.class, SecurityException.class, StackOverflowError.class, StringIndexOutOfBoundsException.class, TypeNotPresentException.class, VerifyError.class, StackTraceElement.class, HashMap.class, Hashtable.class, TreeMap.class, IdentityHashMap.class, WeakHashMap.class, LinkedHashMap.class, HashSet.class, LinkedHashSet.class, TreeSet.class, TimeUnit.class, ConcurrentHashMap.class, loadClass("java.util.concurrent.ConcurrentSkipListMap"), loadClass("java.util.concurrent.ConcurrentSkipListSet"), AtomicInteger.class, AtomicLong.class, Collections.EMPTY_MAP.getClass(), BitSet.class, Calendar.class, Date.class, Locale.class, UUID.class, Time.class, java.sql.Date.class, Timestamp.class, SimpleDateFormat.class, JSONObject.class}) {
            if (clazz2 != null) {
                mappings.put(clazz2.getName(), clazz2);
            }
        }
        for (String className : new String[]{"java.awt.Rectangle", "java.awt.Point", "java.awt.Font", "java.awt.Color"}) {
            clazz = loadClass(className);
            if (clazz == null) {
                break;
            }
            mappings.put(clazz.getName(), clazz);
        }
        String[] spring = new String[]{"org.springframework.util.LinkedMultiValueMap", "org.springframework.util.LinkedCaseInsensitiveMap", "org.springframework.remoting.support.RemoteInvocation", "org.springframework.remoting.support.RemoteInvocationResult", "org.springframework.security.web.savedrequest.DefaultSavedRequest", "org.springframework.security.web.savedrequest.SavedCookie", "org.springframework.security.web.csrf.DefaultCsrfToken", "org.springframework.security.web.authentication.WebAuthenticationDetails", "org.springframework.security.core.context.SecurityContextImpl", "org.springframework.security.authentication.UsernamePasswordAuthenticationToken", "org.springframework.security.core.authority.SimpleGrantedAuthority", "org.springframework.security.core.userdetails.User"};
        int length = spring.length;
        while (i < length) {
            clazz = loadClass(spring[i]);
            if (clazz != null) {
                mappings.put(clazz.getName(), clazz);
                i++;
            } else {
                return;
            }
        }
    }

    public static void clearClassMapping() {
        mappings.clear();
        addBaseClassMappings();
    }

    public static Class<?> loadClass(String className) {
        return loadClass(className, null);
    }

    public static boolean isPath(Class<?> clazz) {
        if (pathClass == null && !pathClass_error) {
            try {
                pathClass = Class.forName("java.nio.file.Path");
            } catch (Throwable th) {
                pathClass_error = true;
            }
        }
        if (pathClass != null) {
            return pathClass.isAssignableFrom(clazz);
        }
        return false;
    }

    public static Class<?> getClassFromMapping(String className) {
        return (Class) mappings.get(className);
    }

    public static Class<?> loadClass(String className, ClassLoader classLoader) {
        if (className == null || className.length() == 0) {
            return null;
        }
        Class<?> clazz = (Class) mappings.get(className);
        if (clazz != null) {
            return clazz;
        }
        if (className.charAt(0) == '[') {
            return Array.newInstance(loadClass(className.substring(1), classLoader), 0).getClass();
        }
        if (className.startsWith("L") && className.endsWith(";")) {
            return loadClass(className.substring(1, className.length() - 1), classLoader);
        }
        if (classLoader != null) {
            try {
                clazz = classLoader.loadClass(className);
                mappings.put(className, clazz);
                return clazz;
            } catch (Throwable e) {
                e.printStackTrace();
            }
        }
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (!(contextClassLoader == null || contextClassLoader == classLoader)) {
                clazz = contextClassLoader.loadClass(className);
                mappings.put(className, clazz);
                return clazz;
            }
        } catch (Throwable th) {
        }
        try {
            clazz = Class.forName(className);
            mappings.put(className, clazz);
            return clazz;
        } catch (Throwable th2) {
            return clazz;
        }
    }

    public static SerializeBeanInfo buildBeanInfo(Class<?> beanType, Map<String, String> aliasMap, PropertyNamingStrategy propertyNamingStrategy) {
        return buildBeanInfo(beanType, aliasMap, propertyNamingStrategy, false);
    }

    public static SerializeBeanInfo buildBeanInfo(Class<?> beanType, Map<String, String> aliasMap, PropertyNamingStrategy propertyNamingStrategy, boolean fieldBased) {
        int features;
        List<FieldInfo> fieldInfoList;
        List<FieldInfo> sortedFieldList;
        JSONType jsonType = (JSONType) beanType.getAnnotation(JSONType.class);
        String[] orders = null;
        String typeName = null;
        String typeKey = null;
        if (jsonType != null) {
            JSONType superJsonType;
            orders = jsonType.orders();
            typeName = jsonType.typeName();
            if (typeName.length() == 0) {
                typeName = null;
            }
            features = SerializerFeature.of(jsonType.serialzeFeatures());
            Class<?> supperClass = beanType.getSuperclass();
            while (supperClass != null && supperClass != Object.class) {
                superJsonType = (JSONType) supperClass.getAnnotation(JSONType.class);
                if (superJsonType != null) {
                    typeKey = superJsonType.typeKey();
                    if (typeKey.length() != 0) {
                        break;
                    }
                    supperClass = supperClass.getSuperclass();
                } else {
                    break;
                }
            }
            for (Class<?> annotation : beanType.getInterfaces()) {
                superJsonType = (JSONType) annotation.getAnnotation(JSONType.class);
                if (superJsonType != null) {
                    typeKey = superJsonType.typeKey();
                    if (typeKey.length() != 0) {
                        break;
                    }
                }
            }
            if (typeKey != null && typeKey.length() == 0) {
                typeKey = null;
            }
        } else {
            features = 0;
        }
        Map<String, Field> fieldCacheMap = new HashMap();
        ParserConfig.parserAllFieldToCache(beanType, fieldCacheMap);
        if (fieldBased) {
            fieldInfoList = computeGettersWithFieldBase(beanType, aliasMap, false, propertyNamingStrategy);
        } else {
            fieldInfoList = computeGetters(beanType, jsonType, aliasMap, fieldCacheMap, false, propertyNamingStrategy);
        }
        FieldInfo[] fields = new FieldInfo[fieldInfoList.size()];
        fieldInfoList.toArray(fields);
        if (orders == null || orders.length == 0) {
            List<FieldInfo> arrayList = new ArrayList(fieldInfoList);
            Collections.sort(arrayList);
        } else if (fieldBased) {
            sortedFieldList = computeGettersWithFieldBase(beanType, aliasMap, true, propertyNamingStrategy);
        } else {
            sortedFieldList = computeGetters(beanType, jsonType, aliasMap, fieldCacheMap, true, propertyNamingStrategy);
        }
        FieldInfo[] sortedFields = new FieldInfo[sortedFieldList.size()];
        sortedFieldList.toArray(sortedFields);
        if (Arrays.equals(sortedFields, fields)) {
            sortedFields = fields;
        }
        return new SerializeBeanInfo(beanType, jsonType, typeName, typeKey, features, fields, sortedFields);
    }

    public static List<FieldInfo> computeGettersWithFieldBase(Class<?> clazz, Map<String, String> aliasMap, boolean sorted, PropertyNamingStrategy propertyNamingStrategy) {
        Map<String, FieldInfo> fieldInfoMap = new LinkedHashMap();
        for (Class<?> currentClass = clazz; currentClass != null; currentClass = currentClass.getSuperclass()) {
            computeFields(currentClass, aliasMap, propertyNamingStrategy, fieldInfoMap, currentClass.getDeclaredFields());
        }
        return getFieldInfos(clazz, sorted, fieldInfoMap);
    }

    public static List<FieldInfo> computeGetters(Class<?> clazz, Map<String, String> aliasMap) {
        return computeGetters(clazz, aliasMap, true);
    }

    public static List<FieldInfo> computeGetters(Class<?> clazz, Map<String, String> aliasMap, boolean sorted) {
        JSONType jsonType = (JSONType) clazz.getAnnotation(JSONType.class);
        Map<String, Field> fieldCacheMap = new HashMap();
        ParserConfig.parserAllFieldToCache(clazz, fieldCacheMap);
        return computeGetters(clazz, jsonType, aliasMap, fieldCacheMap, sorted, PropertyNamingStrategy.CamelCase);
    }

    public static List<FieldInfo> computeGetters(Class<?> clazz, JSONType jsonType, Map<String, String> aliasMap, Map<String, Field> fieldCacheMap, boolean sorted, PropertyNamingStrategy propertyNamingStrategy) {
        Map<String, FieldInfo> fieldInfoMap = new LinkedHashMap();
        boolean kotlin = isKotlin(clazz);
        Constructor[] constructors = null;
        Annotation[][] paramAnnotationArrays = null;
        String[] paramNames = null;
        short[] paramNameMapping = null;
        Method[] methods = clazz.getMethods();
        int length = methods.length;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < length) {
                Method method = methods[i2];
                String methodName = method.getName();
                int ordinal = 0;
                int serialzeFeatures = 0;
                int parserFeatures = 0;
                String label = null;
                if (!(Modifier.isStatic(method.getModifiers()) || method.getReturnType().equals(Void.TYPE) || method.getParameterTypes().length != 0 || method.getReturnType() == ClassLoader.class || ((method.getName().equals("getMetaClass") && method.getReturnType().getName().equals("groovy.lang.MetaClass")) || (kotlin && isKotlinIgnore(clazz, methodName))))) {
                    String propertyName;
                    Field field;
                    JSONField fieldAnnotation;
                    JSONField annotation = (JSONField) method.getAnnotation(JSONField.class);
                    if (annotation == null) {
                        annotation = getSuperMethodAnnotation(clazz, method);
                    }
                    if (annotation == null && kotlin) {
                        if (constructors == null) {
                            constructors = clazz.getDeclaredConstructors();
                            Constructor creatorConstructor = getKoltinConstructor(constructors);
                            if (creatorConstructor != null) {
                                paramAnnotationArrays = creatorConstructor.getParameterAnnotations();
                                paramNames = getKoltinConstructorParameters(clazz);
                                if (paramNames != null) {
                                    Object paramNames_sorted = new String[paramNames.length];
                                    System.arraycopy(paramNames, 0, paramNames_sorted, 0, paramNames.length);
                                    Arrays.sort(paramNames_sorted);
                                    paramNameMapping = new short[paramNames.length];
                                    for (short p = (short) 0; p < paramNames.length; p = (short) (p + 1)) {
                                        paramNameMapping[Arrays.binarySearch(paramNames_sorted, paramNames[p])] = p;
                                    }
                                    paramNames = paramNames_sorted;
                                }
                            }
                        }
                        if (!(paramNames == null || paramNameMapping == null)) {
                            if (methodName.startsWith("get")) {
                                propertyName = decapitalize(methodName.substring(3));
                                int p2 = Arrays.binarySearch(paramNames, propertyName);
                                if (p2 >= 0) {
                                    Annotation[] paramAnnotations = paramAnnotationArrays[paramNameMapping[p2]];
                                    if (paramAnnotations != null) {
                                        for (Annotation paramAnnotation : paramAnnotations) {
                                            if (paramAnnotation instanceof JSONField) {
                                                annotation = (JSONField) paramAnnotation;
                                                break;
                                            }
                                        }
                                    }
                                    if (annotation == null) {
                                        field = ParserConfig.getFieldFromCache(propertyName, fieldCacheMap);
                                        if (field != null) {
                                            annotation = (JSONField) field.getAnnotation(JSONField.class);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (annotation != null) {
                        if (annotation.serialize()) {
                            ordinal = annotation.ordinal();
                            serialzeFeatures = SerializerFeature.of(annotation.serialzeFeatures());
                            parserFeatures = Feature.of(annotation.parseFeatures());
                            if (annotation.name().length() != 0) {
                                propertyName = annotation.name();
                                if (aliasMap != null) {
                                    propertyName = (String) aliasMap.get(propertyName);
                                    if (propertyName == null) {
                                    }
                                }
                                fieldInfoMap.put(propertyName, new FieldInfo(propertyName, method, null, clazz, null, ordinal, serialzeFeatures, parserFeatures, annotation, null, null));
                            } else if (annotation.label().length() != 0) {
                                label = annotation.label();
                            }
                        }
                    }
                    if (methodName.startsWith("get")) {
                        if (methodName.length() >= 4) {
                            if (!methodName.equals("getClass")) {
                                if (!methodName.equals("getDeclaringClass") || !clazz.isEnum()) {
                                    char c3 = methodName.charAt(3);
                                    if (Character.isUpperCase(c3) || c3 > 512) {
                                        if (compatibleWithJavaBean) {
                                            propertyName = decapitalize(methodName.substring(3));
                                        } else {
                                            propertyName = Character.toLowerCase(methodName.charAt(3)) + methodName.substring(4);
                                        }
                                        propertyName = getPropertyNameByCompatibleFieldName(fieldCacheMap, methodName, propertyName, 3);
                                    } else if (c3 == '_') {
                                        propertyName = methodName.substring(4);
                                    } else if (c3 == 'f') {
                                        propertyName = methodName.substring(3);
                                    } else if (methodName.length() >= 5 && Character.isUpperCase(methodName.charAt(4))) {
                                        propertyName = decapitalize(methodName.substring(3));
                                    }
                                    if (!isJSONTypeIgnore(clazz, propertyName)) {
                                        field = ParserConfig.getFieldFromCache(propertyName, fieldCacheMap);
                                        if (field == null && propertyName.length() > 1) {
                                            char ch = propertyName.charAt(1);
                                            if (ch >= 'A' && ch <= 'Z') {
                                                field = ParserConfig.getFieldFromCache(decapitalize(methodName.substring(3)), fieldCacheMap);
                                            }
                                        }
                                        fieldAnnotation = null;
                                        if (field != null) {
                                            fieldAnnotation = (JSONField) field.getAnnotation(JSONField.class);
                                            if (fieldAnnotation != null) {
                                                if (fieldAnnotation.serialize()) {
                                                    ordinal = fieldAnnotation.ordinal();
                                                    serialzeFeatures = SerializerFeature.of(fieldAnnotation.serialzeFeatures());
                                                    parserFeatures = Feature.of(fieldAnnotation.parseFeatures());
                                                    if (fieldAnnotation.name().length() != 0) {
                                                        propertyName = fieldAnnotation.name();
                                                        if (aliasMap != null) {
                                                            propertyName = (String) aliasMap.get(propertyName);
                                                            if (propertyName == null) {
                                                            }
                                                        }
                                                    }
                                                    if (fieldAnnotation.label().length() != 0) {
                                                        label = fieldAnnotation.label();
                                                    }
                                                }
                                            }
                                        }
                                        if (aliasMap != null) {
                                            propertyName = (String) aliasMap.get(propertyName);
                                            if (propertyName == null) {
                                            }
                                        }
                                        if (propertyNamingStrategy != null) {
                                            propertyName = propertyNamingStrategy.translate(propertyName);
                                        }
                                        fieldInfoMap.put(propertyName, new FieldInfo(propertyName, method, field, clazz, null, ordinal, serialzeFeatures, parserFeatures, annotation, fieldAnnotation, label));
                                    }
                                }
                            }
                        }
                    }
                    if (methodName.startsWith("is") && methodName.length() >= 3 && (method.getReturnType() == Boolean.TYPE || method.getReturnType() == Boolean.class)) {
                        char c2 = methodName.charAt(2);
                        if (Character.isUpperCase(c2)) {
                            if (compatibleWithJavaBean) {
                                propertyName = decapitalize(methodName.substring(2));
                            } else {
                                propertyName = Character.toLowerCase(methodName.charAt(2)) + methodName.substring(3);
                            }
                            propertyName = getPropertyNameByCompatibleFieldName(fieldCacheMap, methodName, propertyName, 2);
                        } else if (c2 == '_') {
                            propertyName = methodName.substring(3);
                        } else if (c2 == 'f') {
                            propertyName = methodName.substring(2);
                        }
                        if (!isJSONTypeIgnore(clazz, propertyName)) {
                            field = ParserConfig.getFieldFromCache(propertyName, fieldCacheMap);
                            if (field == null) {
                                field = ParserConfig.getFieldFromCache(methodName, fieldCacheMap);
                            }
                            fieldAnnotation = null;
                            if (field != null) {
                                fieldAnnotation = (JSONField) field.getAnnotation(JSONField.class);
                                if (fieldAnnotation != null) {
                                    if (fieldAnnotation.serialize()) {
                                        ordinal = fieldAnnotation.ordinal();
                                        serialzeFeatures = SerializerFeature.of(fieldAnnotation.serialzeFeatures());
                                        parserFeatures = Feature.of(fieldAnnotation.parseFeatures());
                                        if (fieldAnnotation.name().length() != 0) {
                                            propertyName = fieldAnnotation.name();
                                            if (aliasMap != null) {
                                                propertyName = (String) aliasMap.get(propertyName);
                                                if (propertyName == null) {
                                                }
                                            }
                                        }
                                        if (fieldAnnotation.label().length() != 0) {
                                            label = fieldAnnotation.label();
                                        }
                                    }
                                }
                            }
                            if (aliasMap != null) {
                                propertyName = (String) aliasMap.get(propertyName);
                                if (propertyName == null) {
                                }
                            }
                            if (propertyNamingStrategy != null) {
                                propertyName = propertyNamingStrategy.translate(propertyName);
                            }
                            if (!fieldInfoMap.containsKey(propertyName)) {
                                fieldInfoMap.put(propertyName, new FieldInfo(propertyName, method, field, clazz, null, ordinal, serialzeFeatures, parserFeatures, annotation, fieldAnnotation, label));
                            }
                        }
                    }
                }
                i = i2 + 1;
            } else {
                computeFields(clazz, aliasMap, propertyNamingStrategy, fieldInfoMap, clazz.getFields());
                return getFieldInfos(clazz, sorted, fieldInfoMap);
            }
        }
    }

    private static List<FieldInfo> getFieldInfos(Class<?> clazz, boolean sorted, Map<String, FieldInfo> fieldInfoMap) {
        List<FieldInfo> fieldInfoList = new ArrayList();
        String[] orders = null;
        JSONType annotation = (JSONType) clazz.getAnnotation(JSONType.class);
        if (annotation != null) {
            orders = annotation.orders();
        }
        if (orders == null || orders.length <= 0) {
            for (FieldInfo fieldInfo : fieldInfoMap.values()) {
                fieldInfoList.add(fieldInfo);
            }
            if (sorted) {
                Collections.sort(fieldInfoList);
            }
        } else {
            FieldInfo field;
            LinkedHashMap<String, FieldInfo> map = new LinkedHashMap(fieldInfoList.size());
            for (FieldInfo field2 : fieldInfoMap.values()) {
                map.put(field2.name, field2);
            }
            for (String item : orders) {
                field2 = (FieldInfo) map.get(item);
                if (field2 != null) {
                    fieldInfoList.add(field2);
                    map.remove(item);
                }
            }
            for (FieldInfo field22 : map.values()) {
                fieldInfoList.add(field22);
            }
        }
        return fieldInfoList;
    }

    private static void computeFields(Class<?> clazz, Map<String, String> aliasMap, PropertyNamingStrategy propertyNamingStrategy, Map<String, FieldInfo> fieldInfoMap, Field[] fields) {
        for (Field field : fields) {
            if (!Modifier.isStatic(field.getModifiers())) {
                JSONField fieldAnnotation = (JSONField) field.getAnnotation(JSONField.class);
                int ordinal = 0;
                int serialzeFeatures = 0;
                int parserFeatures = 0;
                String propertyName = field.getName();
                String label = null;
                if (fieldAnnotation != null) {
                    if (fieldAnnotation.serialize()) {
                        ordinal = fieldAnnotation.ordinal();
                        serialzeFeatures = SerializerFeature.of(fieldAnnotation.serialzeFeatures());
                        parserFeatures = Feature.of(fieldAnnotation.parseFeatures());
                        if (fieldAnnotation.name().length() != 0) {
                            propertyName = fieldAnnotation.name();
                        }
                        if (fieldAnnotation.label().length() != 0) {
                            label = fieldAnnotation.label();
                        }
                    }
                }
                if (aliasMap != null) {
                    propertyName = (String) aliasMap.get(propertyName);
                    if (propertyName == null) {
                    }
                }
                if (propertyNamingStrategy != null) {
                    propertyName = propertyNamingStrategy.translate(propertyName);
                }
                if (!fieldInfoMap.containsKey(propertyName)) {
                    fieldInfoMap.put(propertyName, new FieldInfo(propertyName, null, field, clazz, null, ordinal, serialzeFeatures, parserFeatures, null, fieldAnnotation, label));
                }
            }
        }
    }

    private static String getPropertyNameByCompatibleFieldName(Map<String, Field> fieldCacheMap, String methodName, String propertyName, int fromIdx) {
        if (!compatibleWithFieldName || fieldCacheMap.containsKey(propertyName)) {
            return propertyName;
        }
        String tempPropertyName = methodName.substring(fromIdx);
        return fieldCacheMap.containsKey(tempPropertyName) ? tempPropertyName : propertyName;
    }

    public static JSONField getSuperMethodAnnotation(Class<?> clazz, Method method) {
        Class<?>[] types;
        Class<?>[] interfaceTypes;
        boolean match;
        int i;
        JSONField annotation;
        Class<?>[] interfaces = clazz.getInterfaces();
        if (interfaces.length > 0) {
            types = method.getParameterTypes();
            for (Class<?> interfaceClass : interfaces) {
                for (Method interfaceMethod : interfaceClass.getMethods()) {
                    interfaceTypes = interfaceMethod.getParameterTypes();
                    if (interfaceTypes.length == types.length && interfaceMethod.getName().equals(method.getName())) {
                        match = true;
                        for (i = 0; i < types.length; i++) {
                            if (!interfaceTypes[i].equals(types[i])) {
                                match = false;
                                break;
                            }
                        }
                        if (match) {
                            annotation = (JSONField) interfaceMethod.getAnnotation(JSONField.class);
                            if (annotation != null) {
                                return annotation;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }
        Class<?> superClass = clazz.getSuperclass();
        if (superClass == null) {
            return null;
        }
        if (Modifier.isAbstract(superClass.getModifiers())) {
            types = method.getParameterTypes();
            for (Method interfaceMethod2 : superClass.getMethods()) {
                interfaceTypes = interfaceMethod2.getParameterTypes();
                if (interfaceTypes.length == types.length && interfaceMethod2.getName().equals(method.getName())) {
                    match = true;
                    for (i = 0; i < types.length; i++) {
                        if (!interfaceTypes[i].equals(types[i])) {
                            match = false;
                            break;
                        }
                    }
                    if (match) {
                        annotation = (JSONField) interfaceMethod2.getAnnotation(JSONField.class);
                        if (annotation != null) {
                            return annotation;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    private static boolean isJSONTypeIgnore(Class<?> clazz, String propertyName) {
        JSONType jsonType = (JSONType) clazz.getAnnotation(JSONType.class);
        if (jsonType != null) {
            String[] fields = jsonType.includes();
            if (fields.length > 0) {
                for (Object equals : fields) {
                    if (propertyName.equals(equals)) {
                        return false;
                    }
                }
                return true;
            }
            fields = jsonType.ignores();
            for (Object equals2 : fields) {
                if (propertyName.equals(equals2)) {
                    return true;
                }
            }
        }
        if (clazz.getSuperclass() == Object.class || clazz.getSuperclass() == null || !isJSONTypeIgnore(clazz.getSuperclass(), propertyName)) {
            return false;
        }
        return true;
    }

    public static boolean isGenericParamType(Type type) {
        if (type instanceof ParameterizedType) {
            return true;
        }
        if (!(type instanceof Class)) {
            return false;
        }
        Type superType = ((Class) type).getGenericSuperclass();
        if (superType != Object.class) {
            return isGenericParamType(superType);
        }
        return false;
    }

    public static Type getGenericParamType(Type type) {
        if (!(type instanceof ParameterizedType) && (type instanceof Class)) {
            return getGenericParamType(((Class) type).getGenericSuperclass());
        }
        return type;
    }

    public static Type unwrapOptional(Type type) {
        if (!optionalClassInited) {
            try {
                optionalClass = Class.forName("java.util.Optional");
            } catch (Exception e) {
            } finally {
                optionalClassInited = true;
            }
        }
        if (!(type instanceof ParameterizedType)) {
            return type;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        if (parameterizedType.getRawType() == optionalClass) {
            return parameterizedType.getActualTypeArguments()[0];
        }
        return type;
    }

    public static Class<?> getClass(Type type) {
        if (type.getClass() == Class.class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return getClass(((ParameterizedType) type).getRawType());
        }
        if (type instanceof TypeVariable) {
            return (Class) ((TypeVariable) type).getBounds()[0];
        }
        return Object.class;
    }

    public static Field getField(Class<?> clazz, String fieldName, Field[] declaredFields) {
        for (Field field : declaredFields) {
            if (fieldName.equals(field.getName())) {
                return field;
            }
        }
        Class<?> superClass = clazz.getSuperclass();
        if (superClass == null || superClass == Object.class) {
            return null;
        }
        return getField(superClass, fieldName, superClass.getDeclaredFields());
    }

    public static int getSerializeFeatures(Class<?> clazz) {
        JSONType annotation = (JSONType) clazz.getAnnotation(JSONType.class);
        if (annotation == null) {
            return 0;
        }
        return SerializerFeature.of(annotation.serialzeFeatures());
    }

    public static int getParserFeatures(Class<?> clazz) {
        JSONType annotation = (JSONType) clazz.getAnnotation(JSONType.class);
        if (annotation == null) {
            return 0;
        }
        return Feature.of(annotation.parseFeatures());
    }

    public static String decapitalize(String name) {
        if (name == null || name.length() == 0) {
            return name;
        }
        if (name.length() > 1 && Character.isUpperCase(name.charAt(1)) && Character.isUpperCase(name.charAt(0))) {
            return name;
        }
        char[] chars = name.toCharArray();
        chars[0] = Character.toLowerCase(chars[0]);
        return new String(chars);
    }

    static void setAccessible(AccessibleObject obj) {
        if (setAccessibleEnable && !obj.isAccessible()) {
            try {
                obj.setAccessible(true);
            } catch (AccessControlException e) {
                setAccessibleEnable = false;
            }
        }
    }

    public static Type getCollectionItemType(Type fieldType) {
        Type itemType = null;
        if (fieldType instanceof ParameterizedType) {
            Type actualTypeArgument = ((ParameterizedType) fieldType).getActualTypeArguments()[0];
            if (actualTypeArgument instanceof WildcardType) {
                Type[] upperBounds = ((WildcardType) actualTypeArgument).getUpperBounds();
                if (upperBounds.length == 1) {
                    actualTypeArgument = upperBounds[0];
                }
            }
            itemType = actualTypeArgument;
        } else if (fieldType instanceof Class) {
            Class<?> clazz = (Class) fieldType;
            if (!clazz.getName().startsWith("java.")) {
                itemType = getCollectionItemType(clazz.getGenericSuperclass());
            }
        }
        if (itemType == null) {
            return Object.class;
        }
        return itemType;
    }

    public static Class<?> getCollectionItemClass(Type fieldType) {
        if (!(fieldType instanceof ParameterizedType)) {
            return Object.class;
        }
        Type actualTypeArgument = ((ParameterizedType) fieldType).getActualTypeArguments()[0];
        if (actualTypeArgument instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) actualTypeArgument).getUpperBounds();
            if (upperBounds.length == 1) {
                actualTypeArgument = upperBounds[0];
            }
        }
        if (actualTypeArgument instanceof Class) {
            Class<?> cls = (Class) actualTypeArgument;
            if (Modifier.isPublic(cls.getModifiers())) {
                return cls;
            }
            throw new JSONException("can not create ASMParser");
        }
        throw new JSONException("can not create ASMParser");
    }

    public static Collection createCollection(Type type) {
        Class<?> rawClass = getRawClass(type);
        if (rawClass == AbstractCollection.class || rawClass == Collection.class) {
            return new ArrayList();
        }
        if (rawClass.isAssignableFrom(HashSet.class)) {
            return new HashSet();
        }
        if (rawClass.isAssignableFrom(LinkedHashSet.class)) {
            return new LinkedHashSet();
        }
        if (rawClass.isAssignableFrom(TreeSet.class)) {
            return new TreeSet();
        }
        if (rawClass.isAssignableFrom(ArrayList.class)) {
            return new ArrayList();
        }
        if (rawClass.isAssignableFrom(EnumSet.class)) {
            Type itemType;
            if (type instanceof ParameterizedType) {
                itemType = ((ParameterizedType) type).getActualTypeArguments()[0];
            } else {
                itemType = Object.class;
            }
            return EnumSet.noneOf((Class) itemType);
        }
        try {
            return (Collection) rawClass.newInstance();
        } catch (Exception e) {
            throw new JSONException("create instance error, class " + rawClass.getName());
        }
    }

    public static Class<?> getRawClass(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return getRawClass(((ParameterizedType) type).getRawType());
        }
        throw new JSONException("TODO");
    }

    public static boolean isProxy(Class<?> clazz) {
        for (Class<?> item : clazz.getInterfaces()) {
            String interfaceName = item.getName();
            if (interfaceName.equals("net.sf.cglib.proxy.Factory") || interfaceName.equals("org.springframework.cglib.proxy.Factory") || interfaceName.equals("javassist.util.proxy.ProxyObject") || interfaceName.equals("org.apache.ibatis.javassist.util.proxy.ProxyObject")) {
                return true;
            }
        }
        return false;
    }

    public static boolean isTransient(Method method) {
        boolean z = true;
        if (method == null) {
            return false;
        }
        if (!transientClassInited) {
            try {
                transientClass = Class.forName("java.beans.Transient");
            } catch (Exception e) {
            } finally {
                transientClassInited = true;
            }
        }
        if (transientClass == null) {
            return false;
        }
        if (method.getAnnotation(transientClass) == null) {
            z = false;
        }
        return z;
    }

    public static boolean isAnnotationPresentOneToMany(Method method) {
        if (method == null) {
            return false;
        }
        if (class_OneToMany == null && !class_OneToMany_error) {
            try {
                class_OneToMany = Class.forName("javax.persistence.OneToMany");
            } catch (Throwable th) {
                class_OneToMany_error = true;
            }
        }
        if (class_OneToMany != null) {
            return method.isAnnotationPresent(class_OneToMany);
        }
        return false;
    }

    public static boolean isHibernateInitialized(Object object) {
        if (object == null) {
            return false;
        }
        if (method_HibernateIsInitialized == null && !method_HibernateIsInitialized_error) {
            try {
                method_HibernateIsInitialized = Class.forName("org.hibernate.Hibernate").getMethod("isInitialized", new Class[]{Object.class});
            } catch (Throwable th) {
                method_HibernateIsInitialized_error = true;
            }
        }
        if (method_HibernateIsInitialized != null) {
            try {
                return ((Boolean) method_HibernateIsInitialized.invoke(null, new Object[]{object})).booleanValue();
            } catch (Throwable th2) {
            }
        }
        return true;
    }

    public static long fnv1a_64_lower(String key) {
        long hashCode = -3750763034362895579L;
        for (int i = 0; i < key.length(); i++) {
            char ch = key.charAt(i);
            if (!(ch == '_' || ch == '-')) {
                if (ch >= 'A' && ch <= 'Z') {
                    ch = (char) (ch + 32);
                }
                hashCode = (hashCode ^ ((long) ch)) * 1099511628211L;
            }
        }
        return hashCode;
    }

    public static long fnv1a_64(String key) {
        long hashCode = -3750763034362895579L;
        for (int i = 0; i < key.length(); i++) {
            hashCode = (hashCode ^ ((long) key.charAt(i))) * 1099511628211L;
        }
        return hashCode;
    }

    public static boolean isKotlin(Class clazz) {
        if (kotlin_metadata == null && !kotlin_metadata_error) {
            try {
                kotlin_metadata = Class.forName("kotlin.Metadata");
            } catch (Throwable th) {
                kotlin_metadata_error = true;
            }
        }
        if (kotlin_metadata == null) {
            return false;
        }
        return clazz.isAnnotationPresent(kotlin_metadata);
    }

    public static Constructor getKoltinConstructor(Constructor[] constructors) {
        Constructor creatorConstructor = null;
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            if ((parameterTypes.length <= 0 || !parameterTypes[parameterTypes.length - 1].getName().equals("kotlin.jvm.internal.DefaultConstructorMarker")) && (creatorConstructor == null || creatorConstructor.getParameterTypes().length < parameterTypes.length)) {
                Constructor<?> creatorConstructor2 = constructor;
            }
        }
        return creatorConstructor2;
    }

    public static String[] getKoltinConstructorParameters(Class clazz) {
        if (kotlin_kclass_constructor == null && !kotlin_class_klass_error) {
            try {
                Class class_kotlin_kclass = Class.forName("kotlin.reflect.jvm.internal.KClassImpl");
                kotlin_kclass_constructor = class_kotlin_kclass.getConstructor(new Class[]{Class.class});
                kotlin_kclass_getConstructors = class_kotlin_kclass.getMethod("getConstructors", new Class[0]);
                kotlin_kfunction_getParameters = Class.forName("kotlin.reflect.KFunction").getMethod("getParameters", new Class[0]);
                kotlin_kparameter_getName = Class.forName("kotlin.reflect.KParameter").getMethod("getName", new Class[0]);
            } catch (Throwable th) {
                kotlin_class_klass_error = true;
            }
        }
        if (kotlin_kclass_constructor == null) {
            return null;
        }
        if (kotlin_error) {
            return null;
        }
        Object constructor = null;
        try {
            Iterator iterator = ((Iterable) kotlin_kclass_getConstructors.invoke(kotlin_kclass_constructor.newInstance(new Object[]{clazz}), new Object[0])).iterator();
            while (iterator.hasNext()) {
                constructor = iterator.next();
                iterator.hasNext();
            }
            List parameters = (List) kotlin_kfunction_getParameters.invoke(constructor, new Object[0]);
            String[] names = new String[parameters.size()];
            for (int i = 0; i < parameters.size(); i++) {
                names[i] = (String) kotlin_kparameter_getName.invoke(parameters.get(i), new Object[0]);
            }
            return names;
        } catch (Throwable th2) {
            kotlin_error = true;
            return null;
        }
    }

    private static boolean isKotlinIgnore(Class clazz, String methodName) {
        boolean z = true;
        if (kotlinIgnores == null && !kotlinIgnores_error) {
            try {
                Map<Class, String[]> map = new HashMap();
                map.put(Class.forName("kotlin.ranges.CharRange"), new String[]{"getEndInclusive", "isEmpty"});
                map.put(Class.forName("kotlin.ranges.IntRange"), new String[]{"getEndInclusive", "isEmpty"});
                map.put(Class.forName("kotlin.ranges.LongRange"), new String[]{"getEndInclusive", "isEmpty"});
                map.put(Class.forName("kotlin.ranges.ClosedFloatRange"), new String[]{"getEndInclusive", "isEmpty"});
                map.put(Class.forName("kotlin.ranges.ClosedDoubleRange"), new String[]{"getEndInclusive", "isEmpty"});
                kotlinIgnores = map;
            } catch (Throwable th) {
                kotlinIgnores_error = true;
            }
        }
        if (kotlinIgnores == null) {
            return false;
        }
        String[] ignores = (String[]) kotlinIgnores.get(clazz);
        if (ignores == null) {
            return false;
        }
        if (Arrays.binarySearch(ignores, methodName) < 0) {
            z = false;
        }
        return z;
    }
}
