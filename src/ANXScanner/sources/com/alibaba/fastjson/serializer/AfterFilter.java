package com.alibaba.fastjson.serializer;

public abstract class AfterFilter implements SerializeFilter {
    private static final Character COMMA = Character.valueOf(',');
    private static final ThreadLocal<Character> seperatorLocal = new ThreadLocal();
    private static final ThreadLocal<JSONSerializer> serializerLocal = new ThreadLocal();

    public abstract void writeAfter(Object obj);

    final char writeAfter(JSONSerializer serializer, Object object, char seperator) {
        serializerLocal.set(serializer);
        seperatorLocal.set(Character.valueOf(seperator));
        writeAfter(object);
        serializerLocal.set(null);
        return ((Character) seperatorLocal.get()).charValue();
    }

    protected final void writeKeyValue(String key, Object value) {
        JSONSerializer serializer = (JSONSerializer) serializerLocal.get();
        char seperator = ((Character) seperatorLocal.get()).charValue();
        serializer.writeKeyValue(seperator, key, value);
        if (seperator != ',') {
            seperatorLocal.set(COMMA);
        }
    }
}
