package com.alibaba.fastjson.support.config;

import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.SerializeFilter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.Map.Entry;

public class FastJsonConfig {
    private Charset charset = Charset.forName("UTF-8");
    private Map<Class<?>, SerializeFilter> classSerializeFilters;
    private String dateFormat;
    private Feature[] features = new Feature[0];
    private ParserConfig parserConfig = new ParserConfig();
    private SerializeConfig serializeConfig = SerializeConfig.getGlobalInstance();
    private SerializeFilter[] serializeFilters = new SerializeFilter[0];
    private SerializerFeature[] serializerFeatures = new SerializerFeature[]{SerializerFeature.BrowserSecure};
    protected boolean writeContentLength = true;

    public SerializeConfig getSerializeConfig() {
        return this.serializeConfig;
    }

    public void setSerializeConfig(SerializeConfig serializeConfig) {
        this.serializeConfig = serializeConfig;
    }

    public ParserConfig getParserConfig() {
        return this.parserConfig;
    }

    public void setParserConfig(ParserConfig parserConfig) {
        this.parserConfig = parserConfig;
    }

    public SerializerFeature[] getSerializerFeatures() {
        return this.serializerFeatures;
    }

    public void setSerializerFeatures(SerializerFeature... serializerFeatures) {
        this.serializerFeatures = serializerFeatures;
    }

    public SerializeFilter[] getSerializeFilters() {
        return this.serializeFilters;
    }

    public void setSerializeFilters(SerializeFilter... serializeFilters) {
        this.serializeFilters = serializeFilters;
    }

    public Feature[] getFeatures() {
        return this.features;
    }

    public void setFeatures(Feature... features) {
        this.features = features;
    }

    public Map<Class<?>, SerializeFilter> getClassSerializeFilters() {
        return this.classSerializeFilters;
    }

    public void setClassSerializeFilters(Map<Class<?>, SerializeFilter> classSerializeFilters) {
        if (classSerializeFilters != null) {
            for (Entry<Class<?>, SerializeFilter> entry : classSerializeFilters.entrySet()) {
                this.serializeConfig.addFilter((Class) entry.getKey(), (SerializeFilter) entry.getValue());
            }
            this.classSerializeFilters = classSerializeFilters;
        }
    }

    public String getDateFormat() {
        return this.dateFormat;
    }

    public void setDateFormat(String dateFormat) {
        this.dateFormat = dateFormat;
    }

    public Charset getCharset() {
        return this.charset;
    }

    public void setCharset(Charset charset) {
        this.charset = charset;
    }

    public boolean isWriteContentLength() {
        return this.writeContentLength;
    }

    public void setWriteContentLength(boolean writeContentLength) {
        this.writeContentLength = writeContentLength;
    }
}
