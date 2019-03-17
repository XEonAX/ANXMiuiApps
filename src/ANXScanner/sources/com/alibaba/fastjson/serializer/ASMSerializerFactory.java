package com.alibaba.fastjson.serializer;

import com.ali.auth.third.login.LoginConstants;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.asm.ClassWriter;
import com.alibaba.fastjson.asm.FieldWriter;
import com.alibaba.fastjson.asm.Label;
import com.alibaba.fastjson.asm.MethodVisitor;
import com.alibaba.fastjson.asm.MethodWriter;
import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.fastjson.asm.Type;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.ASMClassLoader;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.alibaba.wireless.security.SecExceptionCode;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import mtopsdk.common.util.SymbolExpUtil;

public class ASMSerializerFactory implements Opcodes {
    static final String JSONSerializer = ASMUtils.type(JSONSerializer.class);
    static final String JavaBeanSerializer = ASMUtils.type(JavaBeanSerializer.class);
    static final String JavaBeanSerializer_desc = ("L" + ASMUtils.type(JavaBeanSerializer.class) + ";");
    static final String ObjectSerializer = ASMUtils.type(ObjectSerializer.class);
    static final String ObjectSerializer_desc = ("L" + ObjectSerializer + ";");
    static final String SerialContext_desc = ASMUtils.desc(SerialContext.class);
    static final String SerializeFilterable_desc = ASMUtils.desc(SerializeFilterable.class);
    static final String SerializeWriter = ASMUtils.type(SerializeWriter.class);
    static final String SerializeWriter_desc = ("L" + SerializeWriter + ";");
    protected final ASMClassLoader classLoader = new ASMClassLoader();
    private final AtomicLong seed = new AtomicLong();

    static class Context {
        static final int features = 5;
        static int fieldName = 6;
        static final int obj = 2;
        static int original = 7;
        static final int paramFieldName = 3;
        static final int paramFieldType = 4;
        static int processValue = 8;
        static final int serializer = 1;
        private final SerializeBeanInfo beanInfo;
        private final String className;
        private final FieldInfo[] getters;
        private final boolean nonContext;
        private int variantIndex = 9;
        private Map<String, Integer> variants = new HashMap();
        private final boolean writeDirect;

        public Context(FieldInfo[] getters, SerializeBeanInfo beanInfo, String className, boolean writeDirect, boolean nonContext) {
            this.getters = getters;
            this.className = className;
            this.beanInfo = beanInfo;
            this.writeDirect = writeDirect;
            boolean z = nonContext || beanInfo.beanType.isEnum();
            this.nonContext = z;
        }

        public int var(String name) {
            if (((Integer) this.variants.get(name)) == null) {
                Map map = this.variants;
                int i = this.variantIndex;
                this.variantIndex = i + 1;
                map.put(name, Integer.valueOf(i));
            }
            return ((Integer) this.variants.get(name)).intValue();
        }

        public int var(String name, int increment) {
            if (((Integer) this.variants.get(name)) == null) {
                this.variants.put(name, Integer.valueOf(this.variantIndex));
                this.variantIndex += increment;
            }
            return ((Integer) this.variants.get(name)).intValue();
        }

        public int getFieldOrinal(String name) {
            int size = this.getters.length;
            for (int i = 0; i < size; i++) {
                if (this.getters[i].name.equals(name)) {
                    return i;
                }
            }
            return -1;
        }
    }

