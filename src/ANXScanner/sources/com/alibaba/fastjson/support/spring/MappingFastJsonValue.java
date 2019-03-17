package com.alibaba.fastjson.support.spring;

@Deprecated
public class MappingFastJsonValue {
    private String jsonpFunction;
    private Object value;

    public MappingFastJsonValue(Object value) {
        this.value = value;
    }

    public void setValue(Object value) {
        this.value = value;
    }

    public Object getValue() {
        return this.value;
    }

    public void setJsonpFunction(String functionName) {
        this.jsonpFunction = functionName;
    }

    public String getJsonpFunction() {
        return this.jsonpFunction;
    }
}
