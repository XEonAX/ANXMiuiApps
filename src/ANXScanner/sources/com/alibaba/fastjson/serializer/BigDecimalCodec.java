package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;

public class BigDecimalCodec implements ObjectSerializer, ObjectDeserializer {
    public static final BigDecimalCodec instance = new BigDecimalCodec();

    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        SerializeWriter out = serializer.out;
        if (object == null) {
            out.writeNull(SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        String outText;
        BigDecimal val = (BigDecimal) object;
        if (out.isEnabled(SerializerFeature.WriteBigDecimalAsPlain)) {
            outText = val.toPlainString();
        } else {
            outText = val.toString();
        }
        out.write(outText);
        if (out.isEnabled(SerializerFeature.WriteClassName) && fieldType != BigDecimal.class && val.scale() == 0) {
            out.write(46);
        }
    }

    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName) {
        try {
            return deserialze(parser);
        } catch (Exception ex) {
            throw new JSONException("parseDecimal error, field : " + fieldName, ex);
        }
    }

    public static <T> T deserialze(DefaultJSONParser parser) {
        JSONLexer lexer = parser.lexer;
        if (lexer.token() == 2) {
            BigDecimal decimalValue = lexer.decimalValue();
            lexer.nextToken(16);
            return decimalValue;
        } else if (lexer.token() == 3) {
            BigDecimal val = lexer.decimalValue();
            lexer.nextToken(16);
            return val;
        } else {
            BigDecimal bigDecimal;
            Object value = parser.parse();
            if (value == null) {
                bigDecimal = null;
            } else {
                bigDecimal = TypeUtils.castToBigDecimal(value);
            }
            return bigDecimal;
        }
    }

    public int getFastMatchToken() {
        return 2;
    }
}
