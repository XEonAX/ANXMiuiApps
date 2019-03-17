package com.alibaba.fastjson.parser;

import com.ali.auth.third.login.LoginConstants;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory;
import com.alibaba.fastjson.parser.deserializer.ArrayListTypeFieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.AutowiredObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.EnumDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.JSONPDeserializer;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec;
import com.alibaba.fastjson.parser.deserializer.MapDeserializer;
import com.alibaba.fastjson.parser.deserializer.NumberDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.OptionalCodec;
import com.alibaba.fastjson.parser.deserializer.PropertyProcessable;
import com.alibaba.fastjson.parser.deserializer.PropertyProcessableDeserializer;
import com.alibaba.fastjson.parser.deserializer.SqlDateDeserializer;
import com.alibaba.fastjson.parser.deserializer.StackTraceElementDeserializer;
import com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer;
import com.alibaba.fastjson.parser.deserializer.TimeDeserializer;
import com.alibaba.fastjson.serializer.AtomicCodec;
import com.alibaba.fastjson.serializer.AwtCodec;
import com.alibaba.fastjson.serializer.BigDecimalCodec;
import com.alibaba.fastjson.serializer.BigIntegerCodec;
import com.alibaba.fastjson.serializer.BooleanCodec;
import com.alibaba.fastjson.serializer.CalendarCodec;
import com.alibaba.fastjson.serializer.CharArrayCodec;
import com.alibaba.fastjson.serializer.CharacterCodec;
import com.alibaba.fastjson.serializer.CollectionCodec;
import com.alibaba.fastjson.serializer.DateCodec;
import com.alibaba.fastjson.serializer.FloatCodec;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.LongCodec;
import com.alibaba.fastjson.serializer.MiscCodec;
import com.alibaba.fastjson.serializer.ObjectArrayCodec;
import com.alibaba.fastjson.serializer.ReferenceCodec;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.ASMClassLoader;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson.util.IdentityHashMap;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.ServiceLoader;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.io.File;
import java.io.Serializable;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.AccessControlException;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.sql.DataSource;
import javax.xml.datatype.XMLGregorianCalendar;
import mtopsdk.common.util.SymbolExpUtil;

public class ParserConfig {
    public static final String AUTOTYPE_ACCEPT = "fastjson.parser.autoTypeAccept";
    public static final String AUTOTYPE_SUPPORT_PROPERTY = "fastjson.parser.autoTypeSupport";
    public static final boolean AUTO_SUPPORT = "true".equals(IOUtils.getStringProperty(AUTOTYPE_SUPPORT_PROPERTY));
    private static final String[] AUTO_TYPE_ACCEPT_LIST;
    public static final String[] DENYS = splitItemsFormProperty(IOUtils.getStringProperty(DENY_PROPERTY));
    public static final String DENY_PROPERTY = "fastjson.parser.deny";
    private static boolean awtError = false;
    public static ParserConfig global = new ParserConfig();
    private static boolean jdk8Error = false;
    private String[] acceptList;
    private boolean asmEnable;
    protected ASMDeserializerFactory asmFactory;
    private boolean autoTypeSupport;
    public boolean compatibleWithJavaBean;
    protected ClassLoader defaultClassLoader;
    private String[] denyList;
    private final IdentityHashMap<Type, ObjectDeserializer> deserializers;
    public final boolean fieldBased;
    private int maxTypeNameLength;
    public PropertyNamingStrategy propertyNamingStrategy;
    public final SymbolTable symbolTable;

    static {
        String[] items = splitItemsFormProperty(IOUtils.getStringProperty(AUTOTYPE_ACCEPT));
        if (items == null) {
            items = new String[0];
        }
        AUTO_TYPE_ACCEPT_LIST = items;
    }

    public static ParserConfig getGlobalInstance() {
        return global;
    }

    public ParserConfig() {
        this(false);
    }

    public ParserConfig(boolean fieldBase) {
        this(null, null, fieldBase);
    }

    public ParserConfig(ClassLoader parentClassLoader) {
        this(null, parentClassLoader, false);
    }

    public ParserConfig(ASMDeserializerFactory asmFactory) {
        this(asmFactory, null, false);
    }

