package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class IntegerCodec implements ObjectSerializer, ObjectDeserializer {
    public static IntegerCodec instance = new IntegerCodec();

    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        SerializeWriter out = serializer.out;
        Number value = (Number) object;
        if (value == null) {
            out.writeNull(SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        if (object instanceof Long) {
            out.writeLong(value.longValue());
        } else {
            out.writeInt(value.intValue());
        }
        if (out.isEnabled(SerializerFeature.WriteClassName)) {
            Class<?> clazz = value.getClass();
            if (clazz == Byte.class) {
                out.write(66);
            } else if (clazz == Short.class) {
                out.write(83);
            }
        }
    }

    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName) {
        JSONLexer lexer = parser.lexer;
        int token = lexer.token();
        if (token == 8) {
            lexer.nextToken(16);
            return null;
        }
        T intObj;
        if (token == 2) {
            try {
                int val = lexer.intValue();
                lexer.nextToken(16);
                intObj = Integer.valueOf(val);
            } catch (Exception ex) {
                throw new JSONException("parseInt error, field : " + fieldName, ex);
            }
        } else if (token == 3) {
            BigDecimal decimalValue = lexer.decimalValue();
            lexer.nextToken(16);
            intObj = Integer.valueOf(decimalValue.intValue());
        } else if (token == 12) {
            Map jsonObject = new JSONObject(true);
            parser.parseObject(jsonObject);
            intObj = TypeUtils.castToInt(jsonObject);
        } else {
            intObj = TypeUtils.castToInt(parser.parse());
        }
        if (clazz == AtomicInteger.class) {
            return new AtomicInteger(intObj.intValue());
        }
        return intObj;
    }

    public int getFastMatchToken() {
        return 2;
    }
}
