package com.miui.gallery.cloud.card.network;

import com.miui.gallery.cloud.card.exception.NoResultException;
import com.miui.gallery.cloud.card.exception.RequestArgumentsNullException;
import com.miui.gallery.cloud.card.exception.TypeNotFoundException;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.RequestError;
import com.miui.gallery.net.base.ResponseListener;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public class CommonGalleryRequestHelper<E> {
    private CommonGalleryRequest mBaseGalleryRequest;
    private Type mDataType;

    public CommonGalleryRequestHelper(RequestArguments<E> requestArguments) {
        if (requestArguments == null) {
            throw new RequestArgumentsNullException();
        }
        Type[] type = requestArguments.getClass().getGenericInterfaces();
        if (type.length <= 0 || !(type[0] instanceof ParameterizedType)) {
            throw new TypeNotFoundException();
        }
        Type claz = type[0].getActualTypeArguments()[0];
        if (claz instanceof Class) {
            this.mDataType = claz;
            this.mBaseGalleryRequest = new CommonGalleryRequest(requestArguments.getMethod(), requestArguments.getUrl(), this.mDataType);
            return;
        }
        throw new TypeNotFoundException();
    }

    public final void execute(final ResponseCallback<E> responseCallback) {
        this.mBaseGalleryRequest.setOnResponseListener(new ResponseListener() {
            public void onResponse(Object... response) {
                E res = response[0];
                if (responseCallback != null) {
                    responseCallback.onResponse(res);
                }
            }

            public void onResponseError(ErrorCode errorCode, String errorMessage, Object responseData) {
                if (responseCallback != null) {
                    responseCallback.onResponseError(errorCode, errorMessage, responseData);
                }
            }
        });
        this.mBaseGalleryRequest.execute();
    }

    public final E executeSync() throws RequestError, NoResultException {
        Object[] result = this.mBaseGalleryRequest.executeSync();
        if (result != null && result.length > 0) {
            return result[0];
        }
        throw new NoResultException();
    }

    public final CommonGalleryRequestHelper addParam(String name, String value) {
        this.mBaseGalleryRequest.addParam(name, value);
        return this;
    }

    public final CommonGalleryRequestHelper setUseCache(boolean useCache) {
        this.mBaseGalleryRequest.setUseCache(useCache);
        return this;
    }
}
