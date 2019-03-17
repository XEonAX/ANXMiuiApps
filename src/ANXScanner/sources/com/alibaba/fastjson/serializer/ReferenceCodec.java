package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicReference;

public class ReferenceCodec implements ObjectSerializer, ObjectDeserializer {
    public static final ReferenceCodec instance = new ReferenceCodec();

    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        Object item;
        if (object instanceof AtomicReference) {
            item = ((AtomicReference) object).get();
        } else {
            item = ((Reference) object).get();
        }
        serializer.write(item);
    }

    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        ParameterizedType paramType = (ParameterizedType) type;
        Object itemObject = parser.parseObject(paramType.getActualTypeArguments()[0]);
        Type rawType = paramType.getRawType();
        if (rawType == AtomicReference.class) {
            return new AtomicReference(itemObject);
        }
        if (rawType == WeakReference.class) {
            return new WeakReference(itemObject);
        }
        if (rawType == SoftReference.class) {
            return new SoftReference(itemObject);
        }
        throw new UnsupportedOperationException(rawType.toString());
    }

    public int getFastMatchToken() {
        return 12;
    }
}
