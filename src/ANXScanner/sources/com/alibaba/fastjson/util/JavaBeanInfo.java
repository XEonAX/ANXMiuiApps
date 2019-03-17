package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONCreator;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONPOJOBuilder;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public class JavaBeanInfo {
    public final Method buildMethod;
    public final Class<?> builderClass;
    public final Class<?> clazz;
    public final Constructor<?> creatorConstructor;
    public Type[] creatorConstructorParameterTypes;
    public String[] creatorConstructorParameters;
    public final Constructor<?> defaultConstructor;
    public final int defaultConstructorParameterSize;
    public final Method factoryMethod;
    public final FieldInfo[] fields;
    public final JSONType jsonType;
    public String[] orders;
    public final int parserFeatures;
    public final FieldInfo[] sortedFields;
    public final String typeKey;
    public final String typeName;

    public JavaBeanInfo(Class<?> clazz, Class<?> builderClass, Constructor<?> defaultConstructor, Constructor<?> creatorConstructor, Method factoryMethod, Method buildMethod, JSONType jsonType, List<FieldInfo> fieldList) {
        this.clazz = clazz;
        this.builderClass = builderClass;
        this.defaultConstructor = defaultConstructor;
        this.creatorConstructor = creatorConstructor;
        this.factoryMethod = factoryMethod;
        this.parserFeatures = TypeUtils.getParserFeatures(clazz);
        this.buildMethod = buildMethod;
        this.jsonType = jsonType;
        if (jsonType != null) {
            String typeName = jsonType.typeName();
            String typeKey = jsonType.typeKey();
            if (typeKey.length() <= 0) {
                typeKey = null;
            }
            this.typeKey = typeKey;
            if (typeName.length() != 0) {
                this.typeName = typeName;
            } else {
                this.typeName = clazz.getName();
            }
            String[] orders = jsonType.orders();
            if (orders.length == 0) {
                orders = null;
            }
            this.orders = orders;
        } else {
            this.typeName = clazz.getName();
            this.typeKey = null;
            this.orders = null;
        }
        this.fields = new FieldInfo[fieldList.size()];
        fieldList.toArray(this.fields);
        FieldInfo[] sortedFields = new FieldInfo[this.fields.length];
        if (this.orders != null) {
            FieldInfo field;
            int i;
            LinkedHashMap<String, FieldInfo> map = new LinkedHashMap(fieldList.size());
            for (FieldInfo field2 : this.fields) {
                map.put(field2.name, field2);
            }
            String[] strArr = this.orders;
            int length = strArr.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                String item = strArr[i2];
                field2 = (FieldInfo) map.get(item);
                if (field2 != null) {
                    i = i3 + 1;
                    sortedFields[i3] = field2;
                    map.remove(item);
                } else {
                    i = i3;
                }
                i2++;
                i3 = i;
            }
            Iterator it = map.values().iterator();
            while (true) {
                i = i3;
                if (!it.hasNext()) {
                    break;
                }
                i3 = i + 1;
                sortedFields[i] = (FieldInfo) it.next();
            }
        } else {
            System.arraycopy(this.fields, 0, sortedFields, 0, this.fields.length);
            Arrays.sort(sortedFields);
        }
        if (Arrays.equals(this.fields, sortedFields)) {
            sortedFields = this.fields;
        }
        this.sortedFields = sortedFields;
        if (defaultConstructor != null) {
            this.defaultConstructorParameterSize = defaultConstructor.getParameterTypes().length;
        } else if (factoryMethod != null) {
            this.defaultConstructorParameterSize = factoryMethod.getParameterTypes().length;
        } else {
            this.defaultConstructorParameterSize = 0;
        }
        if (creatorConstructor != null) {
            this.creatorConstructorParameterTypes = creatorConstructor.getParameterTypes();
            if (this.creatorConstructorParameterTypes.length != this.fields.length) {
                this.creatorConstructorParameters = ASMUtils.lookupParameterNames(creatorConstructor);
            }
        }
    }

    private static FieldInfo getField(List<FieldInfo> fieldList, String propertyName) {
        for (FieldInfo item : fieldList) {
            if (item.name.equals(propertyName)) {
                return item;
            }
            Field field = item.field;
            if (field != null && item.getAnnotation() != null && field.getName().equals(propertyName)) {
                return item;
            }
        }
        return null;
    }

    static boolean add(List<FieldInfo> fieldList, FieldInfo field) {
        int i = fieldList.size() - 1;
        while (i >= 0) {
            FieldInfo item = (FieldInfo) fieldList.get(i);
            if (!item.name.equals(field.name) || (item.getOnly && !field.getOnly)) {
                i--;
            } else {
                if (item.fieldClass.isAssignableFrom(field.fieldClass)) {
                    fieldList.remove(i);
                } else if (item.compareTo(field) >= 0) {
                    return false;
                } else {
                    fieldList.remove(i);
                }
                fieldList.add(field);
                return true;
            }
        }
        fieldList.add(field);
        return true;
    }

    public static JavaBeanInfo build(Class<?> clazz, Type type, PropertyNamingStrategy propertyNamingStrategy) {
        return build(clazz, type, propertyNamingStrategy, false, TypeUtils.compatibleWithJavaBean);
    }

    public static JavaBeanInfo build(Class<?> clazz, Type type, PropertyNamingStrategy propertyNamingStrategy, boolean fieldBased, boolean compatibleWithJavaBean) {
        JSONType jsonType = (JSONType) clazz.getAnnotation(JSONType.class);
        Class<?> builderClass = getBuilderClass(clazz, jsonType);
        Field[] declaredFields = clazz.getDeclaredFields();
        Method[] methods = clazz.getMethods();
        boolean kotlin = TypeUtils.isKotlin(clazz);
        Constructor[] constructors = clazz.getDeclaredConstructors();
        Constructor<?> defaultConstructor = null;
        if (!kotlin) {
            if (builderClass == null) {
                defaultConstructor = getDefaultConstructor(clazz, constructors);
            } else {
                defaultConstructor = getDefaultConstructor(builderClass, builderClass.getDeclaredConstructors());
            }
        }
        Constructor<?> creatorConstructor = null;
        Method buildMethod = null;
        Method factoryMethod = null;
        List<FieldInfo> fieldList = new ArrayList();
        if (fieldBased) {
            for (Class<?> currentClass = clazz; currentClass != null; currentClass = currentClass.getSuperclass()) {
                computeFields(clazz, type, propertyNamingStrategy, fieldList, currentClass.getDeclaredFields());
            }
            return new JavaBeanInfo(clazz, builderClass, defaultConstructor, null, null, buildMethod, jsonType, fieldList);
        }
        Class<?>[] types;
        JSONField fieldAnnotation;
        int i;
        int length;
        Field field;
        int ordinal;
        int serialzeFeatures;
        int parserFeatures;
        JSONField annotation;
        String methodName;
        String propertyName;
        boolean isInterfaceOrAbstract = clazz.isInterface() || Modifier.isAbstract(clazz.getModifiers());
        if ((defaultConstructor == null && builderClass == null) || isInterfaceOrAbstract) {
            creatorConstructor = getCreatorConstructor(constructors);
            Annotation[][] paramAnnotationArrays;
            int i2;
            if (creatorConstructor == null || isInterfaceOrAbstract) {
                factoryMethod = getFactoryMethod(clazz, methods);
                if (factoryMethod != null) {
                    TypeUtils.setAccessible(factoryMethod);
                    types = factoryMethod.getParameterTypes();
                    if (types.length > 0) {
                        paramAnnotationArrays = factoryMethod.getParameterAnnotations();
                        for (i2 = 0; i2 < types.length; i2++) {
                            fieldAnnotation = null;
                            for (Annotation paramAnnotation : paramAnnotationArrays[i2]) {
                                if (paramAnnotation instanceof JSONField) {
                                    fieldAnnotation = (JSONField) paramAnnotation;
                                    break;
                                }
                            }
                            if (fieldAnnotation == null) {
                                throw new JSONException("illegal json creator");
                            }
                            add(fieldList, new FieldInfo(fieldAnnotation.name(), clazz, types[i2], factoryMethod.getGenericParameterTypes()[i2], TypeUtils.getField(clazz, fieldAnnotation.name(), declaredFields), fieldAnnotation.ordinal(), SerializerFeature.of(fieldAnnotation.serialzeFeatures()), Feature.of(fieldAnnotation.parseFeatures())));
                        }
                        return new JavaBeanInfo(clazz, builderClass, null, null, factoryMethod, null, jsonType, fieldList);
                    }
                } else if (!isInterfaceOrAbstract) {
                    String className = clazz.getName();
                    String[] paramNames = null;
                    if (!kotlin || constructors.length <= 0) {
                        length = constructors.length;
                        i = 0;
                        while (i < length) {
                            Constructor<?> constructor = constructors[i];
                            Class<?>[] parameterTypes = constructor.getParameterTypes();
                            if (!className.equals("org.springframework.security.web.authentication.WebAuthenticationDetails") || parameterTypes.length != 2 || parameterTypes[0] != String.class || parameterTypes[1] != String.class) {
                                if (!className.equals("org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken") || parameterTypes.length != 3 || parameterTypes[0] != Object.class || parameterTypes[1] != Object.class || parameterTypes[2] != Collection.class) {
                                    if (className.equals("org.springframework.security.core.authority.SimpleGrantedAuthority") && parameterTypes.length == 1 && parameterTypes[0] == String.class) {
                                        creatorConstructor = constructor;
                                        paramNames = new String[]{"authority"};
                                        break;
                                    }
                                    if ((constructor.getModifiers() & 1) != 0) {
                                        String[] lookupParameterNames = ASMUtils.lookupParameterNames(constructor);
                                        if (!(lookupParameterNames == null || lookupParameterNames.length == 0 || (creatorConstructor != null && lookupParameterNames.length <= paramNames.length))) {
                                            paramNames = lookupParameterNames;
                                            creatorConstructor = constructor;
                                        }
                                    }
                                    i++;
                                } else {
                                    creatorConstructor = constructor;
                                    creatorConstructor.setAccessible(true);
                                    paramNames = new String[]{"principal", "credentials", "authorities"};
                                    break;
                                }
                            }
                            creatorConstructor = constructor;
                            creatorConstructor.setAccessible(true);
                            paramNames = ASMUtils.lookupParameterNames(constructor);
                            break;
                        }
                    }
                    paramNames = TypeUtils.getKoltinConstructorParameters(clazz);
                    creatorConstructor = TypeUtils.getKoltinConstructor(constructors);
                    TypeUtils.setAccessible(creatorConstructor);
                    types = null;
                    if (paramNames != null) {
                        types = creatorConstructor.getParameterTypes();
                    }
                    if (paramNames == null || types.length != paramNames.length) {
                        throw new JSONException("default constructor not found. " + clazz);
                    }
                    paramAnnotationArrays = creatorConstructor.getParameterAnnotations();
                    for (i2 = 0; i2 < types.length; i2++) {
                        Annotation[] paramAnnotations = paramAnnotationArrays[i2];
                        String paramName = paramNames[i2];
                        fieldAnnotation = null;
                        for (Annotation paramAnnotation2 : paramAnnotations) {
                            if (paramAnnotation2 instanceof JSONField) {
                                fieldAnnotation = (JSONField) paramAnnotation2;
                                break;
                            }
                        }
                        Class<?> fieldClass = types[i2];
                        Type fieldType = creatorConstructor.getGenericParameterTypes()[i2];
                        field = TypeUtils.getField(clazz, paramName, declaredFields);
                        if (field != null && fieldAnnotation == null) {
                            fieldAnnotation = (JSONField) field.getAnnotation(JSONField.class);
                        }
                        if (fieldAnnotation == null) {
                            ordinal = 0;
                            serialzeFeatures = 0;
                            if ("org.springframework.security.core.userdetails.User".equals(className) && "password".equals(paramName)) {
                                parserFeatures = Feature.InitStringFieldAsEmpty.mask;
                            } else {
                                parserFeatures = 0;
                            }
                        } else {
                            String nameAnnotated = fieldAnnotation.name();
                            if (nameAnnotated.length() != 0) {
                                paramName = nameAnnotated;
                            }
                            ordinal = fieldAnnotation.ordinal();
                            serialzeFeatures = SerializerFeature.of(fieldAnnotation.serialzeFeatures());
                            parserFeatures = Feature.of(fieldAnnotation.parseFeatures());
                        }
                        add(fieldList, new FieldInfo(paramName, clazz, fieldClass, fieldType, field, ordinal, serialzeFeatures, parserFeatures));
                    }
                    if (!clazz.getName().equals("javax.servlet.http.Cookie")) {
                        return new JavaBeanInfo(clazz, builderClass, null, creatorConstructor, null, null, jsonType, fieldList);
                    }
                }
            }
            TypeUtils.setAccessible(creatorConstructor);
            types = creatorConstructor.getParameterTypes();
            if (types.length > 0) {
                paramAnnotationArrays = creatorConstructor.getParameterAnnotations();
                for (i2 = 0; i2 < types.length; i2++) {
                    fieldAnnotation = null;
                    for (Annotation paramAnnotation22 : paramAnnotationArrays[i2]) {
                        if (paramAnnotation22 instanceof JSONField) {
                            fieldAnnotation = (JSONField) paramAnnotation22;
                            break;
                        }
                    }
                    if (fieldAnnotation == null) {
                        throw new JSONException("illegal json creator");
                    }
                    add(fieldList, new FieldInfo(fieldAnnotation.name(), clazz, types[i2], creatorConstructor.getGenericParameterTypes()[i2], TypeUtils.getField(clazz, fieldAnnotation.name(), declaredFields), fieldAnnotation.ordinal(), SerializerFeature.of(fieldAnnotation.serialzeFeatures()), Feature.of(fieldAnnotation.parseFeatures())));
                }
            }
            return new JavaBeanInfo(clazz, builderClass, null, creatorConstructor, null, null, jsonType, fieldList);
        }
        if (defaultConstructor != null) {
            TypeUtils.setAccessible(defaultConstructor);
        }
        if (builderClass != null) {
            String withPrefix = null;
            JSONPOJOBuilder builderAnno = (JSONPOJOBuilder) builderClass.getAnnotation(JSONPOJOBuilder.class);
            if (builderAnno != null) {
                withPrefix = builderAnno.withPrefix();
            }
            if (withPrefix == null || withPrefix.length() == 0) {
                withPrefix = "with";
            }
            for (Method method : builderClass.getMethods()) {
                if (!Modifier.isStatic(method.getModifiers()) && method.getReturnType().equals(builderClass)) {
                    ordinal = 0;
                    serialzeFeatures = 0;
                    parserFeatures = 0;
                    annotation = (JSONField) method.getAnnotation(JSONField.class);
                    if (annotation == null) {
                        annotation = TypeUtils.getSuperMethodAnnotation(clazz, method);
                    }
                    if (annotation != null) {
                        if (annotation.deserialize()) {
                            ordinal = annotation.ordinal();
                            serialzeFeatures = SerializerFeature.of(annotation.serialzeFeatures());
                            parserFeatures = Feature.of(annotation.parseFeatures());
                            if (annotation.name().length() != 0) {
                                add(fieldList, new FieldInfo(annotation.name(), method, null, clazz, type, ordinal, serialzeFeatures, parserFeatures, annotation, null, null));
                            }
                        }
                    }
                    methodName = method.getName();
                    StringBuilder stringBuilder;
                    if (methodName.startsWith("set") && methodName.length() > 3) {
                        stringBuilder = new StringBuilder(methodName.substring(3));
                    } else if (methodName.startsWith(withPrefix) && methodName.length() > withPrefix.length()) {
                        stringBuilder = new StringBuilder(methodName.substring(withPrefix.length()));
                    }
                    char c0 = properNameBuilder.charAt(0);
                    if (Character.isUpperCase(c0)) {
                        properNameBuilder.setCharAt(0, Character.toLowerCase(c0));
                        add(fieldList, new FieldInfo(properNameBuilder.toString(), method, null, clazz, type, ordinal, serialzeFeatures, parserFeatures, annotation, null, null));
                    }
                }
            }
            if (builderClass != null) {
                JSONPOJOBuilder builderAnnotation = (JSONPOJOBuilder) builderClass.getAnnotation(JSONPOJOBuilder.class);
                String buildMethodName = null;
                if (builderAnnotation != null) {
                    buildMethodName = builderAnnotation.buildMethod();
                }
                if (buildMethodName == null || buildMethodName.length() == 0) {
                    buildMethodName = "build";
                }
                try {
                    buildMethod = builderClass.getMethod(buildMethodName, new Class[0]);
                } catch (NoSuchMethodException e) {
                } catch (SecurityException e2) {
                }
                if (buildMethod == null) {
                    try {
                        buildMethod = builderClass.getMethod("create", new Class[0]);
                    } catch (NoSuchMethodException e3) {
                    } catch (SecurityException e4) {
                    }
                }
                if (buildMethod == null) {
                    throw new JSONException("buildMethod not found.");
                }
                TypeUtils.setAccessible(buildMethod);
            }
        }
        for (Method method2 : methods) {
            ordinal = 0;
            serialzeFeatures = 0;
            parserFeatures = 0;
            methodName = method2.getName();
            if (!Modifier.isStatic(method2.getModifiers())) {
                Class<?> returnType = method2.getReturnType();
                if (!returnType.equals(Void.TYPE)) {
                    if (!returnType.equals(method2.getDeclaringClass())) {
                    }
                }
                if (method2.getDeclaringClass() != Object.class) {
                    types = method2.getParameterTypes();
                    if (types.length != 0 && types.length <= 2) {
                        annotation = (JSONField) method2.getAnnotation(JSONField.class);
                        if (annotation != null && types.length == 2 && types[0] == String.class && types[1] == Object.class) {
                            add(fieldList, new FieldInfo("", method2, null, clazz, type, 0, 0, 0, annotation, null, null));
                        } else if (types.length == 1) {
                            if (annotation == null) {
                                annotation = TypeUtils.getSuperMethodAnnotation(clazz, method2);
                            }
                            if (annotation != null || methodName.length() >= 4) {
                                if (annotation != null) {
                                    if (annotation.deserialize()) {
                                        ordinal = annotation.ordinal();
                                        serialzeFeatures = SerializerFeature.of(annotation.serialzeFeatures());
                                        parserFeatures = Feature.of(annotation.parseFeatures());
                                        if (annotation.name().length() != 0) {
                                            add(fieldList, new FieldInfo(annotation.name(), method2, null, clazz, type, ordinal, serialzeFeatures, parserFeatures, annotation, null, null));
                                        }
                                    }
                                }
                                if (annotation == null) {
                                    if (!methodName.startsWith("set")) {
                                    }
                                }
                                char c3 = methodName.charAt(3);
                                if (Character.isUpperCase(c3) || c3 > 512) {
                                    if (TypeUtils.compatibleWithJavaBean) {
                                        propertyName = TypeUtils.decapitalize(methodName.substring(3));
                                    } else {
                                        propertyName = Character.toLowerCase(methodName.charAt(3)) + methodName.substring(4);
                                    }
                                } else if (c3 == '_') {
                                    propertyName = methodName.substring(4);
                                } else if (c3 == 'f') {
                                    propertyName = methodName.substring(3);
                                } else if (methodName.length() >= 5 && Character.isUpperCase(methodName.charAt(4))) {
                                    propertyName = TypeUtils.decapitalize(methodName.substring(3));
                                }
                                field = TypeUtils.getField(clazz, propertyName, declaredFields);
                                if (field == null && types[0] == Boolean.TYPE) {
                                    field = TypeUtils.getField(clazz, "is" + Character.toUpperCase(propertyName.charAt(0)) + propertyName.substring(1), declaredFields);
                                }
                                fieldAnnotation = null;
                                if (field != null) {
                                    fieldAnnotation = (JSONField) field.getAnnotation(JSONField.class);
                                    if (fieldAnnotation != null) {
                                        if (fieldAnnotation.deserialize()) {
                                            ordinal = fieldAnnotation.ordinal();
                                            serialzeFeatures = SerializerFeature.of(fieldAnnotation.serialzeFeatures());
                                            parserFeatures = Feature.of(fieldAnnotation.parseFeatures());
                                            if (fieldAnnotation.name().length() != 0) {
                                                add(fieldList, new FieldInfo(fieldAnnotation.name(), method2, field, clazz, type, ordinal, serialzeFeatures, parserFeatures, annotation, fieldAnnotation, null));
                                            }
                                        }
                                    }
                                }
                                if (propertyNamingStrategy != null) {
                                    propertyName = propertyNamingStrategy.translate(propertyName);
                                }
                                add(fieldList, new FieldInfo(propertyName, method2, field, clazz, type, ordinal, serialzeFeatures, parserFeatures, annotation, fieldAnnotation, null));
                            }
                        }
                    }
                }
            }
        }
        computeFields(clazz, type, propertyNamingStrategy, fieldList, clazz.getFields());
        for (Method method22 : clazz.getMethods()) {
            methodName = method22.getName();
            if (methodName.length() >= 4 && !Modifier.isStatic(method22.getModifiers()) && builderClass == null) {
                if (methodName.startsWith("get") && Character.isUpperCase(methodName.charAt(3)) && method22.getParameterTypes().length == 0 && (Collection.class.isAssignableFrom(method22.getReturnType()) || Map.class.isAssignableFrom(method22.getReturnType()) || AtomicBoolean.class == method22.getReturnType() || AtomicInteger.class == method22.getReturnType() || AtomicLong.class == method22.getReturnType())) {
                    annotation = (JSONField) method22.getAnnotation(JSONField.class);
                    if (annotation == null || !annotation.deserialize()) {
                        if (annotation == null || annotation.name().length() <= 0) {
                            propertyName = Character.toLowerCase(methodName.charAt(3)) + methodName.substring(4);
                            field = TypeUtils.getField(clazz, propertyName, declaredFields);
                            if (field != null) {
                                fieldAnnotation = (JSONField) field.getAnnotation(JSONField.class);
                                if (!(fieldAnnotation == null || fieldAnnotation.deserialize())) {
                                }
                            }
                        } else {
                            propertyName = annotation.name();
                        }
                        if (getField(fieldList, propertyName) == null) {
                            if (propertyNamingStrategy != null) {
                                propertyName = propertyNamingStrategy.translate(propertyName);
                            }
                            add(fieldList, new FieldInfo(propertyName, method22, null, clazz, type, 0, 0, 0, annotation, null, null));
                        }
                    }
                }
            }
        }
        return new JavaBeanInfo(clazz, builderClass, defaultConstructor, creatorConstructor, factoryMethod, buildMethod, jsonType, fieldList);
    }

    private static void computeFields(Class<?> clazz, Type type, PropertyNamingStrategy propertyNamingStrategy, List<FieldInfo> fieldList, Field[] fields) {
        int length = fields.length;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < length) {
                Field field = fields[i2];
                int modifiers = field.getModifiers();
                if ((modifiers & 8) == 0) {
                    if ((modifiers & 16) != 0) {
                        Class<?> fieldType = field.getType();
                        boolean supportReadOnly = Map.class.isAssignableFrom(fieldType) || Collection.class.isAssignableFrom(fieldType) || AtomicLong.class.equals(fieldType) || AtomicInteger.class.equals(fieldType) || AtomicBoolean.class.equals(fieldType);
                        if (!supportReadOnly) {
                        }
                    }
                    boolean contains = false;
                    for (FieldInfo item : fieldList) {
                        if (item.name.equals(field.getName())) {
                            contains = true;
                            break;
                        }
                    }
                    if (!contains) {
                        int ordinal = 0;
                        int serialzeFeatures = 0;
                        int parserFeatures = 0;
                        String propertyName = field.getName();
                        JSONField fieldAnnotation = (JSONField) field.getAnnotation(JSONField.class);
                        if (fieldAnnotation != null) {
                            if (fieldAnnotation.deserialize()) {
                                ordinal = fieldAnnotation.ordinal();
                                serialzeFeatures = SerializerFeature.of(fieldAnnotation.serialzeFeatures());
                                parserFeatures = Feature.of(fieldAnnotation.parseFeatures());
                                if (fieldAnnotation.name().length() != 0) {
                                    propertyName = fieldAnnotation.name();
                                }
                            }
                        }
                        if (propertyNamingStrategy != null) {
                            propertyName = propertyNamingStrategy.translate(propertyName);
                        }
                        add(fieldList, new FieldInfo(propertyName, null, field, clazz, type, ordinal, serialzeFeatures, parserFeatures, null, fieldAnnotation, null));
                    }
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    static Constructor<?> getDefaultConstructor(Class<?> clazz, Constructor<?>[] constructors) {
        if (Modifier.isAbstract(clazz.getModifiers())) {
            return null;
        }
        Constructor<?> defaultConstructor = null;
        for (Constructor<?> constructor : constructors) {
            if (constructor.getParameterTypes().length == 0) {
                defaultConstructor = constructor;
                break;
            }
        }
        if (defaultConstructor != null || !clazz.isMemberClass() || Modifier.isStatic(clazz.getModifiers())) {
            return defaultConstructor;
        }
        for (Constructor<?> constructor2 : constructors) {
            Class<?>[] types = constructor2.getParameterTypes();
            if (types.length == 1 && types[0].equals(clazz.getDeclaringClass())) {
                return constructor2;
            }
        }
        return defaultConstructor;
    }

    public static Constructor<?> getCreatorConstructor(Constructor[] constructors) {
        Constructor<?> creatorConstructor = null;
        for (Constructor<?> constructor : constructors) {
            if (((JSONCreator) constructor.getAnnotation(JSONCreator.class)) != null) {
                if (creatorConstructor != null) {
                    throw new JSONException("multi-JSONCreator");
                }
                creatorConstructor = constructor;
            }
        }
        if (creatorConstructor != null) {
            return creatorConstructor;
        }
        for (Constructor<?> constructor2 : constructors) {
            Annotation[][] paramAnnotationArrays = constructor2.getParameterAnnotations();
            if (paramAnnotationArrays.length != 0) {
                boolean match = true;
                for (Annotation[] paramAnnotationArray : paramAnnotationArrays) {
                    boolean paramMatch = false;
                    for (Annotation paramAnnotation : paramAnnotationArrays[r12]) {
                        if (paramAnnotation instanceof JSONField) {
                            paramMatch = true;
                            break;
                        }
                    }
                    if (!paramMatch) {
                        match = false;
                        break;
                    }
                }
                if (!match) {
                    continue;
                } else if (creatorConstructor != null) {
                    throw new JSONException("multi-JSONCreator");
                } else {
                    creatorConstructor = constructor2;
                }
            }
        }
        if (creatorConstructor != null) {
            return creatorConstructor;
        }
        return creatorConstructor;
    }

    private static Method getFactoryMethod(Class<?> clazz, Method[] methods) {
        Method factoryMethod = null;
        for (Method method : methods) {
            if (Modifier.isStatic(method.getModifiers()) && clazz.isAssignableFrom(method.getReturnType()) && ((JSONCreator) method.getAnnotation(JSONCreator.class)) != null) {
                if (factoryMethod != null) {
                    throw new JSONException("multi-JSONCreator");
                }
                factoryMethod = method;
            }
        }
        return factoryMethod;
    }

    public static Class<?> getBuilderClass(JSONType type) {
        return getBuilderClass(null, type);
    }

    public static Class<?> getBuilderClass(Class<?> clazz, JSONType type) {
        if (clazz != null && clazz.getName().equals("org.springframework.security.web.savedrequest.DefaultSavedRequest")) {
            return TypeUtils.loadClass("org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder");
        }
        if (type == null) {
            return null;
        }
        Class<?> builderClass = type.builder();
        if (builderClass == Void.class) {
            return null;
        }
        return builderClass;
    }
}