    public JavaBeanSerializer createJavaBeanSerializer(SerializeBeanInfo beanInfo) throws Exception {
        Class<?> clazz = beanInfo.beanType;
        if (clazz.isPrimitive()) {
            throw new JSONException("unsupportd class " + clazz.getName());
        }
        FieldInfo fieldInfo;
        JSONType jsonType = (JSONType) clazz.getAnnotation(JSONType.class);
        FieldInfo[] unsortedGetters = beanInfo.fields;
        for (FieldInfo fieldInfo2 : unsortedGetters) {
            if (fieldInfo2.field == null && fieldInfo2.method != null && fieldInfo2.method.getDeclaringClass().isInterface()) {
                return new JavaBeanSerializer((Class) clazz);
            }
        }
        FieldInfo[] getters = beanInfo.sortedFields;
        boolean nativeSorted = beanInfo.sortedFields == beanInfo.fields;
        if (getters.length > 256) {
            return new JavaBeanSerializer((Class) clazz);
        }
        int i;
        boolean nonContext;
        boolean writeDirect;
        String methodName;
        Context context;
        MethodVisitor methodWriter;
        for (FieldInfo getter : getters) {
            if (!ASMUtils.checkName(getter.getMember().getName())) {
                return new JavaBeanSerializer((Class) clazz);
            }
        }
        String className = "ASMSerializer_" + this.seed.incrementAndGet() + LoginConstants.UNDER_LINE + clazz.getSimpleName();
        String packageName = ASMSerializerFactory.class.getPackage().getName();
        String classNameType = packageName.replace('.', '/') + "/" + className;
        String classNameFull = packageName + SymbolExpUtil.SYMBOL_DOT + className;
        ClassWriter cw = new ClassWriter();
        cw.visit(49, 33, classNameType, JavaBeanSerializer, new String[]{ObjectSerializer});
        for (FieldInfo fieldInfo22 : getters) {
            if (!(fieldInfo22.fieldClass.isPrimitive() || fieldInfo22.fieldClass == String.class)) {
                new FieldWriter(cw, 1, fieldInfo22.name + "_asm_fieldType", "Ljava/lang/reflect/Type;").visitEnd();
                if (List.class.isAssignableFrom(fieldInfo22.fieldClass)) {
                    new FieldWriter(cw, 1, fieldInfo22.name + "_asm_list_item_ser_", ObjectSerializer_desc).visitEnd();
                }
                new FieldWriter(cw, 1, fieldInfo22.name + "_asm_ser_", ObjectSerializer_desc).visitEnd();
            }
        }
        MethodVisitor mw = new MethodWriter(cw, 1, "<init>", "(" + ASMUtils.desc(SerializeBeanInfo.class) + ")V", null, null);
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitMethodInsn(Opcodes.INVOKESPECIAL, JavaBeanSerializer, "<init>", "(" + ASMUtils.desc(SerializeBeanInfo.class) + ")V");
        for (i = 0; i < getters.length; i++) {
            fieldInfo22 = getters[i];
            if (!(fieldInfo22.fieldClass.isPrimitive() || fieldInfo22.fieldClass == String.class)) {
                mw.visitVarInsn(25, 0);
                if (fieldInfo22.method != null) {
                    mw.visitLdcInsn(Type.getType(ASMUtils.desc(fieldInfo22.declaringClass)));
                    mw.visitLdcInsn(fieldInfo22.method.getName());
                    mw.visitMethodInsn(Opcodes.INVOKESTATIC, ASMUtils.type(ASMUtils.class), "getMethodType", "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;");
                } else {
                    mw.visitVarInsn(25, 0);
                    mw.visitLdcInsn(Integer.valueOf(i));
                    mw.visitMethodInsn(Opcodes.INVOKESPECIAL, JavaBeanSerializer, "getFieldType", "(I)Ljava/lang/reflect/Type;");
                }
                mw.visitFieldInsn(Opcodes.PUTFIELD, classNameType, fieldInfo22.name + "_asm_fieldType", "Ljava/lang/reflect/Type;");
            }
        }
        mw.visitInsn(Opcodes.RETURN);
        mw.visitMaxs(4, 4);
        mw.visitEnd();
        boolean DisableCircularReferenceDetect = false;
        if (jsonType != null) {
            for (SerializerFeature featrues : jsonType.serialzeFeatures()) {
                if (featrues == SerializerFeature.DisableCircularReferenceDetect) {
                    DisableCircularReferenceDetect = true;
                    break;
                }
            }
        }
        for (i = 0; i < 3; i++) {
            nonContext = DisableCircularReferenceDetect;
            writeDirect = false;
            if (i == 0) {
                methodName = "write";
                writeDirect = true;
            } else if (i == 1) {
                methodName = "writeNormal";
            } else {
                writeDirect = true;
                nonContext = true;
                methodName = "writeDirectNonContext";
            }
            context = new Context(getters, beanInfo, classNameType, writeDirect, nonContext);
            methodWriter = new MethodWriter(cw, 1, methodName, "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V", null, new String[]{"java/io/IOException"});
            Label endIf_ = new Label();
            methodWriter.visitVarInsn(25, 2);
            methodWriter.visitJumpInsn(199, endIf_);
            methodWriter.visitVarInsn(25, 1);
            methodWriter.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeNull", "()V");
            methodWriter.visitInsn(Opcodes.RETURN);
            methodWriter.visitLabel(endIf_);
            methodWriter.visitVarInsn(25, 1);
            methodWriter.visitFieldInsn(Opcodes.GETFIELD, JSONSerializer, "out", SerializeWriter_desc);
            methodWriter.visitVarInsn(58, context.var("out"));
            if (!(nativeSorted || context.writeDirect || (jsonType != null && !jsonType.alphabetic()))) {
                Label _else = new Label();
                methodWriter.visitVarInsn(25, context.var("out"));
                methodWriter.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "isSortField", "()Z");
                methodWriter.visitJumpInsn(Opcodes.IFNE, _else);
                methodWriter.visitVarInsn(25, 0);
                methodWriter.visitVarInsn(25, 1);
                methodWriter.visitVarInsn(25, 2);
                methodWriter.visitVarInsn(25, 3);
                methodWriter.visitVarInsn(25, 4);
                methodWriter.visitVarInsn(21, 5);
                methodWriter.visitMethodInsn(Opcodes.INVOKEVIRTUAL, classNameType, "writeUnsorted", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                methodWriter.visitInsn(Opcodes.RETURN);
                methodWriter.visitLabel(_else);
            }
            if (context.writeDirect && !nonContext) {
                Label _direct = new Label();
                Label _directElse = new Label();
                methodWriter.visitVarInsn(25, 0);
                methodWriter.visitVarInsn(25, 1);
                methodWriter.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "writeDirect", "(L" + JSONSerializer + ";)Z");
                methodWriter.visitJumpInsn(Opcodes.IFNE, _directElse);
                methodWriter.visitVarInsn(25, 0);
                methodWriter.visitVarInsn(25, 1);
                methodWriter.visitVarInsn(25, 2);
                methodWriter.visitVarInsn(25, 3);
                methodWriter.visitVarInsn(25, 4);
                methodWriter.visitVarInsn(21, 5);
                methodWriter.visitMethodInsn(Opcodes.INVOKEVIRTUAL, classNameType, "writeNormal", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                methodWriter.visitInsn(Opcodes.RETURN);
                methodWriter.visitLabel(_directElse);
                methodWriter.visitVarInsn(25, context.var("out"));
                methodWriter.visitLdcInsn(Integer.valueOf(SerializerFeature.DisableCircularReferenceDetect.mask));
                methodWriter.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
                methodWriter.visitJumpInsn(Opcodes.IFEQ, _direct);
                methodWriter.visitVarInsn(25, 0);
                methodWriter.visitVarInsn(25, 1);
                methodWriter.visitVarInsn(25, 2);
                methodWriter.visitVarInsn(25, 3);
                methodWriter.visitVarInsn(25, 4);
                methodWriter.visitVarInsn(21, 5);
                methodWriter.visitMethodInsn(Opcodes.INVOKEVIRTUAL, classNameType, "writeDirectNonContext", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                methodWriter.visitInsn(Opcodes.RETURN);
                methodWriter.visitLabel(_direct);
            }
            methodWriter.visitVarInsn(25, 2);
            methodWriter.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(clazz));
            methodWriter.visitVarInsn(58, context.var("entity"));
            generateWriteMethod(clazz, methodWriter, getters, context);
            methodWriter.visitInsn(Opcodes.RETURN);
            methodWriter.visitMaxs(7, context.variantIndex + 2);
            methodWriter.visitEnd();
        }
        if (!nativeSorted) {
            Context context2 = new Context(getters, beanInfo, classNameType, false, DisableCircularReferenceDetect);
            MethodVisitor methodWriter2 = new MethodWriter(cw, 1, "writeUnsorted", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V", null, new String[]{"java/io/IOException"});
            methodWriter2.visitVarInsn(25, 1);
            methodWriter2.visitFieldInsn(Opcodes.GETFIELD, JSONSerializer, "out", SerializeWriter_desc);
            methodWriter2.visitVarInsn(58, context2.var("out"));
            methodWriter2.visitVarInsn(25, 2);
            methodWriter2.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(clazz));
            methodWriter2.visitVarInsn(58, context2.var("entity"));
            generateWriteMethod(clazz, methodWriter2, unsortedGetters, context2);
            methodWriter2.visitInsn(Opcodes.RETURN);
            methodWriter2.visitMaxs(7, context2.variantIndex + 2);
            methodWriter2.visitEnd();
        }
        for (i = 0; i < 3; i++) {
            nonContext = DisableCircularReferenceDetect;
            writeDirect = false;
            if (i == 0) {
                methodName = "writeAsArray";
                writeDirect = true;
            } else if (i == 1) {
                methodName = "writeAsArrayNormal";
            } else {
                writeDirect = true;
                nonContext = true;
                methodName = "writeAsArrayNonContext";
            }
            context = new Context(getters, beanInfo, classNameType, writeDirect, nonContext);
            methodWriter = new MethodWriter(cw, 1, methodName, "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V", null, new String[]{"java/io/IOException"});
            methodWriter.visitVarInsn(25, 1);
            methodWriter.visitFieldInsn(Opcodes.GETFIELD, JSONSerializer, "out", SerializeWriter_desc);
            methodWriter.visitVarInsn(58, context.var("out"));
            methodWriter.visitVarInsn(25, 2);
            methodWriter.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(clazz));
            methodWriter.visitVarInsn(58, context.var("entity"));
            generateWriteAsArray(clazz, methodWriter, getters, context);
            methodWriter.visitInsn(Opcodes.RETURN);
            methodWriter.visitMaxs(7, context.variantIndex + 2);
            methodWriter.visitEnd();
        }
        byte[] code = cw.toByteArray();
        return (JavaBeanSerializer) this.classLoader.defineClassPublic(classNameFull, code, 0, code.length).getConstructor(new Class[]{SerializeBeanInfo.class}).newInstance(new Object[]{beanInfo});
    }

    private void generateWriteAsArray(Class<?> cls, MethodVisitor mw, FieldInfo[] getters, Context context) throws Exception {
        mw.visitVarInsn(25, context.var("out"));
        mw.visitVarInsn(16, 91);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
        int size = getters.length;
        if (size == 0) {
            mw.visitVarInsn(25, context.var("out"));
            mw.visitVarInsn(16, 93);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            return;
        }
        int i = 0;
        while (i < size) {
            char seperator = i == size + -1 ? ']' : ',';
            FieldInfo fieldInfo = getters[i];
            Class fieldClass = fieldInfo.fieldClass;
            mw.visitLdcInsn(fieldInfo.name);
            mw.visitVarInsn(58, Context.fieldName);
            Label instanceOfElse_;
            Label instanceOfEnd_;
            if (fieldClass == Byte.TYPE || fieldClass == Short.TYPE || fieldClass == Integer.TYPE) {
                mw.visitVarInsn(25, context.var("out"));
                mw.visitInsn(89);
                _get(mw, context, fieldInfo);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeInt", "(I)V");
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            } else if (fieldClass == Long.TYPE) {
                mw.visitVarInsn(25, context.var("out"));
                mw.visitInsn(89);
                _get(mw, context, fieldInfo);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeLong", "(J)V");
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            } else if (fieldClass == Float.TYPE) {
                mw.visitVarInsn(25, context.var("out"));
                mw.visitInsn(89);
                _get(mw, context, fieldInfo);
                mw.visitInsn(4);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFloat", "(FZ)V");
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            } else if (fieldClass == Double.TYPE) {
                mw.visitVarInsn(25, context.var("out"));
                mw.visitInsn(89);
                _get(mw, context, fieldInfo);
                mw.visitInsn(4);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeDouble", "(DZ)V");
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            } else if (fieldClass == Boolean.TYPE) {
                mw.visitVarInsn(25, context.var("out"));
                mw.visitInsn(89);
                _get(mw, context, fieldInfo);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(Z)V");
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            } else if (fieldClass == Character.TYPE) {
                mw.visitVarInsn(25, context.var("out"));
                _get(mw, context, fieldInfo);
                mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Character", "toString", "(C)Ljava/lang/String;");
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeString", "(Ljava/lang/String;C)V");
            } else if (fieldClass == String.class) {
                mw.visitVarInsn(25, context.var("out"));
                _get(mw, context, fieldInfo);
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeString", "(Ljava/lang/String;C)V");
            } else if (fieldClass.isEnum()) {
                mw.visitVarInsn(25, context.var("out"));
                mw.visitInsn(89);
                _get(mw, context, fieldInfo);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeEnum", "(Ljava/lang/Enum;)V");
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            } else if (List.class.isAssignableFrom(fieldClass)) {
                java.lang.reflect.Type elementType;
                java.lang.reflect.Type fieldType = fieldInfo.fieldType;
                if (fieldType instanceof Class) {
                    elementType = Object.class;
                } else {
                    elementType = ((ParameterizedType) fieldType).getActualTypeArguments()[0];
                }
                Class elementClass = null;
                if (elementType instanceof Class) {
                    elementClass = (Class) elementType;
                    if (elementClass == Object.class) {
                        elementClass = null;
                    }
                }
                _get(mw, context, fieldInfo);
                mw.visitTypeInsn(Opcodes.CHECKCAST, "java/util/List");
                mw.visitVarInsn(58, context.var("list"));
                if (elementClass == String.class && context.writeDirect) {
                    mw.visitVarInsn(25, context.var("out"));
                    mw.visitVarInsn(25, context.var("list"));
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(Ljava/util/List;)V");
                } else {
                    Label nullEnd_ = new Label();
                    Label nullElse_ = new Label();
                    mw.visitVarInsn(25, context.var("list"));
                    mw.visitJumpInsn(199, nullElse_);
                    mw.visitVarInsn(25, context.var("out"));
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeNull", "()V");
                    mw.visitJumpInsn(Opcodes.GOTO, nullEnd_);
                    mw.visitLabel(nullElse_);
                    mw.visitVarInsn(25, context.var("list"));
                    mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, "java/util/List", "size", "()I");
                    mw.visitVarInsn(54, context.var("size"));
                    mw.visitVarInsn(25, context.var("out"));
                    mw.visitVarInsn(16, 91);
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
                    Label for_ = new Label();
                    Label forFirst_ = new Label();
                    Label forEnd_ = new Label();
                    mw.visitInsn(3);
                    mw.visitVarInsn(54, context.var("i"));
                    mw.visitLabel(for_);
                    mw.visitVarInsn(21, context.var("i"));
                    mw.visitVarInsn(21, context.var("size"));
                    mw.visitJumpInsn(Opcodes.IF_ICMPGE, forEnd_);
                    mw.visitVarInsn(21, context.var("i"));
                    mw.visitJumpInsn(Opcodes.IFEQ, forFirst_);
                    mw.visitVarInsn(25, context.var("out"));
                    mw.visitVarInsn(16, 44);
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
                    mw.visitLabel(forFirst_);
                    mw.visitVarInsn(25, context.var("list"));
                    mw.visitVarInsn(21, context.var("i"));
                    mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, "java/util/List", "get", "(I)Ljava/lang/Object;");
                    mw.visitVarInsn(58, context.var("list_item"));
                    Label forItemNullEnd_ = new Label();
                    Label forItemNullElse_ = new Label();
                    mw.visitVarInsn(25, context.var("list_item"));
                    mw.visitJumpInsn(199, forItemNullElse_);
                    mw.visitVarInsn(25, context.var("out"));
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeNull", "()V");
                    mw.visitJumpInsn(Opcodes.GOTO, forItemNullEnd_);
                    mw.visitLabel(forItemNullElse_);
                    Label forItemClassIfEnd_ = new Label();
                    Label forItemClassIfElse_ = new Label();
                    if (elementClass != null && Modifier.isPublic(elementClass.getModifiers())) {
                        mw.visitVarInsn(25, context.var("list_item"));
                        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                        mw.visitLdcInsn(Type.getType(ASMUtils.desc(elementClass)));
                        mw.visitJumpInsn(Opcodes.IF_ACMPNE, forItemClassIfElse_);
                        _getListFieldItemSer(context, mw, fieldInfo, elementClass);
                        mw.visitVarInsn(58, context.var("list_item_desc"));
                        instanceOfElse_ = new Label();
                        instanceOfEnd_ = new Label();
                        if (context.writeDirect) {
                            mw.visitVarInsn(25, context.var("list_item_desc"));
                            mw.visitTypeInsn(Opcodes.INSTANCEOF, JavaBeanSerializer);
                            mw.visitJumpInsn(Opcodes.IFEQ, instanceOfElse_);
                            mw.visitVarInsn(25, context.var("list_item_desc"));
                            mw.visitTypeInsn(Opcodes.CHECKCAST, JavaBeanSerializer);
                            mw.visitVarInsn(25, 1);
                            mw.visitVarInsn(25, context.var("list_item"));
                            if (context.nonContext) {
                                mw.visitInsn(1);
                            } else {
                                mw.visitVarInsn(21, context.var("i"));
                                mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                            }
                            mw.visitLdcInsn(Type.getType(ASMUtils.desc(elementClass)));
                            mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
                            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "writeAsArrayNonContext", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                            mw.visitJumpInsn(Opcodes.GOTO, instanceOfEnd_);
                            mw.visitLabel(instanceOfElse_);
                        }
                        mw.visitVarInsn(25, context.var("list_item_desc"));
                        mw.visitVarInsn(25, 1);
                        mw.visitVarInsn(25, context.var("list_item"));
                        if (context.nonContext) {
                            mw.visitInsn(1);
                        } else {
                            mw.visitVarInsn(21, context.var("i"));
                            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                        }
                        mw.visitLdcInsn(Type.getType(ASMUtils.desc(elementClass)));
                        mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
                        mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, ObjectSerializer, "write", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                        mw.visitLabel(instanceOfEnd_);
                        mw.visitJumpInsn(Opcodes.GOTO, forItemClassIfEnd_);
                    }
                    mw.visitLabel(forItemClassIfElse_);
                    mw.visitVarInsn(25, 1);
                    mw.visitVarInsn(25, context.var("list_item"));
                    if (context.nonContext) {
                        mw.visitInsn(1);
                    } else {
                        mw.visitVarInsn(21, context.var("i"));
                        mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                    }
                    if (elementClass == null || !Modifier.isPublic(elementClass.getModifiers())) {
                        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
                    } else {
                        mw.visitLdcInsn(Type.getType(ASMUtils.desc((Class) elementType)));
                        mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
                        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                    }
                    mw.visitLabel(forItemClassIfEnd_);
                    mw.visitLabel(forItemNullEnd_);
                    mw.visitIincInsn(context.var("i"), 1);
                    mw.visitJumpInsn(Opcodes.GOTO, for_);
                    mw.visitLabel(forEnd_);
                    mw.visitVarInsn(25, context.var("out"));
                    mw.visitVarInsn(16, 93);
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
                    mw.visitLabel(nullEnd_);
                }
                mw.visitVarInsn(25, context.var("out"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            } else {
                Label notNullEnd_ = new Label();
                Label notNullElse_ = new Label();
                _get(mw, context, fieldInfo);
                mw.visitInsn(89);
                mw.visitVarInsn(58, context.var("field_" + fieldInfo.fieldClass.getName()));
                mw.visitJumpInsn(199, notNullElse_);
                mw.visitVarInsn(25, context.var("out"));
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeNull", "()V");
                mw.visitJumpInsn(Opcodes.GOTO, notNullEnd_);
                mw.visitLabel(notNullElse_);
                Label classIfEnd_ = new Label();
                Label classIfElse_ = new Label();
                mw.visitVarInsn(25, context.var("field_" + fieldInfo.fieldClass.getName()));
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                mw.visitLdcInsn(Type.getType(ASMUtils.desc(fieldClass)));
                mw.visitJumpInsn(Opcodes.IF_ACMPNE, classIfElse_);
                _getFieldSer(context, mw, fieldInfo);
                mw.visitVarInsn(58, context.var("fied_ser"));
                instanceOfElse_ = new Label();
                instanceOfEnd_ = new Label();
                if (context.writeDirect && Modifier.isPublic(fieldClass.getModifiers())) {
                    mw.visitVarInsn(25, context.var("fied_ser"));
                    mw.visitTypeInsn(Opcodes.INSTANCEOF, JavaBeanSerializer);
                    mw.visitJumpInsn(Opcodes.IFEQ, instanceOfElse_);
                    mw.visitVarInsn(25, context.var("fied_ser"));
                    mw.visitTypeInsn(Opcodes.CHECKCAST, JavaBeanSerializer);
                    mw.visitVarInsn(25, 1);
                    mw.visitVarInsn(25, context.var("field_" + fieldInfo.fieldClass.getName()));
                    mw.visitVarInsn(25, Context.fieldName);
                    mw.visitLdcInsn(Type.getType(ASMUtils.desc(fieldClass)));
                    mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "writeAsArrayNonContext", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                    mw.visitJumpInsn(Opcodes.GOTO, instanceOfEnd_);
                    mw.visitLabel(instanceOfElse_);
                }
                mw.visitVarInsn(25, context.var("fied_ser"));
                mw.visitVarInsn(25, 1);
                mw.visitVarInsn(25, context.var("field_" + fieldInfo.fieldClass.getName()));
                mw.visitVarInsn(25, Context.fieldName);
                mw.visitLdcInsn(Type.getType(ASMUtils.desc(fieldClass)));
                mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
                mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, ObjectSerializer, "write", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                mw.visitLabel(instanceOfEnd_);
                mw.visitJumpInsn(Opcodes.GOTO, classIfEnd_);
                mw.visitLabel(classIfElse_);
                String format = fieldInfo.getFormat();
                mw.visitVarInsn(25, 1);
                mw.visitVarInsn(25, context.var("field_" + fieldInfo.fieldClass.getName()));
                if (format != null) {
                    mw.visitLdcInsn(format);
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFormat", "(Ljava/lang/Object;Ljava/lang/String;)V");
                } else {
                    mw.visitVarInsn(25, Context.fieldName);
                    if ((fieldInfo.fieldType instanceof Class) && ((Class) fieldInfo.fieldType).isPrimitive()) {
                        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
                    } else {
                        mw.visitVarInsn(25, 0);
                        mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_fieldType", "Ljava/lang/reflect/Type;");
                        mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
                        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                    }
                }
                mw.visitLabel(classIfEnd_);
                mw.visitLabel(notNullEnd_);
                mw.visitVarInsn(25, context.var("out"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            }
            i++;
        }
    }

    private void generateWriteMethod(Class<?> clazz, MethodVisitor mw, FieldInfo[] getters, Context context) throws Exception {
        String writeAsArrayMethodName;
        Label end = new Label();
        if (!context.writeDirect) {
            Label endSupper_ = new Label();
            Label supper_ = new Label();
            mw.visitVarInsn(25, context.var("out"));
            mw.visitLdcInsn(Integer.valueOf(SerializerFeature.PrettyFormat.mask));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
            mw.visitJumpInsn(Opcodes.IFNE, supper_);
            boolean hasMethod = false;
            for (FieldInfo getter : getters) {
                if (getter.method != null) {
                    hasMethod = true;
                }
            }
            if (hasMethod) {
                mw.visitVarInsn(25, context.var("out"));
                mw.visitLdcInsn(Integer.valueOf(SerializerFeature.IgnoreErrorGetter.mask));
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
                mw.visitJumpInsn(Opcodes.IFEQ, endSupper_);
            } else {
                mw.visitJumpInsn(Opcodes.GOTO, endSupper_);
            }
            mw.visitLabel(supper_);
            mw.visitVarInsn(25, 0);
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, 2);
            mw.visitVarInsn(25, 3);
            mw.visitVarInsn(25, 4);
            mw.visitVarInsn(21, 5);
            mw.visitMethodInsn(Opcodes.INVOKESPECIAL, JavaBeanSerializer, "write", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            mw.visitInsn(Opcodes.RETURN);
            mw.visitLabel(endSupper_);
        }
        if (!context.nonContext) {
            Label endRef_ = new Label();
            mw.visitVarInsn(25, 0);
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, 2);
            mw.visitVarInsn(21, 5);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "writeReference", "(L" + JSONSerializer + ";Ljava/lang/Object;I)Z");
            mw.visitJumpInsn(Opcodes.IFEQ, endRef_);
            mw.visitInsn(Opcodes.RETURN);
            mw.visitLabel(endRef_);
        }
        if (!context.writeDirect) {
            writeAsArrayMethodName = "writeAsArrayNormal";
        } else if (context.nonContext) {
            writeAsArrayMethodName = "writeAsArrayNonContext";
        } else {
            writeAsArrayMethodName = "writeAsArray";
        }
        if ((context.beanInfo.features & SerializerFeature.BeanToArray.mask) == 0) {
            Label endWriteAsArray_ = new Label();
            mw.visitVarInsn(25, context.var("out"));
            mw.visitLdcInsn(Integer.valueOf(SerializerFeature.BeanToArray.mask));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
            mw.visitJumpInsn(Opcodes.IFEQ, endWriteAsArray_);
            mw.visitVarInsn(25, 0);
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, 2);
            mw.visitVarInsn(25, 3);
            mw.visitVarInsn(25, 4);
            mw.visitVarInsn(21, 5);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, context.className, writeAsArrayMethodName, "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            mw.visitInsn(Opcodes.RETURN);
            mw.visitLabel(endWriteAsArray_);
        } else {
            mw.visitVarInsn(25, 0);
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, 2);
            mw.visitVarInsn(25, 3);
            mw.visitVarInsn(25, 4);
            mw.visitVarInsn(21, 5);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, context.className, writeAsArrayMethodName, "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            mw.visitInsn(Opcodes.RETURN);
        }
        if (!context.nonContext) {
            mw.visitVarInsn(25, 1);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "getContext", "()" + SerialContext_desc);
            mw.visitVarInsn(58, context.var("parent"));
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, context.var("parent"));
            mw.visitVarInsn(25, 2);
            mw.visitVarInsn(25, 3);
            mw.visitLdcInsn(Integer.valueOf(context.beanInfo.features));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "setContext", "(" + SerialContext_desc + "Ljava/lang/Object;Ljava/lang/Object;I)V");
        }
        boolean writeClasName = (context.beanInfo.features & SerializerFeature.WriteClassName.mask) != 0;
        if (writeClasName || !context.writeDirect) {
            Label end_ = new Label();
            Label else_ = new Label();
            Label writeClass_ = new Label();
            if (!writeClasName) {
                mw.visitVarInsn(25, 1);
                mw.visitVarInsn(25, 4);
                mw.visitVarInsn(25, 2);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
                mw.visitJumpInsn(Opcodes.IFEQ, else_);
            }
            mw.visitVarInsn(25, 4);
            mw.visitVarInsn(25, 2);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
            mw.visitJumpInsn(Opcodes.IF_ACMPEQ, else_);
            mw.visitLabel(writeClass_);
            mw.visitVarInsn(25, context.var("out"));
            mw.visitVarInsn(16, SecExceptionCode.SEC_ERROR_INIT_INCORRECT_DATA_FILE);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            mw.visitVarInsn(25, 0);
            mw.visitVarInsn(25, 1);
            if (context.beanInfo.typeKey != null) {
                mw.visitLdcInsn(context.beanInfo.typeKey);
            } else {
                mw.visitInsn(1);
            }
            mw.visitVarInsn(25, 2);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "writeClassName", "(L" + JSONSerializer + ";Ljava/lang/String;Ljava/lang/Object;)V");
            mw.visitVarInsn(16, 44);
            mw.visitJumpInsn(Opcodes.GOTO, end_);
            mw.visitLabel(else_);
            mw.visitVarInsn(16, SecExceptionCode.SEC_ERROR_INIT_INCORRECT_DATA_FILE);
            mw.visitLabel(end_);
        } else {
            mw.visitVarInsn(16, SecExceptionCode.SEC_ERROR_INIT_INCORRECT_DATA_FILE);
        }
        mw.visitVarInsn(54, context.var("seperator"));
        if (!context.writeDirect) {
            _before(mw, context);
        }
        if (!context.writeDirect) {
            mw.visitVarInsn(25, context.var("out"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "isNotWriteDefaultValue", "()Z");
            mw.visitVarInsn(54, context.var("notWriteDefaultValue"));
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, 0);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "checkValue", "(" + SerializeFilterable_desc + ")Z");
            mw.visitVarInsn(54, context.var("checkValue"));
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, 0);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "hasNameFilters", "(" + SerializeFilterable_desc + ")Z");
            mw.visitVarInsn(54, context.var("hasNameFilters"));
        }
        for (FieldInfo property : getters) {
            Class<?> propertyClass = property.fieldClass;
            mw.visitLdcInsn(property.name);
            mw.visitVarInsn(58, Context.fieldName);
            if (propertyClass == Byte.TYPE || propertyClass == Short.TYPE || propertyClass == Integer.TYPE) {
                _int(clazz, mw, property, context, context.var(propertyClass.getName()), 'I');
            } else if (propertyClass == Long.TYPE) {
                _long(clazz, mw, property, context);
            } else if (propertyClass == Float.TYPE) {
                _float(clazz, mw, property, context);
            } else if (propertyClass == Double.TYPE) {
                _double(clazz, mw, property, context);
            } else if (propertyClass == Boolean.TYPE) {
                _int(clazz, mw, property, context, context.var("boolean"), 'Z');
            } else if (propertyClass == Character.TYPE) {
                _int(clazz, mw, property, context, context.var("char"), 'C');
            } else if (propertyClass == String.class) {
                _string(clazz, mw, property, context);
            } else if (propertyClass == BigDecimal.class) {
                _decimal(clazz, mw, property, context);
            } else if (List.class.isAssignableFrom(propertyClass)) {
                _list(clazz, mw, property, context);
            } else if (propertyClass.isEnum()) {
                _enum(clazz, mw, property, context);
            } else {
                _object(clazz, mw, property, context);
            }
        }
        if (!context.writeDirect) {
            _after(mw, context);
        }
        Label _else = new Label();
        Label _end_if = new Label();
        mw.visitVarInsn(21, context.var("seperator"));
        mw.visitIntInsn(16, SecExceptionCode.SEC_ERROR_INIT_INCORRECT_DATA_FILE);
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, _else);
        mw.visitVarInsn(25, context.var("out"));
        mw.visitVarInsn(16, SecExceptionCode.SEC_ERROR_INIT_INCORRECT_DATA_FILE);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
        mw.visitLabel(_else);
        mw.visitVarInsn(25, context.var("out"));
        mw.visitVarInsn(16, SecExceptionCode.SEC_ERROR_INIT_PARSE_USER_CONFIG_ERROR);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
        mw.visitLabel(_end_if);
        mw.visitLabel(end);
        if (!context.nonContext) {
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, context.var("parent"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "setContext", "(" + SerialContext_desc + ")V");
        }
    }

    private void _object(Class<?> cls, MethodVisitor mw, FieldInfo property, Context context) {
        Label _end = new Label();
        _nameApply(mw, property, context, _end);
        _get(mw, context, property);
        mw.visitVarInsn(58, context.var("object"));
        _filters(mw, property, context, _end);
        _writeObject(mw, property, context, _end);
        mw.visitLabel(_end);
    }

    private void _enum(Class<?> cls, MethodVisitor mw, FieldInfo fieldInfo, Context context) {
        Label _not_null = new Label();
        Label _end_if = new Label();
        Label _end = new Label();
        _nameApply(mw, fieldInfo, context, _end);
        _get(mw, context, fieldInfo);
        mw.visitTypeInsn(Opcodes.CHECKCAST, "java/lang/Enum");
        mw.visitVarInsn(58, context.var("enum"));
        _filters(mw, fieldInfo, context, _end);
        mw.visitVarInsn(25, context.var("enum"));
        mw.visitJumpInsn(199, _not_null);
        _if_write_null(mw, fieldInfo, context);
        mw.visitJumpInsn(Opcodes.GOTO, _end_if);
        mw.visitLabel(_not_null);
        if (context.writeDirect) {
            mw.visitVarInsn(25, context.var("out"));
            mw.visitVarInsn(21, context.var("seperator"));
            mw.visitVarInsn(25, Context.fieldName);
            mw.visitVarInsn(25, context.var("enum"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/Enum", "name", "()Ljava/lang/String;");
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValueStringWithDoubleQuote", "(CLjava/lang/String;Ljava/lang/String;)V");
        } else {
            mw.visitVarInsn(25, context.var("out"));
            mw.visitVarInsn(21, context.var("seperator"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            mw.visitVarInsn(25, context.var("out"));
            mw.visitVarInsn(25, Context.fieldName);
            mw.visitInsn(3);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldName", "(Ljava/lang/String;Z)V");
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, context.var("enum"));
            mw.visitVarInsn(25, Context.fieldName);
            mw.visitLdcInsn(Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
            mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
        }
        _seperator(mw, context);
        mw.visitLabel(_end_if);
        mw.visitLabel(_end);
    }

    private void _int(Class<?> cls, MethodVisitor mw, FieldInfo property, Context context, int var, char type) {
        Label end_ = new Label();
        _nameApply(mw, property, context, end_);
        _get(mw, context, property);
        mw.visitVarInsn(54, var);
        _filters(mw, property, context, end_);
        mw.visitVarInsn(25, context.var("out"));
        mw.visitVarInsn(21, context.var("seperator"));
        mw.visitVarInsn(25, Context.fieldName);
        mw.visitVarInsn(21, var);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;" + type + ")V");
        _seperator(mw, context);
        mw.visitLabel(end_);
    }

    private void _long(Class<?> cls, MethodVisitor mw, FieldInfo property, Context context) {
        Label end_ = new Label();
        _nameApply(mw, property, context, end_);
        _get(mw, context, property);
        mw.visitVarInsn(55, context.var("long", 2));
        _filters(mw, property, context, end_);
        mw.visitVarInsn(25, context.var("out"));
        mw.visitVarInsn(21, context.var("seperator"));
        mw.visitVarInsn(25, Context.fieldName);
        mw.visitVarInsn(22, context.var("long", 2));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;J)V");
        _seperator(mw, context);
        mw.visitLabel(end_);
    }

    private void _float(Class<?> cls, MethodVisitor mw, FieldInfo property, Context context) {
        Label end_ = new Label();
        _nameApply(mw, property, context, end_);
        _get(mw, context, property);
        mw.visitVarInsn(56, context.var("float"));
        _filters(mw, property, context, end_);
        mw.visitVarInsn(25, context.var("out"));
        mw.visitVarInsn(21, context.var("seperator"));
        mw.visitVarInsn(25, Context.fieldName);
        mw.visitVarInsn(23, context.var("float"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;F)V");
        _seperator(mw, context);
        mw.visitLabel(end_);
    }

    private void _double(Class<?> cls, MethodVisitor mw, FieldInfo property, Context context) {
        Label end_ = new Label();
        _nameApply(mw, property, context, end_);
        _get(mw, context, property);
        mw.visitVarInsn(57, context.var("double", 2));
        _filters(mw, property, context, end_);
        mw.visitVarInsn(25, context.var("out"));
        mw.visitVarInsn(21, context.var("seperator"));
        mw.visitVarInsn(25, Context.fieldName);
        mw.visitVarInsn(24, context.var("double", 2));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;D)V");
        _seperator(mw, context);
        mw.visitLabel(end_);
    }

    private void _get(MethodVisitor mw, Context context, FieldInfo fieldInfo) {
        Method method = fieldInfo.method;
        if (method != null) {
            mw.visitVarInsn(25, context.var("entity"));
            Class<?> declaringClass = method.getDeclaringClass();
            mw.visitMethodInsn(declaringClass.isInterface() ? Opcodes.INVOKEINTERFACE : Opcodes.INVOKEVIRTUAL, ASMUtils.type(declaringClass), method.getName(), ASMUtils.desc(method));
            if (!method.getReturnType().equals(fieldInfo.fieldClass)) {
                mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(fieldInfo.fieldClass));
                return;
            }
            return;
        }
        mw.visitVarInsn(25, context.var("entity"));
        Field field = fieldInfo.field;
        mw.visitFieldInsn(Opcodes.GETFIELD, ASMUtils.type(fieldInfo.declaringClass), field.getName(), ASMUtils.desc(field.getType()));
        if (!field.getType().equals(fieldInfo.fieldClass)) {
            mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(fieldInfo.fieldClass));
        }
    }

    private void _decimal(Class<?> cls, MethodVisitor mw, FieldInfo property, Context context) {
        Label end_ = new Label();
        _nameApply(mw, property, context, end_);
        _get(mw, context, property);
        mw.visitVarInsn(58, context.var("decimal"));
        _filters(mw, property, context, end_);
        Label if_ = new Label();
        Label else_ = new Label();
        Label endIf_ = new Label();
        mw.visitLabel(if_);
        mw.visitVarInsn(25, context.var("decimal"));
        mw.visitJumpInsn(199, else_);
        _if_write_null(mw, property, context);
        mw.visitJumpInsn(Opcodes.GOTO, endIf_);
        mw.visitLabel(else_);
        mw.visitVarInsn(25, context.var("out"));
        mw.visitVarInsn(21, context.var("seperator"));
        mw.visitVarInsn(25, Context.fieldName);
        mw.visitVarInsn(25, context.var("decimal"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;Ljava/math/BigDecimal;)V");
        _seperator(mw, context);
        mw.visitJumpInsn(Opcodes.GOTO, endIf_);
        mw.visitLabel(endIf_);
        mw.visitLabel(end_);
    }

    private void _string(Class<?> cls, MethodVisitor mw, FieldInfo property, Context context) {
        Label end_ = new Label();
        if (property.name.equals(context.beanInfo.typeKey)) {
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, 4);
            mw.visitVarInsn(25, 2);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
            mw.visitJumpInsn(Opcodes.IFNE, end_);
        }
        _nameApply(mw, property, context, end_);
        _get(mw, context, property);
        mw.visitVarInsn(58, context.var("string"));
        _filters(mw, property, context, end_);
        Label else_ = new Label();
        Label endIf_ = new Label();
        mw.visitVarInsn(25, context.var("string"));
        mw.visitJumpInsn(199, else_);
        _if_write_null(mw, property, context);
        mw.visitJumpInsn(Opcodes.GOTO, endIf_);
        mw.visitLabel(else_);
        if ("trim".equals(property.format)) {
            mw.visitVarInsn(25, context.var("string"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/String", "trim", "()Ljava/lang/String;");
            mw.visitVarInsn(58, context.var("string"));
        }
        if (context.writeDirect) {
            mw.visitVarInsn(25, context.var("out"));
            mw.visitVarInsn(21, context.var("seperator"));
            mw.visitVarInsn(25, Context.fieldName);
            mw.visitVarInsn(25, context.var("string"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValueStringWithDoubleQuoteCheck", "(CLjava/lang/String;Ljava/lang/String;)V");
        } else {
            mw.visitVarInsn(25, context.var("out"));
            mw.visitVarInsn(21, context.var("seperator"));
            mw.visitVarInsn(25, Context.fieldName);
            mw.visitVarInsn(25, context.var("string"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;Ljava/lang/String;)V");
        }
        _seperator(mw, context);
        mw.visitLabel(endIf_);
        mw.visitLabel(end_);
    }

    private void _list(Class<?> cls, MethodVisitor mw, FieldInfo fieldInfo, Context context) {
        java.lang.reflect.Type elementType = TypeUtils.getCollectionItemType(fieldInfo.fieldType);
        Class elementClass = null;
        if (elementType instanceof Class) {
            elementClass = (Class) elementType;
        }
        if (elementClass == Object.class || elementClass == Serializable.class) {
            elementClass = null;
        }
        Label end_ = new Label();
        Label else_ = new Label();
        Label endIf_ = new Label();
        _nameApply(mw, fieldInfo, context, end_);
        _get(mw, context, fieldInfo);
        mw.visitTypeInsn(Opcodes.CHECKCAST, "java/util/List");
        mw.visitVarInsn(58, context.var("list"));
        _filters(mw, fieldInfo, context, end_);
        mw.visitVarInsn(25, context.var("list"));
        mw.visitJumpInsn(199, else_);
        _if_write_null(mw, fieldInfo, context);
        mw.visitJumpInsn(Opcodes.GOTO, endIf_);
        mw.visitLabel(else_);
        mw.visitVarInsn(25, context.var("out"));
        mw.visitVarInsn(21, context.var("seperator"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
        _writeFieldName(mw, context);
        mw.visitVarInsn(25, context.var("list"));
        mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, "java/util/List", "size", "()I");
        mw.visitVarInsn(54, context.var("size"));
        Label _else_3 = new Label();
        Label _end_if_3 = new Label();
        mw.visitVarInsn(21, context.var("size"));
        mw.visitInsn(3);
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, _else_3);
        mw.visitVarInsn(25, context.var("out"));
        mw.visitLdcInsn("[]");
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(Ljava/lang/String;)V");
        mw.visitJumpInsn(Opcodes.GOTO, _end_if_3);
        mw.visitLabel(_else_3);
        if (!context.nonContext) {
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, context.var("list"));
            mw.visitVarInsn(25, Context.fieldName);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)V");
        }
        if (elementType == String.class && context.writeDirect) {
            mw.visitVarInsn(25, context.var("out"));
            mw.visitVarInsn(25, context.var("list"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(Ljava/util/List;)V");
        } else {
            mw.visitVarInsn(25, context.var("out"));
            mw.visitVarInsn(16, 91);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            Label for_ = new Label();
            Label forFirst_ = new Label();
            Label forEnd_ = new Label();
            mw.visitInsn(3);
            mw.visitVarInsn(54, context.var("i"));
            mw.visitLabel(for_);
            mw.visitVarInsn(21, context.var("i"));
            mw.visitVarInsn(21, context.var("size"));
            mw.visitJumpInsn(Opcodes.IF_ICMPGE, forEnd_);
            mw.visitVarInsn(21, context.var("i"));
            mw.visitJumpInsn(Opcodes.IFEQ, forFirst_);
            mw.visitVarInsn(25, context.var("out"));
            mw.visitVarInsn(16, 44);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
            mw.visitLabel(forFirst_);
            mw.visitVarInsn(25, context.var("list"));
            mw.visitVarInsn(21, context.var("i"));
            mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, "java/util/List", "get", "(I)Ljava/lang/Object;");
            mw.visitVarInsn(58, context.var("list_item"));
            Label forItemNullEnd_ = new Label();
            Label forItemNullElse_ = new Label();
            mw.visitVarInsn(25, context.var("list_item"));
            mw.visitJumpInsn(199, forItemNullElse_);
            mw.visitVarInsn(25, context.var("out"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeNull", "()V");
            mw.visitJumpInsn(Opcodes.GOTO, forItemNullEnd_);
            mw.visitLabel(forItemNullElse_);
            Label forItemClassIfEnd_ = new Label();
            Label forItemClassIfElse_ = new Label();
            if (elementClass != null && Modifier.isPublic(elementClass.getModifiers())) {
                mw.visitVarInsn(25, context.var("list_item"));
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                mw.visitLdcInsn(Type.getType(ASMUtils.desc(elementClass)));
                mw.visitJumpInsn(Opcodes.IF_ACMPNE, forItemClassIfElse_);
                _getListFieldItemSer(context, mw, fieldInfo, elementClass);
                mw.visitVarInsn(58, context.var("list_item_desc"));
                Label instanceOfElse_ = new Label();
                Label instanceOfEnd_ = new Label();
                if (context.writeDirect) {
                    String writeMethodName = (context.nonContext && context.writeDirect) ? "writeDirectNonContext" : "write";
                    mw.visitVarInsn(25, context.var("list_item_desc"));
                    mw.visitTypeInsn(Opcodes.INSTANCEOF, JavaBeanSerializer);
                    mw.visitJumpInsn(Opcodes.IFEQ, instanceOfElse_);
                    mw.visitVarInsn(25, context.var("list_item_desc"));
                    mw.visitTypeInsn(Opcodes.CHECKCAST, JavaBeanSerializer);
                    mw.visitVarInsn(25, 1);
                    mw.visitVarInsn(25, context.var("list_item"));
                    if (context.nonContext) {
                        mw.visitInsn(1);
                    } else {
                        mw.visitVarInsn(21, context.var("i"));
                        mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                    }
                    mw.visitLdcInsn(Type.getType(ASMUtils.desc(elementClass)));
                    mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, writeMethodName, "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                    mw.visitJumpInsn(Opcodes.GOTO, instanceOfEnd_);
                    mw.visitLabel(instanceOfElse_);
                }
                mw.visitVarInsn(25, context.var("list_item_desc"));
                mw.visitVarInsn(25, 1);
                mw.visitVarInsn(25, context.var("list_item"));
                if (context.nonContext) {
                    mw.visitInsn(1);
                } else {
                    mw.visitVarInsn(21, context.var("i"));
                    mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                }
                mw.visitLdcInsn(Type.getType(ASMUtils.desc(elementClass)));
                mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
                mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, ObjectSerializer, "write", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                mw.visitLabel(instanceOfEnd_);
                mw.visitJumpInsn(Opcodes.GOTO, forItemClassIfEnd_);
            }
            mw.visitLabel(forItemClassIfElse_);
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, context.var("list_item"));
            if (context.nonContext) {
                mw.visitInsn(1);
            } else {
                mw.visitVarInsn(21, context.var("i"));
                mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            }
            if (elementClass == null || !Modifier.isPublic(elementClass.getModifiers())) {
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            } else {
                mw.visitLdcInsn(Type.getType(ASMUtils.desc((Class) elementType)));
                mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            }
            mw.visitLabel(forItemClassIfEnd_);
            mw.visitLabel(forItemNullEnd_);
            mw.visitIincInsn(context.var("i"), 1);
            mw.visitJumpInsn(Opcodes.GOTO, for_);
            mw.visitLabel(forEnd_);
            mw.visitVarInsn(25, context.var("out"));
            mw.visitVarInsn(16, 93);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
        }
        mw.visitVarInsn(25, 1);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "popContext", "()V");
        mw.visitLabel(_end_if_3);
        _seperator(mw, context);
        mw.visitLabel(endIf_);
        mw.visitLabel(end_);
    }

    private void _filters(MethodVisitor mw, FieldInfo property, Context context, Label _end) {
        if (property.fieldTransient) {
            mw.visitVarInsn(25, context.var("out"));
            mw.visitLdcInsn(Integer.valueOf(SerializerFeature.SkipTransientField.mask));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
            mw.visitJumpInsn(Opcodes.IFNE, _end);
        }
        _notWriteDefault(mw, property, context, _end);
        if (!context.writeDirect) {
            _apply(mw, property, context);
            mw.visitJumpInsn(Opcodes.IFEQ, _end);
            _processKey(mw, property, context);
            _processValue(mw, property, context, _end);
        }
    }

    private void _nameApply(MethodVisitor mw, FieldInfo property, Context context, Label _end) {
        if (!context.writeDirect) {
            mw.visitVarInsn(25, 0);
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, 2);
            mw.visitVarInsn(25, Context.fieldName);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "applyName", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/String;)Z");
            mw.visitJumpInsn(Opcodes.IFEQ, _end);
            _labelApply(mw, property, context, _end);
        }
        if (property.field == null) {
            mw.visitVarInsn(25, context.var("out"));
            mw.visitLdcInsn(Integer.valueOf(SerializerFeature.IgnoreNonFieldGetter.mask));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
            mw.visitJumpInsn(Opcodes.IFNE, _end);
        }
    }

    private void _labelApply(MethodVisitor mw, FieldInfo property, Context context, Label _end) {
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitLdcInsn(property.label);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "applyLabel", "(L" + JSONSerializer + ";Ljava/lang/String;)Z");
        mw.visitJumpInsn(Opcodes.IFEQ, _end);
    }

    private void _writeObject(MethodVisitor mw, FieldInfo fieldInfo, Context context, Label _end) {
        String format = fieldInfo.getFormat();
        Class fieldClass = fieldInfo.fieldClass;
        Label notNull_ = new Label();
        if (context.writeDirect) {
            mw.visitVarInsn(25, context.var("object"));
        } else {
            mw.visitVarInsn(25, Context.processValue);
        }
        mw.visitInsn(89);
        mw.visitVarInsn(58, context.var("object"));
        mw.visitJumpInsn(199, notNull_);
        _if_write_null(mw, fieldInfo, context);
        mw.visitJumpInsn(Opcodes.GOTO, _end);
        mw.visitLabel(notNull_);
        mw.visitVarInsn(25, context.var("out"));
        mw.visitVarInsn(21, context.var("seperator"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
        _writeFieldName(mw, context);
        Label classIfEnd_ = new Label();
        Label classIfElse_ = new Label();
        if (Modifier.isPublic(fieldClass.getModifiers()) && !ParserConfig.isPrimitive2(fieldClass)) {
            mw.visitVarInsn(25, context.var("object"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
            mw.visitLdcInsn(Type.getType(ASMUtils.desc(fieldClass)));
            mw.visitJumpInsn(Opcodes.IF_ACMPNE, classIfElse_);
            _getFieldSer(context, mw, fieldInfo);
            mw.visitVarInsn(58, context.var("fied_ser"));
            Label instanceOfElse_ = new Label();
            Label instanceOfEnd_ = new Label();
            mw.visitVarInsn(25, context.var("fied_ser"));
            mw.visitTypeInsn(Opcodes.INSTANCEOF, JavaBeanSerializer);
            mw.visitJumpInsn(Opcodes.IFEQ, instanceOfElse_);
            boolean disableCircularReferenceDetect = (fieldInfo.serialzeFeatures & SerializerFeature.DisableCircularReferenceDetect.mask) != 0;
            boolean fieldBeanToArray = (fieldInfo.serialzeFeatures & SerializerFeature.BeanToArray.mask) != 0;
            String writeMethodName = (disableCircularReferenceDetect || (context.nonContext && context.writeDirect)) ? fieldBeanToArray ? "writeAsArrayNonContext" : "writeDirectNonContext" : fieldBeanToArray ? "writeAsArray" : "write";
            mw.visitVarInsn(25, context.var("fied_ser"));
            mw.visitTypeInsn(Opcodes.CHECKCAST, JavaBeanSerializer);
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, context.var("object"));
            mw.visitVarInsn(25, Context.fieldName);
            mw.visitVarInsn(25, 0);
            mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_fieldType", "Ljava/lang/reflect/Type;");
            mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, writeMethodName, "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            mw.visitJumpInsn(Opcodes.GOTO, instanceOfEnd_);
            mw.visitLabel(instanceOfElse_);
            mw.visitVarInsn(25, context.var("fied_ser"));
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, context.var("object"));
            mw.visitVarInsn(25, Context.fieldName);
            mw.visitVarInsn(25, 0);
            mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_fieldType", "Ljava/lang/reflect/Type;");
            mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
            mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, ObjectSerializer, "write", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            mw.visitLabel(instanceOfEnd_);
            mw.visitJumpInsn(Opcodes.GOTO, classIfEnd_);
        }
        mw.visitLabel(classIfElse_);
        mw.visitVarInsn(25, 1);
        if (context.writeDirect) {
            mw.visitVarInsn(25, context.var("object"));
        } else {
            mw.visitVarInsn(25, Context.processValue);
        }
        if (format != null) {
            mw.visitLdcInsn(format);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFormat", "(Ljava/lang/Object;Ljava/lang/String;)V");
        } else {
            mw.visitVarInsn(25, Context.fieldName);
            if ((fieldInfo.fieldType instanceof Class) && ((Class) fieldInfo.fieldType).isPrimitive()) {
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            } else {
                if (fieldInfo.fieldClass == String.class) {
                    mw.visitLdcInsn(Type.getType(ASMUtils.desc(String.class)));
                } else {
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_fieldType", "Ljava/lang/reflect/Type;");
                }
                mw.visitLdcInsn(Integer.valueOf(fieldInfo.serialzeFeatures));
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            }
        }
        mw.visitLabel(classIfEnd_);
        _seperator(mw, context);
    }

    private void _before(MethodVisitor mw, Context context) {
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitVarInsn(25, 2);
        mw.visitVarInsn(21, context.var("seperator"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "writeBefore", "(L" + JSONSerializer + ";Ljava/lang/Object;C)C");
        mw.visitVarInsn(54, context.var("seperator"));
    }

    private void _after(MethodVisitor mw, Context context) {
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitVarInsn(25, 2);
        mw.visitVarInsn(21, context.var("seperator"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "writeAfter", "(L" + JSONSerializer + ";Ljava/lang/Object;C)C");
        mw.visitVarInsn(54, context.var("seperator"));
    }

    private void _notWriteDefault(MethodVisitor mw, FieldInfo property, Context context, Label _end) {
        if (!context.writeDirect) {
            Label elseLabel = new Label();
            mw.visitVarInsn(21, context.var("notWriteDefaultValue"));
            mw.visitJumpInsn(Opcodes.IFEQ, elseLabel);
            Class<?> propertyClass = property.fieldClass;
            if (propertyClass == Boolean.TYPE) {
                mw.visitVarInsn(21, context.var("boolean"));
                mw.visitJumpInsn(Opcodes.IFEQ, _end);
            } else if (propertyClass == Byte.TYPE) {
                mw.visitVarInsn(21, context.var("byte"));
                mw.visitJumpInsn(Opcodes.IFEQ, _end);
            } else if (propertyClass == Short.TYPE) {
                mw.visitVarInsn(21, context.var("short"));
                mw.visitJumpInsn(Opcodes.IFEQ, _end);
            } else if (propertyClass == Integer.TYPE) {
                mw.visitVarInsn(21, context.var("int"));
                mw.visitJumpInsn(Opcodes.IFEQ, _end);
            } else if (propertyClass == Long.TYPE) {
                mw.visitVarInsn(22, context.var("long"));
                mw.visitInsn(9);
                mw.visitInsn(Opcodes.LCMP);
                mw.visitJumpInsn(Opcodes.IFEQ, _end);
            } else if (propertyClass == Float.TYPE) {
                mw.visitVarInsn(23, context.var("float"));
                mw.visitInsn(11);
                mw.visitInsn(Opcodes.FCMPL);
                mw.visitJumpInsn(Opcodes.IFEQ, _end);
            } else if (propertyClass == Double.TYPE) {
                mw.visitVarInsn(24, context.var("double"));
                mw.visitInsn(14);
                mw.visitInsn(Opcodes.DCMPL);
                mw.visitJumpInsn(Opcodes.IFEQ, _end);
            }
            mw.visitLabel(elseLabel);
        }
    }

    private void _apply(MethodVisitor mw, FieldInfo property, Context context) {
        Class<?> propertyClass = property.fieldClass;
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitVarInsn(25, 2);
        mw.visitVarInsn(25, Context.fieldName);
        if (propertyClass == Byte.TYPE) {
            mw.visitVarInsn(21, context.var("byte"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
        } else if (propertyClass == Short.TYPE) {
            mw.visitVarInsn(21, context.var("short"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
        } else if (propertyClass == Integer.TYPE) {
            mw.visitVarInsn(21, context.var("int"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        } else if (propertyClass == Character.TYPE) {
            mw.visitVarInsn(21, context.var("char"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
        } else if (propertyClass == Long.TYPE) {
            mw.visitVarInsn(22, context.var("long", 2));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
        } else if (propertyClass == Float.TYPE) {
            mw.visitVarInsn(23, context.var("float"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
        } else if (propertyClass == Double.TYPE) {
            mw.visitVarInsn(24, context.var("double", 2));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
        } else if (propertyClass == Boolean.TYPE) {
            mw.visitVarInsn(21, context.var("boolean"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
        } else if (propertyClass == BigDecimal.class) {
            mw.visitVarInsn(25, context.var("decimal"));
        } else if (propertyClass == String.class) {
            mw.visitVarInsn(25, context.var("string"));
        } else if (propertyClass.isEnum()) {
            mw.visitVarInsn(25, context.var("enum"));
        } else if (List.class.isAssignableFrom(propertyClass)) {
            mw.visitVarInsn(25, context.var("list"));
        } else {
            mw.visitVarInsn(25, context.var("object"));
        }
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "apply", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z");
    }

    private void _processValue(MethodVisitor mw, FieldInfo fieldInfo, Context context, Label _end) {
        Label processKeyElse_ = new Label();
        Class<?> fieldClass = fieldInfo.fieldClass;
        if (fieldClass.isPrimitive()) {
            Label checkValueEnd_ = new Label();
            mw.visitVarInsn(21, context.var("checkValue"));
            mw.visitJumpInsn(Opcodes.IFNE, checkValueEnd_);
            mw.visitInsn(1);
            mw.visitInsn(89);
            mw.visitVarInsn(58, Context.original);
            mw.visitVarInsn(58, Context.processValue);
            mw.visitJumpInsn(Opcodes.GOTO, processKeyElse_);
            mw.visitLabel(checkValueEnd_);
        }
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitVarInsn(25, 0);
        mw.visitLdcInsn(Integer.valueOf(context.getFieldOrinal(fieldInfo.name)));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "getBeanContext", "(I)" + ASMUtils.desc(BeanContext.class));
        mw.visitVarInsn(25, 2);
        mw.visitVarInsn(25, Context.fieldName);
        String valueDesc = "Ljava/lang/Object;";
        if (fieldClass == Byte.TYPE) {
            mw.visitVarInsn(21, context.var("byte"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
            mw.visitInsn(89);
            mw.visitVarInsn(58, Context.original);
        } else if (fieldClass == Short.TYPE) {
            mw.visitVarInsn(21, context.var("short"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
            mw.visitInsn(89);
            mw.visitVarInsn(58, Context.original);
        } else if (fieldClass == Integer.TYPE) {
            mw.visitVarInsn(21, context.var("int"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            mw.visitInsn(89);
            mw.visitVarInsn(58, Context.original);
        } else if (fieldClass == Character.TYPE) {
            mw.visitVarInsn(21, context.var("char"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
            mw.visitInsn(89);
            mw.visitVarInsn(58, Context.original);
        } else if (fieldClass == Long.TYPE) {
            mw.visitVarInsn(22, context.var("long", 2));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
            mw.visitInsn(89);
            mw.visitVarInsn(58, Context.original);
        } else if (fieldClass == Float.TYPE) {
            mw.visitVarInsn(23, context.var("float"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
            mw.visitInsn(89);
            mw.visitVarInsn(58, Context.original);
        } else if (fieldClass == Double.TYPE) {
            mw.visitVarInsn(24, context.var("double", 2));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
            mw.visitInsn(89);
            mw.visitVarInsn(58, Context.original);
        } else if (fieldClass == Boolean.TYPE) {
            mw.visitVarInsn(21, context.var("boolean"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
            mw.visitInsn(89);
            mw.visitVarInsn(58, Context.original);
        } else if (fieldClass == BigDecimal.class) {
            mw.visitVarInsn(25, context.var("decimal"));
            mw.visitVarInsn(58, Context.original);
            mw.visitVarInsn(25, Context.original);
        } else if (fieldClass == String.class) {
            mw.visitVarInsn(25, context.var("string"));
            mw.visitVarInsn(58, Context.original);
            mw.visitVarInsn(25, Context.original);
        } else if (fieldClass.isEnum()) {
            mw.visitVarInsn(25, context.var("enum"));
            mw.visitVarInsn(58, Context.original);
            mw.visitVarInsn(25, Context.original);
        } else if (List.class.isAssignableFrom(fieldClass)) {
            mw.visitVarInsn(25, context.var("list"));
            mw.visitVarInsn(58, Context.original);
            mw.visitVarInsn(25, Context.original);
        } else {
            mw.visitVarInsn(25, context.var("object"));
            mw.visitVarInsn(58, Context.original);
            mw.visitVarInsn(25, Context.original);
        }
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "processValue", "(L" + JSONSerializer + ";" + ASMUtils.desc(BeanContext.class) + "Ljava/lang/Object;Ljava/lang/String;" + valueDesc + ")Ljava/lang/Object;");
        mw.visitVarInsn(58, Context.processValue);
        mw.visitVarInsn(25, Context.original);
        mw.visitVarInsn(25, Context.processValue);
        mw.visitJumpInsn(Opcodes.IF_ACMPEQ, processKeyElse_);
        _writeObject(mw, fieldInfo, context, _end);
        mw.visitJumpInsn(Opcodes.GOTO, _end);
        mw.visitLabel(processKeyElse_);
    }

    private void _processKey(MethodVisitor mw, FieldInfo property, Context context) {
        Label _else_processKey = new Label();
        mw.visitVarInsn(21, context.var("hasNameFilters"));
        mw.visitJumpInsn(Opcodes.IFEQ, _else_processKey);
        Class<?> propertyClass = property.fieldClass;
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitVarInsn(25, 2);
        mw.visitVarInsn(25, Context.fieldName);
        if (propertyClass == Byte.TYPE) {
            mw.visitVarInsn(21, context.var("byte"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
        } else if (propertyClass == Short.TYPE) {
            mw.visitVarInsn(21, context.var("short"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
        } else if (propertyClass == Integer.TYPE) {
            mw.visitVarInsn(21, context.var("int"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        } else if (propertyClass == Character.TYPE) {
            mw.visitVarInsn(21, context.var("char"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
        } else if (propertyClass == Long.TYPE) {
            mw.visitVarInsn(22, context.var("long", 2));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
        } else if (propertyClass == Float.TYPE) {
            mw.visitVarInsn(23, context.var("float"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
        } else if (propertyClass == Double.TYPE) {
            mw.visitVarInsn(24, context.var("double", 2));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
        } else if (propertyClass == Boolean.TYPE) {
            mw.visitVarInsn(21, context.var("boolean"));
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
        } else if (propertyClass == BigDecimal.class) {
            mw.visitVarInsn(25, context.var("decimal"));
        } else if (propertyClass == String.class) {
            mw.visitVarInsn(25, context.var("string"));
        } else if (propertyClass.isEnum()) {
            mw.visitVarInsn(25, context.var("enum"));
        } else if (List.class.isAssignableFrom(propertyClass)) {
            mw.visitVarInsn(25, context.var("list"));
        } else {
            mw.visitVarInsn(25, context.var("object"));
        }
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JavaBeanSerializer, "processKey", "(L" + JSONSerializer + ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;");
        mw.visitVarInsn(58, Context.fieldName);
        mw.visitLabel(_else_processKey);
    }

    private void _if_write_null(MethodVisitor mw, FieldInfo fieldInfo, Context context) {
        Class<?> propertyClass = fieldInfo.fieldClass;
        Label _if = new Label();
        Label _else = new Label();
        Label _write_null = new Label();
        Label _end_if = new Label();
        mw.visitLabel(_if);
        JSONField annotation = fieldInfo.getAnnotation();
        int features = 0;
        if (annotation != null) {
            features = SerializerFeature.of(annotation.serialzeFeatures());
        }
        if ((SerializerFeature.WRITE_MAP_NULL_FEATURES & features) == 0) {
            mw.visitVarInsn(25, context.var("out"));
            mw.visitLdcInsn(Integer.valueOf(SerializerFeature.WRITE_MAP_NULL_FEATURES));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "isEnabled", "(I)Z");
            mw.visitJumpInsn(Opcodes.IFEQ, _else);
        }
        mw.visitLabel(_write_null);
        mw.visitVarInsn(25, context.var("out"));
        mw.visitVarInsn(21, context.var("seperator"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "write", "(I)V");
        _writeFieldName(mw, context);
        mw.visitVarInsn(25, context.var("out"));
        mw.visitLdcInsn(Integer.valueOf(features));
        if (propertyClass == String.class || propertyClass == Character.class) {
            mw.visitLdcInsn(Integer.valueOf(SerializerFeature.WriteNullStringAsEmpty.mask));
        } else if (Number.class.isAssignableFrom(propertyClass)) {
            mw.visitLdcInsn(Integer.valueOf(SerializerFeature.WriteNullNumberAsZero.mask));
        } else if (propertyClass == Boolean.class) {
            mw.visitLdcInsn(Integer.valueOf(SerializerFeature.WriteNullBooleanAsFalse.mask));
        } else if (Collection.class.isAssignableFrom(propertyClass) || propertyClass.isArray()) {
            mw.visitLdcInsn(Integer.valueOf(SerializerFeature.WriteNullListAsEmpty.mask));
        } else {
            mw.visitLdcInsn(Integer.valueOf(0));
        }
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeNull", "(II)V");
        _seperator(mw, context);
        mw.visitJumpInsn(Opcodes.GOTO, _end_if);
        mw.visitLabel(_else);
        mw.visitLabel(_end_if);
    }

    private void _writeFieldName(MethodVisitor mw, Context context) {
        if (context.writeDirect) {
            mw.visitVarInsn(25, context.var("out"));
            mw.visitVarInsn(25, Context.fieldName);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldNameDirect", "(Ljava/lang/String;)V");
            return;
        }
        mw.visitVarInsn(25, context.var("out"));
        mw.visitVarInsn(25, Context.fieldName);
        mw.visitInsn(3);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, SerializeWriter, "writeFieldName", "(Ljava/lang/String;Z)V");
    }

    private void _seperator(MethodVisitor mw, Context context) {
        mw.visitVarInsn(16, 44);
        mw.visitVarInsn(54, context.var("seperator"));
    }

    private void _getListFieldItemSer(Context context, MethodVisitor mw, FieldInfo fieldInfo, Class<?> itemType) {
        Label notNull_ = new Label();
        mw.visitVarInsn(25, 0);
        mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_list_item_ser_", ObjectSerializer_desc);
        mw.visitJumpInsn(199, notNull_);
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitLdcInsn(Type.getType(ASMUtils.desc((Class) itemType)));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "getObjectWriter", "(Ljava/lang/Class;)" + ObjectSerializer_desc);
        mw.visitFieldInsn(Opcodes.PUTFIELD, context.className, fieldInfo.name + "_asm_list_item_ser_", ObjectSerializer_desc);
        mw.visitLabel(notNull_);
        mw.visitVarInsn(25, 0);
        mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_list_item_ser_", ObjectSerializer_desc);
    }

    private void _getFieldSer(Context context, MethodVisitor mw, FieldInfo fieldInfo) {
        Label notNull_ = new Label();
        mw.visitVarInsn(25, 0);
        mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_ser_", ObjectSerializer_desc);
        mw.visitJumpInsn(199, notNull_);
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitLdcInsn(Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONSerializer, "getObjectWriter", "(Ljava/lang/Class;)" + ObjectSerializer_desc);
        mw.visitFieldInsn(Opcodes.PUTFIELD, context.className, fieldInfo.name + "_asm_ser_", ObjectSerializer_desc);
        mw.visitLabel(notNull_);
        mw.visitVarInsn(25, 0);
        mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_ser_", ObjectSerializer_desc);
    }
}