    private ParserConfig(ASMDeserializerFactory asmFactory, ClassLoader parentClassLoader, boolean fieldBased) {
        this.deserializers = new IdentityHashMap();
        this.asmEnable = !ASMUtils.IS_ANDROID;
        this.symbolTable = new SymbolTable(4096);
        this.autoTypeSupport = AUTO_SUPPORT;
        this.denyList = "bsh,com.mchange,com.sun.,java.lang.Thread,java.net.Socket,java.rmi,javax.xml,org.apache.bcel,org.apache.commons.beanutils,org.apache.commons.collections.Transformer,org.apache.commons.collections.functors,org.apache.commons.collections4.comparators,org.apache.commons.fileupload,org.apache.myfaces.context.servlet,org.apache.tomcat,org.apache.wicket.util,org.apache.xalan,org.codehaus.groovy.runtime,org.hibernate,org.jboss,org.mozilla.javascript,org.python.core,org.springframework".split(",");
        this.acceptList = AUTO_TYPE_ACCEPT_LIST;
        this.maxTypeNameLength = 256;
        this.compatibleWithJavaBean = TypeUtils.compatibleWithJavaBean;
        this.fieldBased = fieldBased;
        if (asmFactory == null && !ASMUtils.IS_ANDROID) {
            if (parentClassLoader == null) {
                try {
                    asmFactory = new ASMDeserializerFactory(new ASMClassLoader());
                } catch (ExceptionInInitializerError e) {
                } catch (AccessControlException e2) {
                } catch (NoClassDefFoundError e3) {
                }
            } else {
                asmFactory = new ASMDeserializerFactory(parentClassLoader);
            }
        }
        this.asmFactory = asmFactory;
        if (asmFactory == null) {
            this.asmEnable = false;
        }
        this.deserializers.put(SimpleDateFormat.class, MiscCodec.instance);
        this.deserializers.put(Timestamp.class, SqlDateDeserializer.instance_timestamp);
        this.deserializers.put(Date.class, SqlDateDeserializer.instance);
        this.deserializers.put(Time.class, TimeDeserializer.instance);
        this.deserializers.put(java.util.Date.class, DateCodec.instance);
        this.deserializers.put(Calendar.class, CalendarCodec.instance);
        this.deserializers.put(XMLGregorianCalendar.class, CalendarCodec.instance);
        this.deserializers.put(JSONObject.class, MapDeserializer.instance);
        this.deserializers.put(JSONArray.class, CollectionCodec.instance);
        this.deserializers.put(Map.class, MapDeserializer.instance);
        this.deserializers.put(HashMap.class, MapDeserializer.instance);
        this.deserializers.put(LinkedHashMap.class, MapDeserializer.instance);
        this.deserializers.put(TreeMap.class, MapDeserializer.instance);
        this.deserializers.put(ConcurrentMap.class, MapDeserializer.instance);
        this.deserializers.put(ConcurrentHashMap.class, MapDeserializer.instance);
        this.deserializers.put(Collection.class, CollectionCodec.instance);
        this.deserializers.put(List.class, CollectionCodec.instance);
        this.deserializers.put(ArrayList.class, CollectionCodec.instance);
        this.deserializers.put(Object.class, JavaObjectDeserializer.instance);
        this.deserializers.put(String.class, StringCodec.instance);
        this.deserializers.put(StringBuffer.class, StringCodec.instance);
        this.deserializers.put(StringBuilder.class, StringCodec.instance);
        this.deserializers.put(Character.TYPE, CharacterCodec.instance);
        this.deserializers.put(Character.class, CharacterCodec.instance);
        this.deserializers.put(Byte.TYPE, NumberDeserializer.instance);
        this.deserializers.put(Byte.class, NumberDeserializer.instance);
        this.deserializers.put(Short.TYPE, NumberDeserializer.instance);
        this.deserializers.put(Short.class, NumberDeserializer.instance);
        this.deserializers.put(Integer.TYPE, IntegerCodec.instance);
        this.deserializers.put(Integer.class, IntegerCodec.instance);
        this.deserializers.put(Long.TYPE, LongCodec.instance);
        this.deserializers.put(Long.class, LongCodec.instance);
        this.deserializers.put(BigInteger.class, BigIntegerCodec.instance);
        this.deserializers.put(BigDecimal.class, BigDecimalCodec.instance);
        this.deserializers.put(Float.TYPE, FloatCodec.instance);
        this.deserializers.put(Float.class, FloatCodec.instance);
        this.deserializers.put(Double.TYPE, NumberDeserializer.instance);
        this.deserializers.put(Double.class, NumberDeserializer.instance);
        this.deserializers.put(Boolean.TYPE, BooleanCodec.instance);
        this.deserializers.put(Boolean.class, BooleanCodec.instance);
        this.deserializers.put(Class.class, MiscCodec.instance);
        this.deserializers.put(char[].class, new CharArrayCodec());
        this.deserializers.put(AtomicBoolean.class, BooleanCodec.instance);
        this.deserializers.put(AtomicInteger.class, IntegerCodec.instance);
        this.deserializers.put(AtomicLong.class, LongCodec.instance);
        this.deserializers.put(AtomicReference.class, ReferenceCodec.instance);
        this.deserializers.put(WeakReference.class, ReferenceCodec.instance);
        this.deserializers.put(SoftReference.class, ReferenceCodec.instance);
        this.deserializers.put(UUID.class, MiscCodec.instance);
        this.deserializers.put(TimeZone.class, MiscCodec.instance);
        this.deserializers.put(Locale.class, MiscCodec.instance);
        this.deserializers.put(Currency.class, MiscCodec.instance);
        this.deserializers.put(InetAddress.class, MiscCodec.instance);
        this.deserializers.put(Inet4Address.class, MiscCodec.instance);
        this.deserializers.put(Inet6Address.class, MiscCodec.instance);
        this.deserializers.put(InetSocketAddress.class, MiscCodec.instance);
        this.deserializers.put(File.class, MiscCodec.instance);
        this.deserializers.put(URI.class, MiscCodec.instance);
        this.deserializers.put(URL.class, MiscCodec.instance);
        this.deserializers.put(Pattern.class, MiscCodec.instance);
        this.deserializers.put(Charset.class, MiscCodec.instance);
        this.deserializers.put(JSONPath.class, MiscCodec.instance);
        this.deserializers.put(Number.class, NumberDeserializer.instance);
        this.deserializers.put(AtomicIntegerArray.class, AtomicCodec.instance);
        this.deserializers.put(AtomicLongArray.class, AtomicCodec.instance);
        this.deserializers.put(StackTraceElement.class, StackTraceElementDeserializer.instance);
        this.deserializers.put(Serializable.class, JavaObjectDeserializer.instance);
        this.deserializers.put(Cloneable.class, JavaObjectDeserializer.instance);
        this.deserializers.put(Comparable.class, JavaObjectDeserializer.instance);
        this.deserializers.put(Closeable.class, JavaObjectDeserializer.instance);
        this.deserializers.put(JSONPObject.class, new JSONPDeserializer());
        addItemsToDeny(DENYS);
        addItemsToAccept(AUTO_TYPE_ACCEPT_LIST);
    }

