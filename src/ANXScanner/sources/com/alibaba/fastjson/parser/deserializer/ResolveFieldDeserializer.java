package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public final class ResolveFieldDeserializer extends FieldDeserializer {
    private final Collection collection;
    private final int index;
    private final Object key;
    private final List list;
    private final Map map;
    private final DefaultJSONParser parser;

    public ResolveFieldDeserializer(DefaultJSONParser parser, List list, int index) {
        super(null, null);
        this.parser = parser;
        this.index = index;
        this.list = list;
        this.key = null;
        this.map = null;
        this.collection = null;
    }

    public ResolveFieldDeserializer(Map map, Object index) {
        super(null, null);
        this.parser = null;
        this.index = -1;
        this.list = null;
        this.key = index;
        this.map = map;
        this.collection = null;
    }

    public ResolveFieldDeserializer(Collection collection) {
        super(null, null);
        this.parser = null;
        this.index = -1;
        this.list = null;
        this.key = null;
        this.map = null;
        this.collection = collection;
    }

    public void setValue(Object object, Object value) {
        if (this.map != null) {
            this.map.put(this.key, value);
        } else if (this.collection != null) {
            this.collection.add(value);
        } else {
            this.list.set(this.index, value);
            if (this.list instanceof JSONArray) {
                JSONArray jsonArray = this.list;
                Object array = jsonArray.getRelatedArray();
                if (array != null && Array.getLength(array) > this.index) {
                    Object item;
                    if (jsonArray.getComponentType() != null) {
                        item = TypeUtils.cast(value, jsonArray.getComponentType(), this.parser.getConfig());
                    } else {
                        item = value;
                    }
                    Array.set(array, this.index, item);
                }
            }
        }
    }

    public void parseField(DefaultJSONParser parser, Object object, Type objectType, Map<String, Object> map) {
    }
}
