package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.math.BigDecimal;

public class NumberDeserializer implements ObjectDeserializer {
    public static final NumberDeserializer instance = new NumberDeserializer();

    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName) {
        JSONLexer lexer = parser.lexer;
        String val;
        if (lexer.token() == 2) {
            if (clazz == Double.TYPE || clazz == Double.class) {
                val = lexer.numberString();
                lexer.nextToken(16);
                return Double.valueOf(Double.parseDouble(val));
            }
            long val2 = lexer.longValue();
            lexer.nextToken(16);
            if (clazz == Short.TYPE || clazz == Short.class) {
                if (val2 <= 32767 && val2 >= -32768) {
                    return Short.valueOf((short) ((int) val2));
                }
                throw new JSONException("short overflow : " + val2);
            } else if (clazz == Byte.TYPE || clazz == Byte.class) {
                if (val2 <= 127 && val2 >= -128) {
                    return Byte.valueOf((byte) ((int) val2));
                }
                throw new JSONException("short overflow : " + val2);
            } else if (val2 < -2147483648L || val2 > 2147483647L) {
                return Long.valueOf(val2);
            } else {
                return Integer.valueOf((int) val2);
            }
        } else if (lexer.token() != 3) {
            Object value = parser.parse();
            if (value == null) {
                return null;
            }
            if (clazz == Double.TYPE || clazz == Double.class) {
                try {
                    return TypeUtils.castToDouble(value);
                } catch (Exception ex) {
                    throw new JSONException("parseDouble error, field : " + fieldName, ex);
                }
            } else if (clazz == Short.TYPE || clazz == Short.class) {
                try {
                    return TypeUtils.castToShort(value);
                } catch (Exception ex2) {
                    throw new JSONException("parseShort error, field : " + fieldName, ex2);
                }
            } else if (clazz != Byte.TYPE && clazz != Byte.class) {
                return TypeUtils.castToBigDecimal(value);
            } else {
                try {
                    return TypeUtils.castToByte(value);
                } catch (Exception ex22) {
                    throw new JSONException("parseByte error, field : " + fieldName, ex22);
                }
            }
        } else if (clazz == Double.TYPE || clazz == Double.class) {
            val = lexer.numberString();
            lexer.nextToken(16);
            return Double.valueOf(Double.parseDouble(val));
        } else {
            val = lexer.decimalValue();
            lexer.nextToken(16);
            if (clazz == Short.TYPE || clazz == Short.class) {
                if (val.compareTo(BigDecimal.valueOf(32767)) <= 0 && val.compareTo(BigDecimal.valueOf(-32768)) >= 0) {
                    return Short.valueOf(val.shortValue());
                }
                throw new JSONException("short overflow : " + val);
            } else if (clazz == Byte.TYPE || clazz == Byte.class) {
                return Byte.valueOf(val.byteValue());
            } else {
                return val;
            }
        }
    }

    public int getFastMatchToken() {
        return 2;
    }
}
