package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONScanner;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public abstract class AbstractDateDeserializer extends ContextObjectDeserializer implements ObjectDeserializer {
    protected abstract <T> T cast(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2);

    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName) {
        return deserialze(parser, clazz, fieldName, null, 0);
    }

    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName, String format, int features) {
        Long val;
        JSONLexer lexer = parser.lexer;
        if (lexer.token() == 2) {
            val = Long.valueOf(lexer.longValue());
            lexer.nextToken(16);
        } else if (lexer.token() == 4) {
            String strVal = lexer.stringVal();
            if (format != null) {
                SimpleDateFormat simpleDateFormat = null;
                try {
                    simpleDateFormat = new SimpleDateFormat(format, JSON.defaultLocale);
                } catch (IllegalArgumentException e) {
                    if (format.equals("yyyy-MM-ddTHH:mm:ss.SSS")) {
                        format = "yyyy-MM-dd'T'HH:mm:ss.SSS";
                        simpleDateFormat = new SimpleDateFormat(format);
                    } else if (format.equals("yyyy-MM-ddTHH:mm:ss")) {
                        format = "yyyy-MM-dd'T'HH:mm:ss";
                        simpleDateFormat = new SimpleDateFormat(format);
                    }
                }
                try {
                    val = simpleDateFormat.parse(strVal);
                } catch (ParseException e2) {
                    if (format.equals("yyyy-MM-dd'T'HH:mm:ss.SSS") && strVal.length() == 19) {
                        try {
                            val = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss").parse(strVal);
                        } catch (ParseException e3) {
                            val = null;
                        }
                    } else {
                        val = null;
                    }
                }
            } else {
                val = null;
            }
            if (val == null) {
                val = strVal;
                lexer.nextToken(16);
                if (lexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                    JSONScanner iso8601Lexer = new JSONScanner(strVal);
                    if (iso8601Lexer.scanISO8601DateIfMatch()) {
                        val = iso8601Lexer.getCalendar().getTime();
                    }
                    iso8601Lexer.close();
                }
            }
        } else if (lexer.token() == 8) {
            lexer.nextToken();
            val = null;
        } else if (lexer.token() == 12) {
            lexer.nextToken();
            if (lexer.token() == 4) {
                if (JSON.DEFAULT_TYPE_KEY.equals(lexer.stringVal())) {
                    lexer.nextToken();
                    parser.accept(17);
                    Class<?> type = parser.getConfig().checkAutoType(lexer.stringVal(), null);
                    if (type != null) {
                        clazz = type;
                    }
                    parser.accept(4);
                    parser.accept(16);
                }
                lexer.nextTokenWithColon(2);
                if (lexer.token() == 2) {
                    long timeMillis = lexer.longValue();
                    lexer.nextToken();
                    val = Long.valueOf(timeMillis);
                    parser.accept(13);
                } else {
                    throw new JSONException("syntax error : " + lexer.tokenName());
                }
            }
            throw new JSONException("syntax error");
        } else if (parser.getResolveStatus() == 2) {
            parser.setResolveStatus(0);
            parser.accept(16);
            if (lexer.token() != 4) {
                throw new JSONException("syntax error");
            } else if ("val".equals(lexer.stringVal())) {
                lexer.nextToken();
                parser.accept(17);
                val = parser.parse();
                parser.accept(13);
            } else {
                throw new JSONException("syntax error");
            }
        } else {
            val = parser.parse();
        }
        return cast(parser, clazz, fieldName, val);
    }
}
