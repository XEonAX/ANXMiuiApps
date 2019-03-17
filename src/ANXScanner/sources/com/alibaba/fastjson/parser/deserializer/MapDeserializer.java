package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONToken;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import mtopsdk.common.util.SymbolExpUtil;

public class MapDeserializer implements ObjectDeserializer {
    public static MapDeserializer instance = new MapDeserializer();

    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        if (type == JSONObject.class && parser.getFieldTypeResolver() == null) {
            return parser.parseObject();
        }
        JSONLexer lexer = parser.lexer;
        if (lexer.token() == 8) {
            lexer.nextToken(16);
            return null;
        }
        Map<Object, Object> map = createMap(type);
        ParseContext context = parser.getContext();
        try {
            parser.setContext(context, map, fieldName);
            T deserialze = deserialze(parser, type, fieldName, map);
            return deserialze;
        } finally {
            parser.setContext(context);
        }
    }

    protected Object deserialze(DefaultJSONParser parser, Type type, Object fieldName, Map map) {
        if (!(type instanceof ParameterizedType)) {
            return parser.parseObject(map, fieldName);
        }
        Type valueType;
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Class keyType = parameterizedType.getActualTypeArguments()[0];
        if (map.getClass().getName().equals("org.springframework.util.LinkedMultiValueMap")) {
            valueType = List.class;
        } else {
            valueType = parameterizedType.getActualTypeArguments()[1];
        }
        if (String.class == keyType) {
            return parseMap(parser, map, valueType, fieldName);
        }
        return parseMap(parser, map, keyType, valueType, fieldName);
    }

    /* JADX WARNING: Missing block: B:61:0x023a, code:
            r11.nextToken(16);
     */
    /* JADX WARNING: Missing block: B:63:?, code:
            r7 = r5.getDeserializer(r4);
            r11.nextToken(16);
            r20.setResolveStatus(2);
     */
    /* JADX WARNING: Missing block: B:64:0x025c, code:
            if (r6 == null) goto L_0x0269;
     */
    /* JADX WARNING: Missing block: B:66:0x0264, code:
            if ((r23 instanceof java.lang.Integer) != false) goto L_0x0269;
     */
    /* JADX WARNING: Missing block: B:67:0x0266, code:
            r20.popContext();
     */
    /* JADX WARNING: Missing block: B:68:0x0269, code:
            r17 = (java.util.Map) r7.deserialze(r20, r4, r23);
     */
    /* JADX WARNING: Missing block: B:69:0x0273, code:
            r20.setContext(r6);
     */
    /* JADX WARNING: Missing block: B:105:?, code:
            return r17;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Map parseMap(DefaultJSONParser parser, Map<String, Object> map, Type valueType, Object fieldName) {
        JSONLexer lexer = parser.lexer;
        int token = lexer.token();
        if (token != 12) {
            String msg = "syntax error, expect {, actual " + lexer.tokenName();
            if (fieldName instanceof String) {
                msg = (msg + ", fieldName ") + fieldName;
            }
            msg = (msg + ", ") + lexer.info();
            if (token != 4) {
                Collection array = new JSONArray();
                parser.parseArray(array, fieldName);
                if (array.size() == 1) {
                    Object first = array.get(0);
                    if (first instanceof JSONObject) {
                        return (JSONObject) first;
                    }
                }
            }
            throw new JSONException(msg);
        }
        ParseContext context = parser.getContext();
        int i = 0;
        while (true) {
            try {
                Object key;
                lexer.skipWhitespace();
                char ch = lexer.getCurrent();
                if (lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (ch == ',') {
                        lexer.next();
                        lexer.skipWhitespace();
                        ch = lexer.getCurrent();
                    }
                }
                if (ch == '\"') {
                    key = lexer.scanSymbol(parser.getSymbolTable(), '\"');
                    lexer.skipWhitespace();
                    if (lexer.getCurrent() != ':') {
                        throw new JSONException("expect ':' at " + lexer.pos());
                    }
                } else if (ch == '}') {
                    lexer.next();
                    lexer.resetStringPosition();
                    lexer.nextToken(16);
                    parser.setContext(context);
                    return map;
                } else if (ch == '\'') {
                    if (lexer.isEnabled(Feature.AllowSingleQuotes)) {
                        key = lexer.scanSymbol(parser.getSymbolTable(), '\'');
                        lexer.skipWhitespace();
                        if (lexer.getCurrent() != ':') {
                            throw new JSONException("expect ':' at " + lexer.pos());
                        }
                    }
                    throw new JSONException("syntax error");
                } else if (lexer.isEnabled(Feature.AllowUnQuotedFieldNames)) {
                    key = lexer.scanSymbolUnQuoted(parser.getSymbolTable());
                    lexer.skipWhitespace();
                    ch = lexer.getCurrent();
                    if (ch != ':') {
                        throw new JSONException("expect ':' at " + lexer.pos() + ", actual " + ch);
                    }
                } else {
                    throw new JSONException("syntax error");
                }
                lexer.next();
                lexer.skipWhitespace();
                ch = lexer.getCurrent();
                lexer.resetStringPosition();
                if (key == JSON.DEFAULT_TYPE_KEY && !lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                    String typeName = lexer.scanSymbol(parser.getSymbolTable(), '\"');
                    ParserConfig config = parser.getConfig();
                    Type clazz = config.checkAutoType(typeName, null);
                    if (!Map.class.isAssignableFrom(clazz)) {
                        break;
                    }
                    lexer.nextToken(16);
                    if (lexer.token() == 13) {
                        break;
                    }
                } else {
                    Object value;
                    lexer.nextToken();
                    if (i != 0) {
                        parser.setContext(context);
                    }
                    if (lexer.token() == 8) {
                        value = null;
                        lexer.nextToken();
                    } else {
                        value = parser.parseObject(valueType, key);
                    }
                    map.put(key, value);
                    parser.checkMapResolve(map, key);
                    parser.setContext(context, value, key);
                    parser.setContext(context);
                    int tok = lexer.token();
                    if (tok == 20 || tok == 15) {
                        parser.setContext(context);
                    } else if (tok == 13) {
                        lexer.nextToken();
                        parser.setContext(context);
                        return map;
                    }
                }
                i++;
            } finally {
                parser.setContext(context);
            }
        }
        parser.setContext(context);
        return map;
        return map;
    }

    public static Object parseMap(DefaultJSONParser parser, Map<Object, Object> map, Type keyType, Type valueType, Object fieldName) {
        JSONLexer lexer = parser.lexer;
        if (lexer.token() == 12 || lexer.token() == 16) {
            ObjectDeserializer keyDeserializer = parser.getConfig().getDeserializer(keyType);
            ObjectDeserializer valueDeserializer = parser.getConfig().getDeserializer(valueType);
            lexer.nextToken(keyDeserializer.getFastMatchToken());
            ParseContext context = parser.getContext();
            while (lexer.token() != 13) {
                if (lexer.token() == 4 && lexer.isRef() && !lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                    Map<Object, Object> object = null;
                    lexer.nextTokenWithColon(4);
                    if (lexer.token() == 4) {
                        String ref = lexer.stringVal();
                        if ("..".equals(ref)) {
                            object = context.parent.object;
                        } else if (SymbolExpUtil.SYMBOL_DOLLAR.equals(ref)) {
                            ParseContext rootContext = context;
                            while (rootContext.parent != null) {
                                rootContext = rootContext.parent;
                            }
                            object = rootContext.object;
                        } else {
                            parser.addResolveTask(new ResolveTask(context, ref));
                            parser.setResolveStatus(1);
                        }
                        lexer.nextToken(13);
                        if (lexer.token() != 13) {
                            throw new JSONException("illegal ref");
                        }
                        lexer.nextToken(16);
                        parser.setContext(context);
                        return object;
                    }
                    throw new JSONException("illegal ref, " + JSONToken.name(lexer.token()));
                }
                try {
                    if (map.size() == 0 && lexer.token() == 4 && JSON.DEFAULT_TYPE_KEY.equals(lexer.stringVal()) && !lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                        lexer.nextTokenWithColon(4);
                        lexer.nextToken(16);
                        if (lexer.token() == 13) {
                            lexer.nextToken();
                            return map;
                        }
                        lexer.nextToken(keyDeserializer.getFastMatchToken());
                    }
                    Object key = keyDeserializer.deserialze(parser, keyType, null);
                    if (lexer.token() != 17) {
                        throw new JSONException("syntax error, expect :, actual " + lexer.token());
                    }
                    lexer.nextToken(valueDeserializer.getFastMatchToken());
                    Object value = valueDeserializer.deserialze(parser, valueType, key);
                    parser.checkMapResolve(map, key);
                    map.put(key, value);
                    if (lexer.token() == 16) {
                        lexer.nextToken(keyDeserializer.getFastMatchToken());
                    }
                } finally {
                    parser.setContext(context);
                }
            }
            lexer.nextToken(16);
            parser.setContext(context);
            return map;
        }
        throw new JSONException("syntax error, expect {, actual " + lexer.tokenName());
    }

    protected Map<Object, Object> createMap(Type type) {
        if (type == Properties.class) {
            return new Properties();
        }
        if (type == Hashtable.class) {
            return new Hashtable();
        }
        if (type == IdentityHashMap.class) {
            return new IdentityHashMap();
        }
        if (type == SortedMap.class || type == TreeMap.class) {
            return new TreeMap();
        }
        if (type == ConcurrentMap.class || type == ConcurrentHashMap.class) {
            return new ConcurrentHashMap();
        }
        if (type == Map.class || type == HashMap.class) {
            return new HashMap();
        }
        if (type == LinkedHashMap.class) {
            return new LinkedHashMap();
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type rawType = parameterizedType.getRawType();
            if (EnumMap.class.equals(rawType)) {
                return new EnumMap((Class) parameterizedType.getActualTypeArguments()[0]);
            }
            return createMap(rawType);
        }
        Class<?> clazz = (Class) type;
        if (clazz.isInterface()) {
            throw new JSONException("unsupport type " + type);
        }
        try {
            return (Map) clazz.newInstance();
        } catch (Exception e) {
            throw new JSONException("unsupport type " + type, e);
        }
    }

    public int getFastMatchToken() {
        return 12;
    }
}
