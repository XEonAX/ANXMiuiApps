package com.alibaba.fastjson.asm;

import com.xiaomi.scanner.camera.exif.ExifInterface.GpsLatitudeRef;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;

public class TypeCollector {
    private static final Map<String, String> primitives = new HashMap<String, String>() {
        {
            put("int", "I");
            put("boolean", "Z");
            put("byte", "B");
            put("char", "C");
            put("short", GpsLatitudeRef.SOUTH);
            put("float", "F");
            put("long", "J");
            put("double", "D");
        }
    };
    protected MethodCollector collector = null;
    private final String methodName;
    private final Class<?>[] parameterTypes;

    public TypeCollector(String methodName, Class<?>[] parameterTypes) {
        this.methodName = methodName;
        this.parameterTypes = parameterTypes;
    }

    protected MethodCollector visitMethod(int access, String name, String desc) {
        int i = 0;
        if (this.collector != null) {
            return null;
        }
        if (!name.equals(this.methodName)) {
            return null;
        }
        Type[] argTypes = Type.getArgumentTypes(desc);
        int longOrDoubleQuantity = 0;
        for (Type t : argTypes) {
            String className = t.getClassName();
            if (className.equals("long") || className.equals("double")) {
                longOrDoubleQuantity++;
            }
        }
        if (argTypes.length != this.parameterTypes.length) {
            return null;
        }
        for (int i2 = 0; i2 < argTypes.length; i2++) {
            if (!correctTypeName(argTypes[i2], this.parameterTypes[i2].getName())) {
                return null;
            }
        }
        if (!Modifier.isStatic(access)) {
            i = 1;
        }
        MethodCollector methodCollector = new MethodCollector(i, argTypes.length + longOrDoubleQuantity);
        this.collector = methodCollector;
        return methodCollector;
    }

    private boolean correctTypeName(Type type, String paramTypeName) {
        String s = type.getClassName();
        String braces = "";
        while (s.endsWith("[]")) {
            braces = braces + "[";
            s = s.substring(0, s.length() - 2);
        }
        if (!braces.equals("")) {
            if (primitives.containsKey(s)) {
                s = braces + ((String) primitives.get(s));
            } else {
                s = braces + "L" + s + ";";
            }
        }
        return s.equals(paramTypeName);
    }

    public String[] getParameterNamesForMethod() {
        if (this.collector == null || !this.collector.debugInfoPresent) {
            return new String[0];
        }
        return this.collector.getResult().split(",");
    }
}
