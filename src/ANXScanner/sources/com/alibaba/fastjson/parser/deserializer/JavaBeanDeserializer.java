package com.alibaba.fastjson.parser.deserializer;

import com.ali.auth.third.login.LoginConstants;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class JavaBeanDeserializer implements ObjectDeserializer {
    private final Map<String, FieldDeserializer> alterNameFieldDeserializers;
    public final JavaBeanInfo beanInfo;
    protected final Class<?> clazz;
    private ConcurrentMap<String, Object> extraFieldDeserializers;
    private final FieldDeserializer[] fieldDeserializers;
    private transient long[] hashArray;
    private transient short[] hashArrayMapping;
    private transient long[] smartMatchHashArray;
    private transient short[] smartMatchHashArrayMapping;
    protected final FieldDeserializer[] sortedFieldDeserializers;

    public JavaBeanDeserializer(ParserConfig config, Class<?> clazz) {
        this(config, clazz, clazz);
    }

    public JavaBeanDeserializer(ParserConfig config, Class<?> clazz, Type type) {
        this(config, JavaBeanInfo.build(clazz, type, config.propertyNamingStrategy, config.fieldBased, config.compatibleWithJavaBean));
    }

    public JavaBeanDeserializer(ParserConfig config, JavaBeanInfo beanInfo) {
        int i;
        this.clazz = beanInfo.clazz;
        this.beanInfo = beanInfo;
        Map<String, FieldDeserializer> alterNameFieldDeserializers = null;
        this.sortedFieldDeserializers = new FieldDeserializer[beanInfo.sortedFields.length];
        int size = beanInfo.sortedFields.length;
        for (i = 0; i < size; i++) {
            FieldInfo fieldInfo = beanInfo.sortedFields[i];
            FieldDeserializer fieldDeserializer = config.createFieldDeserializer(config, beanInfo, fieldInfo);
            this.sortedFieldDeserializers[i] = fieldDeserializer;
            for (String name : fieldInfo.alternateNames) {
                if (alterNameFieldDeserializers == null) {
                    alterNameFieldDeserializers = new HashMap();
                }
                alterNameFieldDeserializers.put(name, fieldDeserializer);
            }
        }
        this.alterNameFieldDeserializers = alterNameFieldDeserializers;
        this.fieldDeserializers = new FieldDeserializer[beanInfo.fields.length];
        size = beanInfo.fields.length;
        for (i = 0; i < size; i++) {
            this.fieldDeserializers[i] = getFieldDeserializer(beanInfo.fields[i].name);
        }
    }

    public FieldDeserializer getFieldDeserializer(String key) {
        return getFieldDeserializer(key, null);
    }

    public FieldDeserializer getFieldDeserializer(String key, int[] setFlags) {
        if (key == null) {
            return null;
        }
        int low = 0;
        int high = this.sortedFieldDeserializers.length - 1;
        while (low <= high) {
            int mid = (low + high) >>> 1;
            int cmp = this.sortedFieldDeserializers[mid].fieldInfo.name.compareTo(key);
            if (cmp < 0) {
                low = mid + 1;
            } else if (cmp > 0) {
                high = mid - 1;
            } else if (isSetFlag(mid, setFlags)) {
                return null;
            } else {
                return this.sortedFieldDeserializers[mid];
            }
        }
        if (this.alterNameFieldDeserializers != null) {
            return (FieldDeserializer) this.alterNameFieldDeserializers.get(key);
        }
        return null;
    }

    public FieldDeserializer getFieldDeserializer(long hash) {
        int i;
        if (this.hashArray == null) {
            long[] hashArray = new long[this.sortedFieldDeserializers.length];
            for (i = 0; i < this.sortedFieldDeserializers.length; i++) {
                hashArray[i] = TypeUtils.fnv1a_64(this.sortedFieldDeserializers[i].fieldInfo.name);
            }
            Arrays.sort(hashArray);
            this.hashArray = hashArray;
        }
        int pos = Arrays.binarySearch(this.hashArray, hash);
        if (pos < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            short[] mapping = new short[this.hashArray.length];
            Arrays.fill(mapping, (short) -1);
            for (i = 0; i < this.sortedFieldDeserializers.length; i++) {
                int p = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(this.sortedFieldDeserializers[i].fieldInfo.name));
                if (p >= 0) {
                    mapping[p] = (short) i;
                }
            }
            this.hashArrayMapping = mapping;
        }
        int setterIndex = this.hashArrayMapping[pos];
        if (setterIndex != -1) {
            return this.sortedFieldDeserializers[setterIndex];
        }
        return null;
    }

    static boolean isSetFlag(int i, int[] setFlags) {
        if (setFlags == null) {
            return false;
        }
        int flagIndex = i / 32;
        int bitIndex = i % 32;
        if (flagIndex >= setFlags.length || (setFlags[flagIndex] & (1 << bitIndex)) == 0) {
            return false;
        }
        return true;
    }

    public Object createInstance(DefaultJSONParser parser, Type type) {
        if ((type instanceof Class) && this.clazz.isInterface()) {
            Class<?> clazz = (Class) type;
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{clazz}, new JSONObject());
        } else if (this.beanInfo.defaultConstructor == null && this.beanInfo.factoryMethod == null) {
            return null;
        } else {
            if (this.beanInfo.factoryMethod != null && this.beanInfo.defaultConstructorParameterSize > 0) {
                return null;
            }
            try {
                Object object;
                Constructor<?> constructor = this.beanInfo.defaultConstructor;
                if (this.beanInfo.defaultConstructorParameterSize != 0) {
                    ParseContext context = parser.getContext();
                    if (context == null || context.object == null) {
                        throw new JSONException("can't create non-static inner class instance.");
                    } else if (type instanceof Class) {
                        String typeName = ((Class) type).getName();
                        String parentClassName = typeName.substring(0, typeName.lastIndexOf(36));
                        Object ctxObj = context.object;
                        String parentName = ctxObj.getClass().getName();
                        Object param = null;
                        if (parentName.equals(parentClassName)) {
                            param = ctxObj;
                        } else {
                            ParseContext parentContext = context.parent;
                            if (!(parentContext == null || parentContext.object == null || ((!"java.util.ArrayList".equals(parentName) && !"java.util.List".equals(parentName) && !"java.util.Collection".equals(parentName) && !"java.util.Map".equals(parentName) && !"java.util.HashMap".equals(parentName)) || !parentContext.object.getClass().getName().equals(parentClassName)))) {
                                param = parentContext.object;
                            }
                        }
                        if (param == null) {
                            throw new JSONException("can't create non-static inner class instance.");
                        }
                        object = constructor.newInstance(new Object[]{param});
                    } else {
                        throw new JSONException("can't create non-static inner class instance.");
                    }
                } else if (constructor != null) {
                    object = constructor.newInstance(new Object[0]);
                } else {
                    object = this.beanInfo.factoryMethod.invoke(null, new Object[0]);
                }
                if (parser != null && parser.lexer.isEnabled(Feature.InitStringFieldAsEmpty)) {
                    for (FieldInfo fieldInfo : this.beanInfo.fields) {
                        if (fieldInfo.fieldClass == String.class) {
                            try {
                                fieldInfo.set(object, "");
                            } catch (Exception e) {
                                throw new JSONException("create instance error, class " + this.clazz.getName(), e);
                            }
                        }
                    }
                }
                return object;
            } catch (JSONException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new JSONException("create instance error, class " + this.clazz.getName(), e3);
            }
        }
    }

    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        return deserialze(parser, type, fieldName, 0);
    }

    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName, int features) {
        return deserialze(parser, type, fieldName, null, features, null);
    }

    public <T> T deserialzeArrayMapping(DefaultJSONParser parser, Type type, Object fieldName, Object object) {
        JSONLexer lexer = parser.lexer;
        if (lexer.token() != 14) {
            throw new JSONException("error");
        }
        object = createInstance(parser, type);
        int i = 0;
        int size = this.sortedFieldDeserializers.length;
        while (i < size) {
            char seperator = i == size + -1 ? ']' : ',';
            FieldDeserializer fieldDeser = this.sortedFieldDeserializers[i];
            Class<?> fieldClass = fieldDeser.fieldInfo.fieldClass;
            if (fieldClass == Integer.TYPE) {
                fieldDeser.setValue(object, lexer.scanInt(seperator));
            } else if (fieldClass == String.class) {
                fieldDeser.setValue(object, lexer.scanString(seperator));
            } else if (fieldClass == Long.TYPE) {
                fieldDeser.setValue(object, lexer.scanLong(seperator));
            } else if (fieldClass.isEnum()) {
                Object value;
                char ch = lexer.getCurrent();
                if (ch == '\"' || ch == 'n') {
                    value = lexer.scanEnum(fieldClass, parser.getSymbolTable(), seperator);
                } else if (ch < '0' || ch > '9') {
                    value = scanEnum(lexer, seperator);
                } else {
                    value = ((EnumDeserializer) ((DefaultFieldDeserializer) fieldDeser).getFieldValueDeserilizer(parser.getConfig())).valueOf(lexer.scanInt(seperator));
                }
                fieldDeser.setValue(object, value);
            } else if (fieldClass == Boolean.TYPE) {
                fieldDeser.setValue(object, lexer.scanBoolean(seperator));
            } else if (fieldClass == Float.TYPE) {
                fieldDeser.setValue(object, Float.valueOf(lexer.scanFloat(seperator)));
            } else if (fieldClass == Double.TYPE) {
                fieldDeser.setValue(object, Double.valueOf(lexer.scanDouble(seperator)));
            } else if (fieldClass == Date.class && lexer.getCurrent() == '1') {
                fieldDeser.setValue(object, new Date(lexer.scanLong(seperator)));
            } else {
                lexer.nextToken(14);
                fieldDeser.setValue(object, parser.parseObject(fieldDeser.fieldInfo.fieldType, (Object) fieldDeser.fieldInfo.name));
                if (lexer.token() == 15) {
                    break;
                }
                check(lexer, seperator == ']' ? 15 : 16);
            }
            i++;
        }
        lexer.nextToken(16);
        return object;
    }

    protected void check(JSONLexer lexer, int token) {
        if (lexer.token() != token) {
            throw new JSONException("syntax error");
        }
    }

    protected Enum<?> scanEnum(JSONLexer lexer, char seperator) {
        throw new JSONException("illegal enum. " + lexer.info());
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Exception block dominator not found, method:com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object, int, int[]):T, dom blocks: [B:15:0x0049, B:416:0x0835, B:431:0x089f, B:445:0x08f0]
        	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:89)
        	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:51)
        	at java.lang.Iterable.forEach(Unknown Source)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:51)
        	at jadx.core.ProcessClass.process(ProcessClass.java:37)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x008c A:{Catch:{ Exception -> 0x0909, Exception -> 0x08c9, Exception -> 0x0871, all -> 0x0189 }} */
    protected <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r62, java.lang.reflect.Type r63, java.lang.Object r64, java.lang.Object r65, int r66, int[] r67) {
        /*
        r61 = this;
        r4 = com.alibaba.fastjson.JSON.class;
        r0 = r63;
        if (r0 == r4) goto L_0x000c;
    L_0x0006:
        r4 = com.alibaba.fastjson.JSONObject.class;
        r0 = r63;
        if (r0 != r4) goto L_0x0011;
    L_0x000c:
        r20 = r62.parse();
    L_0x0010:
        return r20;
    L_0x0011:
        r0 = r62;
        r0 = r0.lexer;
        r38 = r0;
        r38 = (com.alibaba.fastjson.parser.JSONLexerBase) r38;
        r16 = r62.getConfig();
        r54 = r38.token();
        r4 = 8;
        r0 = r54;
        if (r0 != r4) goto L_0x0031;
    L_0x0027:
        r4 = 16;
        r0 = r38;
        r0.nextToken(r4);
        r20 = 0;
        goto L_0x0010;
    L_0x0031:
        r17 = r62.getContext();
        if (r65 == 0) goto L_0x003f;
    L_0x0037:
        if (r17 == 0) goto L_0x003f;
    L_0x0039:
        r0 = r17;
        r0 = r0.parent;
        r17 = r0;
    L_0x003f:
        r15 = 0;
        r9 = 0;
        r4 = 13;
        r0 = r54;
        if (r0 != r4) goto L_0x0064;
    L_0x0047:
        r4 = 16;
        r0 = r38;	 Catch:{ all -> 0x0189 }
        r0.nextToken(r4);	 Catch:{ all -> 0x0189 }
        if (r65 != 0) goto L_0x0054;	 Catch:{ all -> 0x0189 }
    L_0x0050:
        r65 = r61.createInstance(r62, r63);	 Catch:{ all -> 0x0189 }
    L_0x0054:
        if (r15 == 0) goto L_0x005a;
    L_0x0056:
        r0 = r65;
        r15.object = r0;
    L_0x005a:
        r0 = r62;
        r1 = r17;
        r0.setContext(r1);
        r20 = r65;
        goto L_0x0010;
    L_0x0064:
        r4 = 14;
        r0 = r54;
        if (r0 != r4) goto L_0x00a2;
    L_0x006a:
        r4 = com.alibaba.fastjson.parser.Feature.SupportArrayToBean;	 Catch:{ all -> 0x0189 }
        r0 = r4.mask;	 Catch:{ all -> 0x0189 }
        r39 = r0;	 Catch:{ all -> 0x0189 }
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r4 = r0.beanInfo;	 Catch:{ all -> 0x0189 }
        r4 = r4.parserFeatures;	 Catch:{ all -> 0x0189 }
        r4 = r4 & r39;	 Catch:{ all -> 0x0189 }
        if (r4 != 0) goto L_0x0088;	 Catch:{ all -> 0x0189 }
    L_0x007a:
        r4 = com.alibaba.fastjson.parser.Feature.SupportArrayToBean;	 Catch:{ all -> 0x0189 }
        r0 = r38;	 Catch:{ all -> 0x0189 }
        r4 = r0.isEnabled(r4);	 Catch:{ all -> 0x0189 }
        if (r4 != 0) goto L_0x0088;	 Catch:{ all -> 0x0189 }
    L_0x0084:
        r4 = r66 & r39;	 Catch:{ all -> 0x0189 }
        if (r4 == 0) goto L_0x009f;	 Catch:{ all -> 0x0189 }
    L_0x0088:
        r36 = 1;	 Catch:{ all -> 0x0189 }
    L_0x008a:
        if (r36 == 0) goto L_0x00a2;	 Catch:{ all -> 0x0189 }
    L_0x008c:
        r20 = r61.deserialzeArrayMapping(r62, r63, r64, r65);	 Catch:{ all -> 0x0189 }
        if (r15 == 0) goto L_0x0096;
    L_0x0092:
        r0 = r65;
        r15.object = r0;
    L_0x0096:
        r0 = r62;
        r1 = r17;
        r0.setContext(r1);
        goto L_0x0010;
    L_0x009f:
        r36 = 0;
        goto L_0x008a;
    L_0x00a2:
        r4 = 12;
        r0 = r54;
        if (r0 == r4) goto L_0x0198;
    L_0x00a8:
        r4 = 16;
        r0 = r54;
        if (r0 == r4) goto L_0x0198;
    L_0x00ae:
        r4 = r38.isBlankInput();	 Catch:{ all -> 0x0189 }
        if (r4 == 0) goto L_0x00c5;
    L_0x00b4:
        r20 = 0;
        if (r15 == 0) goto L_0x00bc;
    L_0x00b8:
        r0 = r65;
        r15.object = r0;
    L_0x00bc:
        r0 = r62;
        r1 = r17;
        r0.setContext(r1);
        goto L_0x0010;
    L_0x00c5:
        r4 = 4;
        r0 = r54;
        if (r0 != r4) goto L_0x011d;
    L_0x00ca:
        r53 = r38.stringVal();	 Catch:{ all -> 0x0189 }
        r4 = r53.length();	 Catch:{ all -> 0x0189 }
        if (r4 != 0) goto L_0x00e8;	 Catch:{ all -> 0x0189 }
    L_0x00d4:
        r38.nextToken();	 Catch:{ all -> 0x0189 }
        r20 = 0;
        if (r15 == 0) goto L_0x00df;
    L_0x00db:
        r0 = r65;
        r15.object = r0;
    L_0x00df:
        r0 = r62;
        r1 = r17;
        r0.setContext(r1);
        goto L_0x0010;
    L_0x00e8:
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r4 = r0.beanInfo;	 Catch:{ all -> 0x0189 }
        r4 = r4.jsonType;	 Catch:{ all -> 0x0189 }
        r5 = r4.seeAlso();	 Catch:{ all -> 0x0189 }
        r7 = r5.length;	 Catch:{ all -> 0x0189 }
        r4 = 0;	 Catch:{ all -> 0x0189 }
    L_0x00f4:
        if (r4 >= r7) goto L_0x011d;	 Catch:{ all -> 0x0189 }
    L_0x00f6:
        r51 = r5[r4];	 Catch:{ all -> 0x0189 }
        r8 = java.lang.Enum.class;	 Catch:{ all -> 0x0189 }
        r0 = r51;	 Catch:{ all -> 0x0189 }
        r8 = r8.isAssignableFrom(r0);	 Catch:{ all -> 0x0189 }
        if (r8 == 0) goto L_0x011a;
    L_0x0102:
        r0 = r51;	 Catch:{ IllegalArgumentException -> 0x0119 }
        r1 = r53;	 Catch:{ IllegalArgumentException -> 0x0119 }
        r20 = java.lang.Enum.valueOf(r0, r1);	 Catch:{ IllegalArgumentException -> 0x0119 }
        if (r15 == 0) goto L_0x0110;
    L_0x010c:
        r0 = r65;
        r15.object = r0;
    L_0x0110:
        r0 = r62;
        r1 = r17;
        r0.setContext(r1);
        goto L_0x0010;
    L_0x0119:
        r8 = move-exception;
    L_0x011a:
        r4 = r4 + 1;
        goto L_0x00f4;
    L_0x011d:
        r4 = 14;
        r0 = r54;
        if (r0 != r4) goto L_0x0142;
    L_0x0123:
        r4 = r38.getCurrent();	 Catch:{ all -> 0x0189 }
        r5 = 93;	 Catch:{ all -> 0x0189 }
        if (r4 != r5) goto L_0x0142;	 Catch:{ all -> 0x0189 }
    L_0x012b:
        r38.next();	 Catch:{ all -> 0x0189 }
        r38.nextToken();	 Catch:{ all -> 0x0189 }
        r20 = 0;
        if (r15 == 0) goto L_0x0139;
    L_0x0135:
        r0 = r65;
        r15.object = r0;
    L_0x0139:
        r0 = r62;
        r1 = r17;
        r0.setContext(r1);
        goto L_0x0010;
    L_0x0142:
        r4 = new java.lang.StringBuffer;	 Catch:{ all -> 0x0189 }
        r4.<init>();	 Catch:{ all -> 0x0189 }
        r5 = "syntax error, expect {, actual ";	 Catch:{ all -> 0x0189 }
        r4 = r4.append(r5);	 Catch:{ all -> 0x0189 }
        r5 = r38.tokenName();	 Catch:{ all -> 0x0189 }
        r4 = r4.append(r5);	 Catch:{ all -> 0x0189 }
        r5 = ", pos ";	 Catch:{ all -> 0x0189 }
        r4 = r4.append(r5);	 Catch:{ all -> 0x0189 }
        r5 = r38.pos();	 Catch:{ all -> 0x0189 }
        r12 = r4.append(r5);	 Catch:{ all -> 0x0189 }
        r0 = r64;	 Catch:{ all -> 0x0189 }
        r4 = r0 instanceof java.lang.String;	 Catch:{ all -> 0x0189 }
        if (r4 == 0) goto L_0x0174;	 Catch:{ all -> 0x0189 }
    L_0x0169:
        r4 = ", fieldName ";	 Catch:{ all -> 0x0189 }
        r4 = r12.append(r4);	 Catch:{ all -> 0x0189 }
        r0 = r64;	 Catch:{ all -> 0x0189 }
        r4.append(r0);	 Catch:{ all -> 0x0189 }
    L_0x0174:
        r4 = ", fastjson-version ";	 Catch:{ all -> 0x0189 }
        r4 = r12.append(r4);	 Catch:{ all -> 0x0189 }
        r5 = "1.2.37";	 Catch:{ all -> 0x0189 }
        r4.append(r5);	 Catch:{ all -> 0x0189 }
        r4 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x0189 }
        r5 = r12.toString();	 Catch:{ all -> 0x0189 }
        r4.<init>(r5);	 Catch:{ all -> 0x0189 }
        throw r4;	 Catch:{ all -> 0x0189 }
    L_0x0189:
        r4 = move-exception;
    L_0x018a:
        if (r15 == 0) goto L_0x0190;
    L_0x018c:
        r0 = r65;
        r15.object = r0;
    L_0x0190:
        r0 = r62;
        r1 = r17;
        r0.setContext(r1);
        throw r4;
    L_0x0198:
        r0 = r62;	 Catch:{ all -> 0x0189 }
        r4 = r0.resolveStatus;	 Catch:{ all -> 0x0189 }
        r5 = 2;	 Catch:{ all -> 0x0189 }
        if (r4 != r5) goto L_0x01a4;	 Catch:{ all -> 0x0189 }
    L_0x019f:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r0 = r62;	 Catch:{ all -> 0x0189 }
        r0.resolveStatus = r4;	 Catch:{ all -> 0x0189 }
    L_0x01a4:
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r4 = r0.beanInfo;	 Catch:{ all -> 0x0189 }
        r0 = r4.typeKey;	 Catch:{ all -> 0x0189 }
        r55 = r0;	 Catch:{ all -> 0x0189 }
        r27 = 0;
        r33 = r9;
    L_0x01b0:
        r6 = 0;
        r25 = 0;
        r28 = 0;
        r24 = 0;
        r23 = 0;
        r0 = r61;	 Catch:{ all -> 0x045e }
        r4 = r0.sortedFieldDeserializers;	 Catch:{ all -> 0x045e }
        r4 = r4.length;	 Catch:{ all -> 0x045e }
        r0 = r27;	 Catch:{ all -> 0x045e }
        if (r0 >= r4) goto L_0x01d8;	 Catch:{ all -> 0x045e }
    L_0x01c2:
        r0 = r61;	 Catch:{ all -> 0x045e }
        r4 = r0.sortedFieldDeserializers;	 Catch:{ all -> 0x045e }
        r25 = r4[r27];	 Catch:{ all -> 0x045e }
        r0 = r25;	 Catch:{ all -> 0x045e }
        r0 = r0.fieldInfo;	 Catch:{ all -> 0x045e }
        r28 = r0;	 Catch:{ all -> 0x045e }
        r0 = r28;	 Catch:{ all -> 0x045e }
        r0 = r0.fieldClass;	 Catch:{ all -> 0x045e }
        r24 = r0;	 Catch:{ all -> 0x045e }
        r23 = r28.getAnnotation();	 Catch:{ all -> 0x045e }
    L_0x01d8:
        r41 = 0;	 Catch:{ all -> 0x045e }
        r60 = 0;	 Catch:{ all -> 0x045e }
        r31 = 0;	 Catch:{ all -> 0x045e }
        if (r25 == 0) goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x01e0:
        r0 = r28;	 Catch:{ all -> 0x045e }
        r0 = r0.name_chars;	 Catch:{ all -> 0x045e }
        r42 = r0;	 Catch:{ all -> 0x045e }
        r4 = java.lang.Integer.TYPE;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 == r4) goto L_0x01f2;	 Catch:{ all -> 0x045e }
    L_0x01ec:
        r4 = java.lang.Integer.class;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 != r4) goto L_0x025f;	 Catch:{ all -> 0x045e }
    L_0x01f2:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r1 = r42;	 Catch:{ all -> 0x045e }
        r4 = r0.scanFieldInt(r1);	 Catch:{ all -> 0x045e }
        r31 = java.lang.Integer.valueOf(r4);	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        if (r4 <= 0) goto L_0x0250;	 Catch:{ all -> 0x045e }
    L_0x0204:
        r41 = 1;	 Catch:{ all -> 0x045e }
        r60 = 1;	 Catch:{ all -> 0x045e }
    L_0x0208:
        if (r41 != 0) goto L_0x05ed;	 Catch:{ all -> 0x045e }
    L_0x020a:
        r0 = r62;	 Catch:{ all -> 0x045e }
        r4 = r0.symbolTable;	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r6 = r0.scanSymbol(r4);	 Catch:{ all -> 0x045e }
        if (r6 != 0) goto L_0x041e;	 Catch:{ all -> 0x045e }
    L_0x0216:
        r54 = r38.token();	 Catch:{ all -> 0x045e }
        r4 = 13;	 Catch:{ all -> 0x045e }
        r0 = r54;	 Catch:{ all -> 0x045e }
        if (r0 != r4) goto L_0x040a;	 Catch:{ all -> 0x045e }
    L_0x0220:
        r4 = 16;	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r0.nextToken(r4);	 Catch:{ all -> 0x045e }
        r9 = r33;
    L_0x0229:
        if (r65 != 0) goto L_0x08b0;
    L_0x022b:
        if (r9 != 0) goto L_0x06f6;
    L_0x022d:
        r65 = r61.createInstance(r62, r63);	 Catch:{ all -> 0x0189 }
        if (r15 != 0) goto L_0x023f;	 Catch:{ all -> 0x0189 }
    L_0x0233:
        r0 = r62;	 Catch:{ all -> 0x0189 }
        r1 = r17;	 Catch:{ all -> 0x0189 }
        r2 = r65;	 Catch:{ all -> 0x0189 }
        r3 = r64;	 Catch:{ all -> 0x0189 }
        r15 = r0.setContext(r1, r2, r3);	 Catch:{ all -> 0x0189 }
    L_0x023f:
        if (r15 == 0) goto L_0x0245;
    L_0x0241:
        r0 = r65;
        r15.object = r0;
    L_0x0245:
        r0 = r62;
        r1 = r17;
        r0.setContext(r1);
        r20 = r65;
        goto L_0x0010;
    L_0x0250:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        r5 = -2;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x0257:
        r9 = r33;	 Catch:{ all -> 0x045e }
    L_0x0259:
        r27 = r27 + 1;	 Catch:{ all -> 0x045e }
        r33 = r9;	 Catch:{ all -> 0x045e }
        goto L_0x01b0;	 Catch:{ all -> 0x045e }
    L_0x025f:
        r4 = java.lang.Long.TYPE;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 == r4) goto L_0x026b;	 Catch:{ all -> 0x045e }
    L_0x0265:
        r4 = java.lang.Long.class;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 != r4) goto L_0x028c;	 Catch:{ all -> 0x045e }
    L_0x026b:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r1 = r42;	 Catch:{ all -> 0x045e }
        r4 = r0.scanFieldLong(r1);	 Catch:{ all -> 0x045e }
        r31 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        if (r4 <= 0) goto L_0x0282;	 Catch:{ all -> 0x045e }
    L_0x027d:
        r41 = 1;	 Catch:{ all -> 0x045e }
        r60 = 1;	 Catch:{ all -> 0x045e }
        goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x0282:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        r5 = -2;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x0289:
        r9 = r33;	 Catch:{ all -> 0x045e }
        goto L_0x0259;	 Catch:{ all -> 0x045e }
    L_0x028c:
        r4 = java.lang.String.class;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 != r4) goto L_0x02b0;	 Catch:{ all -> 0x045e }
    L_0x0292:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r1 = r42;	 Catch:{ all -> 0x045e }
        r31 = r0.scanFieldString(r1);	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        if (r4 <= 0) goto L_0x02a6;	 Catch:{ all -> 0x045e }
    L_0x02a0:
        r41 = 1;	 Catch:{ all -> 0x045e }
        r60 = 1;	 Catch:{ all -> 0x045e }
        goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x02a6:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        r5 = -2;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x02ad:
        r9 = r33;	 Catch:{ all -> 0x045e }
        goto L_0x0259;	 Catch:{ all -> 0x045e }
    L_0x02b0:
        r4 = java.lang.Boolean.TYPE;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 == r4) goto L_0x02bc;	 Catch:{ all -> 0x045e }
    L_0x02b6:
        r4 = java.lang.Boolean.class;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 != r4) goto L_0x02df;	 Catch:{ all -> 0x045e }
    L_0x02bc:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r1 = r42;	 Catch:{ all -> 0x045e }
        r4 = r0.scanFieldBoolean(r1);	 Catch:{ all -> 0x045e }
        r31 = java.lang.Boolean.valueOf(r4);	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        if (r4 <= 0) goto L_0x02d4;	 Catch:{ all -> 0x045e }
    L_0x02ce:
        r41 = 1;	 Catch:{ all -> 0x045e }
        r60 = 1;	 Catch:{ all -> 0x045e }
        goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x02d4:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        r5 = -2;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x02db:
        r9 = r33;	 Catch:{ all -> 0x045e }
        goto L_0x0259;	 Catch:{ all -> 0x045e }
    L_0x02df:
        r4 = java.lang.Float.TYPE;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 == r4) goto L_0x02eb;	 Catch:{ all -> 0x045e }
    L_0x02e5:
        r4 = java.lang.Float.class;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 != r4) goto L_0x030e;	 Catch:{ all -> 0x045e }
    L_0x02eb:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r1 = r42;	 Catch:{ all -> 0x045e }
        r4 = r0.scanFieldFloat(r1);	 Catch:{ all -> 0x045e }
        r31 = java.lang.Float.valueOf(r4);	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        if (r4 <= 0) goto L_0x0303;	 Catch:{ all -> 0x045e }
    L_0x02fd:
        r41 = 1;	 Catch:{ all -> 0x045e }
        r60 = 1;	 Catch:{ all -> 0x045e }
        goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x0303:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        r5 = -2;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x030a:
        r9 = r33;	 Catch:{ all -> 0x045e }
        goto L_0x0259;	 Catch:{ all -> 0x045e }
    L_0x030e:
        r4 = java.lang.Double.TYPE;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 == r4) goto L_0x031a;	 Catch:{ all -> 0x045e }
    L_0x0314:
        r4 = java.lang.Double.class;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 != r4) goto L_0x033d;	 Catch:{ all -> 0x045e }
    L_0x031a:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r1 = r42;	 Catch:{ all -> 0x045e }
        r4 = r0.scanFieldDouble(r1);	 Catch:{ all -> 0x045e }
        r31 = java.lang.Double.valueOf(r4);	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        if (r4 <= 0) goto L_0x0332;	 Catch:{ all -> 0x045e }
    L_0x032c:
        r41 = 1;	 Catch:{ all -> 0x045e }
        r60 = 1;	 Catch:{ all -> 0x045e }
        goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x0332:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        r5 = -2;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x0339:
        r9 = r33;	 Catch:{ all -> 0x045e }
        goto L_0x0259;	 Catch:{ all -> 0x045e }
    L_0x033d:
        r4 = r24.isEnum();	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x038d;	 Catch:{ all -> 0x045e }
    L_0x0343:
        r4 = r62.getConfig();	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        r4 = r4.getDeserializer(r0);	 Catch:{ all -> 0x045e }
        r4 = r4 instanceof com.alibaba.fastjson.parser.deserializer.EnumDeserializer;	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x038d;	 Catch:{ all -> 0x045e }
    L_0x0351:
        if (r23 == 0) goto L_0x035b;	 Catch:{ all -> 0x045e }
    L_0x0353:
        r4 = r23.deserializeUsing();	 Catch:{ all -> 0x045e }
        r5 = java.lang.Void.class;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x038d;	 Catch:{ all -> 0x045e }
    L_0x035b:
        r0 = r25;	 Catch:{ all -> 0x045e }
        r4 = r0 instanceof com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer;	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x0361:
        r0 = r25;	 Catch:{ all -> 0x045e }
        r0 = (com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer) r0;	 Catch:{ all -> 0x045e }
        r4 = r0;	 Catch:{ all -> 0x045e }
        r0 = r4.fieldValueDeserilizer;	 Catch:{ all -> 0x045e }
        r32 = r0;	 Catch:{ all -> 0x045e }
        r0 = r61;	 Catch:{ all -> 0x045e }
        r1 = r38;	 Catch:{ all -> 0x045e }
        r2 = r42;	 Catch:{ all -> 0x045e }
        r3 = r32;	 Catch:{ all -> 0x045e }
        r31 = r0.scanEnum(r1, r2, r3);	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        if (r4 <= 0) goto L_0x0382;	 Catch:{ all -> 0x045e }
    L_0x037c:
        r41 = 1;	 Catch:{ all -> 0x045e }
        r60 = 1;	 Catch:{ all -> 0x045e }
        goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x0382:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        r5 = -2;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x0389:
        r9 = r33;	 Catch:{ all -> 0x045e }
        goto L_0x0259;	 Catch:{ all -> 0x045e }
    L_0x038d:
        r4 = int[].class;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 != r4) goto L_0x03b2;	 Catch:{ all -> 0x045e }
    L_0x0393:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r1 = r42;	 Catch:{ all -> 0x045e }
        r31 = r0.scanFieldIntArray(r1);	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        if (r4 <= 0) goto L_0x03a7;	 Catch:{ all -> 0x045e }
    L_0x03a1:
        r41 = 1;	 Catch:{ all -> 0x045e }
        r60 = 1;	 Catch:{ all -> 0x045e }
        goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x03a7:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        r5 = -2;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x03ae:
        r9 = r33;	 Catch:{ all -> 0x045e }
        goto L_0x0259;	 Catch:{ all -> 0x045e }
    L_0x03b2:
        r4 = float[].class;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 != r4) goto L_0x03d7;	 Catch:{ all -> 0x045e }
    L_0x03b8:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r1 = r42;	 Catch:{ all -> 0x045e }
        r31 = r0.scanFieldFloatArray(r1);	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        if (r4 <= 0) goto L_0x03cc;	 Catch:{ all -> 0x045e }
    L_0x03c6:
        r41 = 1;	 Catch:{ all -> 0x045e }
        r60 = 1;	 Catch:{ all -> 0x045e }
        goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x03cc:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        r5 = -2;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x03d3:
        r9 = r33;	 Catch:{ all -> 0x045e }
        goto L_0x0259;	 Catch:{ all -> 0x045e }
    L_0x03d7:
        r4 = float[][].class;	 Catch:{ all -> 0x045e }
        r0 = r24;	 Catch:{ all -> 0x045e }
        if (r0 != r4) goto L_0x03fc;	 Catch:{ all -> 0x045e }
    L_0x03dd:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r1 = r42;	 Catch:{ all -> 0x045e }
        r31 = r0.scanFieldFloatArray2(r1);	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        if (r4 <= 0) goto L_0x03f1;	 Catch:{ all -> 0x045e }
    L_0x03eb:
        r41 = 1;	 Catch:{ all -> 0x045e }
        r60 = 1;	 Catch:{ all -> 0x045e }
        goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x03f1:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.matchStat;	 Catch:{ all -> 0x045e }
        r5 = -2;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x03f8:
        r9 = r33;	 Catch:{ all -> 0x045e }
        goto L_0x0259;	 Catch:{ all -> 0x045e }
    L_0x03fc:
        r0 = r38;	 Catch:{ all -> 0x045e }
        r1 = r42;	 Catch:{ all -> 0x045e }
        r4 = r0.matchField(r1);	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x091c;	 Catch:{ all -> 0x045e }
    L_0x0406:
        r41 = 1;	 Catch:{ all -> 0x045e }
        goto L_0x0208;	 Catch:{ all -> 0x045e }
    L_0x040a:
        r4 = 16;	 Catch:{ all -> 0x045e }
        r0 = r54;	 Catch:{ all -> 0x045e }
        if (r0 != r4) goto L_0x041e;	 Catch:{ all -> 0x045e }
    L_0x0410:
        r4 = com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas;	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r4 = r0.isEnabled(r4);	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x041e;	 Catch:{ all -> 0x045e }
    L_0x041a:
        r9 = r33;	 Catch:{ all -> 0x045e }
        goto L_0x0259;	 Catch:{ all -> 0x045e }
    L_0x041e:
        r4 = "$ref";	 Catch:{ all -> 0x045e }
        if (r4 != r6) goto L_0x0532;	 Catch:{ all -> 0x045e }
    L_0x0422:
        if (r17 == 0) goto L_0x0532;	 Catch:{ all -> 0x045e }
    L_0x0424:
        r4 = 4;	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r0.nextTokenWithColon(r4);	 Catch:{ all -> 0x045e }
        r54 = r38.token();	 Catch:{ all -> 0x045e }
        r4 = 4;	 Catch:{ all -> 0x045e }
        r0 = r54;	 Catch:{ all -> 0x045e }
        if (r0 != r4) goto L_0x04f2;	 Catch:{ all -> 0x045e }
    L_0x0433:
        r48 = r38.stringVal();	 Catch:{ all -> 0x045e }
        r4 = "@";	 Catch:{ all -> 0x045e }
        r0 = r48;	 Catch:{ all -> 0x045e }
        r4 = r4.equals(r0);	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x0463;	 Catch:{ all -> 0x045e }
    L_0x0441:
        r0 = r17;	 Catch:{ all -> 0x045e }
        r0 = r0.object;	 Catch:{ all -> 0x045e }
        r65 = r0;	 Catch:{ all -> 0x045e }
    L_0x0447:
        r4 = 13;	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r0.nextToken(r4);	 Catch:{ all -> 0x045e }
        r4 = r38.token();	 Catch:{ all -> 0x045e }
        r5 = 13;	 Catch:{ all -> 0x045e }
        if (r4 == r5) goto L_0x050f;	 Catch:{ all -> 0x045e }
    L_0x0456:
        r4 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x045e }
        r5 = "illegal ref";	 Catch:{ all -> 0x045e }
        r4.<init>(r5);	 Catch:{ all -> 0x045e }
        throw r4;	 Catch:{ all -> 0x045e }
    L_0x045e:
        r4 = move-exception;	 Catch:{ all -> 0x045e }
        r9 = r33;	 Catch:{ all -> 0x045e }
        goto L_0x018a;	 Catch:{ all -> 0x045e }
    L_0x0463:
        r4 = "..";	 Catch:{ all -> 0x045e }
        r0 = r48;	 Catch:{ all -> 0x045e }
        r4 = r4.equals(r0);	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x0494;	 Catch:{ all -> 0x045e }
    L_0x046d:
        r0 = r17;	 Catch:{ all -> 0x045e }
        r0 = r0.parent;	 Catch:{ all -> 0x045e }
        r47 = r0;	 Catch:{ all -> 0x045e }
        r0 = r47;	 Catch:{ all -> 0x045e }
        r4 = r0.object;	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x0480;	 Catch:{ all -> 0x045e }
    L_0x0479:
        r0 = r47;	 Catch:{ all -> 0x045e }
        r0 = r0.object;	 Catch:{ all -> 0x045e }
        r65 = r0;	 Catch:{ all -> 0x045e }
        goto L_0x0447;	 Catch:{ all -> 0x045e }
    L_0x0480:
        r4 = new com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask;	 Catch:{ all -> 0x045e }
        r0 = r47;	 Catch:{ all -> 0x045e }
        r1 = r48;	 Catch:{ all -> 0x045e }
        r4.<init>(r0, r1);	 Catch:{ all -> 0x045e }
        r0 = r62;	 Catch:{ all -> 0x045e }
        r0.addResolveTask(r4);	 Catch:{ all -> 0x045e }
        r4 = 1;	 Catch:{ all -> 0x045e }
        r0 = r62;	 Catch:{ all -> 0x045e }
        r0.resolveStatus = r4;	 Catch:{ all -> 0x045e }
        goto L_0x0447;	 Catch:{ all -> 0x045e }
    L_0x0494:
        r4 = "$";	 Catch:{ all -> 0x045e }
        r0 = r48;	 Catch:{ all -> 0x045e }
        r4 = r4.equals(r0);	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x04cf;	 Catch:{ all -> 0x045e }
    L_0x049e:
        r50 = r17;	 Catch:{ all -> 0x045e }
    L_0x04a0:
        r0 = r50;	 Catch:{ all -> 0x045e }
        r4 = r0.parent;	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x04ad;	 Catch:{ all -> 0x045e }
    L_0x04a6:
        r0 = r50;	 Catch:{ all -> 0x045e }
        r0 = r0.parent;	 Catch:{ all -> 0x045e }
        r50 = r0;	 Catch:{ all -> 0x045e }
        goto L_0x04a0;	 Catch:{ all -> 0x045e }
    L_0x04ad:
        r0 = r50;	 Catch:{ all -> 0x045e }
        r4 = r0.object;	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x04ba;	 Catch:{ all -> 0x045e }
    L_0x04b3:
        r0 = r50;	 Catch:{ all -> 0x045e }
        r0 = r0.object;	 Catch:{ all -> 0x045e }
        r65 = r0;	 Catch:{ all -> 0x045e }
        goto L_0x0447;	 Catch:{ all -> 0x045e }
    L_0x04ba:
        r4 = new com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask;	 Catch:{ all -> 0x045e }
        r0 = r50;	 Catch:{ all -> 0x045e }
        r1 = r48;	 Catch:{ all -> 0x045e }
        r4.<init>(r0, r1);	 Catch:{ all -> 0x045e }
        r0 = r62;	 Catch:{ all -> 0x045e }
        r0.addResolveTask(r4);	 Catch:{ all -> 0x045e }
        r4 = 1;	 Catch:{ all -> 0x045e }
        r0 = r62;	 Catch:{ all -> 0x045e }
        r0.resolveStatus = r4;	 Catch:{ all -> 0x045e }
        goto L_0x0447;	 Catch:{ all -> 0x045e }
    L_0x04cf:
        r0 = r62;	 Catch:{ all -> 0x045e }
        r1 = r48;	 Catch:{ all -> 0x045e }
        r49 = r0.resolveReference(r1);	 Catch:{ all -> 0x045e }
        if (r49 == 0) goto L_0x04dd;	 Catch:{ all -> 0x045e }
    L_0x04d9:
        r65 = r49;	 Catch:{ all -> 0x045e }
        goto L_0x0447;	 Catch:{ all -> 0x045e }
    L_0x04dd:
        r4 = new com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask;	 Catch:{ all -> 0x045e }
        r0 = r17;	 Catch:{ all -> 0x045e }
        r1 = r48;	 Catch:{ all -> 0x045e }
        r4.<init>(r0, r1);	 Catch:{ all -> 0x045e }
        r0 = r62;	 Catch:{ all -> 0x045e }
        r0.addResolveTask(r4);	 Catch:{ all -> 0x045e }
        r4 = 1;	 Catch:{ all -> 0x045e }
        r0 = r62;	 Catch:{ all -> 0x045e }
        r0.resolveStatus = r4;	 Catch:{ all -> 0x045e }
        goto L_0x0447;	 Catch:{ all -> 0x045e }
    L_0x04f2:
        r4 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x045e }
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x045e }
        r5.<init>();	 Catch:{ all -> 0x045e }
        r7 = "illegal ref, ";	 Catch:{ all -> 0x045e }
        r5 = r5.append(r7);	 Catch:{ all -> 0x045e }
        r7 = com.alibaba.fastjson.parser.JSONToken.name(r54);	 Catch:{ all -> 0x045e }
        r5 = r5.append(r7);	 Catch:{ all -> 0x045e }
        r5 = r5.toString();	 Catch:{ all -> 0x045e }
        r4.<init>(r5);	 Catch:{ all -> 0x045e }
        throw r4;	 Catch:{ all -> 0x045e }
    L_0x050f:
        r4 = 16;	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r0.nextToken(r4);	 Catch:{ all -> 0x045e }
        r0 = r62;	 Catch:{ all -> 0x045e }
        r1 = r17;	 Catch:{ all -> 0x045e }
        r2 = r65;	 Catch:{ all -> 0x045e }
        r3 = r64;	 Catch:{ all -> 0x045e }
        r0.setContext(r1, r2, r3);	 Catch:{ all -> 0x045e }
        if (r15 == 0) goto L_0x0527;
    L_0x0523:
        r0 = r65;
        r15.object = r0;
    L_0x0527:
        r0 = r62;
        r1 = r17;
        r0.setContext(r1);
        r20 = r65;
        goto L_0x0010;
    L_0x0532:
        if (r55 == 0) goto L_0x053c;
    L_0x0534:
        r0 = r55;	 Catch:{ all -> 0x045e }
        r4 = r0.equals(r6);	 Catch:{ all -> 0x045e }
        if (r4 != 0) goto L_0x0540;	 Catch:{ all -> 0x045e }
    L_0x053c:
        r4 = com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY;	 Catch:{ all -> 0x045e }
        if (r4 != r6) goto L_0x05ed;	 Catch:{ all -> 0x045e }
    L_0x0540:
        r4 = 4;	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r0.nextTokenWithColon(r4);	 Catch:{ all -> 0x045e }
        r4 = r38.token();	 Catch:{ all -> 0x045e }
        r5 = 4;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x05e5;	 Catch:{ all -> 0x045e }
    L_0x054d:
        r57 = r38.stringVal();	 Catch:{ all -> 0x045e }
        r4 = 16;	 Catch:{ all -> 0x045e }
        r0 = r38;	 Catch:{ all -> 0x045e }
        r0.nextToken(r4);	 Catch:{ all -> 0x045e }
        r0 = r61;	 Catch:{ all -> 0x045e }
        r4 = r0.beanInfo;	 Catch:{ all -> 0x045e }
        r4 = r4.typeName;	 Catch:{ all -> 0x045e }
        r0 = r57;	 Catch:{ all -> 0x045e }
        r4 = r0.equals(r4);	 Catch:{ all -> 0x045e }
        if (r4 != 0) goto L_0x0570;	 Catch:{ all -> 0x045e }
    L_0x0566:
        r4 = com.alibaba.fastjson.parser.Feature.IgnoreAutoType;	 Catch:{ all -> 0x045e }
        r0 = r62;	 Catch:{ all -> 0x045e }
        r4 = r0.isEnabled(r4);	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x057f;	 Catch:{ all -> 0x045e }
    L_0x0570:
        r4 = r38.token();	 Catch:{ all -> 0x045e }
        r5 = 13;	 Catch:{ all -> 0x045e }
        if (r4 != r5) goto L_0x091c;	 Catch:{ all -> 0x045e }
    L_0x0578:
        r38.nextToken();	 Catch:{ all -> 0x045e }
        r9 = r33;	 Catch:{ all -> 0x045e }
        goto L_0x0229;	 Catch:{ all -> 0x045e }
    L_0x057f:
        r0 = r61;	 Catch:{ all -> 0x045e }
        r4 = r0.beanInfo;	 Catch:{ all -> 0x045e }
        r0 = r61;	 Catch:{ all -> 0x045e }
        r1 = r16;	 Catch:{ all -> 0x045e }
        r2 = r57;	 Catch:{ all -> 0x045e }
        r18 = r0.getSeeAlso(r1, r4, r2);	 Catch:{ all -> 0x045e }
        r59 = 0;	 Catch:{ all -> 0x045e }
        if (r18 != 0) goto L_0x05a9;	 Catch:{ all -> 0x045e }
    L_0x0591:
        r22 = com.alibaba.fastjson.util.TypeUtils.getClass(r63);	 Catch:{ all -> 0x045e }
        r0 = r16;	 Catch:{ all -> 0x045e }
        r1 = r57;	 Catch:{ all -> 0x045e }
        r2 = r22;	 Catch:{ all -> 0x045e }
        r59 = r0.checkAutoType(r1, r2);	 Catch:{ all -> 0x045e }
        r4 = r62.getConfig();	 Catch:{ all -> 0x045e }
        r0 = r59;	 Catch:{ all -> 0x045e }
        r18 = r4.getDeserializer(r0);	 Catch:{ all -> 0x045e }
    L_0x05a9:
        r0 = r18;	 Catch:{ all -> 0x045e }
        r1 = r62;	 Catch:{ all -> 0x045e }
        r2 = r59;	 Catch:{ all -> 0x045e }
        r3 = r64;	 Catch:{ all -> 0x045e }
        r58 = r0.deserialze(r1, r2, r3);	 Catch:{ all -> 0x045e }
        r0 = r18;	 Catch:{ all -> 0x045e }
        r4 = r0 instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;	 Catch:{ all -> 0x045e }
        if (r4 == 0) goto L_0x05d4;	 Catch:{ all -> 0x045e }
    L_0x05bb:
        r0 = r18;	 Catch:{ all -> 0x045e }
        r0 = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) r0;	 Catch:{ all -> 0x045e }
        r37 = r0;	 Catch:{ all -> 0x045e }
        if (r55 == 0) goto L_0x05d4;	 Catch:{ all -> 0x045e }
    L_0x05c3:
        r0 = r37;	 Catch:{ all -> 0x045e }
        r1 = r55;	 Catch:{ all -> 0x045e }
        r56 = r0.getFieldDeserializer(r1);	 Catch:{ all -> 0x045e }
        r0 = r56;	 Catch:{ all -> 0x045e }
        r1 = r58;	 Catch:{ all -> 0x045e }
        r2 = r57;	 Catch:{ all -> 0x045e }
        r0.setValue(r1, r2);	 Catch:{ all -> 0x045e }
    L_0x05d4:
        if (r15 == 0) goto L_0x05da;
    L_0x05d6:
        r0 = r65;
        r15.object = r0;
    L_0x05da:
        r0 = r62;
        r1 = r17;
        r0.setContext(r1);
        r20 = r58;
        goto L_0x0010;
    L_0x05e5:
        r4 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x045e }
        r5 = "syntax error";	 Catch:{ all -> 0x045e }
        r4.<init>(r5);	 Catch:{ all -> 0x045e }
        throw r4;	 Catch:{ all -> 0x045e }
    L_0x05ed:
        if (r65 != 0) goto L_0x0918;	 Catch:{ all -> 0x045e }
    L_0x05ef:
        if (r33 != 0) goto L_0x0918;	 Catch:{ all -> 0x045e }
    L_0x05f1:
        r65 = r61.createInstance(r62, r63);	 Catch:{ all -> 0x045e }
        if (r65 != 0) goto L_0x0914;	 Catch:{ all -> 0x045e }
    L_0x05f7:
        r9 = new java.util.HashMap;	 Catch:{ all -> 0x045e }
        r0 = r61;	 Catch:{ all -> 0x045e }
        r4 = r0.fieldDeserializers;	 Catch:{ all -> 0x045e }
        r4 = r4.length;	 Catch:{ all -> 0x045e }
        r9.<init>(r4);	 Catch:{ all -> 0x045e }
    L_0x0601:
        r0 = r62;	 Catch:{ all -> 0x0189 }
        r1 = r17;	 Catch:{ all -> 0x0189 }
        r2 = r65;	 Catch:{ all -> 0x0189 }
        r3 = r64;	 Catch:{ all -> 0x0189 }
        r15 = r0.setContext(r1, r2, r3);	 Catch:{ all -> 0x0189 }
        if (r67 != 0) goto L_0x061c;	 Catch:{ all -> 0x0189 }
    L_0x060f:
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r4 = r0.fieldDeserializers;	 Catch:{ all -> 0x0189 }
        r4 = r4.length;	 Catch:{ all -> 0x0189 }
        r4 = r4 / 32;	 Catch:{ all -> 0x0189 }
        r4 = r4 + 1;	 Catch:{ all -> 0x0189 }
        r0 = new int[r4];	 Catch:{ all -> 0x0189 }
        r67 = r0;	 Catch:{ all -> 0x0189 }
    L_0x061c:
        if (r41 == 0) goto L_0x0699;	 Catch:{ all -> 0x0189 }
    L_0x061e:
        if (r60 != 0) goto L_0x0644;	 Catch:{ all -> 0x0189 }
    L_0x0620:
        r0 = r25;	 Catch:{ all -> 0x0189 }
        r1 = r62;	 Catch:{ all -> 0x0189 }
        r2 = r65;	 Catch:{ all -> 0x0189 }
        r3 = r63;	 Catch:{ all -> 0x0189 }
        r0.parseField(r1, r2, r3, r9);	 Catch:{ all -> 0x0189 }
    L_0x062b:
        r4 = r38.token();	 Catch:{ all -> 0x0189 }
        r5 = 16;	 Catch:{ all -> 0x0189 }
        if (r4 == r5) goto L_0x0259;	 Catch:{ all -> 0x0189 }
    L_0x0633:
        r4 = r38.token();	 Catch:{ all -> 0x0189 }
        r5 = 13;	 Catch:{ all -> 0x0189 }
        if (r4 != r5) goto L_0x06c6;	 Catch:{ all -> 0x0189 }
    L_0x063b:
        r4 = 16;	 Catch:{ all -> 0x0189 }
        r0 = r38;	 Catch:{ all -> 0x0189 }
        r0.nextToken(r4);	 Catch:{ all -> 0x0189 }
        goto L_0x0229;	 Catch:{ all -> 0x0189 }
    L_0x0644:
        if (r65 != 0) goto L_0x0665;	 Catch:{ all -> 0x0189 }
    L_0x0646:
        r0 = r28;	 Catch:{ all -> 0x0189 }
        r4 = r0.name;	 Catch:{ all -> 0x0189 }
        r0 = r31;	 Catch:{ all -> 0x0189 }
        r9.put(r4, r0);	 Catch:{ all -> 0x0189 }
    L_0x064f:
        if (r67 == 0) goto L_0x065c;	 Catch:{ all -> 0x0189 }
    L_0x0651:
        r34 = r27 / 32;	 Catch:{ all -> 0x0189 }
        r11 = r27 % 32;	 Catch:{ all -> 0x0189 }
        r4 = r67[r34];	 Catch:{ all -> 0x0189 }
        r5 = 1;	 Catch:{ all -> 0x0189 }
        r5 = r5 >> r11;	 Catch:{ all -> 0x0189 }
        r4 = r4 | r5;	 Catch:{ all -> 0x0189 }
        r67[r34] = r4;	 Catch:{ all -> 0x0189 }
    L_0x065c:
        r0 = r38;	 Catch:{ all -> 0x0189 }
        r4 = r0.matchStat;	 Catch:{ all -> 0x0189 }
        r5 = 4;	 Catch:{ all -> 0x0189 }
        if (r4 != r5) goto L_0x062b;	 Catch:{ all -> 0x0189 }
    L_0x0663:
        goto L_0x0229;	 Catch:{ all -> 0x0189 }
    L_0x0665:
        if (r31 != 0) goto L_0x068f;	 Catch:{ all -> 0x0189 }
    L_0x0667:
        r4 = java.lang.Integer.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r24;	 Catch:{ all -> 0x0189 }
        if (r0 == r4) goto L_0x064f;	 Catch:{ all -> 0x0189 }
    L_0x066d:
        r4 = java.lang.Long.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r24;	 Catch:{ all -> 0x0189 }
        if (r0 == r4) goto L_0x064f;	 Catch:{ all -> 0x0189 }
    L_0x0673:
        r4 = java.lang.Float.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r24;	 Catch:{ all -> 0x0189 }
        if (r0 == r4) goto L_0x064f;	 Catch:{ all -> 0x0189 }
    L_0x0679:
        r4 = java.lang.Double.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r24;	 Catch:{ all -> 0x0189 }
        if (r0 == r4) goto L_0x064f;	 Catch:{ all -> 0x0189 }
    L_0x067f:
        r4 = java.lang.Boolean.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r24;	 Catch:{ all -> 0x0189 }
        if (r0 == r4) goto L_0x064f;	 Catch:{ all -> 0x0189 }
    L_0x0685:
        r0 = r25;	 Catch:{ all -> 0x0189 }
        r1 = r65;	 Catch:{ all -> 0x0189 }
        r2 = r31;	 Catch:{ all -> 0x0189 }
        r0.setValue(r1, r2);	 Catch:{ all -> 0x0189 }
        goto L_0x064f;	 Catch:{ all -> 0x0189 }
    L_0x068f:
        r0 = r25;	 Catch:{ all -> 0x0189 }
        r1 = r65;	 Catch:{ all -> 0x0189 }
        r2 = r31;	 Catch:{ all -> 0x0189 }
        r0.setValue(r1, r2);	 Catch:{ all -> 0x0189 }
        goto L_0x064f;	 Catch:{ all -> 0x0189 }
    L_0x0699:
        r4 = r61;	 Catch:{ all -> 0x0189 }
        r5 = r62;	 Catch:{ all -> 0x0189 }
        r7 = r65;	 Catch:{ all -> 0x0189 }
        r8 = r63;	 Catch:{ all -> 0x0189 }
        r10 = r67;	 Catch:{ all -> 0x0189 }
        r40 = r4.parseField(r5, r6, r7, r8, r9, r10);	 Catch:{ all -> 0x0189 }
        if (r40 != 0) goto L_0x06b6;	 Catch:{ all -> 0x0189 }
    L_0x06a9:
        r4 = r38.token();	 Catch:{ all -> 0x0189 }
        r5 = 13;	 Catch:{ all -> 0x0189 }
        if (r4 != r5) goto L_0x0259;	 Catch:{ all -> 0x0189 }
    L_0x06b1:
        r38.nextToken();	 Catch:{ all -> 0x0189 }
        goto L_0x0229;	 Catch:{ all -> 0x0189 }
    L_0x06b6:
        r4 = r38.token();	 Catch:{ all -> 0x0189 }
        r5 = 17;	 Catch:{ all -> 0x0189 }
        if (r4 != r5) goto L_0x062b;	 Catch:{ all -> 0x0189 }
    L_0x06be:
        r4 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x0189 }
        r5 = "syntax error, unexpect token ':'";	 Catch:{ all -> 0x0189 }
        r4.<init>(r5);	 Catch:{ all -> 0x0189 }
        throw r4;	 Catch:{ all -> 0x0189 }
    L_0x06c6:
        r4 = r38.token();	 Catch:{ all -> 0x0189 }
        r5 = 18;	 Catch:{ all -> 0x0189 }
        if (r4 == r5) goto L_0x06d5;	 Catch:{ all -> 0x0189 }
    L_0x06ce:
        r4 = r38.token();	 Catch:{ all -> 0x0189 }
        r5 = 1;	 Catch:{ all -> 0x0189 }
        if (r4 != r5) goto L_0x0259;	 Catch:{ all -> 0x0189 }
    L_0x06d5:
        r4 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x0189 }
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0189 }
        r5.<init>();	 Catch:{ all -> 0x0189 }
        r7 = "syntax error, unexpect token ";	 Catch:{ all -> 0x0189 }
        r5 = r5.append(r7);	 Catch:{ all -> 0x0189 }
        r7 = r38.token();	 Catch:{ all -> 0x0189 }
        r7 = com.alibaba.fastjson.parser.JSONToken.name(r7);	 Catch:{ all -> 0x0189 }
        r5 = r5.append(r7);	 Catch:{ all -> 0x0189 }
        r5 = r5.toString();	 Catch:{ all -> 0x0189 }
        r4.<init>(r5);	 Catch:{ all -> 0x0189 }
        throw r4;	 Catch:{ all -> 0x0189 }
    L_0x06f6:
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r4 = r0.beanInfo;	 Catch:{ all -> 0x0189 }
        r0 = r4.creatorConstructorParameters;	 Catch:{ all -> 0x0189 }
        r45 = r0;	 Catch:{ all -> 0x0189 }
        if (r45 == 0) goto L_0x0795;	 Catch:{ all -> 0x0189 }
    L_0x0700:
        r0 = r45;	 Catch:{ all -> 0x0189 }
        r4 = r0.length;	 Catch:{ all -> 0x0189 }
        r0 = new java.lang.Object[r4];	 Catch:{ all -> 0x0189 }
        r46 = r0;	 Catch:{ all -> 0x0189 }
        r35 = 0;	 Catch:{ all -> 0x0189 }
    L_0x0709:
        r0 = r45;	 Catch:{ all -> 0x0189 }
        r4 = r0.length;	 Catch:{ all -> 0x0189 }
        r0 = r35;	 Catch:{ all -> 0x0189 }
        if (r0 >= r4) goto L_0x082d;	 Catch:{ all -> 0x0189 }
    L_0x0710:
        r44 = r45[r35];	 Catch:{ all -> 0x0189 }
        r0 = r44;	 Catch:{ all -> 0x0189 }
        r43 = r9.remove(r0);	 Catch:{ all -> 0x0189 }
        if (r43 != 0) goto L_0x0735;	 Catch:{ all -> 0x0189 }
    L_0x071a:
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r4 = r0.beanInfo;	 Catch:{ all -> 0x0189 }
        r4 = r4.creatorConstructorParameterTypes;	 Catch:{ all -> 0x0189 }
        r30 = r4[r35];	 Catch:{ all -> 0x0189 }
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r4 = r0.beanInfo;	 Catch:{ all -> 0x0189 }
        r4 = r4.fields;	 Catch:{ all -> 0x0189 }
        r28 = r4[r35];	 Catch:{ all -> 0x0189 }
        r4 = java.lang.Byte.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x073a;	 Catch:{ all -> 0x0189 }
    L_0x0730:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r43 = java.lang.Byte.valueOf(r4);	 Catch:{ all -> 0x0189 }
    L_0x0735:
        r46[r35] = r43;	 Catch:{ all -> 0x0189 }
        r35 = r35 + 1;	 Catch:{ all -> 0x0189 }
        goto L_0x0709;	 Catch:{ all -> 0x0189 }
    L_0x073a:
        r4 = java.lang.Short.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x0746;	 Catch:{ all -> 0x0189 }
    L_0x0740:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r43 = java.lang.Short.valueOf(r4);	 Catch:{ all -> 0x0189 }
        goto L_0x0735;	 Catch:{ all -> 0x0189 }
    L_0x0746:
        r4 = java.lang.Integer.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x0752;	 Catch:{ all -> 0x0189 }
    L_0x074c:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r43 = java.lang.Integer.valueOf(r4);	 Catch:{ all -> 0x0189 }
        goto L_0x0735;	 Catch:{ all -> 0x0189 }
    L_0x0752:
        r4 = java.lang.Long.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x075f;	 Catch:{ all -> 0x0189 }
    L_0x0758:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r43 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x0189 }
        goto L_0x0735;	 Catch:{ all -> 0x0189 }
    L_0x075f:
        r4 = java.lang.Float.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x076b;	 Catch:{ all -> 0x0189 }
    L_0x0765:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r43 = java.lang.Float.valueOf(r4);	 Catch:{ all -> 0x0189 }
        goto L_0x0735;	 Catch:{ all -> 0x0189 }
    L_0x076b:
        r4 = java.lang.Double.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x0778;	 Catch:{ all -> 0x0189 }
    L_0x0771:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r43 = java.lang.Double.valueOf(r4);	 Catch:{ all -> 0x0189 }
        goto L_0x0735;	 Catch:{ all -> 0x0189 }
    L_0x0778:
        r4 = java.lang.Boolean.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x0781;	 Catch:{ all -> 0x0189 }
    L_0x077e:
        r43 = java.lang.Boolean.FALSE;	 Catch:{ all -> 0x0189 }
        goto L_0x0735;	 Catch:{ all -> 0x0189 }
    L_0x0781:
        r4 = java.lang.String.class;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x0735;	 Catch:{ all -> 0x0189 }
    L_0x0787:
        r0 = r28;	 Catch:{ all -> 0x0189 }
        r4 = r0.parserFeatures;	 Catch:{ all -> 0x0189 }
        r5 = com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty;	 Catch:{ all -> 0x0189 }
        r5 = r5.mask;	 Catch:{ all -> 0x0189 }
        r4 = r4 & r5;	 Catch:{ all -> 0x0189 }
        if (r4 == 0) goto L_0x0735;	 Catch:{ all -> 0x0189 }
    L_0x0792:
        r43 = "";	 Catch:{ all -> 0x0189 }
        goto L_0x0735;	 Catch:{ all -> 0x0189 }
    L_0x0795:
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r4 = r0.beanInfo;	 Catch:{ all -> 0x0189 }
        r0 = r4.fields;	 Catch:{ all -> 0x0189 }
        r29 = r0;	 Catch:{ all -> 0x0189 }
        r0 = r29;	 Catch:{ all -> 0x0189 }
        r0 = r0.length;	 Catch:{ all -> 0x0189 }
        r52 = r0;	 Catch:{ all -> 0x0189 }
        r0 = r52;	 Catch:{ all -> 0x0189 }
        r0 = new java.lang.Object[r0];	 Catch:{ all -> 0x0189 }
        r46 = r0;	 Catch:{ all -> 0x0189 }
        r35 = 0;	 Catch:{ all -> 0x0189 }
    L_0x07aa:
        r0 = r35;	 Catch:{ all -> 0x0189 }
        r1 = r52;	 Catch:{ all -> 0x0189 }
        if (r0 >= r1) goto L_0x082d;	 Catch:{ all -> 0x0189 }
    L_0x07b0:
        r28 = r29[r35];	 Catch:{ all -> 0x0189 }
        r0 = r28;	 Catch:{ all -> 0x0189 }
        r4 = r0.name;	 Catch:{ all -> 0x0189 }
        r43 = r9.get(r4);	 Catch:{ all -> 0x0189 }
        if (r43 != 0) goto L_0x07cd;	 Catch:{ all -> 0x0189 }
    L_0x07bc:
        r0 = r28;	 Catch:{ all -> 0x0189 }
        r0 = r0.fieldType;	 Catch:{ all -> 0x0189 }
        r30 = r0;	 Catch:{ all -> 0x0189 }
        r4 = java.lang.Byte.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x07d2;	 Catch:{ all -> 0x0189 }
    L_0x07c8:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r43 = java.lang.Byte.valueOf(r4);	 Catch:{ all -> 0x0189 }
    L_0x07cd:
        r46[r35] = r43;	 Catch:{ all -> 0x0189 }
        r35 = r35 + 1;	 Catch:{ all -> 0x0189 }
        goto L_0x07aa;	 Catch:{ all -> 0x0189 }
    L_0x07d2:
        r4 = java.lang.Short.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x07de;	 Catch:{ all -> 0x0189 }
    L_0x07d8:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r43 = java.lang.Short.valueOf(r4);	 Catch:{ all -> 0x0189 }
        goto L_0x07cd;	 Catch:{ all -> 0x0189 }
    L_0x07de:
        r4 = java.lang.Integer.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x07ea;	 Catch:{ all -> 0x0189 }
    L_0x07e4:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r43 = java.lang.Integer.valueOf(r4);	 Catch:{ all -> 0x0189 }
        goto L_0x07cd;	 Catch:{ all -> 0x0189 }
    L_0x07ea:
        r4 = java.lang.Long.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x07f7;	 Catch:{ all -> 0x0189 }
    L_0x07f0:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r43 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x0189 }
        goto L_0x07cd;	 Catch:{ all -> 0x0189 }
    L_0x07f7:
        r4 = java.lang.Float.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x0803;	 Catch:{ all -> 0x0189 }
    L_0x07fd:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r43 = java.lang.Float.valueOf(r4);	 Catch:{ all -> 0x0189 }
        goto L_0x07cd;	 Catch:{ all -> 0x0189 }
    L_0x0803:
        r4 = java.lang.Double.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x0810;	 Catch:{ all -> 0x0189 }
    L_0x0809:
        r4 = 0;	 Catch:{ all -> 0x0189 }
        r43 = java.lang.Double.valueOf(r4);	 Catch:{ all -> 0x0189 }
        goto L_0x07cd;	 Catch:{ all -> 0x0189 }
    L_0x0810:
        r4 = java.lang.Boolean.TYPE;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x0819;	 Catch:{ all -> 0x0189 }
    L_0x0816:
        r43 = java.lang.Boolean.FALSE;	 Catch:{ all -> 0x0189 }
        goto L_0x07cd;	 Catch:{ all -> 0x0189 }
    L_0x0819:
        r4 = java.lang.String.class;	 Catch:{ all -> 0x0189 }
        r0 = r30;	 Catch:{ all -> 0x0189 }
        if (r0 != r4) goto L_0x07cd;	 Catch:{ all -> 0x0189 }
    L_0x081f:
        r0 = r28;	 Catch:{ all -> 0x0189 }
        r4 = r0.parserFeatures;	 Catch:{ all -> 0x0189 }
        r5 = com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty;	 Catch:{ all -> 0x0189 }
        r5 = r5.mask;	 Catch:{ all -> 0x0189 }
        r4 = r4 & r5;	 Catch:{ all -> 0x0189 }
        if (r4 == 0) goto L_0x07cd;	 Catch:{ all -> 0x0189 }
    L_0x082a:
        r43 = "";	 Catch:{ all -> 0x0189 }
        goto L_0x07cd;	 Catch:{ all -> 0x0189 }
    L_0x082d:
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r4 = r0.beanInfo;	 Catch:{ all -> 0x0189 }
        r4 = r4.creatorConstructor;	 Catch:{ all -> 0x0189 }
        if (r4 == 0) goto L_0x0897;
    L_0x0835:
        r0 = r61;	 Catch:{ Exception -> 0x0871 }
        r4 = r0.beanInfo;	 Catch:{ Exception -> 0x0871 }
        r4 = r4.creatorConstructor;	 Catch:{ Exception -> 0x0871 }
        r0 = r46;	 Catch:{ Exception -> 0x0871 }
        r65 = r4.newInstance(r0);	 Catch:{ Exception -> 0x0871 }
        if (r45 == 0) goto L_0x08ac;
    L_0x0843:
        r4 = r9.entrySet();	 Catch:{ all -> 0x0189 }
        r5 = r4.iterator();	 Catch:{ all -> 0x0189 }
    L_0x084b:
        r4 = r5.hasNext();	 Catch:{ all -> 0x0189 }
        if (r4 == 0) goto L_0x08ac;	 Catch:{ all -> 0x0189 }
    L_0x0851:
        r21 = r5.next();	 Catch:{ all -> 0x0189 }
        r21 = (java.util.Map.Entry) r21;	 Catch:{ all -> 0x0189 }
        r4 = r21.getKey();	 Catch:{ all -> 0x0189 }
        r4 = (java.lang.String) r4;	 Catch:{ all -> 0x0189 }
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r26 = r0.getFieldDeserializer(r4);	 Catch:{ all -> 0x0189 }
        if (r26 == 0) goto L_0x084b;	 Catch:{ all -> 0x0189 }
    L_0x0865:
        r4 = r21.getValue();	 Catch:{ all -> 0x0189 }
        r0 = r26;	 Catch:{ all -> 0x0189 }
        r1 = r65;	 Catch:{ all -> 0x0189 }
        r0.setValue(r1, r4);	 Catch:{ all -> 0x0189 }
        goto L_0x084b;	 Catch:{ all -> 0x0189 }
    L_0x0871:
        r19 = move-exception;	 Catch:{ all -> 0x0189 }
        r4 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x0189 }
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0189 }
        r5.<init>();	 Catch:{ all -> 0x0189 }
        r7 = "create instance error, ";	 Catch:{ all -> 0x0189 }
        r5 = r5.append(r7);	 Catch:{ all -> 0x0189 }
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r7 = r0.beanInfo;	 Catch:{ all -> 0x0189 }
        r7 = r7.creatorConstructor;	 Catch:{ all -> 0x0189 }
        r7 = r7.toGenericString();	 Catch:{ all -> 0x0189 }
        r5 = r5.append(r7);	 Catch:{ all -> 0x0189 }
        r5 = r5.toString();	 Catch:{ all -> 0x0189 }
        r0 = r19;	 Catch:{ all -> 0x0189 }
        r4.<init>(r5, r0);	 Catch:{ all -> 0x0189 }
        throw r4;	 Catch:{ all -> 0x0189 }
    L_0x0897:
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r4 = r0.beanInfo;	 Catch:{ all -> 0x0189 }
        r4 = r4.factoryMethod;	 Catch:{ all -> 0x0189 }
        if (r4 == 0) goto L_0x08ac;
    L_0x089f:
        r0 = r61;	 Catch:{ Exception -> 0x08c9 }
        r4 = r0.beanInfo;	 Catch:{ Exception -> 0x08c9 }
        r4 = r4.factoryMethod;	 Catch:{ Exception -> 0x08c9 }
        r5 = 0;	 Catch:{ Exception -> 0x08c9 }
        r0 = r46;	 Catch:{ Exception -> 0x08c9 }
        r65 = r4.invoke(r5, r0);	 Catch:{ Exception -> 0x08c9 }
    L_0x08ac:
        r0 = r65;	 Catch:{ all -> 0x0189 }
        r15.object = r0;	 Catch:{ all -> 0x0189 }
    L_0x08b0:
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r4 = r0.beanInfo;	 Catch:{ all -> 0x0189 }
        r13 = r4.buildMethod;	 Catch:{ all -> 0x0189 }
        if (r13 != 0) goto L_0x08ef;
    L_0x08b8:
        if (r15 == 0) goto L_0x08be;
    L_0x08ba:
        r0 = r65;
        r15.object = r0;
    L_0x08be:
        r0 = r62;
        r1 = r17;
        r0.setContext(r1);
        r20 = r65;
        goto L_0x0010;
    L_0x08c9:
        r19 = move-exception;
        r4 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x0189 }
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0189 }
        r5.<init>();	 Catch:{ all -> 0x0189 }
        r7 = "create factory method error, ";	 Catch:{ all -> 0x0189 }
        r5 = r5.append(r7);	 Catch:{ all -> 0x0189 }
        r0 = r61;	 Catch:{ all -> 0x0189 }
        r7 = r0.beanInfo;	 Catch:{ all -> 0x0189 }
        r7 = r7.factoryMethod;	 Catch:{ all -> 0x0189 }
        r7 = r7.toString();	 Catch:{ all -> 0x0189 }
        r5 = r5.append(r7);	 Catch:{ all -> 0x0189 }
        r5 = r5.toString();	 Catch:{ all -> 0x0189 }
        r0 = r19;	 Catch:{ all -> 0x0189 }
        r4.<init>(r5, r0);	 Catch:{ all -> 0x0189 }
        throw r4;	 Catch:{ all -> 0x0189 }
    L_0x08ef:
        r4 = 0;
        r4 = new java.lang.Object[r4];	 Catch:{ Exception -> 0x0909 }
        r0 = r65;	 Catch:{ Exception -> 0x0909 }
        r14 = r13.invoke(r0, r4);	 Catch:{ Exception -> 0x0909 }
        if (r15 == 0) goto L_0x08fe;
    L_0x08fa:
        r0 = r65;
        r15.object = r0;
    L_0x08fe:
        r0 = r62;
        r1 = r17;
        r0.setContext(r1);
        r20 = r14;
        goto L_0x0010;
    L_0x0909:
        r19 = move-exception;
        r4 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x0189 }
        r5 = "build object error";	 Catch:{ all -> 0x0189 }
        r0 = r19;	 Catch:{ all -> 0x0189 }
        r4.<init>(r5, r0);	 Catch:{ all -> 0x0189 }
        throw r4;	 Catch:{ all -> 0x0189 }
    L_0x0914:
        r9 = r33;
        goto L_0x0601;
    L_0x0918:
        r9 = r33;
        goto L_0x061c;
    L_0x091c:
        r9 = r33;
        goto L_0x0259;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object, int, int[]):T");
    }

    protected Enum scanEnum(JSONLexerBase lexer, char[] name_chars, ObjectDeserializer fieldValueDeserilizer) {
        EnumDeserializer enumDeserializer = null;
        if (fieldValueDeserilizer instanceof EnumDeserializer) {
            enumDeserializer = (EnumDeserializer) fieldValueDeserilizer;
        }
        if (enumDeserializer == null) {
            lexer.matchStat = -1;
            return null;
        }
        long enumNameHashCode = lexer.scanFieldSymbol(name_chars);
        if (lexer.matchStat > 0) {
            return enumDeserializer.getEnumByHashCode(enumNameHashCode);
        }
        return null;
    }

    public boolean parseField(DefaultJSONParser parser, String key, Object object, Type objectType, Map<String, Object> fieldValues) {
        return parseField(parser, key, object, objectType, fieldValues, null);
    }

    public boolean parseField(DefaultJSONParser parser, String key, Object object, Type objectType, Map<String, Object> fieldValues, int[] setFlags) {
        FieldDeserializer fieldDeserializer;
        JSONLexer lexer = parser.lexer;
        int disableFieldSmartMatchMask = Feature.DisableFieldSmartMatch.mask;
        if (lexer.isEnabled(disableFieldSmartMatchMask) || (this.beanInfo.parserFeatures & disableFieldSmartMatchMask) != 0) {
            fieldDeserializer = getFieldDeserializer(key);
        } else {
            fieldDeserializer = smartMatch(key, setFlags);
        }
        int mask = Feature.SupportNonPublicField.mask;
        if (fieldDeserializer == null && (lexer.isEnabled(mask) || (this.beanInfo.parserFeatures & mask) != 0)) {
            Field field;
            if (this.extraFieldDeserializers == null) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(1, 0.75f, 1);
                for (Field field2 : this.clazz.getDeclaredFields()) {
                    String fieldName = field2.getName();
                    if (getFieldDeserializer(fieldName) == null) {
                        int fieldModifiers = field2.getModifiers();
                        if ((fieldModifiers & 16) == 0 && (fieldModifiers & 8) == 0) {
                            concurrentHashMap.put(fieldName, field2);
                        }
                    }
                }
                this.extraFieldDeserializers = concurrentHashMap;
            }
            FieldDeserializer deserOrField = this.extraFieldDeserializers.get(key);
            if (deserOrField != null) {
                if (deserOrField instanceof FieldDeserializer) {
                    fieldDeserializer = deserOrField;
                } else {
                    field2 = (Field) deserOrField;
                    field2.setAccessible(true);
                    FieldDeserializer defaultFieldDeserializer = new DefaultFieldDeserializer(parser.getConfig(), this.clazz, new FieldInfo(key, field2.getDeclaringClass(), field2.getType(), field2.getGenericType(), field2, 0, 0, 0));
                    this.extraFieldDeserializers.put(key, defaultFieldDeserializer);
                }
            }
        }
        if (fieldDeserializer == null) {
            if (lexer.isEnabled(Feature.IgnoreNotMatch)) {
                for (FieldDeserializer fieldDeser : this.sortedFieldDeserializers) {
                    FieldInfo fieldInfo = fieldDeser.fieldInfo;
                    if (fieldInfo.unwrapped && (fieldDeser instanceof DefaultFieldDeserializer)) {
                        if (fieldInfo.field != null) {
                            DefaultFieldDeserializer defaultFieldDeserializer2 = (DefaultFieldDeserializer) fieldDeser;
                            ObjectDeserializer fieldValueDeser = defaultFieldDeserializer2.getFieldValueDeserilizer(parser.getConfig());
                            if (fieldValueDeser instanceof JavaBeanDeserializer) {
                                FieldDeserializer unwrappedFieldDeser = ((JavaBeanDeserializer) fieldValueDeser).getFieldDeserializer(key);
                                if (unwrappedFieldDeser != null) {
                                    try {
                                        Object fieldObject = fieldInfo.field.get(object);
                                        if (fieldObject == null) {
                                            fieldObject = ((JavaBeanDeserializer) fieldValueDeser).createInstance(parser, fieldInfo.fieldType);
                                            fieldDeser.setValue(object, fieldObject);
                                        }
                                        lexer.nextTokenWithColon(defaultFieldDeserializer2.getFastMatchToken());
                                        unwrappedFieldDeser.parseField(parser, fieldObject, objectType, fieldValues);
                                        return true;
                                    } catch (Throwable e) {
                                        throw new JSONException("parse unwrapped field error.", e);
                                    }
                                }
                            } else if (fieldValueDeser instanceof MapDeserializer) {
                                MapDeserializer javaBeanFieldValueDeserializer = (MapDeserializer) fieldValueDeser;
                                try {
                                    Map fieldObject2 = (Map) fieldInfo.field.get(object);
                                    if (fieldObject2 == null) {
                                        fieldObject2 = javaBeanFieldValueDeserializer.createMap(fieldInfo.fieldType);
                                        fieldDeser.setValue(object, (Object) fieldObject2);
                                    }
                                    lexer.nextTokenWithColon();
                                    fieldObject2.put(key, parser.parse(key));
                                    return true;
                                } catch (Throwable e2) {
                                    throw new JSONException("parse unwrapped field error.", e2);
                                }
                            }
                        } else if (fieldInfo.method.getParameterTypes().length == 2) {
                            lexer.nextTokenWithColon();
                            Object fieldValue = parser.parse(key);
                            try {
                                fieldInfo.method.invoke(object, new Object[]{key, fieldValue});
                                return true;
                            } catch (Throwable e22) {
                                throw new JSONException("parse unwrapped field error.", e22);
                            }
                        }
                    }
                }
                parser.parseExtra(object, key);
                return false;
            }
            throw new JSONException("setter not found, class " + this.clazz.getName() + ", property " + key);
        }
        int fieldIndex = -1;
        for (int i = 0; i < this.sortedFieldDeserializers.length; i++) {
            if (this.sortedFieldDeserializers[i] == fieldDeserializer) {
                fieldIndex = i;
                break;
            }
        }
        if (!(fieldIndex == -1 || setFlags == null)) {
            if (key.startsWith(LoginConstants.UNDER_LINE) && isSetFlag(fieldIndex, setFlags)) {
                parser.parseExtra(object, key);
                return false;
            }
        }
        lexer.nextTokenWithColon(fieldDeserializer.getFastMatchToken());
        fieldDeserializer.parseField(parser, object, objectType, fieldValues);
        return true;
    }

    public FieldDeserializer smartMatch(String key) {
        return smartMatch(key, null);
    }

    public FieldDeserializer smartMatch(String key, int[] setFlags) {
        if (key == null) {
            return null;
        }
        FieldDeserializer fieldDeserializer = getFieldDeserializer(key, setFlags);
        if (fieldDeserializer != null) {
            return fieldDeserializer;
        }
        int i;
        long smartKeyHash = TypeUtils.fnv1a_64_lower(key);
        if (this.smartMatchHashArray == null) {
            long[] hashArray = new long[this.sortedFieldDeserializers.length];
            for (i = 0; i < this.sortedFieldDeserializers.length; i++) {
                hashArray[i] = TypeUtils.fnv1a_64_lower(this.sortedFieldDeserializers[i].fieldInfo.name);
            }
            Arrays.sort(hashArray);
            this.smartMatchHashArray = hashArray;
        }
        int pos = Arrays.binarySearch(this.smartMatchHashArray, smartKeyHash);
        if (pos < 0) {
            if (key.startsWith("is")) {
                pos = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv1a_64_lower(key.substring(2)));
            }
        }
        if (pos >= 0) {
            if (this.smartMatchHashArrayMapping == null) {
                short[] mapping = new short[this.smartMatchHashArray.length];
                Arrays.fill(mapping, (short) -1);
                for (i = 0; i < this.sortedFieldDeserializers.length; i++) {
                    int p = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv1a_64_lower(this.sortedFieldDeserializers[i].fieldInfo.name));
                    if (p >= 0) {
                        mapping[p] = (short) i;
                    }
                }
                this.smartMatchHashArrayMapping = mapping;
            }
            int deserIndex = this.smartMatchHashArrayMapping[pos];
            if (!(deserIndex == -1 || isSetFlag(deserIndex, setFlags))) {
                fieldDeserializer = this.sortedFieldDeserializers[deserIndex];
            }
        }
        if (fieldDeserializer == null || (fieldDeserializer.fieldInfo.parserFeatures & Feature.DisableFieldSmartMatch.mask) == 0) {
            return fieldDeserializer;
        }
        return null;
    }

    public int getFastMatchToken() {
        return 12;
    }

    public Object createInstance(Map<String, Object> map, ParserConfig config) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        if (this.beanInfo.creatorConstructor == null && this.beanInfo.factoryMethod == null) {
            Object object = createInstance(null, (Type) this.clazz);
            for (Entry<String, Object> entry : map.entrySet()) {
                String key = (String) entry.getKey();
                Object value = entry.getValue();
                FieldDeserializer fieldDeser = smartMatch(key);
                if (fieldDeser != null) {
                    fieldDeser.setValue(object, TypeUtils.cast(value, fieldDeser.fieldInfo.fieldType, config));
                }
            }
            if (this.beanInfo.buildMethod == null) {
                return object;
            }
            try {
                return this.beanInfo.buildMethod.invoke(object, new Object[0]);
            } catch (Exception e) {
                throw new JSONException("build object error", e);
            }
        }
        FieldInfo[] fieldInfoList = this.beanInfo.fields;
        int size = fieldInfoList.length;
        Object[] params = new Object[size];
        for (int i = 0; i < size; i++) {
            FieldInfo fieldInfo = fieldInfoList[i];
            Object param = map.get(fieldInfo.name);
            if (param == null) {
                Class<?> fieldClass = fieldInfo.fieldClass;
                if (fieldClass == Integer.TYPE) {
                    param = Integer.valueOf(0);
                } else if (fieldClass == Long.TYPE) {
                    param = Long.valueOf(0);
                } else if (fieldClass == Short.TYPE) {
                    param = Short.valueOf((short) 0);
                } else if (fieldClass == Byte.TYPE) {
                    param = Byte.valueOf((byte) 0);
                } else if (fieldClass == Float.TYPE) {
                    param = Float.valueOf(0.0f);
                } else if (fieldClass == Double.TYPE) {
                    param = Double.valueOf(0.0d);
                } else if (fieldClass == Character.TYPE) {
                    param = Character.valueOf('0');
                } else if (fieldClass == Boolean.TYPE) {
                    param = Boolean.valueOf(false);
                }
            }
            params[i] = param;
        }
        if (this.beanInfo.creatorConstructor != null) {
            try {
                return this.beanInfo.creatorConstructor.newInstance(params);
            } catch (Exception e2) {
                throw new JSONException("create instance error, " + this.beanInfo.creatorConstructor.toGenericString(), e2);
            }
        } else if (this.beanInfo.factoryMethod == null) {
            return null;
        } else {
            try {
                return this.beanInfo.factoryMethod.invoke(null, params);
            } catch (Exception e22) {
                throw new JSONException("create factory method error, " + this.beanInfo.factoryMethod.toString(), e22);
            }
        }
    }

    public Type getFieldType(int ordinal) {
        return this.sortedFieldDeserializers[ordinal].fieldInfo.fieldType;
    }

    protected Object parseRest(DefaultJSONParser parser, Type type, Object fieldName, Object instance, int features) {
        return parseRest(parser, type, fieldName, instance, features, new int[0]);
    }

    protected Object parseRest(DefaultJSONParser parser, Type type, Object fieldName, Object instance, int features, int[] setFlags) {
        return deserialze(parser, type, fieldName, instance, features, setFlags);
    }

    protected JavaBeanDeserializer getSeeAlso(ParserConfig config, JavaBeanInfo beanInfo, String typeName) {
        if (beanInfo.jsonType == null) {
            return null;
        }
        for (Type seeAlsoClass : beanInfo.jsonType.seeAlso()) {
            ObjectDeserializer seeAlsoDeser = config.getDeserializer(seeAlsoClass);
            if (seeAlsoDeser instanceof JavaBeanDeserializer) {
                JavaBeanDeserializer seeAlsoJavaBeanDeser = (JavaBeanDeserializer) seeAlsoDeser;
                JavaBeanInfo subBeanInfo = seeAlsoJavaBeanDeser.beanInfo;
                if (subBeanInfo.typeName.equals(typeName)) {
                    return seeAlsoJavaBeanDeser;
                }
                JavaBeanDeserializer subSeeAlso = getSeeAlso(config, subBeanInfo, typeName);
                if (subSeeAlso != null) {
                    return subSeeAlso;
                }
            }
        }
        return null;
    }

    protected static void parseArray(Collection collection, ObjectDeserializer deser, DefaultJSONParser parser, Type type, Object fieldName) {
        JSONLexerBase lexer = parser.lexer;
        int token = lexer.token();
        if (token == 8) {
            lexer.nextToken(16);
            token = lexer.token();
            return;
        }
        if (token != 14) {
            parser.throwException(token);
        }
        if (lexer.getCurrent() == '[') {
            lexer.next();
            lexer.setToken(14);
        } else {
            lexer.nextToken(14);
        }
        if (lexer.token() == 15) {
            lexer.nextToken();
            return;
        }
        int index = 0;
        while (true) {
            collection.add(deser.deserialze(parser, type, Integer.valueOf(index)));
            index++;
            if (lexer.token() != 16) {
                break;
            } else if (lexer.getCurrent() == '[') {
                lexer.next();
                lexer.setToken(14);
            } else {
                lexer.nextToken(14);
            }
        }
        token = lexer.token();
        if (token != 15) {
            parser.throwException(token);
        }
        if (lexer.getCurrent() == ',') {
            lexer.next();
            lexer.setToken(16);
            return;
        }
        lexer.nextToken(16);
    }
}
