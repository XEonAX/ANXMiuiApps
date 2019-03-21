package org.keyczar.interfaces;

import com.google.gson_nex.JsonDeserializationContext;
import com.google.gson_nex.JsonDeserializer;
import com.google.gson_nex.JsonElement;
import com.google.gson_nex.JsonParseException;
import com.google.gson_nex.JsonPrimitive;
import com.google.gson_nex.JsonSerializationContext;
import com.google.gson_nex.JsonSerializer;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.keyczar.DefaultKeyType;
import org.keyczar.KeyczarKey;
import org.keyczar.exceptions.KeyczarException;

public interface KeyType {

    public interface Builder {
        KeyczarKey generate(int i) throws KeyczarException;

        KeyczarKey read(String str) throws KeyczarException;
    }

    public static class KeyTypeDeserializer implements JsonDeserializer<KeyType> {
        private static Map<String, KeyType> typeMap = new HashMap();

        static {
            for (KeyType registerType : DefaultKeyType.values()) {
                registerType(registerType);
            }
        }

        public static void registerType(KeyType keyType) {
            String name = keyType.getName();
            if (typeMap.containsKey(name)) {
                throw new IllegalArgumentException("Attempt to map two key types to the same name " + name);
            }
            typeMap.put(name, keyType);
        }

        public KeyType deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
            String asString = jsonElement.getAsJsonPrimitive().getAsString();
            if (typeMap.containsKey(asString)) {
                return (KeyType) typeMap.get(asString);
            }
            throw new IllegalArgumentException("Cannot deserialize " + asString + " no such key has been registered.");
        }
    }

    public static class KeyTypeSerializer implements JsonSerializer<KeyType> {
        public JsonElement serialize(KeyType keyType, Type type, JsonSerializationContext jsonSerializationContext) {
            return new JsonPrimitive(keyType.getName());
        }
    }

    int defaultSize();

    List<Integer> getAcceptableSizes();

    Builder getBuilder();

    String getName();

    int getOutputSize();

    int getOutputSize(int i);

    boolean isAcceptableSize(int i);
}
