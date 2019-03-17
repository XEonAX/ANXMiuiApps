package com.alibaba.fastjson.util;

import com.alibaba.fastjson.annotation.JSONField;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

public class FieldInfo implements Comparable<FieldInfo> {
    public final String[] alternateNames;
    public final Class<?> declaringClass;
    public final Field field;
    public final boolean fieldAccess;
    private final JSONField fieldAnnotation;
    public final Class<?> fieldClass;
    public final boolean fieldTransient;
    public final Type fieldType;
    public final String format;
    public final boolean getOnly;
    public final boolean isEnum;
    public final boolean jsonDirect;
    public final String label;
    public final Method method;
    private final JSONField methodAnnotation;
    public final String name;
    public final char[] name_chars;
    private int ordinal = 0;
    public final int parserFeatures;
    public final int serialzeFeatures;
    public final boolean unwrapped;

    public FieldInfo(String name, Class<?> declaringClass, Class<?> fieldClass, Type fieldType, Field field, int ordinal, int serialzeFeatures, int parserFeatures) {
        this.name = name;
        this.declaringClass = declaringClass;
        this.fieldClass = fieldClass;
        this.fieldType = fieldType;
        this.method = null;
        this.field = field;
        this.ordinal = ordinal;
        this.serialzeFeatures = serialzeFeatures;
        this.parserFeatures = parserFeatures;
        this.isEnum = fieldClass.isEnum();
        if (field != null) {
            boolean z;
            int modifiers = field.getModifiers();
            if ((modifiers & 1) != 0 || this.method == null) {
                z = true;
            } else {
                z = false;
            }
            this.fieldAccess = z;
            this.fieldTransient = Modifier.isTransient(modifiers);
        } else {
            this.fieldTransient = false;
            this.fieldAccess = false;
        }
        this.name_chars = genFieldNameChars();
        if (field != null) {
            TypeUtils.setAccessible(field);
        }
        this.label = "";
        this.fieldAnnotation = null;
        this.methodAnnotation = null;
        this.getOnly = false;
        this.jsonDirect = false;
        this.unwrapped = false;
        this.format = null;
        this.alternateNames = new String[0];
    }

    public FieldInfo(String name, Method method, Field field, Class<?> clazz, Type type, int ordinal, int serialzeFeatures, int parserFeatures, JSONField fieldAnnotation, JSONField methodAnnotation, String label) {
        boolean z;
        boolean jsonDirect;
        Class<?> fieldClass;
        Type fieldType;
        Type genericFieldType;
        if (field != null) {
            String fieldName = field.getName();
            if (fieldName.equals(name)) {
                name = fieldName;
            }
        }
        this.name = name;
        this.method = method;
        this.field = field;
        this.ordinal = ordinal;
        this.serialzeFeatures = serialzeFeatures;
        this.parserFeatures = parserFeatures;
        this.fieldAnnotation = fieldAnnotation;
        this.methodAnnotation = methodAnnotation;
        if (field != null) {
            int modifiers = field.getModifiers();
            z = (modifiers & 1) != 0 || method == null;
            this.fieldAccess = z;
            z = Modifier.isTransient(modifiers) || TypeUtils.isTransient(method);
            this.fieldTransient = z;
        } else {
            this.fieldAccess = false;
            this.fieldTransient = false;
        }
        if (label == null || label.length() <= 0) {
            this.label = "";
        } else {
            this.label = label;
        }
        String format = null;
        JSONField annotation = getAnnotation();
        if (annotation != null) {
            format = annotation.format();
            if (format.trim().length() == 0) {
                format = null;
            }
            jsonDirect = annotation.jsonDirect();
            this.unwrapped = annotation.unwrapped();
            this.alternateNames = annotation.alternateNames();
        } else {
            jsonDirect = false;
            this.unwrapped = false;
            this.alternateNames = new String[0];
        }
        this.format = format;
        this.name_chars = genFieldNameChars();
        if (method != null) {
            TypeUtils.setAccessible(method);
        }
        if (field != null) {
            TypeUtils.setAccessible(field);
        }
        boolean getOnly = false;
        if (method != null) {
            Class<?>[] types = method.getParameterTypes();
            if (types.length == 1) {
                fieldClass = types[0];
                fieldType = method.getGenericParameterTypes()[0];
            } else if (types.length == 2 && types[0] == String.class && types[1] == Object.class) {
                fieldClass = types[0];
                Object fieldType2 = fieldClass;
            } else {
                fieldClass = method.getReturnType();
                fieldType2 = method.getGenericReturnType();
                getOnly = true;
            }
            this.declaringClass = method.getDeclaringClass();
        } else {
            fieldClass = field.getType();
            fieldType2 = field.getGenericType();
            this.declaringClass = field.getDeclaringClass();
            getOnly = Modifier.isFinal(field.getModifiers());
        }
        this.getOnly = getOnly;
        z = jsonDirect && fieldClass == String.class;
        this.jsonDirect = z;
        if (clazz != null && fieldClass == Object.class && (fieldType2 instanceof TypeVariable)) {
            genericFieldType = getInheritGenericType(clazz, type, (TypeVariable) fieldType2);
            if (genericFieldType != null) {
                this.fieldClass = TypeUtils.getClass(genericFieldType);
                this.fieldType = genericFieldType;
                this.isEnum = fieldClass.isEnum();
                return;
            }
        }
        genericFieldType = fieldType2;
        if (!(fieldType2 instanceof Class)) {
            if (type == null) {
                Object type2 = clazz;
            }
            genericFieldType = getFieldType(clazz, type2, fieldType2);
            if (genericFieldType != fieldType2) {
                if (genericFieldType instanceof ParameterizedType) {
                    fieldClass = TypeUtils.getClass(genericFieldType);
                } else if (genericFieldType instanceof Class) {
                    fieldClass = TypeUtils.getClass(genericFieldType);
                }
            }
        }
        this.fieldType = genericFieldType;
        this.fieldClass = fieldClass;
        this.isEnum = fieldClass.isEnum();
    }

