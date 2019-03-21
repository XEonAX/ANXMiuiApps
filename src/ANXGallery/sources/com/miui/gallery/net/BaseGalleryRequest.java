package com.miui.gallery.net;

import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.RequestError;
import com.miui.gallery.net.json.BaseJsonRequest;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.util.Log;
import org.json.JSONObject;

public class BaseGalleryRequest extends BaseJsonRequest<GalleryResponse> {
    public BaseGalleryRequest(int method, String url) {
        super(method, url);
    }

    protected final void handleResponse(JSONObject response) {
        if (response != null) {
            try {
                if (response.has("code")) {
                    if (response.getInt("code") != ErrorCode.SUCCESS.CODE) {
                        handleError(ErrorCode.SERVER_ERROR, response.optString("description"), response);
                        return;
                    } else if (response.isNull("data")) {
                        handleError(ErrorCode.BODY_EMPTY, "response empty data", response);
                        return;
                    } else {
                        GalleryResponse resp = new GalleryResponse();
                        resp.data = response.optJSONObject("data");
                        resp.syncTag = response.optString("syncTag", null);
                        resp.syncToken = response.optString("syncToken", null);
                        resp.isLastPage = response.optBoolean("lastPage", true);
                        onRequestSuccess(resp);
                        return;
                    }
                }
            } catch (Exception e) {
                handleError(ErrorCode.HANDLE_ERROR, e.getMessage(), e);
                return;
            }
        }
        handleError(ErrorCode.PARSE_ERROR, "response has no code", null);
    }

    protected void onRequestSuccess(GalleryResponse response) throws Exception {
        onRequestSuccess(response.data);
    }

    protected void onRequestSuccess(JSONObject data) throws Exception {
    }

    public final void execute() {
        if (checkExecuteCondition()) {
            super.execute();
        }
    }

    public final Object[] executeSync() throws RequestError {
        if (checkExecuteCondition()) {
            return super.executeSync();
        }
        throw this.mRequestError;
    }

    private boolean checkExecuteCondition() {
        if (!CTA.canConnectNetwork()) {
            handleError(ErrorCode.NETWORK_NOT_CONNECTED, "CTA not confirmed.", null);
            return false;
        } else if (isUseCache()) {
            return true;
        } else {
            if (NetworkUtils.isNetworkConnected()) {
                return true;
            }
            handleError(ErrorCode.NETWORK_NOT_CONNECTED, "Network not connected.", null);
            return false;
        }
    }

    public void onRequestError(ErrorCode errorCode, String errorMessage, Object responseData) {
        deliverError(errorCode, errorMessage, responseData);
        Log.w("BaseGalleryRequest", "%s onRequestError:%s | %s ", getClass().getSimpleName(), errorCode, errorMessage);
        if (responseData instanceof Throwable) {
            Log.w("BaseGalleryRequest", (Throwable) responseData);
        } else if (responseData != null) {
            Log.d("BaseGalleryRequest", responseData.toString());
        }
    }
}
