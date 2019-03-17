package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.JSONPathException;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessable;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldTypeResolver;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.PropertyProcessable;
import com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer;
import com.alibaba.fastjson.serializer.BeanContext;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.LongCodec;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.TypeUtils;
import com.alibaba.wireless.security.SecExceptionCode;
import java.io.Closeable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import mtopsdk.common.util.SymbolExpUtil;

public class DefaultJSONParser implements Closeable {
    public static final int NONE = 0;
    public static final int NeedToResolve = 1;
    public static final int TypeNameRedirect = 2;
    private static final Set<Class<?>> primitiveClasses = new HashSet();
    private String[] autoTypeAccept;
    private boolean autoTypeEnable;
    protected ParserConfig config;
    protected ParseContext context;
    private ParseContext[] contextArray;
    private int contextArrayIndex;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    private List<ExtraProcessor> extraProcessors;
    private List<ExtraTypeProvider> extraTypeProviders;
    protected FieldTypeResolver fieldTypeResolver;
    public final Object input;
    protected transient BeanContext lastBeanContext;
    public final JSONLexer lexer;
    public int resolveStatus;
    private List<ResolveTask> resolveTaskList;
    public final SymbolTable symbolTable;

    public static class ResolveTask {
        public final ParseContext context;
        public FieldDeserializer fieldDeserializer;
        public ParseContext ownerContext;
        public final String referenceValue;

        public ResolveTask(ParseContext context, String referenceValue) {
            this.context = context;
            this.referenceValue = referenceValue;
        }
    }

    static {
        int i = 0;
        Class<?>[] classes = new Class[]{Boolean.TYPE, Byte.TYPE, Short.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Boolean.class, Byte.class, Short.class, Integer.class, Long.class, Float.class, Double.class, BigInteger.class, BigDecimal.class, String.class};
        int length = classes.length;
        while (i < length) {
            primitiveClasses.add(classes[i]);
            i++;
        }
    }

