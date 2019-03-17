package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicBoolean;
import mtopsdk.common.util.SymbolExpUtil;

public class BooleanCodec implements ObjectSerializer, ObjectDeserializer {
    public static final BooleanCodec instance = new BooleanCodec();

    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        SerializeWriter out = serializer.out;
        Boolean value = (Boolean) object;
        if (value == null) {
            out.writeNull(SerializerFeature.WriteNullBooleanAsFalse);
        } else if (value.booleanValue()) {
            out.write("true");
        } else {
            out.write(SymbolExpUtil.STRING_FALSE);
        }
    }

    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName) {
        JSONLexer lexer = parser.lexer;
        try {
            Boolean boolObj;
            if (lexer.token() == 6) {
                lexer.nextToken(16);
                boolObj = Boolean.TRUE;
            } else if (lexer.token() == 7) {
                lexer.nextToken(16);
                boolObj = Boolean.FALSE;
            } else if (lexer.token() == 2) {
                int intValue = lexer.intValue();
                lexer.nextToken(16);
                if (intValue == 1) {
                    boolObj = Boolean.TRUE;
                } else {
                    boolObj = Boolean.FALSE;
                }
            } else {
                Object value = parser.parse();
                if (value == null) {
                    return null;
                }
                boolObj = TypeUtils.castToBoolean(value);
            }
            if (clazz == AtomicBoolean.class) {
                return new AtomicBoolean(boolObj.booleanValue());
            }
            return boolObj;
        } catch (Exception ex) {
            throw new JSONException("parseBoolean error, field : " + fieldName, ex);
        }
    }

    public int getFastMatchToken() {
        return 6;
    }
}