    protected char[] genFieldNameChars() {
        int nameLen = this.name.length();
        char[] name_chars = new char[(nameLen + 3)];
        this.name.getChars(0, this.name.length(), name_chars, 1);
        name_chars[0] = '\"';
        name_chars[nameLen + 1] = '\"';
        name_chars[nameLen + 2] = ':';
        return name_chars;
    }

    public <T extends Annotation> T getAnnation(Class<T> annotationClass) {
        if (annotationClass == JSONField.class) {
            return getAnnotation();
        }
        T annotatition = null;
        if (this.method != null) {
            annotatition = this.method.getAnnotation(annotationClass);
        }
        if (annotatition != null || this.field == null) {
            return annotatition;
        }
        return this.field.getAnnotation(annotationClass);
    }

    public static Type getFieldType(Class<?> clazz, Type type, Type fieldType) {
        if (clazz == null || type == null) {
            return fieldType;
        }
        if (fieldType instanceof GenericArrayType) {
            Type componentType = ((GenericArrayType) fieldType).getGenericComponentType();
            Type componentTypeX = getFieldType(clazz, type, componentType);
            if (componentType != componentTypeX) {
                return Array.newInstance(TypeUtils.getClass(componentTypeX), 0).getClass();
            }
            return fieldType;
        } else if (!TypeUtils.isGenericParamType(type)) {
            return fieldType;
        } else {
            ParameterizedType paramType;
            TypeVariable<?>[] typeVariables;
            if (fieldType instanceof TypeVariable) {
                paramType = (ParameterizedType) TypeUtils.getGenericParamType(type);
                TypeVariable<?> typeVar = (TypeVariable) fieldType;
                typeVariables = TypeUtils.getClass(paramType).getTypeParameters();
                for (int i = 0; i < typeVariables.length; i++) {
                    if (typeVariables[i].getName().equals(typeVar.getName())) {
                        return paramType.getActualTypeArguments()[i];
                    }
                }
            }
            if (fieldType instanceof ParameterizedType) {
                ParameterizedType parameterizedFieldType = (ParameterizedType) fieldType;
                Type[] arguments = parameterizedFieldType.getActualTypeArguments();
                if (type instanceof ParameterizedType) {
                    paramType = (ParameterizedType) type;
                    typeVariables = clazz.getTypeParameters();
                } else if (clazz.getGenericSuperclass() instanceof ParameterizedType) {
                    paramType = (ParameterizedType) clazz.getGenericSuperclass();
                    typeVariables = clazz.getSuperclass().getTypeParameters();
                } else {
                    paramType = parameterizedFieldType;
                    typeVariables = type.getClass().getTypeParameters();
                }
                if (getArgument(arguments, typeVariables, paramType.getActualTypeArguments())) {
                    return new ParameterizedTypeImpl(arguments, parameterizedFieldType.getOwnerType(), parameterizedFieldType.getRawType());
                }
            }
            return fieldType;
        }
    }

    private static boolean getArgument(Type[] typeArgs, TypeVariable[] typeVariables, Type[] arguments) {
        if (arguments == null || typeVariables.length == 0) {
            return false;
        }
        boolean changed = false;
        for (int i = 0; i < typeArgs.length; i++) {
            Type typeArg = typeArgs[i];
            if (typeArg instanceof ParameterizedType) {
                ParameterizedType p_typeArg = (ParameterizedType) typeArg;
                Type[] p_typeArg_args = p_typeArg.getActualTypeArguments();
                if (getArgument(p_typeArg_args, typeVariables, arguments)) {
                    typeArgs[i] = new ParameterizedTypeImpl(p_typeArg_args, p_typeArg.getOwnerType(), p_typeArg.getRawType());
                    changed = true;
                }
            } else if (typeArg instanceof TypeVariable) {
                for (int j = 0; j < typeVariables.length; j++) {
                    if (typeArg.equals(typeVariables[j])) {
                        typeArgs[i] = arguments[j];
                        changed = true;
                    }
                }
            }
        }
        return changed;
    }

