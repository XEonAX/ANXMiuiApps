package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONAware;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONStreamAware;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec;
import com.alibaba.fastjson.parser.deserializer.OptionalCodec;
import com.alibaba.fastjson.support.springfox.SwaggerJsonSerializer;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.IdentityHashMap;
import com.alibaba.fastjson.util.ServiceLoader;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.File;
import java.io.Serializable;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Clob;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.xml.datatype.XMLGregorianCalendar;

public class SerializeConfig {
    private static boolean awtError = false;
    public static final SerializeConfig globalInstance = new SerializeConfig();
    private static boolean guavaError = false;
    private static boolean jdk8Error = false;
    private static boolean jsonnullError = false;
    private static boolean oracleJdbcError = false;
    private static boolean springfoxError = false;
    private boolean asm;
    private ASMSerializerFactory asmFactory;
    private final boolean fieldBased;
    public PropertyNamingStrategy propertyNamingStrategy;
    private final IdentityHashMap<Type, ObjectSerializer> serializers;
    protected String typeKey;

    public String getTypeKey() {
        return this.typeKey;
    }

    public void setTypeKey(String typeKey) {
        this.typeKey = typeKey;
    }

    private final JavaBeanSerializer createASMSerializer(SerializeBeanInfo beanInfo) throws Exception {
        JavaBeanSerializer serializer = this.asmFactory.createJavaBeanSerializer(beanInfo);
        for (FieldSerializer fieldDeser : serializer.sortedGetters) {
            Class<?> fieldClass = fieldDeser.fieldInfo.fieldClass;
            if (fieldClass.isEnum() && !(getObjectWriter(fieldClass) instanceof EnumSerializer)) {
                serializer.writeDirect = false;
            }
        }
        return serializer;
    }

    public final ObjectSerializer createJavaBeanSerializer(Class<?> clazz) {
        SerializeBeanInfo beanInfo = TypeUtils.buildBeanInfo(clazz, null, this.propertyNamingStrategy, this.fieldBased);
        if (beanInfo.fields.length == 0 && Iterable.class.isAssignableFrom(clazz)) {
            return MiscCodec.instance;
        }
        return createJavaBeanSerializer(beanInfo);
    }

