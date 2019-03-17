package com.alibaba.fastjson.serializer;

public abstract class BeforeFilter implements SerializeFilter {
    private static final Character COMMA = Character.valueOf(',');
    private static final ThreadLocal<Character> seperatorLocal = new ThreadLocal();
    private static final ThreadLocal<JSONSerializer> serializerLocal = new ThreadLocal();

    public abstract void writeBefore(Object obj);

    final char writeBefore(JSONSerializer serializer, Object object, char seperator) {
        serializerLocal.set(serializer);
        seperatorLocal.set(Character.valueOf(seperator));
        writeBefore(object);
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
