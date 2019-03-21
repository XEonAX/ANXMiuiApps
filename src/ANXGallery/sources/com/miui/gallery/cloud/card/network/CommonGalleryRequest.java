package com.miui.gallery.cloud.card.network;

import com.google.gson.JsonParseException;
import com.miui.gallery.net.BaseGalleryRequest;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.json.BaseJsonRequest;
import java.lang.reflect.Type;
import org.json.JSONObject;

public class CommonGalleryRequest extends BaseGalleryRequest {
    private Type mDataType;

    public CommonGalleryRequest(int method, String url, Type type) {
        super(method, url);
        this.mDataType = type;
    }

    protected void onRequestSuccess(JSONObject data) throws Exception {
        if (data != null) {
            try {
                Object response = BaseJsonRequest.fromJson(data.toString(), this.mDataType);
                deliverResponse(response);
                return;
            } catch (JsonParseException e) {
                e.printStackTrace();
                deliverError(ErrorCode.PARSE_ERROR, e.getMessage(), data);
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                deliverError(ErrorCode.HANDLE_ERROR, e2.getMessage(), data);
                return;
            }
        }
        deliverError(ErrorCode.BODY_EMPTY, null, null);
    }
}