    private static Type getInheritGenericType(Class<?> clazz, Type type, TypeVariable<?> tv) {
        Class<?> class_gd = null;
        if (tv.getGenericDeclaration() instanceof Class) {
            class_gd = (Class) tv.getGenericDeclaration();
        }
        Type[] arguments = null;
        if (class_gd != clazz) {
            Class<?> c = clazz;
            while (c != null && c != Object.class && c != class_gd) {
                Type superType = c.getGenericSuperclass();
                if (superType instanceof ParameterizedType) {
                    Type[] p_superType_args = ((ParameterizedType) superType).getActualTypeArguments();
                    getArgument(p_superType_args, c.getTypeParameters(), arguments);
                    arguments = p_superType_args;
                }
                c = c.getSuperclass();
            }
        } else if (type instanceof ParameterizedType) {
            arguments = ((ParameterizedType) type).getActualTypeArguments();
        }
        if (arguments == null) {
            return null;
        }
        TypeVariable<?>[] typeVariables = class_gd.getTypeParameters();
        for (int j = 0; j < typeVariables.length; j++) {
            if (tv.equals(typeVariables[j])) {
                return arguments[j];
            }
        }
        return null;
    }

    public String toString() {
        return this.name;
    }

    public Member getMember() {
        if (this.method != null) {
            return this.method;
        }
        return this.field;
    }

    protected Class<?> getDeclaredClass() {
        if (this.method != null) {
            return this.method.getDeclaringClass();
        }
        if (this.field != null) {
            return this.field.getDeclaringClass();
        }
        return null;
    }

    public int compareTo(FieldInfo o) {
        if (this.ordinal < o.ordinal) {
            return -1;
        }
        if (this.ordinal > o.ordinal) {
            return 1;
        }
        int result = this.name.compareTo(o.name);
        if (result != 0) {
            return result;
        }
        boolean isSampeType;
        boolean oSameType;
        Class<?> thisDeclaringClass = getDeclaredClass();
        Class<?> otherDeclaringClass = o.getDeclaredClass();
        if (!(thisDeclaringClass == null || otherDeclaringClass == null || thisDeclaringClass == otherDeclaringClass)) {
            if (thisDeclaringClass.isAssignableFrom(otherDeclaringClass)) {
                return -1;
            }
            if (otherDeclaringClass.isAssignableFrom(thisDeclaringClass)) {
                return 1;
            }
        }
        if (this.field == null || this.field.getType() != this.fieldClass) {
            isSampeType = false;
        } else {
            isSampeType = true;
        }
        if (o.field == null || o.field.getType() != o.fieldClass) {
            oSameType = false;
        } else {
            oSameType = true;
        }
        if (isSampeType && !oSameType) {
            return 1;
        }
        if (oSameType && !isSampeType) {
            return -1;
        }
        if (o.fieldClass.isPrimitive() && !this.fieldClass.isPrimitive()) {
            return 1;
        }
        if (this.fieldClass.isPrimitive() && !o.fieldClass.isPrimitive()) {
            return -1;
        }
        if (o.fieldClass.getName().startsWith("java.") && !this.fieldClass.getName().startsWith("java.")) {
            return 1;
        }
        if (!this.fieldClass.getName().startsWith("java.") || o.fieldClass.getName().startsWith("java.")) {
            return this.fieldClass.getName().compareTo(o.fieldClass.getName());
        }
        return -1;
    }

    public JSONField getAnnotation() {
        if (this.fieldAnnotation != null) {
            return this.fieldAnnotation;
        }
        return this.methodAnnotation;
    }

    public String getFormat() {
        return this.format;
    }

    public Object get(Object javaObject) throws IllegalAccessException, InvocationTargetException {
        if (this.method != null) {
            return this.method.invoke(javaObject, new Object[0]);
        }
        return this.field.get(javaObject);
    }

    public void set(Object javaObject, Object value) throws IllegalAccessException, InvocationTargetException {
        if (this.method != null) {
            this.method.invoke(javaObject, new Object[]{value});
            return;
        }
        this.field.set(javaObject, value);
    }

    public void setAccessible() throws SecurityException {
        if (this.method != null) {
            TypeUtils.setAccessible(this.method);
        } else {
            TypeUtils.setAccessible(this.field);
        }
    }
}