    private static String[] splitItemsFormProperty(String property) {
        if (property == null || property.length() <= 0) {
            return null;
        }
        return property.split(",");
    }

    public void configFromPropety(Properties properties) {
        addItemsToDeny(splitItemsFormProperty(properties.getProperty(DENY_PROPERTY)));
        addItemsToAccept(splitItemsFormProperty(properties.getProperty(AUTOTYPE_ACCEPT)));
        String property = properties.getProperty(AUTOTYPE_SUPPORT_PROPERTY);
        if ("true".equals(property)) {
            this.autoTypeSupport = true;
        } else if (SymbolExpUtil.STRING_FALSE.equals(property)) {
            this.autoTypeSupport = false;
        }
    }

    private void addItemsToDeny(String[] items) {
        if (items != null) {
            for (String item : items) {
                addDeny(item);
            }
        }
    }

    private void addItemsToAccept(String[] items) {
        if (items != null) {
            for (String item : items) {
                addAccept(item);
            }
        }
    }

    public boolean isAutoTypeSupport() {
        return this.autoTypeSupport;
    }

    public void setAutoTypeSupport(boolean autoTypeSupport) {
        this.autoTypeSupport = autoTypeSupport;
    }

    public boolean isAsmEnable() {
        return this.asmEnable;
    }

