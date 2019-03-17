package com.alibaba.fastjson.parser.deserializer;

import com.ali.auth.third.login.LoginConstants;
import com.alibaba.fastjson.asm.ClassWriter;
import com.alibaba.fastjson.asm.FieldWriter;
import com.alibaba.fastjson.asm.Label;
import com.alibaba.fastjson.asm.MethodVisitor;
import com.alibaba.fastjson.asm.MethodWriter;
import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.parser.SymbolTable;
import com.alibaba.fastjson.util.ASMClassLoader;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.alibaba.wireless.security.SecExceptionCode;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import mtopsdk.common.util.SymbolExpUtil;

public class ASMDeserializerFactory implements Opcodes {
    static final String DefaultJSONParser = ASMUtils.type(DefaultJSONParser.class);
    static final String JSONLexerBase = ASMUtils.type(JSONLexerBase.class);
    public final ASMClassLoader classLoader;
    protected final AtomicLong seed = new AtomicLong();

    static class Context {
        static final int fieldName = 3;
        static final int parser = 1;
        static final int type = 2;
        private final JavaBeanInfo beanInfo;
        private final String className;
        private final Class<?> clazz;
        private FieldInfo[] fieldInfoList;
        private int variantIndex = -1;
        private final Map<String, Integer> variants = new HashMap();

        public Context(String className, ParserConfig config, JavaBeanInfo beanInfo, int initVariantIndex) {
            this.className = className;
            this.clazz = beanInfo.clazz;
            this.variantIndex = initVariantIndex;
            this.beanInfo = beanInfo;
            this.fieldInfoList = beanInfo.fields;
        }

        public Class<?> getInstClass() {
            Class<?> instClass = this.beanInfo.builderClass;
            if (instClass == null) {
                return this.clazz;
            }
            return instClass;
        }

        public int var(String name, int increment) {
            if (((Integer) this.variants.get(name)) == null) {
                this.variants.put(name, Integer.valueOf(this.variantIndex));
                this.variantIndex += increment;
            }
            return ((Integer) this.variants.get(name)).intValue();
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
    }

    public ASMDeserializerFactory(ClassLoader parentClassLoader) {
        this.classLoader = parentClassLoader instanceof ASMClassLoader ? (ASMClassLoader) parentClassLoader : new ASMClassLoader(parentClassLoader);
    }

    public ObjectDeserializer createJavaBeanDeserializer(ParserConfig config, JavaBeanInfo beanInfo) throws Exception {
        Class<?> clazz = beanInfo.clazz;
        if (clazz.isPrimitive()) {
            throw new IllegalArgumentException("not support type :" + clazz.getName());
        }
        String className = "FastjsonASMDeserializer_" + this.seed.incrementAndGet() + LoginConstants.UNDER_LINE + clazz.getSimpleName();
        String packageName = ASMDeserializerFactory.class.getPackage().getName();
        String classNameType = packageName.replace('.', '/') + "/" + className;
        String classNameFull = packageName + SymbolExpUtil.SYMBOL_DOT + className;
        ClassWriter cw = new ClassWriter();
        cw.visit(49, 33, classNameType, ASMUtils.type(JavaBeanDeserializer.class), null);
        _init(cw, new Context(classNameType, config, beanInfo, 3));
        _createInstance(cw, new Context(classNameType, config, beanInfo, 3));
        _deserialze(cw, new Context(classNameType, config, beanInfo, 5));
        _deserialzeArrayMapping(cw, new Context(classNameType, config, beanInfo, 4));
        byte[] code = cw.toByteArray();
        return (ObjectDeserializer) this.classLoader.defineClassPublic(classNameFull, code, 0, code.length).getConstructor(new Class[]{ParserConfig.class, JavaBeanInfo.class}).newInstance(new Object[]{config, beanInfo});
    }

    private void _setFlag(MethodVisitor mw, Context context, int i) {
        String varName = "_asm_flag_" + (i / 32);
        mw.visitVarInsn(21, context.var(varName));
        mw.visitLdcInsn(Integer.valueOf(1 << i));
        mw.visitInsn(128);
        mw.visitVarInsn(54, context.var(varName));
    }

    private void _isFlag(MethodVisitor mw, Context context, int i, Label label) {
        mw.visitVarInsn(21, context.var("_asm_flag_" + (i / 32)));
        mw.visitLdcInsn(Integer.valueOf(1 << i));
        mw.visitInsn(Opcodes.IAND);
        mw.visitJumpInsn(Opcodes.IFEQ, label);
    }

