package com.alibaba.fastjson.parser;

import java.lang.reflect.Type;
import mtopsdk.common.util.SymbolExpUtil;

public class ParseContext {
    public final Object fieldName;
    public Object object;
    public final ParseContext parent;
    private transient String path;
    public Type type;

    public ParseContext(ParseContext parent, Object object, Object fieldName) {
        this.parent = parent;
        this.object = object;
        this.fieldName = fieldName;
    }

    public String toString() {
        if (this.path == null) {
            if (this.parent == null) {
                this.path = SymbolExpUtil.SYMBOL_DOLLAR;
            } else if (this.fieldName instanceof Integer) {
                this.path = this.parent.toString() + "[" + this.fieldName + "]";
            } else {
                this.path = this.parent.toString() + SymbolExpUtil.SYMBOL_DOT + this.fieldName;
            }
        }
        return this.path;
    }
}
