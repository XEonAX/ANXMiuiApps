package com.miui.gallery.cloudcontrol;

import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.google.gson.JsonParseException;
import com.google.gson.reflect.TypeToken;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.net.BaseGalleryRequest;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.json.BaseJsonRequest;
import com.miui.gallery.preference.GalleryPreferences.UUID;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.Encode;
import com.miui.gallery.util.MiscUtil;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class CloudControlRequest extends BaseGalleryRequest {

    public static class Builder {
        private String mDataParam;
        private int mMethod = 1002;
        private String mSyncToken;
        private String mUrl;

        public Builder() {
            JSONObject json = new JSONObject();
            try {
                json.put("appVersion", String.valueOf(MiscUtil.getAppVersionCode()));
                json.put("romVersion", "MIUI/" + VERSION.INCREMENTAL);
                String operator = MiscUtil.getSimOperator();
                String str = "operator";
                if (TextUtils.isEmpty(operator)) {
                    operator = null;
                }
                json.put(str, operator);
                json.put("sdkVersion", String.valueOf(VERSION.SDK_INT));
                String deviceId = null;
                if (AccountCache.getAccount() != null) {
                    deviceId = MiscUtil.getDeviceId();
                    if (deviceId != null) {
                        deviceId = Encode.SHA1Encode(deviceId.getBytes());
                    }
                    if (TextUtils.isEmpty(deviceId) && !BuildUtil.isPad()) {
                        CloudControlRequest.reportImeiIsNull();
                    }
                }
                str = "imeiSha1";
                if (TextUtils.isEmpty(deviceId)) {
                    deviceId = UUID.get();
                }
                json.put(str, deviceId);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            this.mDataParam = json.toString();
        }

        public Builder setMethod(int method) {
            this.mMethod = method;
            return this;
        }

        public Builder setUrl(String url) {
            this.mUrl = url;
            return this;
        }

        public String getDataParam() {
            return this.mDataParam;
        }

        public int getMethod() {
            return this.mMethod;
        }

        public String getUrl() {
            return this.mUrl;
        }

        public String getSyncToken() {
            return this.mSyncToken;
        }

        public Builder setSyncToken(String syncToken) {
            this.mSyncToken = syncToken;
            return this;
        }

        public CloudControlRequest build() {
            return new CloudControlRequest(this, null);
        }
    }

    /* synthetic */ CloudControlRequest(Builder x0, AnonymousClass1 x1) {
        this(x0);
    }

    private CloudControlRequest(Builder builder) {
        super(builder.getMethod(), builder.getUrl());
        addParam("data", ensureNotNull(builder.getDataParam()));
        addParam("syncToken", ensureNotNull(builder.getSyncToken()));
    }

    private String ensureNotNull(String str) {
        return str != null ? str : "";
    }

    protected void onRequestSuccess(JSONObject data) throws Exception {
        try {
            deliverResponse((CloudControlResponse) BaseJsonRequest.fromJson(data.toString(), new TypeToken<CloudControlResponse>() {
            }.getType()));
        } catch (JsonParseException e) {
            e.printStackTrace();
            deliverError(ErrorCode.PARSE_ERROR, e.getMessage(), data);
        } catch (Exception e2) {
            e2.printStackTrace();
            deliverError(ErrorCode.HANDLE_ERROR, e2.getMessage(), data);
        }
    }

    private static void reportImeiIsNull() {
        BaseSamplingStatHelper.recordStringPropertyEvent("cloud_control", "imei_is_null", String.format(Locale.US, "%s_%s", new Object[]{Build.MODEL, VERSION.INCREMENTAL}));
    }
}