    /* JADX WARNING: Missing block: B:85:0x0138, code:
            r2 = false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public ObjectSerializer createJavaBeanSerializer(SerializeBeanInfo beanInfo) {
        int i;
        JSONType jsonType = beanInfo.jsonType;
        if (jsonType != null) {
            Class<?> serializerClass = jsonType.serializer();
            if (serializerClass != Void.class) {
                try {
                    Object seralizer = serializerClass.newInstance();
                    if (seralizer instanceof ObjectSerializer) {
                        return (ObjectSerializer) seralizer;
                    }
                } catch (Throwable th) {
                }
            }
            if (!jsonType.asm()) {
                this.asm = false;
            }
            for (SerializerFeature feature : jsonType.serialzeFeatures()) {
                if (SerializerFeature.WriteNonStringValueAsString == feature || SerializerFeature.WriteEnumUsingToString == feature || SerializerFeature.NotWriteDefaultValue == feature) {
                    this.asm = false;
                    break;
                }
            }
        }
        Class<?> clazz = beanInfo.beanType;
        if (!Modifier.isPublic(beanInfo.beanType.getModifiers())) {
            return new JavaBeanSerializer(beanInfo);
        }
        boolean asm = this.asm && !this.fieldBased;
        if ((asm && this.asmFactory.classLoader.isExternalClass(clazz)) || clazz == Serializable.class || clazz == Object.class) {
            asm = false;
        }
        if (asm && !ASMUtils.checkName(clazz.getSimpleName())) {
            asm = false;
        }
        if (asm && beanInfo.beanType.isInterface()) {
            asm = false;
        }
        if (asm) {
            FieldInfo[] fieldInfoArr = beanInfo.fields;
            int length = fieldInfoArr.length;
            i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= length) {
                    break;
                }
                FieldInfo fieldInfo = fieldInfoArr[i2];
                Field field = fieldInfo.field;
                if (field != null && !field.getType().equals(fieldInfo.fieldClass)) {
                    asm = false;
                    break;
                }
                Method method = fieldInfo.method;
                if (method != null && !method.getReturnType().equals(fieldInfo.fieldClass)) {
                    asm = false;
                    break;
                }
                JSONField annotation = fieldInfo.getAnnotation();
                if (annotation != null) {
                    String format = annotation.format();
                    if (format.length() == 0 || (fieldInfo.fieldClass == String.class && "trim".equals(format))) {
                        if (!ASMUtils.checkName(annotation.name()) || annotation.jsonDirect() || annotation.serializeUsing() != Void.class || annotation.unwrapped()) {
                            asm = false;
                        } else {
                            for (SerializerFeature feature2 : annotation.serialzeFeatures()) {
                                if (SerializerFeature.WriteNonStringValueAsString == feature2 || SerializerFeature.WriteEnumUsingToString == feature2 || SerializerFeature.NotWriteDefaultValue == feature2 || SerializerFeature.WriteClassName == feature2) {
                                    asm = false;
                                    break;
                                }
                            }
                            if (TypeUtils.isAnnotationPresentOneToMany(method)) {
                                asm = true;
                                break;
                            }
                        }
                    }
                }
                i = i2 + 1;
            }
        }
        if (asm) {
            try {
                ObjectSerializer asmSerializer = createASMSerializer(beanInfo);
                if (asmSerializer != null) {
                    return asmSerializer;
                }
            } catch (ClassNotFoundException e) {
            } catch (ClassFormatError e2) {
            } catch (ClassCastException e3) {
            } catch (Throwable e4) {
                JSONException jSONException = new JSONException("create asm serializer error, class " + clazz, e4);
            }
        }
        return new JavaBeanSerializer(beanInfo);
    }

    public boolean isAsmEnable() {
        return this.asm;
    }

    public void setAsmEnable(boolean asmEnable) {
        if (!ASMUtils.IS_ANDROID) {
            this.asm = asmEnable;
        }
    }

    public static SerializeConfig getGlobalInstance() {
        return globalInstance;
    }

    public SerializeConfig() {
        this(1024);
    }

    public SerializeConfig(boolean fieldBase) {
        this(1024, fieldBase);
    }

    public SerializeConfig(int tableSize) {
        this(tableSize, false);
    }

    public SerializeConfig(int tableSize, boolean fieldBase) {
        this.asm = !ASMUtils.IS_ANDROID;
        this.typeKey = JSON.DEFAULT_TYPE_KEY;
        this.fieldBased = fieldBase;
        this.serializers = new IdentityHashMap(tableSize);
        try {
            if (this.asm) {
                this.asmFactory = new ASMSerializerFactory();
            }
        } catch (Throwable th) {
            this.asm = false;
        }
        put((Type) Boolean.class, BooleanCodec.instance);
        put((Type) Character.class, CharacterCodec.instance);
        put((Type) Byte.class, IntegerCodec.instance);
        put((Type) Short.class, IntegerCodec.instance);
        put((Type) Integer.class, IntegerCodec.instance);
        put((Type) Long.class, LongCodec.instance);
        put((Type) Float.class, FloatCodec.instance);
        put((Type) Double.class, DoubleSerializer.instance);
        put((Type) BigDecimal.class, BigDecimalCodec.instance);
        put((Type) BigInteger.class, BigIntegerCodec.instance);
        put((Type) String.class, StringCodec.instance);
        put((Type) byte[].class, PrimitiveArraySerializer.instance);
        put((Type) short[].class, PrimitiveArraySerializer.instance);
        put((Type) int[].class, PrimitiveArraySerializer.instance);
        put((Type) long[].class, PrimitiveArraySerializer.instance);
        put((Type) float[].class, PrimitiveArraySerializer.instance);
        put((Type) double[].class, PrimitiveArraySerializer.instance);
        put((Type) boolean[].class, PrimitiveArraySerializer.instance);
        put((Type) char[].class, PrimitiveArraySerializer.instance);
        put((Type) Object[].class, ObjectArrayCodec.instance);
        put((Type) Class.class, MiscCodec.instance);
        put((Type) SimpleDateFormat.class, MiscCodec.instance);
        put((Type) Currency.class, new MiscCodec());
        put((Type) TimeZone.class, MiscCodec.instance);
        put((Type) InetAddress.class, MiscCodec.instance);
        put((Type) Inet4Address.class, MiscCodec.instance);
        put((Type) Inet6Address.class, MiscCodec.instance);
        put((Type) InetSocketAddress.class, MiscCodec.instance);
        put((Type) File.class, MiscCodec.instance);
        put((Type) Appendable.class, AppendableSerializer.instance);
        put((Type) StringBuffer.class, AppendableSerializer.instance);
        put((Type) StringBuilder.class, AppendableSerializer.instance);
        put((Type) Charset.class, ToStringSerializer.instance);
        put((Type) Pattern.class, ToStringSerializer.instance);
        put((Type) Locale.class, ToStringSerializer.instance);
        put((Type) URI.class, ToStringSerializer.instance);
        put((Type) URL.class, ToStringSerializer.instance);
        put((Type) UUID.class, ToStringSerializer.instance);
        put((Type) AtomicBoolean.class, AtomicCodec.instance);
        put((Type) AtomicInteger.class, AtomicCodec.instance);
        put((Type) AtomicLong.class, AtomicCodec.instance);
        put((Type) AtomicReference.class, ReferenceCodec.instance);
        put((Type) AtomicIntegerArray.class, AtomicCodec.instance);
        put((Type) AtomicLongArray.class, AtomicCodec.instance);
        put((Type) WeakReference.class, ReferenceCodec.instance);
        put((Type) SoftReference.class, ReferenceCodec.instance);
        put((Type) LinkedList.class, CollectionCodec.instance);
    }

    public void addFilter(Class<?> clazz, SerializeFilter filter) {
        ObjectSerializer serializer = getObjectWriter(clazz);
        if (serializer instanceof SerializeFilterable) {
            SerializeFilterable filterable = (SerializeFilterable) serializer;
            if (this == globalInstance || filterable != MapSerializer.instance) {
                filterable.addFilter(filter);
                return;
            }
            ObjectSerializer newMapSer = new MapSerializer();
            put((Type) clazz, newMapSer);
            newMapSer.addFilter(filter);
        }
    }

    public void config(Class<?> clazz, SerializerFeature feature, boolean value) {
        ObjectSerializer serializer = getObjectWriter(clazz, false);
        SerializeBeanInfo beanInfo;
        if (serializer == null) {
            beanInfo = TypeUtils.buildBeanInfo(clazz, null, this.propertyNamingStrategy);
            if (value) {
                beanInfo.features |= feature.mask;
            } else {
                beanInfo.features &= feature.mask ^ -1;
            }
            put((Type) clazz, createJavaBeanSerializer(beanInfo));
        } else if (serializer instanceof JavaBeanSerializer) {
            beanInfo = ((JavaBeanSerializer) serializer).beanInfo;
            int originalFeaturs = beanInfo.features;
            if (value) {
                beanInfo.features |= feature.mask;
            } else {
                beanInfo.features &= feature.mask ^ -1;
            }
            if (originalFeaturs != beanInfo.features && serializer.getClass() != JavaBeanSerializer.class) {
                put((Type) clazz, createJavaBeanSerializer(beanInfo));
            }
        }
    }

    public ObjectSerializer getObjectWriter(Class<?> clazz) {
        return getObjectWriter(clazz, true);
    }

    private ObjectSerializer getObjectWriter(Class<?> clazz, boolean create) {
        ObjectSerializer autowired;
        ObjectSerializer writer = (ObjectSerializer) this.serializers.get(clazz);
        if (writer == null) {
            try {
                for (Object o : ServiceLoader.load(AutowiredObjectSerializer.class, Thread.currentThread().getContextClassLoader())) {
                    if (o instanceof AutowiredObjectSerializer) {
                        autowired = (AutowiredObjectSerializer) o;
                        for (Type forType : autowired.getAutowiredFor()) {
                            put(forType, autowired);
                        }
                    }
                }
            } catch (ClassCastException e) {
            }
            writer = (ObjectSerializer) this.serializers.get(clazz);
        }
        if (writer == null) {
            ClassLoader classLoader = JSON.class.getClassLoader();
            if (classLoader != Thread.currentThread().getContextClassLoader()) {
                try {
                    for (Object o2 : ServiceLoader.load(AutowiredObjectSerializer.class, classLoader)) {
                        if (o2 instanceof AutowiredObjectSerializer) {
                            autowired = (AutowiredObjectSerializer) o2;
                            for (Type forType2 : autowired.getAutowiredFor()) {
                                put(forType2, autowired);
                            }
                        }
                    }
                } catch (ClassCastException e2) {
                }
                writer = (ObjectSerializer) this.serializers.get(clazz);
            }
        }
        if (writer == null) {
            String className = clazz.getName();
            ObjectSerializer arraySerializer;
            if (Map.class.isAssignableFrom(clazz)) {
                writer = MapSerializer.instance;
                put((Type) clazz, writer);
            } else if (List.class.isAssignableFrom(clazz)) {
                writer = ListSerializer.instance;
                put((Type) clazz, writer);
            } else if (Collection.class.isAssignableFrom(clazz)) {
                writer = CollectionCodec.instance;
                put((Type) clazz, writer);
            } else if (Date.class.isAssignableFrom(clazz)) {
                writer = DateCodec.instance;
                put((Type) clazz, writer);
            } else if (JSONAware.class.isAssignableFrom(clazz)) {
                writer = JSONAwareSerializer.instance;
                put((Type) clazz, writer);
            } else if (JSONSerializable.class.isAssignableFrom(clazz)) {
                writer = JSONSerializableSerializer.instance;
                put((Type) clazz, writer);
            } else if (JSONStreamAware.class.isAssignableFrom(clazz)) {
                writer = MiscCodec.instance;
                put((Type) clazz, writer);
            } else if (clazz.isEnum() || (clazz.getSuperclass() != null && clazz.getSuperclass().isEnum())) {
                JSONType jsonType = (JSONType) clazz.getAnnotation(JSONType.class);
                if (jsonType == null || !jsonType.serializeEnumAsJavaBean()) {
                    writer = EnumSerializer.instance;
                    put((Type) clazz, writer);
                } else {
                    writer = createJavaBeanSerializer((Class) clazz);
                    put((Type) clazz, writer);
                }
            } else if (clazz.isArray()) {
                Class<?> componentType = clazz.getComponentType();
                arraySerializer = new ArraySerializer(componentType, getObjectWriter(componentType));
                put((Type) clazz, arraySerializer);
            } else if (Throwable.class.isAssignableFrom(clazz)) {
                SerializeBeanInfo beanInfo = TypeUtils.buildBeanInfo(clazz, null, this.propertyNamingStrategy);
                beanInfo.features |= SerializerFeature.WriteClassName.mask;
                arraySerializer = new JavaBeanSerializer(beanInfo);
                put((Type) clazz, arraySerializer);
            } else if (TimeZone.class.isAssignableFrom(clazz) || Entry.class.isAssignableFrom(clazz)) {
                writer = MiscCodec.instance;
                put((Type) clazz, writer);
            } else if (Appendable.class.isAssignableFrom(clazz)) {
                writer = AppendableSerializer.instance;
                put((Type) clazz, writer);
            } else if (Charset.class.isAssignableFrom(clazz)) {
                writer = ToStringSerializer.instance;
                put((Type) clazz, writer);
            } else if (Enumeration.class.isAssignableFrom(clazz)) {
                writer = EnumerationSerializer.instance;
                put((Type) clazz, writer);
            } else if (Calendar.class.isAssignableFrom(clazz) || XMLGregorianCalendar.class.isAssignableFrom(clazz)) {
                writer = CalendarCodec.instance;
                put((Type) clazz, writer);
            } else if (Clob.class.isAssignableFrom(clazz)) {
                writer = ClobSeriliazer.instance;
                put((Type) clazz, writer);
            } else if (TypeUtils.isPath(clazz)) {
                writer = ToStringSerializer.instance;
                put((Type) clazz, writer);
            } else if (Iterator.class.isAssignableFrom(clazz)) {
                writer = MiscCodec.instance;
                put((Type) clazz, writer);
            } else {
                Class cls;
                if (className.startsWith("java.awt.") && AwtCodec.support(clazz) && !awtError) {
                    try {
                        for (String name : new String[]{"java.awt.Color", "java.awt.Font", "java.awt.Point", "java.awt.Rectangle"}) {
                            if (name.equals(className)) {
                                cls = Class.forName(name);
                                writer = AwtCodec.instance;
                                put((Type) cls, writer);
                                return writer;
                            }
                        }
                    } catch (Throwable th) {
                        awtError = true;
                    }
                }
                if (!jdk8Error && (className.startsWith("java.time.") || className.startsWith("java.util.Optional") || className.equals("java.util.concurrent.atomic.LongAdder") || className.equals("java.util.concurrent.atomic.DoubleAdder"))) {
                    try {
                        for (String name2 : new String[]{"java.time.LocalDateTime", "java.time.LocalDate", "java.time.LocalTime", "java.time.ZonedDateTime", "java.time.OffsetDateTime", "java.time.OffsetTime", "java.time.ZoneOffset", "java.time.ZoneRegion", "java.time.Period", "java.time.Duration", "java.time.Instant"}) {
                            if (name2.equals(className)) {
                                cls = Class.forName(name2);
                                writer = Jdk8DateCodec.instance;
                                put((Type) cls, writer);
                                return writer;
                            }
                        }
                        for (String name22 : new String[]{"java.util.Optional", "java.util.OptionalDouble", "java.util.OptionalInt", "java.util.OptionalLong"}) {
                            if (name22.equals(className)) {
                                cls = Class.forName(name22);
                                writer = OptionalCodec.instance;
                                put((Type) cls, writer);
                                return writer;
                            }
                        }
                        for (String name222 : new String[]{"java.util.concurrent.atomic.LongAdder", "java.util.concurrent.atomic.DoubleAdder"}) {
                            if (name222.equals(className)) {
                                cls = Class.forName(name222);
                                writer = AdderSerializer.instance;
                                put((Type) cls, writer);
                                return writer;
                            }
                        }
                    } catch (Throwable th2) {
                        jdk8Error = true;
                    }
                }
                if (!oracleJdbcError && className.startsWith("oracle.sql.")) {
                    try {
                        for (String name2222 : new String[]{"oracle.sql.DATE", "oracle.sql.TIMESTAMP"}) {
                            if (name2222.equals(className)) {
                                cls = Class.forName(name2222);
                                writer = DateCodec.instance;
                                put((Type) cls, writer);
                                return writer;
                            }
                        }
                    } catch (Throwable th3) {
                        oracleJdbcError = true;
                    }
                }
                if (!springfoxError && className.equals("springfox.documentation.spring.web.json.Json")) {
                    try {
                        cls = Class.forName("springfox.documentation.spring.web.json.Json");
                        writer = SwaggerJsonSerializer.instance;
                        put((Type) cls, writer);
                        return writer;
                    } catch (ClassNotFoundException e3) {
                        springfoxError = true;
                    }
                }
                if (!guavaError && className.startsWith("com.google.common.collect.")) {
                    try {
                        for (String name22222 : new String[]{"com.google.common.collect.HashMultimap", "com.google.common.collect.LinkedListMultimap", "com.google.common.collect.ArrayListMultimap", "com.google.common.collect.TreeMultimap"}) {
                            if (name22222.equals(className)) {
                                cls = Class.forName(name22222);
                                writer = GuavaCodec.instance;
                                put((Type) cls, writer);
                                return writer;
                            }
                        }
                    } catch (ClassNotFoundException e4) {
                        guavaError = true;
                    }
                }
                if (!jsonnullError && className.equals("net.sf.json.JSONNull")) {
                    try {
                        cls = Class.forName("net.sf.json.JSONNull");
                        writer = MiscCodec.instance;
                        put((Type) cls, writer);
                        return writer;
                    } catch (ClassNotFoundException e5) {
                        jsonnullError = true;
                    }
                }
                Class[] interfaces = clazz.getInterfaces();
                if (interfaces.length == 1 && interfaces[0].isAnnotation()) {
                    return AnnotationSerializer.instance;
                }
                ObjectSerializer superWriter;
                if (TypeUtils.isProxy(clazz)) {
                    superWriter = getObjectWriter(clazz.getSuperclass());
                    put((Type) clazz, superWriter);
                    return superWriter;
                }
                if (Proxy.isProxyClass(clazz)) {
                    Class handlerClass = null;
                    if (interfaces.length == 2) {
                        handlerClass = interfaces[1];
                    } else {
                        for (Class proxiedInterface : interfaces) {
                            if (!proxiedInterface.getName().startsWith("org.springframework.aop.")) {
                                if (handlerClass != null) {
                                    handlerClass = null;
                                    break;
                                }
                                handlerClass = proxiedInterface;
                            }
                        }
                    }
                    if (handlerClass != null) {
                        superWriter = getObjectWriter(handlerClass);
                        put((Type) clazz, superWriter);
                        return superWriter;
                    }
                }
                if (create) {
                    writer = createJavaBeanSerializer((Class) clazz);
                    put((Type) clazz, writer);
                }
            }
            if (writer == null) {
                writer = (ObjectSerializer) this.serializers.get(clazz);
            }
        }
        return writer;
    }

    public final ObjectSerializer get(Type key) {
        return (ObjectSerializer) this.serializers.get(key);
    }

    public boolean put(Object type, Object value) {
        return put((Type) type, (ObjectSerializer) value);
    }

    public boolean put(Type type, ObjectSerializer value) {
        return this.serializers.put(type, value);
    }

    public void configEnumAsJavaBean(Class<? extends Enum>... enumClasses) {
        for (Type enumClass : enumClasses) {
            put(enumClass, createJavaBeanSerializer((Class) enumClass));
        }
    }

    public void setPropertyNamingStrategy(PropertyNamingStrategy propertyNamingStrategy) {
        this.propertyNamingStrategy = propertyNamingStrategy;
    }
}
