package com.adobe.xmp.options;

import com.adobe.xmp.XMPException;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;

public final class PropertyOptions extends Options {
    public PropertyOptions(int options) throws XMPException {
        super(options);
    }

    public PropertyOptions setURI(boolean value) {
        setOption(2, value);
        return this;
    }

    public PropertyOptions setHasQualifiers(boolean value) {
        setOption(16, value);
        return this;
    }

    public boolean isQualifier() {
        return getOption(32);
    }

    public PropertyOptions setQualifier(boolean value) {
        setOption(32, value);
        return this;
    }

    public boolean getHasLanguage() {
        return getOption(64);
    }

    public PropertyOptions setHasLanguage(boolean value) {
        setOption(64, value);
        return this;
    }

    public PropertyOptions setHasType(boolean value) {
        setOption(128, value);
        return this;
    }

    public boolean isStruct() {
        return getOption(256);
    }

    public PropertyOptions setStruct(boolean value) {
        setOption(256, value);
        return this;
    }

    public boolean isArray() {
        return getOption(512);
    }

    public PropertyOptions setArray(boolean value) {
        setOption(512, value);
        return this;
    }

    public boolean isArrayOrdered() {
        return getOption(1024);
    }

    public PropertyOptions setArrayOrdered(boolean value) {
        setOption(1024, value);
        return this;
    }

    public boolean isArrayAlternate() {
        return getOption(2048);
    }

    public PropertyOptions setArrayAlternate(boolean value) {
        setOption(2048, value);
        return this;
    }

    public boolean isArrayAltText() {
        return getOption(4096);
    }

    public PropertyOptions setArrayAltText(boolean value) {
        setOption(4096, value);
        return this;
    }

    public boolean isSchemaNode() {
        return getOption(Integer.MIN_VALUE);
    }

    public PropertyOptions setSchemaNode(boolean value) {
        setOption(Integer.MIN_VALUE, value);
        return this;
    }

    public boolean isCompositeProperty() {
        return (getOptions() & 768) > 0;
    }

    public boolean isSimple() {
        return (getOptions() & 768) == 0;
    }

    public void mergeWith(PropertyOptions options) throws XMPException {
        if (options != null) {
            setOptions(getOptions() | options.getOptions());
        }
    }

    protected int getValidOptions() {
        return -2147475470;
    }

    public void assertConsistency(int options) throws XMPException {
        if ((options & 256) > 0 && (options & 512) > 0) {
            throw new XMPException("IsStruct and IsArray options are mutually exclusive", BaiduSceneResult.MOUNTAINEERING);
        } else if ((options & 2) > 0 && (options & 768) > 0) {
            throw new XMPException("Structs and arrays can't have \"value\" options", BaiduSceneResult.MOUNTAINEERING);
        }
    }
}