    public void setAsmEnable(boolean asmEnable) {
        this.asmEnable = asmEnable;
    }

    public IdentityHashMap<Type, ObjectDeserializer> getDeserializers() {
        return this.deserializers;
    }

    public ObjectDeserializer getDeserializer(Type type) {
        ObjectDeserializer derializer = (ObjectDeserializer) this.deserializers.get(type);
        if (derializer != null) {
            return derializer;
        }
        if (type instanceof Class) {
            return getDeserializer((Class) type, type);
        }
        if (!(type instanceof ParameterizedType)) {
            return JavaObjectDeserializer.instance;
        }
        Type rawType = ((ParameterizedType) type).getRawType();
        if (rawType instanceof Class) {
            return getDeserializer((Class) rawType, type);
        }
        return getDeserializer(rawType);
    }

    public ObjectDeserializer getDeserializer(Class<?> clazz, Type type) {
        ObjectDeserializer derializer = (ObjectDeserializer) this.deserializers.get(type);
        if (derializer != null) {
            return derializer;
        }
        if (type == null) {
            type = clazz;
        }
        derializer = (ObjectDeserializer) this.deserializers.get(type);
        if (derializer != null) {
            return derializer;
        }
        JSONType annotation = (JSONType) clazz.getAnnotation(JSONType.class);
        if (annotation != null) {
            Class<?> mappingTo = annotation.mappingTo();
            if (mappingTo != Void.class) {
                return getDeserializer(mappingTo, mappingTo);
            }
        }
        if ((type instanceof WildcardType) || (type instanceof TypeVariable) || (type instanceof ParameterizedType)) {
            derializer = (ObjectDeserializer) this.deserializers.get(clazz);
        }
        if (derializer != null) {
            return derializer;
        }
        IdentityHashMap identityHashMap;
        Class cls;
        String className = clazz.getName().replace('$', '.');
        if (className.startsWith("java.awt.") && AwtCodec.support(clazz) && !awtError) {
            try {
                for (String name : new String[]{"java.awt.Point", "java.awt.Font", "java.awt.Rectangle", "java.awt.Color"}) {
                    if (name.equals(className)) {
                        identityHashMap = this.deserializers;
                        cls = Class.forName(name);
                        derializer = AwtCodec.instance;
                        identityHashMap.put(cls, derializer);
                        return derializer;
                    }
                }
            } catch (Throwable th) {
                awtError = true;
            }
            derializer = AwtCodec.instance;
        }
        if (!jdk8Error) {
            try {
                if (className.startsWith("java.time.")) {
                    for (String name2 : new String[]{"java.time.LocalDateTime", "java.time.LocalDate", "java.time.LocalTime", "java.time.ZonedDateTime", "java.time.OffsetDateTime", "java.time.OffsetTime", "java.time.ZoneOffset", "java.time.ZoneRegion", "java.time.ZoneId", "java.time.Period", "java.time.Duration", "java.time.Instant"}) {
                        if (name2.equals(className)) {
                            identityHashMap = this.deserializers;
                            cls = Class.forName(name2);
                            derializer = Jdk8DateCodec.instance;
                            identityHashMap.put(cls, derializer);
                            return derializer;
                        }
                    }
                } else if (className.startsWith("java.util.Optional")) {
                    for (String name22 : new String[]{"java.util.Optional", "java.util.OptionalDouble", "java.util.OptionalInt", "java.util.OptionalLong"}) {
                        if (name22.equals(className)) {
                            identityHashMap = this.deserializers;
                            cls = Class.forName(name22);
                            derializer = OptionalCodec.instance;
                            identityHashMap.put(cls, derializer);
                            return derializer;
                        }
                    }
                }
            } catch (Throwable th2) {
                jdk8Error = true;
            }
        }
        if (className.equals("java.nio.file.Path")) {
            identityHashMap = this.deserializers;
            derializer = MiscCodec.instance;
            identityHashMap.put(clazz, derializer);
        }
        if (clazz == Entry.class) {
            identityHashMap = this.deserializers;
            derializer = MiscCodec.instance;
            identityHashMap.put(clazz, derializer);
        }
        try {
            for (AutowiredObjectDeserializer autowired : ServiceLoader.load(AutowiredObjectDeserializer.class, Thread.currentThread().getContextClassLoader())) {
                for (Type forType : autowired.getAutowiredFor()) {
                    this.deserializers.put(forType, autowired);
                }
            }
        } catch (Exception e) {
        }
        if (derializer == null) {
            derializer = (ObjectDeserializer) this.deserializers.get(type);
        }
        if (derializer != null) {
            return derializer;
        }
        if (clazz.isEnum()) {
            derializer = new EnumDeserializer(clazz);
        } else if (clazz.isArray()) {
            derializer = ObjectArrayCodec.instance;
        } else if (clazz == Set.class || clazz == HashSet.class || clazz == Collection.class || clazz == List.class || clazz == ArrayList.class) {
            derializer = CollectionCodec.instance;
        } else if (Collection.class.isAssignableFrom(clazz)) {
            derializer = CollectionCodec.instance;
        } else if (Map.class.isAssignableFrom(clazz)) {
            derializer = MapDeserializer.instance;
        } else if (Throwable.class.isAssignableFrom(clazz)) {
            derializer = new ThrowableDeserializer(this, clazz);
        } else if (PropertyProcessable.class.isAssignableFrom(clazz)) {
            derializer = new PropertyProcessableDeserializer(clazz);
        } else {
            derializer = createJavaBeanDeserializer(clazz, type);
        }
        putDeserializer(type, derializer);
        return derializer;
    }

