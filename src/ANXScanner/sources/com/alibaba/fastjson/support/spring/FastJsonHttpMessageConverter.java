package com.alibaba.fastjson.support.spring;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONPObject;
import com.alibaba.fastjson.serializer.SerializeFilter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.util.IOUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.springframework.core.ResolvableType;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpInputMessage;
import org.springframework.http.HttpOutputMessage;
import org.springframework.http.MediaType;
import org.springframework.http.converter.AbstractHttpMessageConverter;
import org.springframework.http.converter.GenericHttpMessageConverter;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.http.converter.HttpMessageNotWritableException;

public class FastJsonHttpMessageConverter extends AbstractHttpMessageConverter<Object> implements GenericHttpMessageConverter<Object> {
    public static final MediaType APPLICATION_JAVASCRIPT = new MediaType("application", "javascript");
    private static final byte[] JSONP_FUNCTION_PREFIX_BYTES = "/**/".getBytes(IOUtils.UTF8);
    private static final byte[] JSONP_FUNCTION_SUFFIX_BYTES = ");".getBytes(IOUtils.UTF8);
    private Charset charset = Charset.forName("UTF-8");
    @Deprecated
    protected String dateFormat;
    private FastJsonConfig fastJsonConfig = new FastJsonConfig();
    @Deprecated
    protected SerializerFeature[] features = new SerializerFeature[0];
    @Deprecated
    protected SerializeFilter[] filters = new SerializeFilter[0];

    public FastJsonConfig getFastJsonConfig() {
        return this.fastJsonConfig;
    }

    public void setFastJsonConfig(FastJsonConfig fastJsonConfig) {
        this.fastJsonConfig = fastJsonConfig;
    }

    public FastJsonHttpMessageConverter() {
        super(MediaType.ALL);
    }

    @Deprecated
    public Charset getCharset() {
        return this.fastJsonConfig.getCharset();
    }

    @Deprecated
    public void setCharset(Charset charset) {
        this.fastJsonConfig.setCharset(charset);
    }

    @Deprecated
    public String getDateFormat() {
        return this.fastJsonConfig.getDateFormat();
    }

    @Deprecated
    public void setDateFormat(String dateFormat) {
        this.fastJsonConfig.setDateFormat(dateFormat);
    }

    @Deprecated
    public SerializerFeature[] getFeatures() {
        return this.fastJsonConfig.getSerializerFeatures();
    }

    @Deprecated
    public void setFeatures(SerializerFeature... features) {
        this.fastJsonConfig.setSerializerFeatures(features);
    }

    @Deprecated
    public SerializeFilter[] getFilters() {
        return this.fastJsonConfig.getSerializeFilters();
    }

    @Deprecated
    public void setFilters(SerializeFilter... filters) {
        this.fastJsonConfig.setSerializeFilters(filters);
    }

    @Deprecated
    public void addSerializeFilter(SerializeFilter filter) {
        if (filter != null) {
            int length = this.fastJsonConfig.getSerializeFilters().length;
            SerializeFilter[] filters = new SerializeFilter[(length + 1)];
            System.arraycopy(this.fastJsonConfig.getSerializeFilters(), 0, filters, 0, length);
            filters[filters.length - 1] = filter;
            this.fastJsonConfig.setSerializeFilters(filters);
        }
    }

    protected boolean supports(Class<?> cls) {
        return true;
    }

    public boolean canRead(Type type, Class<?> contextClass, MediaType mediaType) {
        return super.canRead(contextClass, mediaType);
    }

    public boolean canWrite(Type type, Class<?> clazz, MediaType mediaType) {
        return super.canWrite(clazz, mediaType);
    }

    public Object read(Type type, Class<?> contextClass, HttpInputMessage inputMessage) throws IOException, HttpMessageNotReadableException {
        return readType(getType(type, contextClass), inputMessage);
    }

    public void write(Object o, Type type, MediaType contentType, HttpOutputMessage outputMessage) throws IOException, HttpMessageNotWritableException {
        super.write(o, contentType, outputMessage);
    }

    protected Object readInternal(Class<? extends Object> clazz, HttpInputMessage inputMessage) throws IOException, HttpMessageNotReadableException {
        return readType(getType(clazz, null), inputMessage);
    }

    private Object readType(Type type, HttpInputMessage inputMessage) throws IOException {
        try {
            return JSON.parseObject(inputMessage.getBody(), this.fastJsonConfig.getCharset(), type, this.fastJsonConfig.getFeatures());
        } catch (JSONException ex) {
            throw new HttpMessageNotReadableException("JSON parse error: " + ex.getMessage(), ex);
        } catch (IOException ex2) {
            throw new HttpMessageNotReadableException("I/O error while reading input message", ex2);
        }
    }

