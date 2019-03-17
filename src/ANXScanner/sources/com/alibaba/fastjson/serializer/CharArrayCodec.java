package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

public class CharArrayCodec implements ObjectDeserializer {
    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName) {
        return deserialze(parser);
    }

    public static <T> T deserialze(DefaultJSONParser parser) {
        JSONLexer lexer = parser.lexer;
        if (lexer.token() == 4) {
            String val = lexer.stringVal();
            lexer.nextToken(16);
            return val.toCharArray();
        } else if (lexer.token() == 2) {
            Number val2 = lexer.integerValue();
            lexer.nextToken(16);
            return val2.toString().toCharArray();
        } else {
            Collection<?> value = parser.parse();
            if (value instanceof String) {
                return ((String) value).toCharArray();
            }
            if (value instanceof Collection) {
                Iterator it;
                Collection<?> collection = value;
                boolean accept = true;
                for (Object item : collection) {
                    if ((item instanceof String) && ((String) item).length() != 1) {
                        accept = false;
                        break;
                    }
                }
                if (accept) {
                    T chars = new char[collection.size()];
                    int pos = 0;
                    it = collection.iterator();
                    while (it.hasNext()) {
                        int pos2 = pos + 1;
                        chars[pos] = ((String) it.next()).charAt(0);
                        pos = pos2;
                    }
                    return chars;
                }
                throw new JSONException("can not cast to char[]");
            }
            char[] cArr;
            if (value == null) {
                cArr = null;
            } else {
                cArr = JSON.toJSONString(value).toCharArray();
            }
            return cArr;
        }
    }

    public int getFastMatchToken() {
        return 4;
    }
}