    public void initJavaBeanDeserializers(Class<?>... classes) {
        if (classes != null) {
            for (Class<?> type : classes) {
                if (type != null) {
                    putDeserializer(type, createJavaBeanDeserializer(type, type));
                }
            }
        }
    }

    public ObjectDeserializer createJavaBeanDeserializer(Class<?> clazz, Type type) {
        JavaBeanInfo beanInfo;
        boolean asmEnable = this.asmEnable & (!this.fieldBased ? 1 : 0);
        if (asmEnable) {
            JSONType jsonType = (JSONType) clazz.getAnnotation(JSONType.class);
            if (jsonType != null) {
                Class<?> deserializerClass = jsonType.deserializer();
                if (deserializerClass != Void.class) {
                    try {
                        Object deseralizer = deserializerClass.newInstance();
                        if (deseralizer instanceof ObjectDeserializer) {
                            return (ObjectDeserializer) deseralizer;
                        }
                    } catch (Throwable th) {
                    }
                }
                asmEnable = jsonType.asm();
            }
            if (asmEnable) {
                Class<?> superClass = JavaBeanInfo.getBuilderClass(clazz, jsonType);
                if (superClass == null) {
                    superClass = clazz;
                }
                while (Modifier.isPublic(superClass.getModifiers())) {
                    superClass = superClass.getSuperclass();
                    if (superClass != Object.class) {
                        if (superClass == null) {
                            break;
                        }
                    }
                    break;
                }
                asmEnable = false;
            }
        }
        if (clazz.getTypeParameters().length != 0) {
            asmEnable = false;
        }
        if (asmEnable && this.asmFactory != null && this.asmFactory.classLoader.isExternalClass(clazz)) {
            asmEnable = false;
        }
        if (asmEnable) {
            asmEnable = ASMUtils.checkName(clazz.getSimpleName());
        }
        if (asmEnable) {
            if (clazz.isInterface()) {
                asmEnable = false;
            }
            beanInfo = JavaBeanInfo.build(clazz, type, this.propertyNamingStrategy);
            if (asmEnable && beanInfo.fields.length > 200) {
                asmEnable = false;
            }
            Constructor<?> defaultConstructor = beanInfo.defaultConstructor;
            if (asmEnable && defaultConstructor == null && !clazz.isInterface()) {
                asmEnable = false;
            }
            FieldInfo[] fieldInfoArr = beanInfo.fields;
            int length = fieldInfoArr.length;
            int i = 0;
            while (i < length) {
                FieldInfo fieldInfo = fieldInfoArr[i];
                if (!fieldInfo.getOnly) {
                    Type fieldClass = fieldInfo.fieldClass;
                    if (Modifier.isPublic(fieldClass.getModifiers())) {
                        if (!fieldClass.isMemberClass() || Modifier.isStatic(fieldClass.getModifiers())) {
                            if (fieldInfo.getMember() != null && !ASMUtils.checkName(fieldInfo.getMember().getName())) {
                                asmEnable = false;
                                break;
                            }
                            JSONField annotation = fieldInfo.getAnnotation();
                            if (annotation == null || (ASMUtils.checkName(annotation.name()) && annotation.format().length() == 0 && annotation.deserializeUsing() == Void.class && !annotation.unwrapped())) {
                                if (fieldClass.isEnum() && !(getDeserializer(fieldClass) instanceof EnumDeserializer)) {
                                    asmEnable = false;
                                    break;
                                }
                                i++;
                            } else {
                                asmEnable = false;
                                break;
                            }
                        }
                        asmEnable = false;
                        break;
                    }
                    asmEnable = false;
                    break;
                }
                asmEnable = false;
                break;
            }
        }
        if (asmEnable && clazz.isMemberClass() && !Modifier.isStatic(clazz.getModifiers())) {
            asmEnable = false;
        }
        if (!asmEnable) {
            return new JavaBeanDeserializer(this, clazz, type);
        }
        beanInfo = JavaBeanInfo.build(clazz, type, this.propertyNamingStrategy);
        try {
            return this.asmFactory.createJavaBeanDeserializer(this, beanInfo);
        } catch (NoSuchMethodException e) {
            return new JavaBeanDeserializer(this, clazz, type);
        } catch (JSONException e2) {
            return new JavaBeanDeserializer(this, beanInfo);
        } catch (Exception e3) {
            throw new JSONException("create asm deserializer error, " + clazz.getName(), e3);
        }
    }