    public String getDateFomartPattern() {
        return this.dateFormatPattern;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null) {
            this.dateFormat = new SimpleDateFormat(this.dateFormatPattern, this.lexer.getLocale());
            this.dateFormat.setTimeZone(this.lexer.getTimeZone());
        }
        return this.dateFormat;
    }

    public void setDateFormat(String dateFormat) {
        this.dateFormatPattern = dateFormat;
        this.dateFormat = null;
    }

    public void setDateFomrat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public DefaultJSONParser(String input) {
        this(input, ParserConfig.getGlobalInstance(), JSON.DEFAULT_PARSER_FEATURE);
    }

    public DefaultJSONParser(String input, ParserConfig config) {
        this((Object) input, new JSONScanner(input, JSON.DEFAULT_PARSER_FEATURE), config);
    }

    public DefaultJSONParser(String input, ParserConfig config, int features) {
        this((Object) input, new JSONScanner(input, features), config);
    }

    public DefaultJSONParser(char[] input, int length, ParserConfig config, int features) {
        this((Object) input, new JSONScanner(input, length, features), config);
    }

    public DefaultJSONParser(JSONLexer lexer) {
        this(lexer, ParserConfig.getGlobalInstance());
    }

    public DefaultJSONParser(JSONLexer lexer, ParserConfig config) {
        this(null, lexer, config);
    }

    public DefaultJSONParser(Object input, JSONLexer lexer, ParserConfig config) {
        this.dateFormatPattern = JSON.DEFFAULT_DATE_FORMAT;
        this.contextArrayIndex = 0;
        this.resolveStatus = 0;
        this.extraTypeProviders = null;
        this.extraProcessors = null;
        this.fieldTypeResolver = null;
        this.autoTypeAccept = null;
        this.lexer = lexer;
        this.input = input;
        this.config = config;
        this.symbolTable = config.symbolTable;
        int ch = lexer.getCurrent();
        if (ch == SecExceptionCode.SEC_ERROR_INIT_INCORRECT_DATA_FILE) {
            lexer.next();
            ((JSONLexerBase) lexer).token = 12;
        } else if (ch == 91) {
            lexer.next();
            ((JSONLexerBase) lexer).token = 14;
        } else {
            lexer.nextToken();
        }
    }

    public SymbolTable getSymbolTable() {
        return this.symbolTable;
    }

    public String getInput() {
        if (this.input instanceof char[]) {
            return new String((char[]) this.input);
        }
        return this.input.toString();
    }

    /* JADX WARNING: Missing block: B:36:?, code:
            r17.next();
            r17.resetStringPosition();
            r17.nextToken();
     */
    /* JADX WARNING: Missing block: B:37:0x0111, code:
            if (r28 != false) goto L_0x0143;
     */
    /* JADX WARNING: Missing block: B:39:0x0119, code:
            if (r37.context == null) goto L_0x014a;
     */
    /* JADX WARNING: Missing block: B:41:0x012b, code:
            if (r39 != r37.context.fieldName) goto L_0x014a;
     */
    /* JADX WARNING: Missing block: B:43:0x013d, code:
            if (r38 != r37.context.object) goto L_0x014a;
     */
    /* JADX WARNING: Missing block: B:44:0x013f, code:
            r5 = r37.context;
     */
    /* JADX WARNING: Missing block: B:45:0x0143, code:
            setContext(r5);
     */
    /* JADX WARNING: Missing block: B:47:?, code:
            r6 = setContext(r38, r39);
     */
    /* JADX WARNING: Missing block: B:48:0x014e, code:
            if (r5 != null) goto L_0x0151;
     */
    /* JADX WARNING: Missing block: B:49:0x0150, code:
            r5 = r6;
     */
    /* JADX WARNING: Missing block: B:114:0x0300, code:
            r17.nextToken(16);
     */
    /* JADX WARNING: Missing block: B:115:0x0313, code:
            if (r17.token() != 13) goto L_0x0372;
     */
    /* JADX WARNING: Missing block: B:116:0x0315, code:
            r17.nextToken(16);
     */
    /* JADX WARNING: Missing block: B:117:0x031e, code:
            r13 = null;
     */
    /* JADX WARNING: Missing block: B:119:?, code:
            r8 = r37.config.getDeserializer(r4);
     */
    /* JADX WARNING: Missing block: B:120:0x032f, code:
            if ((r8 instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) == false) goto L_0x0339;
     */
    /* JADX WARNING: Missing block: B:121:0x0331, code:
            r13 = ((com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) r8).createInstance(r37, r4);
     */
    /* JADX WARNING: Missing block: B:122:0x0339, code:
            if (r13 != null) goto L_0x0346;
     */
    /* JADX WARNING: Missing block: B:124:0x033f, code:
            if (r4 != java.lang.Cloneable.class) goto L_0x034f;
     */
    /* JADX WARNING: Missing block: B:125:0x0341, code:
            r13 = new java.util.HashMap();
     */
    /* JADX WARNING: Missing block: B:126:0x0346, code:
            setContext(r5);
     */
    /* JADX WARNING: Missing block: B:129:0x0359, code:
            if ("java.util.Collections$EmptyMap".equals(r32) == false) goto L_0x0360;
     */
    /* JADX WARNING: Missing block: B:130:0x035b, code:
            r13 = java.util.Collections.emptyMap();
     */
    /* JADX WARNING: Missing block: B:131:0x0360, code:
            r13 = r4.newInstance();
     */
    /* JADX WARNING: Missing block: B:136:0x0372, code:
            setResolveStatus(2);
     */
    /* JADX WARNING: Missing block: B:137:0x0381, code:
            if (r37.context == null) goto L_0x03a4;
     */
    /* JADX WARNING: Missing block: B:138:0x0383, code:
            if (r39 == null) goto L_0x03a4;
     */
    /* JADX WARNING: Missing block: B:140:0x038b, code:
            if ((r39 instanceof java.lang.Integer) != false) goto L_0x03a4;
     */
    /* JADX WARNING: Missing block: B:142:0x039f, code:
            if ((r37.context.fieldName instanceof java.lang.Integer) != false) goto L_0x03a4;
     */
    /* JADX WARNING: Missing block: B:143:0x03a1, code:
            popContext();
     */
    /* JADX WARNING: Missing block: B:145:0x03a8, code:
            if (r38.size() <= 0) goto L_0x03c8;
     */
    /* JADX WARNING: Missing block: B:146:0x03aa, code:
            r20 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r38, (java.lang.Class) r4, r37.config);
            parseObject((java.lang.Object) r20);
     */
    /* JADX WARNING: Missing block: B:147:0x03bf, code:
            setContext(r5);
     */
    /* JADX WARNING: Missing block: B:149:?, code:
            r38 = r37.config.getDeserializer(r4).deserialze(r37, r4, r39);
     */
    /* JADX WARNING: Missing block: B:150:0x03db, code:
            setContext(r5);
     */
    /* JADX WARNING: Missing block: B:157:0x03f9, code:
            r17.nextToken(4);
     */
    /* JADX WARNING: Missing block: B:158:0x040c, code:
            if (r17.token() != 4) goto L_0x0527;
     */
    /* JADX WARNING: Missing block: B:159:0x040e, code:
            r24 = r17.stringVal();
            r17.nextToken(13);
            r25 = null;
     */
    /* JADX WARNING: Missing block: B:160:0x0427, code:
            if ("@".equals(r24) == false) goto L_0x047a;
     */
    /* JADX WARNING: Missing block: B:162:0x042f, code:
            if (r37.context == null) goto L_0x0513;
     */
    /* JADX WARNING: Missing block: B:163:0x0431, code:
            r30 = r37.context;
            r31 = r30.object;
     */
    /* JADX WARNING: Missing block: B:164:0x0443, code:
            if ((r31 instanceof java.lang.Object[]) != false) goto L_0x044d;
     */
    /* JADX WARNING: Missing block: B:166:0x044b, code:
            if ((r31 instanceof java.util.Collection) == false) goto L_0x0465;
     */
    /* JADX WARNING: Missing block: B:167:0x044d, code:
            r25 = r31;
     */
    /* JADX WARNING: Missing block: B:168:0x044f, code:
            r38 = r25;
     */
    /* JADX WARNING: Missing block: B:170:0x045b, code:
            if (r17.token() == 13) goto L_0x0517;
     */
    /* JADX WARNING: Missing block: B:172:0x0464, code:
            throw new com.alibaba.fastjson.JSONException("syntax error");
     */
    /* JADX WARNING: Missing block: B:174:0x046b, code:
            if (r30.parent == null) goto L_0x044f;
     */
    /* JADX WARNING: Missing block: B:175:0x046d, code:
            r25 = r30.parent.object;
     */
    /* JADX WARNING: Missing block: B:177:0x0484, code:
            if ("..".equals(r24) == false) goto L_0x04af;
     */
    /* JADX WARNING: Missing block: B:179:0x048a, code:
            if (r5.object == null) goto L_0x0493;
     */
    /* JADX WARNING: Missing block: B:180:0x048c, code:
            r38 = r5.object;
     */
    /* JADX WARNING: Missing block: B:181:0x0493, code:
            addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(r5, r24));
            setResolveStatus(1);
            r38 = null;
     */
    /* JADX WARNING: Missing block: B:183:0x04b9, code:
            if (mtopsdk.common.util.SymbolExpUtil.SYMBOL_DOLLAR.equals(r24) == false) goto L_0x04fa;
     */
    /* JADX WARNING: Missing block: B:184:0x04bb, code:
            r27 = r5;
     */
    /* JADX WARNING: Missing block: B:186:0x04c3, code:
            if (r27.parent == null) goto L_0x04cc;
     */
    /* JADX WARNING: Missing block: B:187:0x04c5, code:
            r27 = r27.parent;
     */
    /* JADX WARNING: Missing block: B:189:0x04d2, code:
            if (r27.object == null) goto L_0x04de;
     */
    /* JADX WARNING: Missing block: B:190:0x04d4, code:
            r25 = r27.object;
     */
    /* JADX WARNING: Missing block: B:191:0x04da, code:
            r38 = r25;
     */
    /* JADX WARNING: Missing block: B:192:0x04de, code:
            addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(r27, r24));
            setResolveStatus(1);
     */
    /* JADX WARNING: Missing block: B:193:0x04fa, code:
            addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(r5, r24));
            setResolveStatus(1);
     */
    /* JADX WARNING: Missing block: B:194:0x0513, code:
            r38 = null;
     */
    /* JADX WARNING: Missing block: B:195:0x0517, code:
            r17.nextToken(16);
     */
    /* JADX WARNING: Missing block: B:196:0x0520, code:
            setContext(r5);
     */
    /* JADX WARNING: Missing block: B:199:0x0547, code:
            throw new com.alibaba.fastjson.JSONException("illegal ref, " + com.alibaba.fastjson.parser.JSONToken.name(r17.token()));
     */
    /* JADX WARNING: Missing block: B:312:0x07f9, code:
            if (r3 != '}') goto L_0x0814;
     */
    /* JADX WARNING: Missing block: B:313:0x07fb, code:
            r17.next();
            r17.resetStringPosition();
            r17.nextToken();
            setContext(r33, r16);
     */
    /* JADX WARNING: Missing block: B:314:0x080d, code:
            setContext(r5);
     */
    /* JADX WARNING: Missing block: B:317:0x083e, code:
            throw new com.alibaba.fastjson.JSONException("syntax error, position at " + r17.pos() + ", name " + r16);
     */
    /* JADX WARNING: Missing block: B:347:?, code:
            return r38;
     */
    /* JADX WARNING: Missing block: B:348:?, code:
            return r13;
     */
    /* JADX WARNING: Missing block: B:349:?, code:
            return r20;
     */
    /* JADX WARNING: Missing block: B:350:?, code:
            return r38;
     */
    /* JADX WARNING: Missing block: B:351:?, code:
            return r38;
     */
    /* JADX WARNING: Missing block: B:355:?, code:
            return r38;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final Object parseObject(Map object, Object fieldName) {
        JSONLexer lexer = this.lexer;
        if (lexer.token() == 8) {
            lexer.nextToken();
            return null;
        } else if (lexer.token() == 13) {
            lexer.nextToken();
            return object;
        } else if (lexer.token() == 12 || lexer.token() == 16) {
            Map map;
            ParseContext context = this.context;
            if (object instanceof JSONObject) {
                map = ((JSONObject) object).getInnerMap();
            } else {
                map = object;
            }
            boolean setContextFlag = false;
            while (true) {
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
                boolean isObjectKey = false;
                if (ch == '\"') {
                    key = lexer.scanSymbol(this.symbolTable, '\"');
                    lexer.skipWhitespace();
                    if (lexer.getCurrent() != ':') {
                        throw new JSONException("expect ':' at " + lexer.pos() + ", name " + key);
                    }
                } else if (ch == '}') {
                    break;
                } else if (ch == '\'') {
                    if (lexer.isEnabled(Feature.AllowSingleQuotes)) {
                        key = lexer.scanSymbol(this.symbolTable, '\'');
                        lexer.skipWhitespace();
                        if (lexer.getCurrent() != ':') {
                            throw new JSONException("expect ':' at " + lexer.pos());
                        }
                    }
                    throw new JSONException("syntax error");
                } else if (ch == 26) {
                    throw new JSONException("syntax error");
                } else if (ch == ',') {
                    throw new JSONException("syntax error");
                } else if ((ch >= '0' && ch <= '9') || ch == '-') {
                    lexer.resetStringPosition();
                    lexer.scanNumber();
                    try {
                        if (lexer.token() == 2) {
                            key = lexer.integerValue();
                        } else {
                            key = lexer.decimalValue(true);
                        }
                        if (lexer.getCurrent() != ':') {
                            throw new JSONException("parse number key error" + lexer.info());
                        }
                    } catch (Exception e) {
                        throw new JSONException("create instance error", e);
                    } catch (NumberFormatException e2) {
                        throw new JSONException("parse number key error" + lexer.info());
                    } catch (Throwable th) {
                        setContext(context);
                    }
                } else if (ch == '{' || ch == '[') {
                    lexer.nextToken();
                    key = parse();
                    isObjectKey = true;
                } else if (lexer.isEnabled(Feature.AllowUnQuotedFieldNames)) {
                    key = lexer.scanSymbolUnQuoted(this.symbolTable);
                    lexer.skipWhitespace();
                    ch = lexer.getCurrent();
                    if (ch != ':') {
                        throw new JSONException("expect ':' at " + lexer.pos() + ", actual " + ch);
                    }
                } else {
                    throw new JSONException("syntax error");
                }
                if (!isObjectKey) {
                    lexer.next();
                    lexer.skipWhitespace();
                }
                ch = lexer.getCurrent();
                lexer.resetStringPosition();
                if (key != JSON.DEFAULT_TYPE_KEY || lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                    if (key == "$ref" && context != null && !lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                        break;
                    }
                    if (!setContextFlag) {
                        if (this.context != null && fieldName == this.context.fieldName && object == this.context.object) {
                            context = this.context;
                        } else {
                            ParseContext contextR = setContext(object, fieldName);
                            if (context == null) {
                                context = contextR;
                            }
                            setContextFlag = true;
                        }
                    }
                    if (object.getClass() == JSONObject.class && key == null) {
                        key = "null";
                    }
                    String value;
                    if (ch == '\"') {
                        lexer.scanString();
                        String strValue = lexer.stringVal();
                        value = strValue;
                        if (lexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                            JSONScanner iso8601Lexer = new JSONScanner(strValue);
                            if (iso8601Lexer.scanISO8601DateIfMatch()) {
                                value = iso8601Lexer.getCalendar().getTime();
                            }
                            iso8601Lexer.close();
                        }
                        map.put(key, value);
                    } else if ((ch >= '0' && ch <= '9') || ch == '-') {
                        lexer.scanNumber();
                        if (lexer.token() == 2) {
                            value = lexer.integerValue();
                        } else {
                            value = lexer.decimalValue(lexer.isEnabled(Feature.UseBigDecimal));
                        }
                        map.put(key, value);
                    } else if (ch == '[') {
                        Object value2;
                        lexer.nextToken();
                        JSONArray list = new JSONArray();
                        if (fieldName == null || fieldName.getClass() != Integer.class) {
                        }
                        if (fieldName == null) {
                            setContext(context);
                        }
                        parseArray((Collection) list, key);
                        if (lexer.isEnabled(Feature.UseObjectArray)) {
                            value2 = list.toArray();
                        } else {
                            JSONArray value22 = list;
                        }
                        map.put(key, value22);
                        if (lexer.token() == 13) {
                            lexer.nextToken();
                            setContext(context);
                            return object;
                        } else if (lexer.token() != 16) {
                            throw new JSONException("syntax error");
                        }
                    } else if (ch == '{') {
                        lexer.nextToken();
                        boolean parentIsArray = fieldName != null && fieldName.getClass() == Integer.class;
                        Map input = new JSONObject(lexer.isEnabled(Feature.OrderedField));
                        ParseContext ctxLocal = null;
                        if (!parentIsArray) {
                            ctxLocal = setContext(context, input, key);
                        }
                        Map obj = null;
                        boolean objParsed = false;
                        if (this.fieldTypeResolver != null) {
                            Type fieldType = this.fieldTypeResolver.resolve(object, key != null ? key.toString() : null);
                            if (fieldType != null) {
                                obj = this.config.getDeserializer(fieldType).deserialze(this, fieldType, key);
                                objParsed = true;
                            }
                        }
                        if (!objParsed) {
                            obj = parseObject(input, key);
                        }
                        if (!(ctxLocal == null || input == obj)) {
                            ctxLocal.object = object;
                        }
                        checkMapResolve(object, key.toString());
                        map.put(key, obj);
                        if (parentIsArray) {
                            setContext(obj, key);
                        }
                        if (lexer.token() == 13) {
                            lexer.nextToken();
                            setContext(context);
                            setContext(context);
                            return object;
                        } else if (lexer.token() != 16) {
                            throw new JSONException("syntax error, " + lexer.tokenName());
                        } else if (parentIsArray) {
                            popContext();
                        } else {
                            setContext(context);
                        }
                    } else {
                        lexer.nextToken();
                        map.put(key, parse());
                        if (lexer.token() == 13) {
                            lexer.nextToken();
                            setContext(context);
                            return object;
                        } else if (lexer.token() != 16) {
                            throw new JSONException("syntax error, position at " + lexer.pos() + ", name " + key);
                        }
                    }
                    lexer.skipWhitespace();
                    ch = lexer.getCurrent();
                    if (ch != ',') {
                        break;
                    }
                    lexer.next();
                } else {
                    String typeName = lexer.scanSymbol(this.symbolTable, '\"');
                    Type clazz = this.config.checkAutoType(typeName, null);
                    if (clazz != null) {
                        break;
                    }
                    map.put(JSON.DEFAULT_TYPE_KEY, typeName);
                }
            }
        } else {
            throw new JSONException("syntax error, expect {, actual " + lexer.tokenName() + ", " + lexer.info());
        }
    }

    public ParserConfig getConfig() {
        return this.config;
    }

    public void setConfig(ParserConfig config) {
        this.config = config;
    }

    public <T> T parseObject(Class<T> clazz) {
        return parseObject((Type) clazz, null);
    }

    public <T> T parseObject(Type type) {
        return parseObject(type, null);
    }

    public <T> T parseObject(Type type, Object fieldName) {
        int token = this.lexer.token();
        if (token == 8) {
            this.lexer.nextToken();
            return null;
        }
        if (token == 4) {
            if (type == byte[].class) {
                T bytes = this.lexer.bytesValue();
                this.lexer.nextToken();
                return bytes;
            } else if (type == char[].class) {
                String strVal = this.lexer.stringVal();
                this.lexer.nextToken();
                return strVal.toCharArray();
            }
        }
        try {
            return this.config.getDeserializer(type).deserialze(this, type, fieldName);
        } catch (JSONException e) {
            throw e;
        } catch (Throwable e2) {
            JSONException jSONException = new JSONException(e2.getMessage(), e2);
        }
    }

    public <T> List<T> parseArray(Class<T> clazz) {
        Collection array = new ArrayList();
        parseArray((Class) clazz, array);
        return array;
    }

    public void parseArray(Class<?> clazz, Collection array) {
        parseArray((Type) clazz, array);
    }

    public void parseArray(Type type, Collection array) {
        parseArray(type, array, null);
    }

    public void parseArray(Type type, Collection array, Object fieldName) {
        int token = this.lexer.token();
        if (token == 21 || token == 22) {
            this.lexer.nextToken();
            token = this.lexer.token();
        }
        if (token != 14) {
            throw new JSONException("exepct '[', but " + JSONToken.name(token) + ", " + this.lexer.info());
        }
        ObjectDeserializer deserializer;
        if (Integer.TYPE == type) {
            deserializer = IntegerCodec.instance;
            this.lexer.nextToken(2);
        } else if (String.class == type) {
            deserializer = StringCodec.instance;
            this.lexer.nextToken(4);
        } else {
            deserializer = this.config.getDeserializer(type);
            this.lexer.nextToken(deserializer.getFastMatchToken());
        }
        ParseContext context = this.context;
        setContext(array, fieldName);
        int i = 0;
        while (true) {
            try {
                if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (this.lexer.token() == 16) {
                        this.lexer.nextToken();
                    }
                }
                if (this.lexer.token() == 15) {
                    break;
                }
                if (Integer.TYPE == type) {
                    array.add(IntegerCodec.instance.deserialze(this, null, null));
                } else if (String.class == type) {
                    String value;
                    if (this.lexer.token() == 4) {
                        value = this.lexer.stringVal();
                        this.lexer.nextToken(16);
                    } else {
                        Object obj = parse();
                        if (obj == null) {
                            value = null;
                        } else {
                            value = obj.toString();
                        }
                    }
                    array.add(value);
                } else {
                    Object obj2;
                    if (this.lexer.token() == 8) {
                        this.lexer.nextToken();
                        obj2 = null;
                    } else {
                        obj2 = deserializer.deserialze(this, type, Integer.valueOf(i));
                    }
                    array.add(obj2);
                    checkListResolve(array);
                }
                if (this.lexer.token() == 16) {
                    this.lexer.nextToken(deserializer.getFastMatchToken());
                }
                i++;
            } finally {
                setContext(context);
            }
        }
        this.lexer.nextToken(16);
    }

    public Object[] parseArray(Type[] types) {
        if (this.lexer.token() == 8) {
            this.lexer.nextToken(16);
            return null;
        } else if (this.lexer.token() != 14) {
            throw new JSONException("syntax error : " + this.lexer.tokenName());
        } else {
            Object[] list = new Object[types.length];
            if (types.length == 0) {
                this.lexer.nextToken(15);
                if (this.lexer.token() != 15) {
                    throw new JSONException("syntax error");
                }
                this.lexer.nextToken(16);
                return new Object[0];
            }
            this.lexer.nextToken(2);
            int i = 0;
            while (i < types.length) {
                Object value;
                if (this.lexer.token() == 8) {
                    value = null;
                    this.lexer.nextToken(16);
                } else {
                    Type type = types[i];
                    if (type == Integer.TYPE || type == Integer.class) {
                        if (this.lexer.token() == 2) {
                            value = Integer.valueOf(this.lexer.intValue());
                            this.lexer.nextToken(16);
                        } else {
                            value = TypeUtils.cast(parse(), type, this.config);
                        }
                    } else if (type != String.class) {
                        boolean isArray = false;
                        Type componentType = null;
                        if (i == types.length - 1 && (type instanceof Class)) {
                            Class<?> clazz = (Class) type;
                            isArray = clazz.isArray();
                            componentType = clazz.getComponentType();
                        }
                        if (!isArray || this.lexer.token() == 14) {
                            value = this.config.getDeserializer(type).deserialze(this, type, null);
                        } else {
                            Object varList = new ArrayList();
                            ObjectDeserializer derializer = this.config.getDeserializer(componentType);
                            int fastMatch = derializer.getFastMatchToken();
                            if (this.lexer.token() != 15) {
                                while (true) {
                                    varList.add(derializer.deserialze(this, type, null));
                                    if (this.lexer.token() != 16) {
                                        break;
                                    }
                                    this.lexer.nextToken(fastMatch);
                                }
                                if (this.lexer.token() != 15) {
                                    throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                                }
                            }
                            value = TypeUtils.cast(varList, type, this.config);
                        }
                    } else if (this.lexer.token() == 4) {
                        value = this.lexer.stringVal();
                        this.lexer.nextToken(16);
                    } else {
                        value = TypeUtils.cast(parse(), type, this.config);
                    }
                }
                list[i] = value;
                if (this.lexer.token() == 15) {
                    break;
                } else if (this.lexer.token() != 16) {
                    throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                } else {
                    if (i == types.length - 1) {
                        this.lexer.nextToken(15);
                    } else {
                        this.lexer.nextToken(2);
                    }
                    i++;
                }
            }
            if (this.lexer.token() != 15) {
                throw new JSONException("syntax error");
            }
            this.lexer.nextToken(16);
            return list;
        }
    }

    public void parseObject(Object object) {
        Type clazz = object.getClass();
        JavaBeanDeserializer beanDeser = null;
        ObjectDeserializer deserizer = this.config.getDeserializer(clazz);
        if (deserizer instanceof JavaBeanDeserializer) {
            beanDeser = (JavaBeanDeserializer) deserizer;
        }
        if (this.lexer.token() == 12 || this.lexer.token() == 16) {
            while (true) {
                String key = this.lexer.scanSymbol(this.symbolTable);
                if (key == null) {
                    if (this.lexer.token() == 13) {
                        this.lexer.nextToken(16);
                        return;
                    } else if (this.lexer.token() == 16 && this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    }
                }
                FieldDeserializer fieldDeser = null;
                if (beanDeser != null) {
                    fieldDeser = beanDeser.getFieldDeserializer(key);
                }
                if (fieldDeser != null) {
                    Object fieldValue;
                    Class<?> fieldClass = fieldDeser.fieldInfo.fieldClass;
                    Type fieldType = fieldDeser.fieldInfo.fieldType;
                    if (fieldClass == Integer.TYPE) {
                        this.lexer.nextTokenWithColon(2);
                        fieldValue = IntegerCodec.instance.deserialze(this, fieldType, null);
                    } else if (fieldClass == String.class) {
                        this.lexer.nextTokenWithColon(4);
                        fieldValue = StringCodec.deserialze(this);
                    } else if (fieldClass == Long.TYPE) {
                        this.lexer.nextTokenWithColon(2);
                        fieldValue = LongCodec.instance.deserialze(this, fieldType, null);
                    } else {
                        ObjectDeserializer fieldValueDeserializer = this.config.getDeserializer(fieldClass, fieldType);
                        this.lexer.nextTokenWithColon(fieldValueDeserializer.getFastMatchToken());
                        fieldValue = fieldValueDeserializer.deserialze(this, fieldType, null);
                    }
                    fieldDeser.setValue(object, fieldValue);
                    if (this.lexer.token() != 16 && this.lexer.token() == 13) {
                        this.lexer.nextToken(16);
                        return;
                    }
                } else if (this.lexer.isEnabled(Feature.IgnoreNotMatch)) {
                    this.lexer.nextTokenWithColon();
                    parse();
                    if (this.lexer.token() == 13) {
                        this.lexer.nextToken();
                        return;
                    }
                } else {
                    throw new JSONException("setter not found, class " + clazz.getName() + ", property " + key);
                }
            }
        }
        throw new JSONException("syntax error, expect {, actual " + this.lexer.tokenName());
    }

    public Object parseArrayWithType(Type collectionType) {
        if (this.lexer.token() == 8) {
            this.lexer.nextToken();
            return null;
        }
        Type[] actualTypes = ((ParameterizedType) collectionType).getActualTypeArguments();
        if (actualTypes.length != 1) {
            throw new JSONException("not support type " + collectionType);
        }
        Type actualTypeArgument = actualTypes[0];
        Collection array;
        if (actualTypeArgument instanceof Class) {
            array = new ArrayList();
            parseArray((Class) actualTypeArgument, array);
            return array;
        } else if (actualTypeArgument instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) actualTypeArgument;
            Type upperBoundType = wildcardType.getUpperBounds()[0];
            if (!Object.class.equals(upperBoundType)) {
                array = new ArrayList();
                parseArray((Class) upperBoundType, array);
                return array;
            } else if (wildcardType.getLowerBounds().length == 0) {
                return parse();
            } else {
                throw new JSONException("not support type : " + collectionType);
            }
        } else {
            if (actualTypeArgument instanceof TypeVariable) {
                TypeVariable<?> typeVariable = (TypeVariable) actualTypeArgument;
                Type[] bounds = typeVariable.getBounds();
                if (bounds.length != 1) {
                    throw new JSONException("not support : " + typeVariable);
                }
                Type boundType = bounds[0];
                if (boundType instanceof Class) {
                    array = new ArrayList();
                    parseArray((Class) boundType, array);
                    return array;
                }
            }
            if (actualTypeArgument instanceof ParameterizedType) {
                Type parameterizedType = (ParameterizedType) actualTypeArgument;
                array = new ArrayList();
                parseArray(parameterizedType, array);
                return array;
            }
            throw new JSONException("TODO : " + collectionType);
        }
    }

    public void acceptType(String typeName) {
        JSONLexer lexer = this.lexer;
        lexer.nextTokenWithColon();
        if (lexer.token() != 4) {
            throw new JSONException("type not match error");
        } else if (typeName.equals(lexer.stringVal())) {
            lexer.nextToken();
            if (lexer.token() == 16) {
                lexer.nextToken();
            }
        } else {
            throw new JSONException("type not match error");
        }
    }

    public int getResolveStatus() {
        return this.resolveStatus;
    }

    public void setResolveStatus(int resolveStatus) {
        this.resolveStatus = resolveStatus;
    }

    public Object getObject(String path) {
        for (int i = 0; i < this.contextArrayIndex; i++) {
            if (path.equals(this.contextArray[i].toString())) {
                return this.contextArray[i].object;
            }
        }
        return null;
    }

    public void checkListResolve(Collection array) {
        if (this.resolveStatus != 1) {
            return;
        }
        ResolveTask task;
        if (array instanceof List) {
            int index = array.size() - 1;
            List list = (List) array;
            task = getLastResolveTask();
            task.fieldDeserializer = new ResolveFieldDeserializer(this, list, index);
            task.ownerContext = this.context;
            setResolveStatus(0);
            return;
        }
        task = getLastResolveTask();
        task.fieldDeserializer = new ResolveFieldDeserializer(array);
        task.ownerContext = this.context;
        setResolveStatus(0);
    }

    public void checkMapResolve(Map object, Object fieldName) {
        if (this.resolveStatus == 1) {
            ResolveFieldDeserializer fieldResolver = new ResolveFieldDeserializer(object, fieldName);
            ResolveTask task = getLastResolveTask();
            task.fieldDeserializer = fieldResolver;
            task.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    public Object parseObject(Map object) {
        return parseObject(object, null);
    }

    public JSONObject parseObject() {
        return (JSONObject) parseObject(new JSONObject(this.lexer.isEnabled(Feature.OrderedField)));
    }

    public final void parseArray(Collection array) {
        parseArray(array, null);
    }

    /* JADX WARNING: Missing block: B:23:0x0084, code:
            r13.add(r7);
            checkListResolve(r13);
     */
    /* JADX WARNING: Missing block: B:24:0x008e, code:
            if (r4.token() != 16) goto L_0x0094;
     */
    /* JADX WARNING: Missing block: B:25:0x0090, code:
            r4.nextToken(4);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void parseArray(Collection array, Object fieldName) {
        JSONLexer lexer = this.lexer;
        if (lexer.token() == 21 || lexer.token() == 22) {
            lexer.nextToken();
        }
        if (lexer.token() != 14) {
            throw new JSONException("syntax error, expect [, actual " + JSONToken.name(lexer.token()) + ", pos " + lexer.pos() + ", fieldName " + fieldName);
        }
        lexer.nextToken(4);
        ParseContext context = this.context;
        setContext(array, fieldName);
        int i = 0;
        while (true) {
            try {
                if (lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (lexer.token() == 16) {
                        lexer.nextToken();
                    }
                }
                Object value;
                switch (lexer.token()) {
                    case 2:
                        value = lexer.integerValue();
                        lexer.nextToken(16);
                        break;
                    case 3:
                        if (lexer.isEnabled(Feature.UseBigDecimal)) {
                            value = lexer.decimalValue(true);
                        } else {
                            value = lexer.decimalValue(false);
                        }
                        lexer.nextToken(16);
                        break;
                    case 4:
                        String stringLiteral = lexer.stringVal();
                        lexer.nextToken(16);
                        String value2;
                        if (!lexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                            value2 = stringLiteral;
                            break;
                        }
                        JSONScanner iso8601Lexer = new JSONScanner(stringLiteral);
                        if (iso8601Lexer.scanISO8601DateIfMatch()) {
                            value2 = iso8601Lexer.getCalendar().getTime();
                        } else {
                            value2 = stringLiteral;
                        }
                        iso8601Lexer.close();
                        break;
                    case 6:
                        value2 = Boolean.TRUE;
                        lexer.nextToken(16);
                        break;
                    case 7:
                        value2 = Boolean.FALSE;
                        lexer.nextToken(16);
                        break;
                    case 8:
                        value2 = null;
                        lexer.nextToken(4);
                        break;
                    case 12:
                        value2 = parseObject(new JSONObject(lexer.isEnabled(Feature.OrderedField)), Integer.valueOf(i));
                        break;
                    case 14:
                        Collection items = new JSONArray();
                        parseArray(items, Integer.valueOf(i));
                        if (!lexer.isEnabled(Feature.UseObjectArray)) {
                            Collection value22 = items;
                            break;
                        } else {
                            value22 = items.toArray();
                            break;
                        }
                    case 15:
                        lexer.nextToken(16);
                        break;
                    case 20:
                        throw new JSONException("unclosed jsonArray");
                    case 23:
                        value22 = null;
                        lexer.nextToken(4);
                        break;
                    default:
                        value22 = parse();
                        break;
                }
                i++;
            } finally {
                setContext(context);
            }
        }
    }

    public ParseContext getContext() {
        return this.context;
    }

    public List<ResolveTask> getResolveTaskList() {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        return this.resolveTaskList;
    }

    public void addResolveTask(ResolveTask task) {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        this.resolveTaskList.add(task);
    }

    public ResolveTask getLastResolveTask() {
        return (ResolveTask) this.resolveTaskList.get(this.resolveTaskList.size() - 1);
    }

    public List<ExtraProcessor> getExtraProcessors() {
        if (this.extraProcessors == null) {
            this.extraProcessors = new ArrayList(2);
        }
        return this.extraProcessors;
    }

    public List<ExtraTypeProvider> getExtraTypeProviders() {
        if (this.extraTypeProviders == null) {
            this.extraTypeProviders = new ArrayList(2);
        }
        return this.extraTypeProviders;
    }

    public FieldTypeResolver getFieldTypeResolver() {
        return this.fieldTypeResolver;
    }

    public void setFieldTypeResolver(FieldTypeResolver fieldTypeResolver) {
        this.fieldTypeResolver = fieldTypeResolver;
    }

    public void setContext(ParseContext context) {
        if (!this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            this.context = context;
        }
    }

    public void popContext() {
        if (!this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            this.context = this.context.parent;
            if (this.contextArrayIndex > 0) {
                this.contextArrayIndex--;
                this.contextArray[this.contextArrayIndex] = null;
            }
        }
    }

    public ParseContext setContext(Object object, Object fieldName) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        return setContext(this.context, object, fieldName);
    }

    public ParseContext setContext(ParseContext parent, Object object, Object fieldName) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        this.context = new ParseContext(parent, object, fieldName);
        addContext(this.context);
        return this.context;
    }

    private void addContext(ParseContext context) {
        int i = this.contextArrayIndex;
        this.contextArrayIndex = i + 1;
        if (this.contextArray == null) {
            this.contextArray = new ParseContext[8];
        } else if (i >= this.contextArray.length) {
            ParseContext[] newArray = new ParseContext[((this.contextArray.length * 3) / 2)];
            System.arraycopy(this.contextArray, 0, newArray, 0, this.contextArray.length);
            this.contextArray = newArray;
        }
        this.contextArray[i] = context;
    }

    public Object parse() {
        return parse(null);
    }

    public Object parseKey() {
        if (this.lexer.token() != 18) {
            return parse(null);
        }
        String value = this.lexer.stringVal();
        this.lexer.nextToken(16);
        return value;
    }

    public Object parse(Object fieldName) {
        JSONLexer lexer = this.lexer;
        switch (lexer.token()) {
            case 2:
                Number intValue = lexer.integerValue();
                lexer.nextToken();
                return intValue;
            case 3:
                Number value = lexer.decimalValue(lexer.isEnabled(Feature.UseBigDecimal));
                lexer.nextToken();
                return value;
            case 4:
                String stringLiteral = lexer.stringVal();
                lexer.nextToken(16);
                if (lexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                    JSONScanner iso8601Lexer = new JSONScanner(stringLiteral);
                    try {
                        if (iso8601Lexer.scanISO8601DateIfMatch()) {
                            HashSet<Object> set = iso8601Lexer.getCalendar().getTime();
                            return set;
                        }
                        iso8601Lexer.close();
                    } finally {
                        iso8601Lexer.close();
                    }
                }
                return stringLiteral;
            case 6:
                lexer.nextToken();
                return Boolean.TRUE;
            case 7:
                lexer.nextToken();
                return Boolean.FALSE;
            case 8:
                lexer.nextToken();
                return null;
            case 9:
                lexer.nextToken(18);
                if (lexer.token() != 18) {
                    throw new JSONException("syntax error");
                }
                lexer.nextToken(10);
                accept(10);
                long time = lexer.integerValue().longValue();
                accept(2);
                accept(11);
                return new Date(time);
            case 12:
                return parseObject(new JSONObject(lexer.isEnabled(Feature.OrderedField)), fieldName);
            case 14:
                Collection array = new JSONArray();
                parseArray(array, fieldName);
                return lexer.isEnabled(Feature.UseObjectArray) ? array.toArray() : array;
            case 20:
                if (lexer.isBlankInput()) {
                    return null;
                }
                throw new JSONException("unterminated json string, " + lexer.info());
            case 21:
                lexer.nextToken();
                Collection set2 = new HashSet();
                parseArray(set2, fieldName);
                return set2;
            case 22:
                lexer.nextToken();
                Collection treeSet = new TreeSet();
                parseArray(treeSet, fieldName);
                return treeSet;
            case 23:
                lexer.nextToken();
                return null;
            case 26:
                byte[] bytes = lexer.bytesValue();
                lexer.nextToken();
                return bytes;
            default:
                throw new JSONException("syntax error, " + lexer.info());
        }
    }

    public void config(Feature feature, boolean state) {
        this.lexer.config(feature, state);
    }

    public boolean isEnabled(Feature feature) {
        return this.lexer.isEnabled(feature);
    }

    public JSONLexer getLexer() {
        return this.lexer;
    }

    public final void accept(int token) {
        JSONLexer lexer = this.lexer;
        if (lexer.token() == token) {
            lexer.nextToken();
            return;
        }
        throw new JSONException("syntax error, expect " + JSONToken.name(token) + ", actual " + JSONToken.name(lexer.token()));
    }

    public final void accept(int token, int nextExpectToken) {
        JSONLexer lexer = this.lexer;
        if (lexer.token() == token) {
            lexer.nextToken(nextExpectToken);
        } else {
            throwException(token);
        }
    }

    public void throwException(int token) {
        throw new JSONException("syntax error, expect " + JSONToken.name(token) + ", actual " + JSONToken.name(this.lexer.token()));
    }

    public void close() {
        JSONLexer lexer = this.lexer;
        try {
            if (!lexer.isEnabled(Feature.AutoCloseSource) || lexer.token() == 20) {
                lexer.close();
                return;
            }
            throw new JSONException("not close json text, token : " + JSONToken.name(lexer.token()));
        } catch (Throwable th) {
            lexer.close();
        }
    }

    public Object resolveReference(String ref) {
        if (this.contextArray == null) {
            return null;
        }
        int i = 0;
        while (i < this.contextArray.length && i < this.contextArrayIndex) {
            ParseContext context = this.contextArray[i];
            if (context.toString().equals(ref)) {
                return context.object;
            }
            i++;
        }
        return null;
    }

    public void handleResovleTask(Object value) {
        if (this.resolveTaskList != null) {
            int size = this.resolveTaskList.size();
            for (int i = 0; i < size; i++) {
                Object refValue;
                ResolveTask task = (ResolveTask) this.resolveTaskList.get(i);
                String ref = task.referenceValue;
                Object object = null;
                if (task.ownerContext != null) {
                    object = task.ownerContext.object;
                }
                if (ref.startsWith(SymbolExpUtil.SYMBOL_DOLLAR)) {
                    refValue = getObject(ref);
                    if (refValue == null) {
                        try {
                            refValue = JSONPath.eval(value, ref);
                        } catch (JSONPathException e) {
                        }
                    }
                } else {
                    refValue = task.context.object;
                }
                FieldDeserializer fieldDeser = task.fieldDeserializer;
                if (fieldDeser != null) {
                    if (!(refValue == null || refValue.getClass() != JSONObject.class || fieldDeser.fieldInfo == null || Map.class.isAssignableFrom(fieldDeser.fieldInfo.fieldClass))) {
                        refValue = JSONPath.eval(this.contextArray[0].object, ref);
                    }
                    fieldDeser.setValue(object, refValue);
                }
            }
        }
    }

    public void parseExtra(Object object, String key) {
        Object value;
        this.lexer.nextTokenWithColon();
        Type type = null;
        if (this.extraTypeProviders != null) {
            for (ExtraTypeProvider extraProvider : this.extraTypeProviders) {
                type = extraProvider.getExtraType(object, key);
            }
        }
        if (type == null) {
            value = parse();
        } else {
            value = parseObject(type);
        }
        if (object instanceof ExtraProcessable) {
            ((ExtraProcessable) object).processExtra(key, value);
            return;
        }
        if (this.extraProcessors != null) {
            for (ExtraProcessor process : this.extraProcessors) {
                process.processExtra(object, key, value);
            }
        }
        if (this.resolveStatus == 1) {
            this.resolveStatus = 0;
        }
    }

    /* JADX WARNING: Missing block: B:59:0x0287, code:
            r18.lexer.nextToken(16);
     */
    /* JADX WARNING: Missing block: B:61:?, code:
            r6 = r18.config.getDeserializer(r4);
            r18.lexer.nextToken(16);
            setResolveStatus(2);
     */
    /* JADX WARNING: Missing block: B:62:0x02ae, code:
            if (r5 == null) goto L_0x02b9;
     */
    /* JADX WARNING: Missing block: B:64:0x02b4, code:
            if ((r20 instanceof java.lang.Integer) != false) goto L_0x02b9;
     */
    /* JADX WARNING: Missing block: B:65:0x02b6, code:
            popContext();
     */
    /* JADX WARNING: Missing block: B:66:0x02b9, code:
            r15 = (java.util.Map) r6.deserialze(r18, r4, r20);
     */
    /* JADX WARNING: Missing block: B:67:0x02c3, code:
            setContext(r5);
     */
    /* JADX WARNING: Missing block: B:103:?, code:
            return r15;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public Object parse(PropertyProcessable object, Object fieldName) {
        if (this.lexer.token() != 12) {
            String msg = "syntax error, expect {, actual " + this.lexer.tokenName();
            if (fieldName instanceof String) {
                msg = (msg + ", fieldName ") + fieldName;
            }
            msg = (msg + ", ") + this.lexer.info();
            Collection array = new JSONArray();
            parseArray(array, fieldName);
            if (array.size() == 1) {
                Object first = array.get(0);
                if (first instanceof JSONObject) {
                    return (JSONObject) first;
                }
            }
            throw new JSONException(msg);
        }
        ParseContext context = this.context;
        int i = 0;
        while (true) {
            try {
                Object key;
                this.lexer.skipWhitespace();
                char ch = this.lexer.getCurrent();
                if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (ch == ',') {
                        this.lexer.next();
                        this.lexer.skipWhitespace();
                        ch = this.lexer.getCurrent();
                    }
                }
                if (ch == '\"') {
                    key = this.lexer.scanSymbol(this.symbolTable, '\"');
                    this.lexer.skipWhitespace();
                    if (this.lexer.getCurrent() != ':') {
                        throw new JSONException("expect ':' at " + this.lexer.pos());
                    }
                } else if (ch == '}') {
                    this.lexer.next();
                    this.lexer.resetStringPosition();
                    this.lexer.nextToken(16);
                    setContext(context);
                    return object;
                } else if (ch == '\'') {
                    if (this.lexer.isEnabled(Feature.AllowSingleQuotes)) {
                        key = this.lexer.scanSymbol(this.symbolTable, '\'');
                        this.lexer.skipWhitespace();
                        if (this.lexer.getCurrent() != ':') {
                            throw new JSONException("expect ':' at " + this.lexer.pos());
                        }
                    }
                    throw new JSONException("syntax error");
                } else if (this.lexer.isEnabled(Feature.AllowUnQuotedFieldNames)) {
                    key = this.lexer.scanSymbolUnQuoted(this.symbolTable);
                    this.lexer.skipWhitespace();
                    ch = this.lexer.getCurrent();
                    if (ch != ':') {
                        throw new JSONException("expect ':' at " + this.lexer.pos() + ", actual " + ch);
                    }
                } else {
                    throw new JSONException("syntax error");
                }
                this.lexer.next();
                this.lexer.skipWhitespace();
                ch = this.lexer.getCurrent();
                this.lexer.resetStringPosition();
                if (key == JSON.DEFAULT_TYPE_KEY && !this.lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                    Type clazz = this.config.checkAutoType(this.lexer.scanSymbol(this.symbolTable, '\"'), null);
                    if (!Map.class.isAssignableFrom(clazz)) {
                        break;
                    }
                    this.lexer.nextToken(16);
                    if (this.lexer.token() == 13) {
                        break;
                    }
                } else {
                    Object value;
                    this.lexer.nextToken();
                    if (i != 0) {
                        setContext(context);
                    }
                    Type valueType = object.getType(key);
                    if (this.lexer.token() == 8) {
                        value = null;
                        this.lexer.nextToken();
                    } else {
                        value = parseObject(valueType, key);
                    }
                    object.apply(key, value);
                    setContext(context, value, key);
                    setContext(context);
                    int tok = this.lexer.token();
                    if (tok == 20 || tok == 15) {
                        setContext(context);
                    } else if (tok == 13) {
                        this.lexer.nextToken();
                        setContext(context);
                        return object;
                    }
                }
                i++;
            } finally {
                setContext(context);
            }
        }
        setContext(context);
        return object;
        return object;
    }
}
