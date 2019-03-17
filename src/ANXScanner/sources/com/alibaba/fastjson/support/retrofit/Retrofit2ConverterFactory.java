package com.alibaba.fastjson.support.retrofit;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Converter.Factory;
import retrofit2.Retrofit;

public class Retrofit2ConverterFactory extends Factory {
    private static final Feature[] EMPTY_SERIALIZER_FEATURES = new Feature[0];
    private static final MediaType MEDIA_TYPE = MediaType.parse("application/json; charset=UTF-8");
    private int featureValues = JSON.DEFAULT_PARSER_FEATURE;
    private Feature[] features;
    private ParserConfig parserConfig = ParserConfig.getGlobalInstance();
    private SerializeConfig serializeConfig;
    private SerializerFeature[] serializerFeatures;

    final class RequestBodyConverter<T> implements Converter<T, RequestBody> {
        RequestBodyConverter() {
        }

        public RequestBody convert(T value) throws IOException {
            SerializeConfig serializeConfig;
            SerializerFeature[] serializerFeatureArr;
            if (Retrofit2ConverterFactory.this.serializeConfig == null) {
                serializeConfig = SerializeConfig.globalInstance;
            } else {
                serializeConfig = Retrofit2ConverterFactory.this.serializeConfig;
            }
            if (Retrofit2ConverterFactory.this.serializerFeatures == null) {
                serializerFeatureArr = SerializerFeature.EMPTY;
            } else {
                serializerFeatureArr = Retrofit2ConverterFactory.this.serializerFeatures;
            }
            return RequestBody.create(Retrofit2ConverterFactory.MEDIA_TYPE, JSON.toJSONBytes((Object) value, serializeConfig, serializerFeatureArr));
        }
    }

    final class ResponseBodyConverter<T> implements Converter<ResponseBody, T> {
        private Type type;

        ResponseBodyConverter(Type type) {
            this.type = type;
        }

        public T convert(ResponseBody value) throws IOException {
            try {
                Feature[] access$200;
                String string = value.string();
                Type type = this.type;
                ParserConfig access$000 = Retrofit2ConverterFactory.this.parserConfig;
                int access$100 = Retrofit2ConverterFactory.this.featureValues;
                if (Retrofit2ConverterFactory.this.features != null) {
                    access$200 = Retrofit2ConverterFactory.this.features;
                } else {
                    access$200 = Retrofit2ConverterFactory.EMPTY_SERIALIZER_FEATURES;
                }
                T parseObject = JSON.parseObject(string, type, access$000, access$100, access$200);
                return parseObject;
            } finally {
                value.close();
            }
        }
    }

    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotations, Retrofit retrofit) {
        return new ResponseBodyConverter(type);
    }

    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] parameterAnnotations, Annotation[] methodAnnotations, Retrofit retrofit) {
        return new RequestBodyConverter();
    }

    public ParserConfig getParserConfig() {
        return this.parserConfig;
    }

    public Retrofit2ConverterFactory setParserConfig(ParserConfig config) {
        this.parserConfig = config;
        return this;
    }

    public int getParserFeatureValues() {
        return this.featureValues;
    }

    public Retrofit2ConverterFactory setParserFeatureValues(int featureValues) {
        this.featureValues = featureValues;
        return this;
    }

    public Feature[] getParserFeatures() {
        return this.features;
    }

    public Retrofit2ConverterFactory setParserFeatures(Feature[] features) {
        this.features = features;
        return this;
    }

    public SerializeConfig getSerializeConfig() {
        return this.serializeConfig;
    }

    public Retrofit2ConverterFactory setSerializeConfig(SerializeConfig serializeConfig) {
        this.serializeConfig = serializeConfig;
        return this;
    }

    public SerializerFeature[] getSerializerFeatures() {
        return this.serializerFeatures;
    }

    public Retrofit2ConverterFactory setSerializerFeatures(SerializerFeature[] features) {
        this.serializerFeatures = features;
        return this;
    }
}