    public FieldDeserializer createFieldDeserializer(ParserConfig mapping, JavaBeanInfo beanInfo, FieldInfo fieldInfo) {
        Class<?> clazz = beanInfo.clazz;
        Class<?> fieldClass = fieldInfo.fieldClass;
        Class<?> deserializeUsing = null;
        JSONField annotation = fieldInfo.getAnnotation();
        if (annotation != null) {
            deserializeUsing = annotation.deserializeUsing();
            if (deserializeUsing == Void.class) {
                deserializeUsing = null;
            }
        }
        if (deserializeUsing == null && (fieldClass == List.class || fieldClass == ArrayList.class)) {
            return new ArrayListTypeFieldDeserializer(mapping, clazz, fieldInfo);
        }
        return new DefaultFieldDeserializer(mapping, clazz, fieldInfo);
    }

    public void putDeserializer(Type type, ObjectDeserializer deserializer) {
        this.deserializers.put(type, deserializer);
    }

    public ObjectDeserializer getDeserializer(FieldInfo fieldInfo) {
        return getDeserializer(fieldInfo.fieldClass, fieldInfo.fieldType);
    }

    public boolean isPrimitive(Class<?> clazz) {
        return isPrimitive2(clazz);
    }

    public static boolean isPrimitive2(Class<?> clazz) {
        if (clazz.isPrimitive() || clazz == Boolean.class || clazz == Character.class || clazz == Byte.class || clazz == Short.class || clazz == Integer.class || clazz == Long.class || clazz == Float.class || clazz == Double.class || clazz == BigInteger.class || clazz == BigDecimal.class || clazz == String.class || clazz == java.util.Date.class || clazz == Date.class || clazz == Time.class || clazz == Timestamp.class || clazz.isEnum()) {
            return true;
        }
        return false;
    }

    public static void parserAllFieldToCache(Class<?> clazz, Map<String, Field> fieldCacheMap) {
        for (Field field : clazz.getDeclaredFields()) {
            String fieldName = field.getName();
            if (!fieldCacheMap.containsKey(fieldName)) {
                fieldCacheMap.put(fieldName, field);
            }
        }
        if (clazz.getSuperclass() != null && clazz.getSuperclass() != Object.class) {
            parserAllFieldToCache(clazz.getSuperclass(), fieldCacheMap);
        }
    }

    public static Field getFieldFromCache(String fieldName, Map<String, Field> fieldCacheMap) {
        Field field = (Field) fieldCacheMap.get(fieldName);
        if (field == null) {
            field = (Field) fieldCacheMap.get(LoginConstants.UNDER_LINE + fieldName);
        }
        if (field == null) {
            field = (Field) fieldCacheMap.get("m_" + fieldName);
        }
        if (field != null) {
            return field;
        }
        char c0 = fieldName.charAt(0);
        if (c0 < 'a' || c0 > 'z') {
            return field;
        }
        char[] chars = fieldName.toCharArray();
        chars[0] = (char) (chars[0] - 32);
        return (Field) fieldCacheMap.get(new String(chars));
    }

