package com.alibaba.fastjson.support.spring;

import com.alipay.sdk.authjs.a;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;
import org.springframework.core.MethodParameter;
import org.springframework.core.annotation.Order;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.util.Assert;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice;

@ControllerAdvice
@Order(Integer.MIN_VALUE)
@Deprecated
public class FastJsonpResponseBodyAdvice implements ResponseBodyAdvice<Object> {
    private static final Pattern CALLBACK_PARAM_PATTERN = Pattern.compile("[0-9A-Za-z_\\.]*");
    public static final String[] DEFAULT_JSONP_QUERY_PARAM_NAMES = new String[]{a.c, "jsonp"};
    private final String[] jsonpQueryParamNames;

    public FastJsonpResponseBodyAdvice() {
        this.jsonpQueryParamNames = DEFAULT_JSONP_QUERY_PARAM_NAMES;
    }

    public FastJsonpResponseBodyAdvice(String... queryParamNames) {
        Assert.isTrue(!ObjectUtils.isEmpty(queryParamNames), "At least one query param name is required");
        this.jsonpQueryParamNames = queryParamNames;
    }

    public boolean supports(MethodParameter returnType, Class<? extends HttpMessageConverter<?>> converterType) {
        return FastJsonHttpMessageConverter.class.isAssignableFrom(converterType);
    }

    public Object beforeBodyWrite(Object body, MethodParameter returnType, MediaType selectedContentType, Class<? extends HttpMessageConverter<?>> cls, ServerHttpRequest request, ServerHttpResponse response) {
        MappingFastJsonValue container = getOrCreateContainer(body);
        beforeBodyWriteInternal(container, selectedContentType, returnType, request, response);
        return container;
    }

    protected MappingFastJsonValue getOrCreateContainer(Object body) {
        return body instanceof MappingFastJsonValue ? (MappingFastJsonValue) body : new MappingFastJsonValue(body);
    }

    public void beforeBodyWriteInternal(MappingFastJsonValue bodyContainer, MediaType contentType, MethodParameter returnType, ServerHttpRequest request, ServerHttpResponse response) {
        HttpServletRequest servletRequest = ((ServletServerHttpRequest) request).getServletRequest();
        String[] strArr = this.jsonpQueryParamNames;
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            String value = servletRequest.getParameter(strArr[i]);
            if (value == null || !isValidJsonpQueryParam(value)) {
                i++;
            } else {
                response.getHeaders().setContentType(getContentType(contentType, request, response));
                bodyContainer.setJsonpFunction(value);
                return;
            }
        }
    }

    protected boolean isValidJsonpQueryParam(String value) {
        return CALLBACK_PARAM_PATTERN.matcher(value).matches();
    }

    protected MediaType getContentType(MediaType contentType, ServerHttpRequest request, ServerHttpResponse response) {
        return new MediaType("application", "javascript");
    }
}
