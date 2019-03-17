package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.wireless.security.SecExceptionCode;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.SortedMap;
import java.util.TreeMap;

public class MapSerializer extends SerializeFilterable implements ObjectSerializer {
    private static final int NON_STRINGKEY_AS_STRING = SerializerFeature.of(new SerializerFeature[]{SerializerFeature.BrowserCompatible, SerializerFeature.WriteNonStringKeyAsString, SerializerFeature.BrowserSecure});
    public static MapSerializer instance = new MapSerializer();

    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        write(serializer, object, fieldName, fieldType, features, false);
    }

    /* JADX WARNING: Removed duplicated region for block: B:95:0x01cb A:{Catch:{ all -> 0x0205 }} */
    /* JADX WARNING: Removed duplicated region for block: B:161:0x02fb A:{Catch:{ all -> 0x0205 }} */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x01d9 A:{Catch:{ all -> 0x0205 }} */
    /* JADX WARNING: Removed duplicated region for block: B:170:0x032c A:{Catch:{ all -> 0x0205 }} */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x0200 A:{Catch:{ all -> 0x0205 }} */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x01b6 A:{Catch:{ all -> 0x0205 }} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x01cb A:{Catch:{ all -> 0x0205 }} */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x01d9 A:{Catch:{ all -> 0x0205 }} */
    /* JADX WARNING: Removed duplicated region for block: B:161:0x02fb A:{Catch:{ all -> 0x0205 }} */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x0200 A:{Catch:{ all -> 0x0205 }} */
    /* JADX WARNING: Removed duplicated region for block: B:170:0x032c A:{Catch:{ all -> 0x0205 }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features, boolean unwrapped) throws IOException {
        SerializeWriter out = serializer.out;
        if (object == null) {
            out.writeNull();
            return;
        }
        Map<?, ?> map = (Map) object;
        int mapSortFieldMask = SerializerFeature.MapSortField.mask;
        if (!(((out.features & mapSortFieldMask) == 0 && (features & mapSortFieldMask) == 0) || (map instanceof SortedMap) || (map instanceof LinkedHashMap))) {
            try {
                map = new TreeMap(map);
            } catch (Exception e) {
            }
        }
        if (serializer.containsReference(object)) {
            serializer.writeReference(object);
            return;
        }
        SerialContext parent = serializer.context;
        serializer.setContext(parent, object, fieldName, 0);
        if (!unwrapped) {
            try {
                out.write((int) SecExceptionCode.SEC_ERROR_INIT_INCORRECT_DATA_FILE);
            } catch (Throwable th) {
                serializer.context = parent;
            }
        }
        serializer.incrementIndent();
        Class<?> preClazz = null;
        ObjectSerializer preWriter = null;
        boolean first = true;
        if (out.isEnabled(SerializerFeature.WriteClassName)) {
            String typeKey = serializer.config.typeKey;
            Class<?> mapClass = map.getClass();
            boolean containsKey = (mapClass == JSONObject.class || mapClass == HashMap.class || mapClass == LinkedHashMap.class) && map.containsKey(typeKey);
            if (!containsKey) {
                out.writeFieldName(typeKey);
                out.writeString(object.getClass().getName());
                first = false;
            }
        }
        for (Entry entry : map.entrySet()) {
            Object processKey;
            Object value = entry.getValue();
            Object entryKey = entry.getKey();
            List<PropertyPreFilter> preFilters = serializer.propertyPreFilters;
            if (preFilters != null && preFilters.size() > 0) {
                if (entryKey == null || (entryKey instanceof String)) {
                    if (!applyName(serializer, object, (String) entryKey)) {
                    }
                } else if (entryKey.getClass().isPrimitive() || (entryKey instanceof Number)) {
                    if (!applyName(serializer, object, JSON.toJSONString(entryKey))) {
                    }
                }
            }
            preFilters = this.propertyPreFilters;
            if (preFilters != null && preFilters.size() > 0) {
                if (entryKey == null || (entryKey instanceof String)) {
                    if (!applyName(serializer, object, (String) entryKey)) {
                    }
                } else if (entryKey.getClass().isPrimitive() || (entryKey instanceof Number)) {
                    if (!applyName(serializer, object, JSON.toJSONString(entryKey))) {
                    }
                }
            }
            List<PropertyFilter> propertyFilters = serializer.propertyFilters;
            if (propertyFilters != null && propertyFilters.size() > 0) {
                if (entryKey == null || (entryKey instanceof String)) {
                    if (!apply(serializer, object, (String) entryKey, value)) {
                    }
                } else if (entryKey.getClass().isPrimitive() || (entryKey instanceof Number)) {
                    if (!apply(serializer, object, JSON.toJSONString(entryKey), value)) {
                    }
                }
            }
            propertyFilters = this.propertyFilters;
            if (propertyFilters != null && propertyFilters.size() > 0) {
                if (entryKey == null || (entryKey instanceof String)) {
                    if (!apply(serializer, object, (String) entryKey, value)) {
                    }
                } else if (entryKey.getClass().isPrimitive() || (entryKey instanceof Number)) {
                    if (!apply(serializer, object, JSON.toJSONString(entryKey), value)) {
                    }
                }
            }
            List<NameFilter> nameFilters = serializer.nameFilters;
            if (nameFilters != null && nameFilters.size() > 0) {
                if (entryKey == null || (entryKey instanceof String)) {
                    entryKey = processKey(serializer, object, (String) entryKey, value);
                } else if (entryKey.getClass().isPrimitive() || (entryKey instanceof Number)) {
                    entryKey = processKey(serializer, object, JSON.toJSONString(entryKey), value);
                }
            }
            nameFilters = this.nameFilters;
            if (nameFilters != null && nameFilters.size() > 0) {
                if (entryKey == null || (entryKey instanceof String)) {
                    processKey = processKey(serializer, object, (String) entryKey, value);
                    if (processKey != null || (processKey instanceof String)) {
                        value = processValue(serializer, null, object, (String) processKey, value);
                    } else {
                        boolean objectOrArray = (processKey instanceof Map) || (processKey instanceof Collection);
                        if (!objectOrArray) {
                            value = processValue(serializer, null, object, JSON.toJSONString(processKey), value);
                        }
                    }
                    if (value == null) {
                        if (!out.isEnabled(SerializerFeature.WRITE_MAP_NULL_FEATURES)) {
                        }
                    }
                    if (processKey instanceof String) {
                        String key = (String) processKey;
                        if (!first) {
                            out.write(44);
                        }
                        if (out.isEnabled(SerializerFeature.PrettyFormat)) {
                            serializer.println();
                        }
                        out.writeFieldName(key, true);
                    } else {
                        if (!first) {
                            out.write(44);
                        }
                        if (!out.isEnabled(NON_STRINGKEY_AS_STRING) || (processKey instanceof Enum)) {
                            serializer.write(processKey);
                        } else {
                            serializer.write(JSON.toJSONString(processKey));
                        }
                        out.write(58);
                    }
                    first = false;
                    if (value == null) {
                        out.writeNull();
                    } else {
                        Class<?> clazz = value.getClass();
                        if (clazz == preClazz) {
                            preWriter.write(serializer, value, processKey, null, 0);
                        } else {
                            preClazz = clazz;
                            preWriter = serializer.getObjectWriter(clazz);
                            preWriter.write(serializer, value, processKey, null, 0);
                        }
                    }
                } else if (entryKey.getClass().isPrimitive() || (entryKey instanceof Number)) {
                    String processKey2 = processKey(serializer, object, JSON.toJSONString(entryKey), value);
                    if (processKey2 != null) {
                    }
                    value = processValue(serializer, null, object, (String) processKey2, value);
                    if (value == null) {
                    }
                    if (processKey2 instanceof String) {
                    }
                    first = false;
                    if (value == null) {
                    }
                }
            }
            processKey2 = entryKey;
            if (processKey2 != null) {
            }
            value = processValue(serializer, null, object, (String) processKey2, value);
            if (value == null) {
            }
            if (processKey2 instanceof String) {
            }
            first = false;
            if (value == null) {
            }
        }
        serializer.context = parent;
        serializer.decrementIdent();
        if (out.isEnabled(SerializerFeature.PrettyFormat) && map.size() > 0) {
            serializer.println();
        }
        if (!unwrapped) {
            out.write((int) SecExceptionCode.SEC_ERROR_INIT_PARSE_USER_CONFIG_ERROR);
        }
    }
}