    protected void writeInternal(Object object, HttpOutputMessage outputMessage) throws IOException, HttpMessageNotWritableException {
        ByteArrayOutputStream outnew = new ByteArrayOutputStream();
        try {
            HttpHeaders headers = outputMessage.getHeaders();
            List<SerializeFilter> allFilters = new ArrayList(Arrays.asList(this.fastJsonConfig.getSerializeFilters()));
            boolean isJsonp = false;
            Object value = strangeCodeForJackson(object);
            if (value instanceof FastJsonContainer) {
                FastJsonContainer fastJsonContainer = (FastJsonContainer) value;
                allFilters.addAll(fastJsonContainer.getFilters().getFilters());
                value = fastJsonContainer.getValue();
            }
            if (value instanceof MappingFastJsonValue) {
                isJsonp = true;
                value = ((MappingFastJsonValue) value).getValue();
            } else if (value instanceof JSONPObject) {
                isJsonp = true;
            }
            int len = (writePrefix(outnew, object) + JSON.writeJSONString(outnew, this.fastJsonConfig.getCharset(), value, this.fastJsonConfig.getSerializeConfig(), (SerializeFilter[]) allFilters.toArray(new SerializeFilter[allFilters.size()]), this.fastJsonConfig.getDateFormat(), JSON.DEFAULT_GENERATE_FEATURE, this.fastJsonConfig.getSerializerFeatures())) + writeSuffix(outnew, object);
            if (isJsonp) {
                headers.setContentType(APPLICATION_JAVASCRIPT);
            }
            if (this.fastJsonConfig.isWriteContentLength()) {
                headers.setContentLength((long) len);
            }
            outnew.writeTo(outputMessage.getBody());
            outnew.close();
        } catch (JSONException ex) {
            throw new HttpMessageNotWritableException("Could not write JSON: " + ex.getMessage(), ex);
        } catch (Throwable th) {
            outnew.close();
        }
    }

    private Object strangeCodeForJackson(Object obj) {
        if (obj == null) {
            return obj;
        }
        if ("com.fasterxml.jackson.databind.node.ObjectNode".equals(obj.getClass().getName())) {
            return obj.toString();
        }
        return obj;
    }

    protected int writePrefix(ByteArrayOutputStream out, Object object) throws IOException {
        String jsonpFunction = object instanceof MappingFastJsonValue ? ((MappingFastJsonValue) object).getJsonpFunction() : null;
        if (jsonpFunction == null) {
            return 0;
        }
        out.write(JSONP_FUNCTION_PREFIX_BYTES);
        byte[] bytes = (jsonpFunction + "(").getBytes(IOUtils.UTF8);
        out.write(bytes);
        return 0 + (JSONP_FUNCTION_PREFIX_BYTES.length + bytes.length);
    }

    protected int writeSuffix(ByteArrayOutputStream out, Object object) throws IOException {
        if ((object instanceof MappingFastJsonValue ? ((MappingFastJsonValue) object).getJsonpFunction() : null) == null) {
            return 0;
        }
        out.write(JSONP_FUNCTION_SUFFIX_BYTES);
        return 0 + JSONP_FUNCTION_SUFFIX_BYTES.length;
    }

    protected Type getType(Type type, Class<?> contextClass) {
        if (contextClass == null) {
            return type;
        }
        ResolvableType resolvedType = ResolvableType.forType(type);
        if (type instanceof TypeVariable) {
            ResolvableType resolvedTypeVariable = resolveVariable((TypeVariable) type, ResolvableType.forClass(contextClass));
            if (resolvedTypeVariable != ResolvableType.NONE) {
                return resolvedTypeVariable.resolve();
            }
            return type;
        } else if (!(type instanceof ParameterizedType) || !resolvedType.hasUnresolvableGenerics()) {
            return type;
        } else {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Class<?>[] generics = new Class[parameterizedType.getActualTypeArguments().length];
            Type[] typeArguments = parameterizedType.getActualTypeArguments();
            for (int i = 0; i < typeArguments.length; i++) {
                Type typeArgument = typeArguments[i];
                if (typeArgument instanceof TypeVariable) {
                    ResolvableType resolvedTypeArgument = resolveVariable((TypeVariable) typeArgument, ResolvableType.forClass(contextClass));
                    if (resolvedTypeArgument != ResolvableType.NONE) {
                        generics[i] = resolvedTypeArgument.resolve();
                    } else {
                        generics[i] = ResolvableType.forType(typeArgument).resolve();
                    }
                } else {
                    generics[i] = ResolvableType.forType(typeArgument).resolve();
                }
            }
            return ResolvableType.forClassWithGenerics(resolvedType.getRawClass(), generics).getType();
        }
    }

    private ResolvableType resolveVariable(TypeVariable<?> typeVariable, ResolvableType contextType) {
        ResolvableType resolvedType;
        if (contextType.hasGenerics()) {
            resolvedType = ResolvableType.forType(typeVariable, contextType);
            if (resolvedType.resolve() != null) {
                return resolvedType;
            }
        }
        ResolvableType superType = contextType.getSuperType();
        if (superType != ResolvableType.NONE) {
            resolvedType = resolveVariable(typeVariable, superType);
            if (resolvedType.resolve() != null) {
                return resolvedType;
            }
        }
        for (ResolvableType ifc : contextType.getInterfaces()) {
            resolvedType = resolveVariable(typeVariable, ifc);
            if (resolvedType.resolve() != null) {
                return resolvedType;
            }
        }
        return ResolvableType.NONE;
    }
}
