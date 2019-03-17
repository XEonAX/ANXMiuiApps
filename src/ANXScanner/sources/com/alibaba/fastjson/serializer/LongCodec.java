package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public class LongCodec implements ObjectSerializer, ObjectDeserializer {
    public static LongCodec instance = new LongCodec();

    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        SerializeWriter out = serializer.out;
        if (object == null) {
            out.writeNull(SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        long value = ((Long) object).longValue();
        out.writeLong(value);
        if (out.isEnabled(SerializerFeature.WriteClassName) && value <= 2147483647L && value >= -2147483648L && fieldType != Long.class && fieldType != Long.TYPE) {
            out.write(76);
        }
    }

    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName) {
        JSONLexer lexer = parser.lexer;
        try {
            T longObject;
            int token = lexer.token();
            if (token == 2) {
                long longValue = lexer.longValue();
                lexer.nextToken(16);
                longObject = Long.valueOf(longValue);
            } else {
                if (token == 12) {
                    Map jsonObject = new JSONObject(true);
                    parser.parseObject(jsonObject);
                    longObject = TypeUtils.castToLong(jsonObject);
                } else {
                    longObject = TypeUtils.castToLong(parser.parse());
                }
                if (longObject == null) {
                    return null;
                }
            }
            if (clazz == AtomicLong.class) {
                return new AtomicLong(longObject.longValue());
            }
            return longObject;
        } catch (Exception ex) {
            throw new JSONException("parseLong error, field : " + fieldName, ex);
        }
    }

    public int getFastMatchToken() {
        return 2;
    }
}
