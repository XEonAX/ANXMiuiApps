package com.alibaba.fastjson.parser.deserializer;

import com.ali.auth.third.login.LoginConstants;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.ParserConfig;
import java.lang.reflect.Constructor;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class ThrowableDeserializer extends JavaBeanDeserializer {
    public ThrowableDeserializer(ParserConfig mapping, Class<?> clazz) {
        super(mapping, clazz, clazz);
    }

    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        JSONLexer lexer = parser.lexer;
        if (lexer.token() == 8) {
            lexer.nextToken();
            return null;
        }
        String key;
        Object ex;
        if (parser.getResolveStatus() == 2) {
            parser.setResolveStatus(0);
        } else if (lexer.token() != 12) {
            throw new JSONException("syntax error");
        }
        Throwable cause = null;
        Class<?> exClass = null;
        if (type != null && (type instanceof Class)) {
            Class<?> clazz = (Class) type;
            if (Throwable.class.isAssignableFrom(clazz)) {
                exClass = clazz;
            }
        }
        String message = null;
        StackTraceElement[] stackTrace = null;
        Map<String, Object> otherValues = new HashMap();
        while (true) {
            key = lexer.scanSymbol(parser.getSymbolTable());
            if (key == null) {
                if (lexer.token() == 13) {
                    lexer.nextToken(16);
                    break;
                } else if (lexer.token() == 16 && lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                }
            }
            lexer.nextTokenWithColon(4);
            if (JSON.DEFAULT_TYPE_KEY.equals(key)) {
                if (lexer.token() == 4) {
                    exClass = parser.getConfig().checkAutoType(lexer.stringVal(), Throwable.class);
                    lexer.nextToken(16);
                } else {
                    throw new JSONException("syntax error");
                }
            } else if (LoginConstants.MESSAGE.equals(key)) {
                if (lexer.token() == 8) {
                    message = null;
                } else if (lexer.token() == 4) {
                    message = lexer.stringVal();
                } else {
                    throw new JSONException("syntax error");
                }
                lexer.nextToken();
            } else if ("cause".equals(key)) {
                cause = (Throwable) deserialze(parser, null, "cause");
            } else if ("stackTrace".equals(key)) {
                stackTrace = (StackTraceElement[]) parser.parseObject(StackTraceElement[].class);
            } else {
                otherValues.put(key, parser.parse());
            }
            if (lexer.token() == 13) {
                lexer.nextToken(16);
                break;
            }
        }
        if (exClass == null) {
            ex = new Exception(message, cause);
        } else if (Throwable.class.isAssignableFrom(exClass)) {
            try {
                T ex2 = createException(message, cause, exClass);
                if (ex2 == null) {
                    ex2 = new Exception(message, cause);
                }
            } catch (Exception e) {
                throw new JSONException("create instance error", e);
            }
        } else {
            throw new JSONException("type not match, not Throwable. " + exClass.getName());
        }
        if (stackTrace != null) {
            ex2.setStackTrace(stackTrace);
        }
        for (Entry<String, Object> entry : otherValues.entrySet()) {
            key = (String) entry.getKey();
            Object value = entry.getValue();
            FieldDeserializer fieldDeserializer = getFieldDeserializer(key);
            if (fieldDeserializer != null) {
                fieldDeserializer.setValue(ex2, value);
            }
        }
        return ex2;
    }

    private Throwable createException(String message, Throwable cause, Class<?> exClass) throws Exception {
        Constructor<?> defaultConstructor = null;
        Constructor<?> messageConstructor = null;
        Constructor<?> causeConstructor = null;
        for (Constructor<?> constructor : exClass.getConstructors()) {
            Class<?>[] types = constructor.getParameterTypes();
            if (types.length == 0) {
                defaultConstructor = constructor;
            } else if (types.length == 1 && types[0] == String.class) {
                messageConstructor = constructor;
            } else if (types.length == 2 && types[0] == String.class && types[1] == Throwable.class) {
                causeConstructor = constructor;
            }
        }
        if (causeConstructor != null) {
            return (Throwable) causeConstructor.newInstance(new Object[]{message, cause});
        } else if (messageConstructor != null) {
            return (Throwable) messageConstructor.newInstance(new Object[]{message});
        } else if (defaultConstructor != null) {
            return (Throwable) defaultConstructor.newInstance(new Object[0]);
        } else {
            return null;
        }
    }

    public int getFastMatchToken() {
        return 12;
    }
}