    public ClassLoader getDefaultClassLoader() {
        return this.defaultClassLoader;
    }

    public void setDefaultClassLoader(ClassLoader defaultClassLoader) {
        this.defaultClassLoader = defaultClassLoader;
    }

    public void addDeny(String name) {
        if (name != null && name.length() != 0) {
            String[] strArr = this.denyList;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                if (!name.equals(strArr[i])) {
                    i++;
                } else {
                    return;
                }
            }
            String[] denyList = new String[(this.denyList.length + 1)];
            System.arraycopy(this.denyList, 0, denyList, 0, this.denyList.length);
            denyList[denyList.length - 1] = name;
            this.denyList = denyList;
        }
    }

    public void addAccept(String name) {
        if (name != null && name.length() != 0) {
            String[] strArr = this.acceptList;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                if (!name.equals(strArr[i])) {
                    i++;
                } else {
                    return;
                }
            }
            String[] acceptList = new String[(this.acceptList.length + 1)];
            System.arraycopy(this.acceptList, 0, acceptList, 0, this.acceptList.length);
            acceptList[acceptList.length - 1] = name;
            this.acceptList = acceptList;
        }
    }

    public Class<?> checkAutoType(String typeName, Class<?> expectClass) {
        if (typeName == null) {
            return null;
        }
        if (typeName.length() >= this.maxTypeNameLength) {
            throw new JSONException("autoType is not support. " + typeName);
        }
        String className = typeName.replace('$', '.');
        if (this.autoTypeSupport || expectClass != null) {
            for (String accept : this.acceptList) {
                if (className.startsWith(accept)) {
                    return TypeUtils.loadClass(typeName, this.defaultClassLoader);
                }
            }
            for (String deny : this.denyList) {
                if (className.startsWith(deny) && TypeUtils.getClassFromMapping(typeName) == null) {
                    throw new JSONException("autoType is not support. " + typeName);
                }
            }
        }
        Class<?> clazz = TypeUtils.getClassFromMapping(typeName);
        if (clazz == null) {
            clazz = this.deserializers.findClass(typeName);
        }
        if (clazz == null) {
            if (!this.autoTypeSupport) {
                for (String deny2 : this.denyList) {
                    if (className.startsWith(deny2)) {
                        throw new JSONException("autoType is not support. " + typeName);
                    }
                }
                for (String accept2 : this.acceptList) {
                    if (className.startsWith(accept2)) {
                        clazz = TypeUtils.loadClass(typeName, this.defaultClassLoader);
                        if (expectClass == null || !expectClass.isAssignableFrom(clazz)) {
                            return clazz;
                        }
                        throw new JSONException("type not match. " + typeName + " -> " + expectClass.getName());
                    }
                }
            }
            clazz = TypeUtils.loadClass(typeName, this.defaultClassLoader);
            if (clazz != null) {
                if (clazz.getAnnotation(JSONType.class) != null) {
                    return clazz;
                }
                if (ClassLoader.class.isAssignableFrom(clazz) || DataSource.class.isAssignableFrom(clazz)) {
                    throw new JSONException("autoType is not support. " + typeName);
                } else if (expectClass != null) {
                    if (expectClass.isAssignableFrom(clazz)) {
                        return clazz;
                    }
                    throw new JSONException("type not match. " + typeName + " -> " + expectClass.getName());
                } else if (JavaBeanInfo.build(clazz, clazz, this.propertyNamingStrategy).creatorConstructor != null && this.autoTypeSupport) {
                    throw new JSONException("autoType is not support. " + typeName);
                }
            }
            if (this.autoTypeSupport) {
                return clazz;
            }
            throw new JSONException("autoType is not support. " + typeName);
        } else if (expectClass == null || expectClass.isAssignableFrom(clazz)) {
            return clazz;
        } else {
            throw new JSONException("type not match. " + typeName + " -> " + expectClass.getName());
        }
    }
}
