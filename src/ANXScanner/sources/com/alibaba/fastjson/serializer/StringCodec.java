package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import java.io.IOException;
import java.lang.reflect.Type;

public class StringCodec implements ObjectSerializer, ObjectDeserializer {
    public static StringCodec instance = new StringCodec();

    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        write(serializer, (String) object);
    }

    public void write(JSONSerializer serializer, String value) {
        SerializeWriter out = serializer.out;
        if (value == null) {
            out.writeNull(SerializerFeature.WriteNullStringAsEmpty);
        } else {
            out.writeString(value);
        }
    }

    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName) {
        JSONLexer lexer;
        String val;
        Object value;
        if (clazz == StringBuffer.class) {
            lexer = parser.lexer;
            if (lexer.token() == 4) {
                val = lexer.stringVal();
                lexer.nextToken(16);
                return new StringBuffer(val);
            }
            value = parser.parse();
            if (value != null) {
                return new StringBuffer(value.toString());
            }
            return null;
        } else if (clazz != StringBuilder.class) {
            return deserialze(parser);
        } else {
            lexer = parser.lexer;
            if (lexer.token() == 4) {
                val = lexer.stringVal();
                lexer.nextToken(16);
                return new StringBuilder(val);
            }
            value = parser.parse();
            if (value != null) {
                return new StringBuilder(value.toString());
            }
            return null;
        }
    }

    public static <T> T deserialze(DefaultJSONParser parser) {
        JSONLexer lexer = parser.getLexer();
        String val;
        if (lexer.token() == 4) {
            val = lexer.stringVal();
            lexer.nextToken(16);
            return val;
        } else if (lexer.token() == 2) {
            val = lexer.numberString();
            lexer.nextToken(16);
            return val;
        } else {
            Object value = parser.parse();
            if (value == null) {
                return null;
            }
            return value.toString();
        }
    }

    public int getFastMatchToken() {
        return 4;
    }
}
