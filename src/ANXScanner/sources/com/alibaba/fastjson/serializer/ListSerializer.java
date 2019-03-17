package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

public final class ListSerializer implements ObjectSerializer {
    public static final ListSerializer instance = new ListSerializer();

    public final void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        SerialContext context;
        Throwable th;
        boolean writeClassName = serializer.out.isEnabled(SerializerFeature.WriteClassName);
        SerializeWriter out = serializer.out;
        Type elementType = null;
        if (writeClassName) {
            elementType = TypeUtils.getCollectionItemType(fieldType);
        }
        if (object == null) {
            out.writeNull(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        List<?> list = (List) object;
        if (list.size() == 0) {
            out.append((CharSequence) "[]");
            return;
        }
        context = serializer.context;
        serializer.setContext(context, object, fieldName, 0);
        try {
            int i;
            if (out.isEnabled(SerializerFeature.PrettyFormat)) {
                out.append('[');
                serializer.incrementIndent();
                i = 0;
                for (Object item : list) {
                    if (i != 0) {
                        out.append(',');
                    }
                    serializer.println();
                    if (item == null) {
                        serializer.out.writeNull();
                    } else if (serializer.containsReference(item)) {
                        serializer.writeReference(item);
                    } else {
                        ObjectSerializer itemSerializer = serializer.getObjectWriter(item.getClass());
                        ObjectSerializer objectSerializer;
                        try {
                            serializer.context = new SerialContext(context, object, fieldName, 0, 0);
                            itemSerializer.write(serializer, item, Integer.valueOf(i), elementType, 0);
                            objectSerializer = itemSerializer;
                        } catch (Throwable th2) {
                            th = th2;
                            objectSerializer = itemSerializer;
                        }
                    }
                    i++;
                }
                serializer.decrementIdent();
                serializer.println();
                out.append(']');
                serializer.context = context;
                return;
            }
            out.append('[');
            int size = list.size();
            for (i = 0; i < size; i++) {
                Object item2 = list.get(i);
                if (i != 0) {
                    out.append(',');
                }
                if (item2 == null) {
                    out.append((CharSequence) "null");
                } else {
                    Class<?> clazz = item2.getClass();
                    JSONSerializer jSONSerializer;
                    if (clazz == Integer.class) {
                        out.writeInt(((Integer) item2).intValue());
                    } else if (clazz == Long.class) {
                        long val = ((Long) item2).longValue();
                        if (writeClassName) {
                            out.writeLong(val);
                            out.write(76);
                        } else {
                            out.writeLong(val);
                        }
                    } else if ((SerializerFeature.DisableCircularReferenceDetect.mask & features) != 0) {
                        jSONSerializer = serializer;
                        serializer.getObjectWriter(item2.getClass()).write(jSONSerializer, item2, Integer.valueOf(i), elementType, features);
                    } else {
                        if (!out.disableCircularReferenceDetect) {
                            serializer.context = new SerialContext(context, object, fieldName, 0, 0);
                        }
                        if (serializer.containsReference(item2)) {
                            serializer.writeReference(item2);
                        } else {
                            jSONSerializer = serializer;
                            serializer.getObjectWriter(item2.getClass()).write(jSONSerializer, item2, Integer.valueOf(i), elementType, 0);
                        }
                    }
                }
            }
            out.append(']');
            serializer.context = context;
            return;
        } catch (Throwable th3) {
            th = th3;
        }
        serializer.context = context;
        throw th;
    }
}