    private void _deserialzeArrayMapping(ClassWriter cw, Context context) {
        Label quickElse_;
        Label quickEnd_;
        MethodVisitor mw = new MethodWriter(cw, 1, "deserialzeArrayMapping", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", null, null);
        defineVarLexer(context, mw);
        _createInstance(context, mw);
        FieldInfo[] sortedFieldInfoList = context.beanInfo.sortedFields;
        int fieldListSize = sortedFieldInfoList.length;
        int i = 0;
        while (i < fieldListSize) {
            boolean last = i == fieldListSize + -1;
            char seperator = last ? ']' : ',';
            FieldInfo fieldInfo = sortedFieldInfoList[i];
            Class fieldClass = fieldInfo.fieldClass;
            Type fieldType = fieldInfo.fieldType;
            Label valueNullEnd_;
            if (fieldClass == Byte.TYPE || fieldClass == Short.TYPE || fieldClass == Integer.TYPE) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanInt", "(C)I");
                mw.visitVarInsn(54, context.var(fieldInfo.name + "_asm"));
            } else if (fieldClass == Byte.class) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanInt", "(C)I");
                mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                valueNullEnd_ = new Label();
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                mw.visitLdcInsn(Integer.valueOf(5));
                mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                mw.visitInsn(1);
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                mw.visitLabel(valueNullEnd_);
            } else if (fieldClass == Short.class) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanInt", "(C)I");
                mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                valueNullEnd_ = new Label();
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                mw.visitLdcInsn(Integer.valueOf(5));
                mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                mw.visitInsn(1);
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                mw.visitLabel(valueNullEnd_);
            } else if (fieldClass == Integer.class) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanInt", "(C)I");
                mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                valueNullEnd_ = new Label();
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                mw.visitLdcInsn(Integer.valueOf(5));
                mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                mw.visitInsn(1);
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                mw.visitLabel(valueNullEnd_);
            } else if (fieldClass == Long.TYPE) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanLong", "(C)J");
                mw.visitVarInsn(55, context.var(fieldInfo.name + "_asm", 2));
            } else if (fieldClass == Long.class) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanLong", "(C)J");
                mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                valueNullEnd_ = new Label();
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                mw.visitLdcInsn(Integer.valueOf(5));
                mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                mw.visitInsn(1);
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                mw.visitLabel(valueNullEnd_);
            } else if (fieldClass == Boolean.TYPE) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanBoolean", "(C)Z");
                mw.visitVarInsn(54, context.var(fieldInfo.name + "_asm"));
            } else if (fieldClass == Float.TYPE) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFloat", "(C)F");
                mw.visitVarInsn(56, context.var(fieldInfo.name + "_asm"));
            } else if (fieldClass == Float.class) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFloat", "(C)F");
                mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                valueNullEnd_ = new Label();
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                mw.visitLdcInsn(Integer.valueOf(5));
                mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                mw.visitInsn(1);
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                mw.visitLabel(valueNullEnd_);
            } else if (fieldClass == Double.TYPE) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanDouble", "(C)D");
                mw.visitVarInsn(57, context.var(fieldInfo.name + "_asm", 2));
            } else if (fieldClass == Double.class) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanDouble", "(C)D");
                mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                valueNullEnd_ = new Label();
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                mw.visitLdcInsn(Integer.valueOf(5));
                mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                mw.visitInsn(1);
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                mw.visitLabel(valueNullEnd_);
            } else if (fieldClass == Character.TYPE) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanString", "(C)Ljava/lang/String;");
                mw.visitInsn(3);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/String", "charAt", "(I)C");
                mw.visitVarInsn(54, context.var(fieldInfo.name + "_asm"));
            } else if (fieldClass == String.class) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanString", "(C)Ljava/lang/String;");
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
            } else if (fieldClass.isEnum()) {
                Label enumNumIf_ = new Label();
                Label enumNumErr_ = new Label();
                Label enumStore_ = new Label();
                Label enumQuote_ = new Label();
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "getCurrent", "()C");
                mw.visitInsn(89);
                mw.visitVarInsn(54, context.var("ch"));
                mw.visitLdcInsn(Integer.valueOf(110));
                mw.visitJumpInsn(Opcodes.IF_ICMPEQ, enumQuote_);
                mw.visitVarInsn(21, context.var("ch"));
                mw.visitLdcInsn(Integer.valueOf(34));
                mw.visitJumpInsn(Opcodes.IF_ICMPNE, enumNumIf_);
                mw.visitLabel(enumQuote_);
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(fieldClass)));
                mw.visitVarInsn(25, 1);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "getSymbolTable", "()" + ASMUtils.desc(SymbolTable.class));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanEnum", "(Ljava/lang/Class;" + ASMUtils.desc(SymbolTable.class) + "C)Ljava/lang/Enum;");
                mw.visitJumpInsn(Opcodes.GOTO, enumStore_);
                mw.visitLabel(enumNumIf_);
                mw.visitVarInsn(21, context.var("ch"));
                mw.visitLdcInsn(Integer.valueOf(48));
                mw.visitJumpInsn(Opcodes.IF_ICMPLT, enumNumErr_);
                mw.visitVarInsn(21, context.var("ch"));
                mw.visitLdcInsn(Integer.valueOf(57));
                mw.visitJumpInsn(Opcodes.IF_ICMPGT, enumNumErr_);
                _getFieldDeser(context, mw, fieldInfo);
                mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(EnumDeserializer.class));
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanInt", "(C)I");
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(EnumDeserializer.class), "valueOf", "(I)Ljava/lang/Enum;");
                mw.visitJumpInsn(Opcodes.GOTO, enumStore_);
                mw.visitLabel(enumNumErr_);
                mw.visitVarInsn(25, 0);
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(16, seperator);
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(JavaBeanDeserializer.class), "scanEnum", "(L" + JSONLexerBase + ";C)Ljava/lang/Enum;");
                mw.visitLabel(enumStore_);
                mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(fieldClass));
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
            } else if (Collection.class.isAssignableFrom(fieldClass)) {
                Class itemClass = TypeUtils.getCollectionItemClass(fieldType);
                if (itemClass == String.class) {
                    if (fieldClass == List.class || fieldClass == Collections.class || fieldClass == ArrayList.class) {
                        mw.visitTypeInsn(Opcodes.NEW, ASMUtils.type(ArrayList.class));
                        mw.visitInsn(89);
                        mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(ArrayList.class), "<init>", "()V");
                    } else {
                        mw.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(fieldClass)));
                        mw.visitMethodInsn(Opcodes.INVOKESTATIC, ASMUtils.type(TypeUtils.class), "createCollection", "(Ljava/lang/Class;)Ljava/util/Collection;");
                    }
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
                    mw.visitVarInsn(16, seperator);
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanStringArray", "(Ljava/util/Collection;C)V");
                    valueNullEnd_ = new Label();
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                    mw.visitLdcInsn(Integer.valueOf(5));
                    mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                    mw.visitInsn(1);
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    mw.visitLabel(valueNullEnd_);
                } else {
                    Label notError_ = new Label();
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
                    mw.visitVarInsn(54, context.var("token"));
                    mw.visitVarInsn(21, context.var("token"));
                    mw.visitLdcInsn(Integer.valueOf(i == 0 ? 14 : 16));
                    mw.visitJumpInsn(Opcodes.IF_ICMPEQ, notError_);
                    mw.visitVarInsn(25, 1);
                    mw.visitVarInsn(21, context.var("token"));
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "throwException", "(I)V");
                    mw.visitLabel(notError_);
                    quickElse_ = new Label();
                    quickEnd_ = new Label();
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "getCurrent", "()C");
                    mw.visitVarInsn(16, 91);
                    mw.visitJumpInsn(Opcodes.IF_ICMPNE, quickElse_);
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "next", "()C");
                    mw.visitInsn(87);
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitLdcInsn(Integer.valueOf(14));
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "setToken", "(I)V");
                    mw.visitJumpInsn(Opcodes.GOTO, quickEnd_);
                    mw.visitLabel(quickElse_);
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitLdcInsn(Integer.valueOf(14));
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "nextToken", "(I)V");
                    mw.visitLabel(quickEnd_);
                    _newCollection(mw, fieldClass, i, false);
                    mw.visitInsn(89);
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    _getCollectionFieldItemDeser(context, mw, fieldInfo, itemClass);
                    mw.visitVarInsn(25, 1);
                    mw.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(itemClass)));
                    mw.visitVarInsn(25, 3);
                    mw.visitMethodInsn(Opcodes.INVOKESTATIC, ASMUtils.type(JavaBeanDeserializer.class), "parseArray", "(Ljava/util/Collection;" + ASMUtils.desc(ObjectDeserializer.class) + "L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)V");
                }
            } else if (fieldClass.isArray()) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitLdcInsn(Integer.valueOf(14));
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "nextToken", "(I)V");
                mw.visitVarInsn(25, 1);
                mw.visitVarInsn(25, 0);
                mw.visitLdcInsn(Integer.valueOf(i));
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "parseObject", "(Ljava/lang/reflect/Type;)Ljava/lang/Object;");
                mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(fieldClass));
                mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
            } else {
                Label objElseIf_ = new Label();
                Label objEndIf_ = new Label();
                if (fieldClass == Date.class) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "getCurrent", "()C");
                    mw.visitLdcInsn(Integer.valueOf(49));
                    mw.visitJumpInsn(Opcodes.IF_ICMPNE, objElseIf_);
                    mw.visitTypeInsn(Opcodes.NEW, ASMUtils.type(Date.class));
                    mw.visitInsn(89);
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(16, seperator);
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanLong", "(C)J");
                    mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(Date.class), "<init>", "(J)V");
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    mw.visitJumpInsn(Opcodes.GOTO, objEndIf_);
                }
                mw.visitLabel(objElseIf_);
                _quickNextToken(context, mw, 14);
                _deserObject(context, mw, fieldInfo, fieldClass, i);
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
                mw.visitLdcInsn(Integer.valueOf(15));
                mw.visitJumpInsn(Opcodes.IF_ICMPEQ, objEndIf_);
                mw.visitVarInsn(25, 0);
                mw.visitVarInsn(25, context.var("lexer"));
                if (last) {
                    mw.visitLdcInsn(Integer.valueOf(15));
                } else {
                    mw.visitLdcInsn(Integer.valueOf(16));
                }
                mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(JavaBeanDeserializer.class), "check", "(" + ASMUtils.desc(JSONLexer.class) + "I)V");
                mw.visitLabel(objEndIf_);
            }
            i++;
        }
        _batchSet(context, mw, false);
        quickElse_ = new Label();
        Label quickElseIf_ = new Label();
        Label quickElseIfEOI_ = new Label();
        quickEnd_ = new Label();
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "getCurrent", "()C");
        mw.visitInsn(89);
        mw.visitVarInsn(54, context.var("ch"));
        mw.visitVarInsn(16, 44);
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, quickElseIf_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "next", "()C");
        mw.visitInsn(87);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitLdcInsn(Integer.valueOf(16));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "setToken", "(I)V");
        mw.visitJumpInsn(Opcodes.GOTO, quickEnd_);
        mw.visitLabel(quickElseIf_);
        mw.visitVarInsn(21, context.var("ch"));
        mw.visitVarInsn(16, 93);
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, quickElseIfEOI_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "next", "()C");
        mw.visitInsn(87);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitLdcInsn(Integer.valueOf(15));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "setToken", "(I)V");
        mw.visitJumpInsn(Opcodes.GOTO, quickEnd_);
        mw.visitLabel(quickElseIfEOI_);
        mw.visitVarInsn(21, context.var("ch"));
        mw.visitVarInsn(16, 26);
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, quickElse_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "next", "()C");
        mw.visitInsn(87);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitLdcInsn(Integer.valueOf(20));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "setToken", "(I)V");
        mw.visitJumpInsn(Opcodes.GOTO, quickEnd_);
        mw.visitLabel(quickElse_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitLdcInsn(Integer.valueOf(16));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "nextToken", "(I)V");
        mw.visitLabel(quickEnd_);
        mw.visitVarInsn(25, context.var("instance"));
        mw.visitInsn(Opcodes.ARETURN);
        mw.visitMaxs(5, context.variantIndex);
        mw.visitEnd();
    }

    private void _deserialze(ClassWriter cw, Context context) {
        if (context.fieldInfoList.length != 0) {
            FieldInfo fieldInfo;
            Class<?> fieldClass;
            Type fieldType;
            int i;
            FieldInfo[] access$200 = context.fieldInfoList;
            int length = access$200.length;
            int i2 = 0;
            while (i2 < length) {
                fieldInfo = access$200[i2];
                fieldClass = fieldInfo.fieldClass;
                fieldType = fieldInfo.fieldType;
                if (fieldClass == Character.TYPE) {
                    return;
                }
                if (!Collection.class.isAssignableFrom(fieldClass) || ((fieldType instanceof ParameterizedType) && (((ParameterizedType) fieldType).getActualTypeArguments()[0] instanceof Class))) {
                    i2++;
                } else {
                    return;
                }
            }
            JavaBeanInfo beanInfo = context.beanInfo;
            context.fieldInfoList = beanInfo.sortedFields;
            String str = "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;";
            MethodVisitor mw = new MethodWriter(cw, 1, "deserialze", str, null, null);
            Label reset_ = new Label();
            Label super_ = new Label();
            Label return_ = new Label();
            Label end_ = new Label();
            defineVarLexer(context, mw);
            Label next_ = new Label();
            mw.visitVarInsn(25, context.var("lexer"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
            mw.visitLdcInsn(Integer.valueOf(14));
            mw.visitJumpInsn(Opcodes.IF_ICMPNE, next_);
            if ((beanInfo.parserFeatures & Feature.SupportArrayToBean.mask) == 0) {
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitVarInsn(21, 4);
                mw.visitLdcInsn(Integer.valueOf(Feature.SupportArrayToBean.mask));
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "isEnabled", "(II)Z");
                mw.visitJumpInsn(Opcodes.IFEQ, next_);
            }
            mw.visitVarInsn(25, 0);
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, 2);
            mw.visitVarInsn(25, 3);
            mw.visitInsn(1);
            mw.visitMethodInsn(Opcodes.INVOKESPECIAL, context.className, "deserialzeArrayMapping", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
            mw.visitInsn(Opcodes.ARETURN);
            mw.visitLabel(next_);
            mw.visitVarInsn(25, context.var("lexer"));
            mw.visitLdcInsn(Integer.valueOf(Feature.SortFeidFastMatch.mask));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "isEnabled", "(I)Z");
            mw.visitJumpInsn(Opcodes.IFEQ, super_);
            mw.visitVarInsn(25, context.var("lexer"));
            mw.visitLdcInsn(context.clazz.getName());
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanType", "(Ljava/lang/String;)I");
            mw.visitLdcInsn(Integer.valueOf(-1));
            mw.visitJumpInsn(Opcodes.IF_ICMPEQ, super_);
            mw.visitVarInsn(25, 1);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "getContext", "()" + ASMUtils.desc(ParseContext.class));
            mw.visitVarInsn(58, context.var("mark_context"));
            mw.visitInsn(3);
            mw.visitVarInsn(54, context.var("matchedCount"));
            _createInstance(context, mw);
            mw.visitVarInsn(25, 1);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "getContext", "()" + ASMUtils.desc(ParseContext.class));
            mw.visitVarInsn(58, context.var("context"));
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, context.var("context"));
            mw.visitVarInsn(25, context.var("instance"));
            mw.visitVarInsn(25, 3);
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "setContext", "(" + ASMUtils.desc(ParseContext.class) + "Ljava/lang/Object;Ljava/lang/Object;)" + ASMUtils.desc(ParseContext.class));
            mw.visitVarInsn(58, context.var("childContext"));
            mw.visitVarInsn(25, context.var("lexer"));
            mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
            mw.visitLdcInsn(Integer.valueOf(4));
            mw.visitJumpInsn(Opcodes.IF_ICMPEQ, return_);
            mw.visitInsn(3);
            mw.visitIntInsn(54, context.var("matchStat"));
            int fieldListSize = context.fieldInfoList.length;
            for (i = 0; i < fieldListSize; i += 32) {
                mw.visitInsn(3);
                mw.visitVarInsn(54, context.var("_asm_flag_" + (i / 32)));
            }
            mw.visitVarInsn(25, context.var("lexer"));
            mw.visitLdcInsn(Integer.valueOf(Feature.InitStringFieldAsEmpty.mask));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "isEnabled", "(I)Z");
            mw.visitIntInsn(54, context.var("initStringFieldAsEmpty"));
            for (i = 0; i < fieldListSize; i++) {
                fieldInfo = context.fieldInfoList[i];
                fieldClass = fieldInfo.fieldClass;
                if (fieldClass == Boolean.TYPE || fieldClass == Byte.TYPE || fieldClass == Short.TYPE || fieldClass == Integer.TYPE) {
                    mw.visitInsn(3);
                    mw.visitVarInsn(54, context.var(fieldInfo.name + "_asm"));
                } else if (fieldClass == Long.TYPE) {
                    mw.visitInsn(9);
                    mw.visitVarInsn(55, context.var(fieldInfo.name + "_asm", 2));
                } else if (fieldClass == Float.TYPE) {
                    mw.visitInsn(11);
                    mw.visitVarInsn(56, context.var(fieldInfo.name + "_asm"));
                } else if (fieldClass == Double.TYPE) {
                    mw.visitInsn(14);
                    mw.visitVarInsn(57, context.var(fieldInfo.name + "_asm", 2));
                } else {
                    if (fieldClass == String.class) {
                        Label flagEnd_ = new Label();
                        Label flagElse_ = new Label();
                        mw.visitVarInsn(21, context.var("initStringFieldAsEmpty"));
                        mw.visitJumpInsn(Opcodes.IFEQ, flagElse_);
                        _setFlag(mw, context, i);
                        mw.visitVarInsn(25, context.var("lexer"));
                        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "stringDefaultValue", "()Ljava/lang/String;");
                        mw.visitJumpInsn(Opcodes.GOTO, flagEnd_);
                        mw.visitLabel(flagElse_);
                        mw.visitInsn(1);
                        mw.visitLabel(flagEnd_);
                    } else {
                        mw.visitInsn(1);
                    }
                    mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(fieldClass));
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                }
            }
            for (i = 0; i < fieldListSize; i++) {
                fieldInfo = context.fieldInfoList[i];
                Class fieldClass2 = fieldInfo.fieldClass;
                fieldType = fieldInfo.fieldType;
                Label notMatch_ = new Label();
                Label valueNullEnd_;
                if (fieldClass2 == Boolean.TYPE) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldBoolean", "([C)Z");
                    mw.visitVarInsn(54, context.var(fieldInfo.name + "_asm"));
                } else if (fieldClass2 == Byte.TYPE) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldInt", "([C)I");
                    mw.visitVarInsn(54, context.var(fieldInfo.name + "_asm"));
                } else if (fieldClass2 == Byte.class) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldInt", "([C)I");
                    mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    valueNullEnd_ = new Label();
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                    mw.visitLdcInsn(Integer.valueOf(5));
                    mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                    mw.visitInsn(1);
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    mw.visitLabel(valueNullEnd_);
                } else if (fieldClass2 == Short.TYPE) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldInt", "([C)I");
                    mw.visitVarInsn(54, context.var(fieldInfo.name + "_asm"));
                } else if (fieldClass2 == Short.class) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldInt", "([C)I");
                    mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    valueNullEnd_ = new Label();
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                    mw.visitLdcInsn(Integer.valueOf(5));
                    mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                    mw.visitInsn(1);
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    mw.visitLabel(valueNullEnd_);
                } else if (fieldClass2 == Integer.TYPE) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldInt", "([C)I");
                    mw.visitVarInsn(54, context.var(fieldInfo.name + "_asm"));
                } else if (fieldClass2 == Integer.class) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldInt", "([C)I");
                    mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    valueNullEnd_ = new Label();
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                    mw.visitLdcInsn(Integer.valueOf(5));
                    mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                    mw.visitInsn(1);
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    mw.visitLabel(valueNullEnd_);
                } else if (fieldClass2 == Long.TYPE) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldLong", "([C)J");
                    mw.visitVarInsn(55, context.var(fieldInfo.name + "_asm", 2));
                } else if (fieldClass2 == Long.class) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldLong", "([C)J");
                    mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    valueNullEnd_ = new Label();
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                    mw.visitLdcInsn(Integer.valueOf(5));
                    mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                    mw.visitInsn(1);
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    mw.visitLabel(valueNullEnd_);
                } else if (fieldClass2 == Float.TYPE) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldFloat", "([C)F");
                    mw.visitVarInsn(56, context.var(fieldInfo.name + "_asm"));
                } else if (fieldClass2 == Float.class) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldFloat", "([C)F");
                    mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    valueNullEnd_ = new Label();
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                    mw.visitLdcInsn(Integer.valueOf(5));
                    mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                    mw.visitInsn(1);
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    mw.visitLabel(valueNullEnd_);
                } else if (fieldClass2 == Double.TYPE) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldDouble", "([C)D");
                    mw.visitVarInsn(57, context.var(fieldInfo.name + "_asm", 2));
                } else if (fieldClass2 == Double.class) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldDouble", "([C)D");
                    mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    valueNullEnd_ = new Label();
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                    mw.visitLdcInsn(Integer.valueOf(5));
                    mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNullEnd_);
                    mw.visitInsn(1);
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    mw.visitLabel(valueNullEnd_);
                } else if (fieldClass2 == String.class) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldString", "([C)Ljava/lang/String;");
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                } else if (fieldClass2 == int[].class) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldIntArray", "([C)[I");
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                } else if (fieldClass2 == float[].class) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldFloatArray", "([C)[F");
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                } else if (fieldClass2 == float[][].class) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldFloatArray2", "([C)[[F");
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                } else if (fieldClass2.isEnum()) {
                    mw.visitVarInsn(25, 0);
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitVarInsn(25, 0);
                    mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                    _getFieldDeser(context, mw, fieldInfo);
                    mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(JavaBeanDeserializer.class), "scanEnum", "(L" + JSONLexerBase + ";[C" + ASMUtils.desc(ObjectDeserializer.class) + ")Ljava/lang/Enum;");
                    mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(fieldClass2));
                    mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                } else {
                    if (Collection.class.isAssignableFrom(fieldClass2)) {
                        mw.visitVarInsn(25, context.var("lexer"));
                        mw.visitVarInsn(25, 0);
                        mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
                        Class<?> itemClass = TypeUtils.getCollectionItemClass(fieldType);
                        if (itemClass == String.class) {
                            mw.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(fieldClass2)));
                            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "scanFieldStringArray", "([CLjava/lang/Class;)" + ASMUtils.desc(Collection.class));
                            mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                        } else {
                            _deserialze_list_obj(context, mw, reset_, fieldInfo, fieldClass2, itemClass, i);
                            if (i == fieldListSize - 1) {
                                _deserialize_endCheck(context, mw, reset_);
                            }
                        }
                    } else {
                        _deserialze_obj(context, mw, reset_, fieldInfo, fieldClass2, i);
                        if (i == fieldListSize - 1) {
                            _deserialize_endCheck(context, mw, reset_);
                        }
                    }
                }
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                Label flag_ = new Label();
                mw.visitJumpInsn(Opcodes.IFLE, flag_);
                _setFlag(mw, context, i);
                mw.visitLabel(flag_);
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                mw.visitInsn(89);
                mw.visitVarInsn(54, context.var("matchStat"));
                mw.visitLdcInsn(Integer.valueOf(-1));
                mw.visitJumpInsn(Opcodes.IF_ICMPEQ, reset_);
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                mw.visitJumpInsn(Opcodes.IFLE, notMatch_);
                mw.visitVarInsn(21, context.var("matchedCount"));
                mw.visitInsn(4);
                mw.visitInsn(96);
                mw.visitVarInsn(54, context.var("matchedCount"));
                mw.visitVarInsn(25, context.var("lexer"));
                mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                mw.visitLdcInsn(Integer.valueOf(4));
                mw.visitJumpInsn(Opcodes.IF_ICMPEQ, end_);
                mw.visitLabel(notMatch_);
                if (i == fieldListSize - 1) {
                    mw.visitVarInsn(25, context.var("lexer"));
                    mw.visitFieldInsn(Opcodes.GETFIELD, JSONLexerBase, "matchStat", "I");
                    mw.visitLdcInsn(Integer.valueOf(4));
                    mw.visitJumpInsn(Opcodes.IF_ICMPNE, reset_);
                }
            }
            mw.visitLabel(end_);
            if (!(context.clazz.isInterface() || Modifier.isAbstract(context.clazz.getModifiers()))) {
                _batchSet(context, mw);
            }
            mw.visitLabel(return_);
            _setContext(context, mw);
            mw.visitVarInsn(25, context.var("instance"));
            Method buildMethod = context.beanInfo.buildMethod;
            if (buildMethod != null) {
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(context.getInstClass()), buildMethod.getName(), "()" + ASMUtils.desc(buildMethod.getReturnType()));
            }
            mw.visitInsn(Opcodes.ARETURN);
            mw.visitLabel(reset_);
            _batchSet(context, mw);
            mw.visitVarInsn(25, 0);
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, 2);
            mw.visitVarInsn(25, 3);
            mw.visitVarInsn(25, context.var("instance"));
            mw.visitVarInsn(21, 4);
            int flagSize = fieldListSize / 32;
            if (!(fieldListSize == 0 || fieldListSize % 32 == 0)) {
                flagSize++;
            }
            if (flagSize == 1) {
                mw.visitInsn(4);
            } else {
                mw.visitIntInsn(16, flagSize);
            }
            mw.visitIntInsn(Opcodes.NEWARRAY, 10);
            for (i = 0; i < flagSize; i++) {
                mw.visitInsn(89);
                if (i == 0) {
                    mw.visitInsn(3);
                } else if (i == 1) {
                    mw.visitInsn(4);
                } else {
                    mw.visitIntInsn(16, i);
                }
                mw.visitVarInsn(21, context.var("_asm_flag_" + i));
                mw.visitInsn(79);
            }
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(JavaBeanDeserializer.class), "parseRest", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;");
            mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(context.clazz));
            mw.visitInsn(Opcodes.ARETURN);
            mw.visitLabel(super_);
            mw.visitVarInsn(25, 0);
            mw.visitVarInsn(25, 1);
            mw.visitVarInsn(25, 2);
            mw.visitVarInsn(25, 3);
            mw.visitVarInsn(21, 4);
            mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(JavaBeanDeserializer.class), "deserialze", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;");
            mw.visitInsn(Opcodes.ARETURN);
            mw.visitMaxs(10, context.variantIndex);
            mw.visitEnd();
        }
    }

    private void defineVarLexer(Context context, MethodVisitor mw) {
        mw.visitVarInsn(25, 1);
        mw.visitFieldInsn(Opcodes.GETFIELD, DefaultJSONParser, "lexer", ASMUtils.desc(JSONLexer.class));
        mw.visitTypeInsn(Opcodes.CHECKCAST, JSONLexerBase);
        mw.visitVarInsn(58, context.var("lexer"));
    }

    private void _createInstance(Context context, MethodVisitor mw) {
        Constructor<?> defaultConstructor = context.beanInfo.defaultConstructor;
        if (Modifier.isPublic(defaultConstructor.getModifiers())) {
            mw.visitTypeInsn(Opcodes.NEW, ASMUtils.type(context.getInstClass()));
            mw.visitInsn(89);
            mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(defaultConstructor.getDeclaringClass()), "<init>", "()V");
            mw.visitVarInsn(58, context.var("instance"));
            return;
        }
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitVarInsn(25, 0);
        mw.visitFieldInsn(Opcodes.GETFIELD, ASMUtils.type(JavaBeanDeserializer.class), "clazz", "Ljava/lang/Class;");
        mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(JavaBeanDeserializer.class), "createInstance", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;)Ljava/lang/Object;");
        mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(context.getInstClass()));
        mw.visitVarInsn(58, context.var("instance"));
    }

    private void _batchSet(Context context, MethodVisitor mw) {
        _batchSet(context, mw, true);
    }

    private void _batchSet(Context context, MethodVisitor mw, boolean flag) {
        int size = context.fieldInfoList.length;
        for (int i = 0; i < size; i++) {
            Label notSet_ = new Label();
            if (flag) {
                _isFlag(mw, context, i, notSet_);
            }
            _loadAndSet(context, mw, context.fieldInfoList[i]);
            if (flag) {
                mw.visitLabel(notSet_);
            }
        }
    }

    private void _loadAndSet(Context context, MethodVisitor mw, FieldInfo fieldInfo) {
        Class<?> fieldClass = fieldInfo.fieldClass;
        Type fieldType = fieldInfo.fieldType;
        if (fieldClass == Boolean.TYPE) {
            mw.visitVarInsn(25, context.var("instance"));
            mw.visitVarInsn(21, context.var(fieldInfo.name + "_asm"));
            _set(context, mw, fieldInfo);
        } else if (fieldClass == Byte.TYPE || fieldClass == Short.TYPE || fieldClass == Integer.TYPE || fieldClass == Character.TYPE) {
            mw.visitVarInsn(25, context.var("instance"));
            mw.visitVarInsn(21, context.var(fieldInfo.name + "_asm"));
            _set(context, mw, fieldInfo);
        } else if (fieldClass == Long.TYPE) {
            mw.visitVarInsn(25, context.var("instance"));
            mw.visitVarInsn(22, context.var(fieldInfo.name + "_asm", 2));
            if (fieldInfo.method != null) {
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(context.getInstClass()), fieldInfo.method.getName(), ASMUtils.desc(fieldInfo.method));
                if (!fieldInfo.method.getReturnType().equals(Void.TYPE)) {
                    mw.visitInsn(87);
                    return;
                }
                return;
            }
            mw.visitFieldInsn(Opcodes.PUTFIELD, ASMUtils.type(fieldInfo.declaringClass), fieldInfo.field.getName(), ASMUtils.desc(fieldInfo.fieldClass));
        } else if (fieldClass == Float.TYPE) {
            mw.visitVarInsn(25, context.var("instance"));
            mw.visitVarInsn(23, context.var(fieldInfo.name + "_asm"));
            _set(context, mw, fieldInfo);
        } else if (fieldClass == Double.TYPE) {
            mw.visitVarInsn(25, context.var("instance"));
            mw.visitVarInsn(24, context.var(fieldInfo.name + "_asm", 2));
            _set(context, mw, fieldInfo);
        } else if (fieldClass == String.class) {
            mw.visitVarInsn(25, context.var("instance"));
            mw.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
            _set(context, mw, fieldInfo);
        } else if (fieldClass.isEnum()) {
            mw.visitVarInsn(25, context.var("instance"));
            mw.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
            _set(context, mw, fieldInfo);
        } else if (Collection.class.isAssignableFrom(fieldClass)) {
            mw.visitVarInsn(25, context.var("instance"));
            if (TypeUtils.getCollectionItemClass(fieldType) == String.class) {
                mw.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
                mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(fieldClass));
            } else {
                mw.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
            }
            _set(context, mw, fieldInfo);
        } else {
            mw.visitVarInsn(25, context.var("instance"));
            mw.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
            _set(context, mw, fieldInfo);
        }
    }

    private void _set(Context context, MethodVisitor mw, FieldInfo fieldInfo) {
        Method method = fieldInfo.method;
        if (method != null) {
            mw.visitMethodInsn(method.getDeclaringClass().isInterface() ? Opcodes.INVOKEINTERFACE : Opcodes.INVOKEVIRTUAL, ASMUtils.type(fieldInfo.declaringClass), method.getName(), ASMUtils.desc(method));
            if (!fieldInfo.method.getReturnType().equals(Void.TYPE)) {
                mw.visitInsn(87);
                return;
            }
            return;
        }
        mw.visitFieldInsn(Opcodes.PUTFIELD, ASMUtils.type(fieldInfo.declaringClass), fieldInfo.field.getName(), ASMUtils.desc(fieldInfo.fieldClass));
    }

    private void _setContext(Context context, MethodVisitor mw) {
        mw.visitVarInsn(25, 1);
        mw.visitVarInsn(25, context.var("context"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "setContext", "(" + ASMUtils.desc(ParseContext.class) + ")V");
        Label endIf_ = new Label();
        mw.visitVarInsn(25, context.var("childContext"));
        mw.visitJumpInsn(Opcodes.IFNULL, endIf_);
        mw.visitVarInsn(25, context.var("childContext"));
        mw.visitVarInsn(25, context.var("instance"));
        mw.visitFieldInsn(Opcodes.PUTFIELD, ASMUtils.type(ParseContext.class), "object", "Ljava/lang/Object;");
        mw.visitLabel(endIf_);
    }

    private void _deserialize_endCheck(Context context, MethodVisitor mw, Label reset_) {
        mw.visitIntInsn(21, context.var("matchedCount"));
        mw.visitJumpInsn(Opcodes.IFLE, reset_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
        mw.visitLdcInsn(Integer.valueOf(13));
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, reset_);
        _quickNextTokenComma(context, mw);
    }

    private void _deserialze_list_obj(Context context, MethodVisitor mw, Label reset_, FieldInfo fieldInfo, Class<?> fieldClass, Class<?> itemType, int i) {
        Label _end_if = new Label();
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "matchField", "([C)Z");
        mw.visitJumpInsn(Opcodes.IFEQ, _end_if);
        _setFlag(mw, context, i);
        Label valueNotNull_ = new Label();
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
        mw.visitLdcInsn(Integer.valueOf(8));
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, valueNotNull_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitLdcInsn(Integer.valueOf(16));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "nextToken", "(I)V");
        mw.visitJumpInsn(Opcodes.GOTO, _end_if);
        mw.visitLabel(valueNotNull_);
        Label storeCollection_ = new Label();
        Label endSet_ = new Label();
        Label lbacketNormal_ = new Label();
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
        mw.visitLdcInsn(Integer.valueOf(21));
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, endSet_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitLdcInsn(Integer.valueOf(14));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "nextToken", "(I)V");
        _newCollection(mw, fieldClass, i, true);
        mw.visitJumpInsn(Opcodes.GOTO, storeCollection_);
        mw.visitLabel(endSet_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
        mw.visitLdcInsn(Integer.valueOf(14));
        mw.visitJumpInsn(Opcodes.IF_ICMPEQ, lbacketNormal_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
        mw.visitLdcInsn(Integer.valueOf(12));
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, reset_);
        _newCollection(mw, fieldClass, i, false);
        mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
        _getCollectionFieldItemDeser(context, mw, fieldInfo, itemType);
        mw.visitVarInsn(25, 1);
        mw.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc((Class) itemType)));
        mw.visitInsn(3);
        mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, ASMUtils.type(ObjectDeserializer.class), "deserialze", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        mw.visitVarInsn(58, context.var("list_item_value"));
        mw.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
        mw.visitVarInsn(25, context.var("list_item_value"));
        if (fieldClass.isInterface()) {
            mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, ASMUtils.type(fieldClass), "add", "(Ljava/lang/Object;)Z");
        } else {
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(fieldClass), "add", "(Ljava/lang/Object;)Z");
        }
        mw.visitInsn(87);
        mw.visitJumpInsn(Opcodes.GOTO, _end_if);
        mw.visitLabel(lbacketNormal_);
        _newCollection(mw, fieldClass, i, false);
        mw.visitLabel(storeCollection_);
        mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
        boolean isPrimitive = ParserConfig.isPrimitive2(fieldInfo.fieldClass);
        _getCollectionFieldItemDeser(context, mw, fieldInfo, itemType);
        if (isPrimitive) {
            mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, ASMUtils.type(ObjectDeserializer.class), "getFastMatchToken", "()I");
            mw.visitVarInsn(54, context.var("fastMatchToken"));
            mw.visitVarInsn(25, context.var("lexer"));
            mw.visitVarInsn(21, context.var("fastMatchToken"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "nextToken", "(I)V");
        } else {
            mw.visitInsn(87);
            mw.visitLdcInsn(Integer.valueOf(12));
            mw.visitVarInsn(54, context.var("fastMatchToken"));
            _quickNextToken(context, mw, 12);
        }
        mw.visitVarInsn(25, 1);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "getContext", "()" + ASMUtils.desc(ParseContext.class));
        mw.visitVarInsn(58, context.var("listContext"));
        mw.visitVarInsn(25, 1);
        mw.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
        mw.visitLdcInsn(fieldInfo.name);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)" + ASMUtils.desc(ParseContext.class));
        mw.visitInsn(87);
        Label loop_ = new Label();
        Label loop_end_ = new Label();
        mw.visitInsn(3);
        mw.visitVarInsn(54, context.var("i"));
        mw.visitLabel(loop_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
        mw.visitLdcInsn(Integer.valueOf(15));
        mw.visitJumpInsn(Opcodes.IF_ICMPEQ, loop_end_);
        mw.visitVarInsn(25, 0);
        mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_list_item_deser__", ASMUtils.desc(ObjectDeserializer.class));
        mw.visitVarInsn(25, 1);
        mw.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc((Class) itemType)));
        mw.visitVarInsn(21, context.var("i"));
        mw.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, ASMUtils.type(ObjectDeserializer.class), "deserialze", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        mw.visitVarInsn(58, context.var("list_item_value"));
        mw.visitIincInsn(context.var("i"), 1);
        mw.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
        mw.visitVarInsn(25, context.var("list_item_value"));
        if (fieldClass.isInterface()) {
            mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, ASMUtils.type(fieldClass), "add", "(Ljava/lang/Object;)Z");
        } else {
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(fieldClass), "add", "(Ljava/lang/Object;)Z");
        }
        mw.visitInsn(87);
        mw.visitVarInsn(25, 1);
        mw.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "checkListResolve", "(Ljava/util/Collection;)V");
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
        mw.visitLdcInsn(Integer.valueOf(16));
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, loop_);
        if (isPrimitive) {
            mw.visitVarInsn(25, context.var("lexer"));
            mw.visitVarInsn(21, context.var("fastMatchToken"));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "nextToken", "(I)V");
        } else {
            _quickNextToken(context, mw, 12);
        }
        mw.visitJumpInsn(Opcodes.GOTO, loop_);
        mw.visitLabel(loop_end_);
        mw.visitVarInsn(25, 1);
        mw.visitVarInsn(25, context.var("listContext"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "setContext", "(" + ASMUtils.desc(ParseContext.class) + ")V");
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "token", "()I");
        mw.visitLdcInsn(Integer.valueOf(15));
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, reset_);
        _quickNextTokenComma(context, mw);
        mw.visitLabel(_end_if);
    }

    private void _quickNextToken(Context context, MethodVisitor mw, int token) {
        Label quickElse_ = new Label();
        Label quickEnd_ = new Label();
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "getCurrent", "()C");
        if (token == 12) {
            mw.visitVarInsn(16, SecExceptionCode.SEC_ERROR_INIT_INCORRECT_DATA_FILE);
        } else if (token == 14) {
            mw.visitVarInsn(16, 91);
        } else {
            throw new IllegalStateException();
        }
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, quickElse_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "next", "()C");
        mw.visitInsn(87);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitLdcInsn(Integer.valueOf(token));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "setToken", "(I)V");
        mw.visitJumpInsn(Opcodes.GOTO, quickEnd_);
        mw.visitLabel(quickElse_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitLdcInsn(Integer.valueOf(token));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "nextToken", "(I)V");
        mw.visitLabel(quickEnd_);
    }

    private void _quickNextTokenComma(Context context, MethodVisitor mw) {
        Label quickElse_ = new Label();
        Label quickElseIf0_ = new Label();
        Label quickElseIf1_ = new Label();
        Label quickElseIf2_ = new Label();
        Label quickEnd_ = new Label();
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "getCurrent", "()C");
        mw.visitInsn(89);
        mw.visitVarInsn(54, context.var("ch"));
        mw.visitVarInsn(16, 44);
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, quickElseIf0_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "next", "()C");
        mw.visitInsn(87);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitLdcInsn(Integer.valueOf(16));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "setToken", "(I)V");
        mw.visitJumpInsn(Opcodes.GOTO, quickEnd_);
        mw.visitLabel(quickElseIf0_);
        mw.visitVarInsn(21, context.var("ch"));
        mw.visitVarInsn(16, SecExceptionCode.SEC_ERROR_INIT_PARSE_USER_CONFIG_ERROR);
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, quickElseIf1_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "next", "()C");
        mw.visitInsn(87);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitLdcInsn(Integer.valueOf(13));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "setToken", "(I)V");
        mw.visitJumpInsn(Opcodes.GOTO, quickEnd_);
        mw.visitLabel(quickElseIf1_);
        mw.visitVarInsn(21, context.var("ch"));
        mw.visitVarInsn(16, 93);
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, quickElseIf2_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "next", "()C");
        mw.visitInsn(87);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitLdcInsn(Integer.valueOf(15));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "setToken", "(I)V");
        mw.visitJumpInsn(Opcodes.GOTO, quickEnd_);
        mw.visitLabel(quickElseIf2_);
        mw.visitVarInsn(21, context.var("ch"));
        mw.visitVarInsn(16, 26);
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, quickElse_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitLdcInsn(Integer.valueOf(20));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "setToken", "(I)V");
        mw.visitJumpInsn(Opcodes.GOTO, quickEnd_);
        mw.visitLabel(quickElse_);
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "nextToken", "()V");
        mw.visitLabel(quickEnd_);
    }

    private void _getCollectionFieldItemDeser(Context context, MethodVisitor mw, FieldInfo fieldInfo, Class<?> itemType) {
        Label notNull_ = new Label();
        mw.visitVarInsn(25, 0);
        mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_list_item_deser__", ASMUtils.desc(ObjectDeserializer.class));
        mw.visitJumpInsn(199, notNull_);
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "getConfig", "()" + ASMUtils.desc(ParserConfig.class));
        mw.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc((Class) itemType)));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(ParserConfig.class), "getDeserializer", "(Ljava/lang/reflect/Type;)" + ASMUtils.desc(ObjectDeserializer.class));
        mw.visitFieldInsn(Opcodes.PUTFIELD, context.className, fieldInfo.name + "_asm_list_item_deser__", ASMUtils.desc(ObjectDeserializer.class));
        mw.visitLabel(notNull_);
        mw.visitVarInsn(25, 0);
        mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_list_item_deser__", ASMUtils.desc(ObjectDeserializer.class));
    }

    private void _newCollection(MethodVisitor mw, Class<?> fieldClass, int i, boolean set) {
        if (fieldClass.isAssignableFrom(ArrayList.class) && !set) {
            mw.visitTypeInsn(Opcodes.NEW, "java/util/ArrayList");
            mw.visitInsn(89);
            mw.visitMethodInsn(Opcodes.INVOKESPECIAL, "java/util/ArrayList", "<init>", "()V");
        } else if (fieldClass.isAssignableFrom(LinkedList.class) && !set) {
            mw.visitTypeInsn(Opcodes.NEW, ASMUtils.type(LinkedList.class));
            mw.visitInsn(89);
            mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(LinkedList.class), "<init>", "()V");
        } else if (fieldClass.isAssignableFrom(HashSet.class)) {
            mw.visitTypeInsn(Opcodes.NEW, ASMUtils.type(HashSet.class));
            mw.visitInsn(89);
            mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(HashSet.class), "<init>", "()V");
        } else if (fieldClass.isAssignableFrom(TreeSet.class)) {
            mw.visitTypeInsn(Opcodes.NEW, ASMUtils.type(TreeSet.class));
            mw.visitInsn(89);
            mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(TreeSet.class), "<init>", "()V");
        } else if (fieldClass.isAssignableFrom(LinkedHashSet.class)) {
            mw.visitTypeInsn(Opcodes.NEW, ASMUtils.type(LinkedHashSet.class));
            mw.visitInsn(89);
            mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(LinkedHashSet.class), "<init>", "()V");
        } else if (set) {
            mw.visitTypeInsn(Opcodes.NEW, ASMUtils.type(HashSet.class));
            mw.visitInsn(89);
            mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(HashSet.class), "<init>", "()V");
        } else {
            mw.visitVarInsn(25, 0);
            mw.visitLdcInsn(Integer.valueOf(i));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
            mw.visitMethodInsn(Opcodes.INVOKESTATIC, ASMUtils.type(TypeUtils.class), "createCollection", "(Ljava/lang/reflect/Type;)Ljava/util/Collection;");
        }
        mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(fieldClass));
    }

    private void _deserialze_obj(Context context, MethodVisitor mw, Label reset_, FieldInfo fieldInfo, Class<?> fieldClass, int i) {
        Label matched_ = new Label();
        Label _end_if = new Label();
        mw.visitVarInsn(25, context.var("lexer"));
        mw.visitVarInsn(25, 0);
        mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_prefix__", "[C");
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, JSONLexerBase, "matchField", "([C)Z");
        mw.visitJumpInsn(Opcodes.IFNE, matched_);
        mw.visitInsn(1);
        mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
        mw.visitJumpInsn(Opcodes.GOTO, _end_if);
        mw.visitLabel(matched_);
        _setFlag(mw, context, i);
        mw.visitVarInsn(21, context.var("matchedCount"));
        mw.visitInsn(4);
        mw.visitInsn(96);
        mw.visitVarInsn(54, context.var("matchedCount"));
        _deserObject(context, mw, fieldInfo, fieldClass, i);
        mw.visitVarInsn(25, 1);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "getResolveStatus", "()I");
        mw.visitLdcInsn(Integer.valueOf(1));
        mw.visitJumpInsn(Opcodes.IF_ICMPNE, _end_if);
        mw.visitVarInsn(25, 1);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "getLastResolveTask", "()" + ASMUtils.desc(ResolveTask.class));
        mw.visitVarInsn(58, context.var("resolveTask"));
        mw.visitVarInsn(25, context.var("resolveTask"));
        mw.visitVarInsn(25, 1);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "getContext", "()" + ASMUtils.desc(ParseContext.class));
        mw.visitFieldInsn(Opcodes.PUTFIELD, ASMUtils.type(ResolveTask.class), "ownerContext", ASMUtils.desc(ParseContext.class));
        mw.visitVarInsn(25, context.var("resolveTask"));
        mw.visitVarInsn(25, 0);
        mw.visitLdcInsn(fieldInfo.name);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(JavaBeanDeserializer.class), "getFieldDeserializer", "(Ljava/lang/String;)" + ASMUtils.desc(FieldDeserializer.class));
        mw.visitFieldInsn(Opcodes.PUTFIELD, ASMUtils.type(ResolveTask.class), "fieldDeserializer", ASMUtils.desc(FieldDeserializer.class));
        mw.visitVarInsn(25, 1);
        mw.visitLdcInsn(Integer.valueOf(0));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "setResolveStatus", "(I)V");
        mw.visitLabel(_end_if);
    }

    private void _deserObject(Context context, MethodVisitor mw, FieldInfo fieldInfo, Class<?> fieldClass, int i) {
        _getFieldDeser(context, mw, fieldInfo);
        Label instanceOfElse_ = new Label();
        Label instanceOfEnd_ = new Label();
        if ((fieldInfo.parserFeatures & Feature.SupportArrayToBean.mask) != 0) {
            mw.visitInsn(89);
            mw.visitTypeInsn(Opcodes.INSTANCEOF, ASMUtils.type(JavaBeanDeserializer.class));
            mw.visitJumpInsn(Opcodes.IFEQ, instanceOfElse_);
            mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(JavaBeanDeserializer.class));
            mw.visitVarInsn(25, 1);
            if (fieldInfo.fieldType instanceof Class) {
                mw.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
            } else {
                mw.visitVarInsn(25, 0);
                mw.visitLdcInsn(Integer.valueOf(i));
                mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
            }
            mw.visitLdcInsn(fieldInfo.name);
            mw.visitLdcInsn(Integer.valueOf(fieldInfo.parserFeatures));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(JavaBeanDeserializer.class), "deserialze", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;");
            mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(fieldClass));
            mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
            mw.visitJumpInsn(Opcodes.GOTO, instanceOfEnd_);
            mw.visitLabel(instanceOfElse_);
        }
        mw.visitVarInsn(25, 1);
        if (fieldInfo.fieldType instanceof Class) {
            mw.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
        } else {
            mw.visitVarInsn(25, 0);
            mw.visitLdcInsn(Integer.valueOf(i));
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
        }
        mw.visitLdcInsn(fieldInfo.name);
        mw.visitMethodInsn(Opcodes.INVOKEINTERFACE, ASMUtils.type(ObjectDeserializer.class), "deserialze", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        mw.visitTypeInsn(Opcodes.CHECKCAST, ASMUtils.type(fieldClass));
        mw.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
        mw.visitLabel(instanceOfEnd_);
    }

    private void _getFieldDeser(Context context, MethodVisitor mw, FieldInfo fieldInfo) {
        Label notNull_ = new Label();
        mw.visitVarInsn(25, 0);
        mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_deser__", ASMUtils.desc(ObjectDeserializer.class));
        mw.visitJumpInsn(199, notNull_);
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, DefaultJSONParser, "getConfig", "()" + ASMUtils.desc(ParserConfig.class));
        mw.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
        mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, ASMUtils.type(ParserConfig.class), "getDeserializer", "(Ljava/lang/reflect/Type;)" + ASMUtils.desc(ObjectDeserializer.class));
        mw.visitFieldInsn(Opcodes.PUTFIELD, context.className, fieldInfo.name + "_asm_deser__", ASMUtils.desc(ObjectDeserializer.class));
        mw.visitLabel(notNull_);
        mw.visitVarInsn(25, 0);
        mw.visitFieldInsn(Opcodes.GETFIELD, context.className, fieldInfo.name + "_asm_deser__", ASMUtils.desc(ObjectDeserializer.class));
    }

    private void _init(ClassWriter cw, Context context) {
        for (FieldInfo fieldInfo : context.fieldInfoList) {
            new FieldWriter(cw, 1, fieldInfo.name + "_asm_prefix__", "[C").visitEnd();
        }
        for (FieldInfo fieldInfo2 : context.fieldInfoList) {
            Class<?> fieldClass = fieldInfo2.fieldClass;
            if (!fieldClass.isPrimitive()) {
                if (Collection.class.isAssignableFrom(fieldClass)) {
                    new FieldWriter(cw, 1, fieldInfo2.name + "_asm_list_item_deser__", ASMUtils.desc(ObjectDeserializer.class)).visitEnd();
                } else {
                    new FieldWriter(cw, 1, fieldInfo2.name + "_asm_deser__", ASMUtils.desc(ObjectDeserializer.class)).visitEnd();
                }
            }
        }
        MethodVisitor mw = new MethodWriter(cw, 1, "<init>", "(" + ASMUtils.desc(ParserConfig.class) + ASMUtils.desc(JavaBeanInfo.class) + ")V", null, null);
        mw.visitVarInsn(25, 0);
        mw.visitVarInsn(25, 1);
        mw.visitVarInsn(25, 2);
        mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(JavaBeanDeserializer.class), "<init>", "(" + ASMUtils.desc(ParserConfig.class) + ASMUtils.desc(JavaBeanInfo.class) + ")V");
        for (FieldInfo fieldInfo22 : context.fieldInfoList) {
            mw.visitVarInsn(25, 0);
            mw.visitLdcInsn("\"" + fieldInfo22.name + "\":");
            mw.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "java/lang/String", "toCharArray", "()[C");
            mw.visitFieldInsn(Opcodes.PUTFIELD, context.className, fieldInfo22.name + "_asm_prefix__", "[C");
        }
        mw.visitInsn(Opcodes.RETURN);
        mw.visitMaxs(4, 4);
        mw.visitEnd();
    }

    private void _createInstance(ClassWriter cw, Context context) {
        if (Modifier.isPublic(context.beanInfo.defaultConstructor.getModifiers())) {
            String str = "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;)Ljava/lang/Object;";
            MethodVisitor mw = new MethodWriter(cw, 1, "createInstance", str, null, null);
            mw.visitTypeInsn(Opcodes.NEW, ASMUtils.type(context.getInstClass()));
            mw.visitInsn(89);
            mw.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(context.getInstClass()), "<init>", "()V");
            mw.visitInsn(Opcodes.ARETURN);
            mw.visitMaxs(3, 3);
            mw.visitEnd();
        }
    }
}
