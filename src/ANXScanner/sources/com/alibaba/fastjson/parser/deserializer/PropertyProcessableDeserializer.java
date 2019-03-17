package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import java.lang.reflect.Type;

public class PropertyProcessableDeserializer implements ObjectDeserializer {
    public final Class<PropertyProcessable> type;

    public PropertyProcessableDeserializer(Class<PropertyProcessable> type) {
        this.type = type;
    }

    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        try {
            return parser.parse((PropertyProcessable) this.type.newInstance(), fieldName);
        } catch (Exception e) {
            throw new JSONException("craete instance error");
        }
    }

    public int getFastMatchToken() {
        return 12;
    }
}
