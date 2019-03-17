package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.ObjectSerializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;

public class OptionalCodec implements ObjectSerializer, ObjectDeserializer {
    public static OptionalCodec instance = new OptionalCodec();

    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        if (type == OptionalInt.class) {
            Integer value = TypeUtils.castToInt(parser.parseObject(Integer.class));
            if (value == null) {
                return OptionalInt.empty();
            }
            return OptionalInt.of(value.intValue());
        } else if (type == OptionalLong.class) {
            Long value2 = TypeUtils.castToLong(parser.parseObject(Long.class));
            if (value2 == null) {
                return OptionalLong.empty();
            }
            return OptionalLong.of(value2.longValue());
        } else if (type == OptionalDouble.class) {
            Double value3 = TypeUtils.castToDouble(parser.parseObject(Double.class));
            if (value3 == null) {
                return OptionalDouble.empty();
            }
            return OptionalDouble.of(value3.doubleValue());
        } else {
            Object value4 = parser.parseObject(TypeUtils.unwrapOptional(type));
            if (value4 == null) {
                return Optional.empty();
            }
            return Optional.of(value4);
        }
    }

    public int getFastMatchToken() {
        return 12;
    }

    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        if (object == null) {
            serializer.writeNull();
        } else if (object instanceof Optional) {
            Optional<?> optional = (Optional) object;
            serializer.write(optional.isPresent() ? optional.get() : null);
        } else if (object instanceof OptionalDouble) {
            OptionalDouble optional2 = (OptionalDouble) object;
            if (optional2.isPresent()) {
                serializer.write(Double.valueOf(optional2.getAsDouble()));
            } else {
                serializer.writeNull();
            }
        } else if (object instanceof OptionalInt) {
            OptionalInt optional3 = (OptionalInt) object;
            if (optional3.isPresent()) {
                serializer.out.writeInt(optional3.getAsInt());
            } else {
                serializer.writeNull();
            }
        } else if (object instanceof OptionalLong) {
            OptionalLong optional4 = (OptionalLong) object;
            if (optional4.isPresent()) {
                serializer.out.writeLong(optional4.getAsLong());
            } else {
                serializer.writeNull();
            }
        } else {
            throw new JSONException("not support optional : " + object.getClass());
        }
    }
}
