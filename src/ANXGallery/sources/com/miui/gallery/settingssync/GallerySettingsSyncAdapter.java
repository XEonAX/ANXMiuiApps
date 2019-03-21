package com.miui.gallery.settingssync;

import android.content.Context;
import android.os.Bundle;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.agreement.AgreementsUtils;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.HostManager.Setting;
import com.miui.gallery.net.BaseGalleryRequest;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.settingssync.GallerySettingsSyncContract.Model;
import com.miui.gallery.settingssync.GallerySettingsSyncContract.SyncAdapter;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.PrivacyAgreementUtils;
import com.miui.gallery.util.SyncUtil;
import org.json.JSONObject;

public class GallerySettingsSyncAdapter implements SyncAdapter {
    private Context mContext;
    private Model mModel;

    private static class GallerySettingDownloadRequest extends BaseGalleryRequest {
        GallerySettingDownloadRequest() {
            super(1001, Setting.getSyncUrl());
        }

        protected void onRequestSuccess(JSONObject data) throws Exception {
            deliverResponse(data);
        }
    }

    private static class GallerySettingUploadRequest extends BaseGalleryRequest {
        GallerySettingUploadRequest(JSONObject data) {
            super(1002, Setting.getSyncUrl());
            addParam("data", data.toString());
        }

        protected void onRequestSuccess(JSONObject data) throws Exception {
            Log.w("GallerySettingsSyncAdapter", "No data is expected here, what are you [%s]", data);
            deliverResponse(Boolean.valueOf(true));
        }

        public void onRequestError(ErrorCode errorCode, String errorMessage, Object responseData) {
            if (errorCode == ErrorCode.BODY_EMPTY) {
                deliverResponse(Boolean.valueOf(true));
                return;
            }
            deliverError(errorCode, errorMessage, responseData);
        }
    }

    public GallerySettingsSyncAdapter(Context context, Model model) {
        this.mContext = context;
        this.mModel = model;
    }

    public void performSync(Bundle extras) {
        if (!AgreementsUtils.isNetworkingAgreementAccepted()) {
            Log.e("GallerySettingsSyncAdapter", "Sync settings failed: CTA not confirmed");
        } else if (!CloudUtils.checkAccount(null, true, null)) {
            Log.e("GallerySettingsSyncAdapter", "Sync settings failed: check account failed");
        } else if (!PrivacyAgreementUtils.isCloudServiceAgreementEnable(GalleryApp.sGetAndroidContext())) {
            Log.e("GallerySettingsSyncAdapter", "Sync settings failed: cloud service agreement disabled");
        } else if (!SyncUtil.isGalleryCloudSyncable(this.mContext)) {
            Log.e("GallerySettingsSyncAdapter", "Sync settings failed: sync off");
        } else if (this.mModel.isDirty()) {
            boolean result = doUpload();
            if (result) {
                this.mModel.markDirty(false);
            }
            Log.d("GallerySettingsSyncAdapter", "Upload settings result %s", Boolean.valueOf(result));
        } else {
            Log.d("GallerySettingsSyncAdapter", "Download settings result %s", Boolean.valueOf(doDownload()));
        }
    }

    private boolean doUpload() {
        JSONObject uploadSettings = this.mModel.getUploadSettings();
        if (uploadSettings == null) {
            Log.w("GallerySettingsSyncAdapter", "No syncable settings found to upload");
            return true;
        }
        try {
            Object[] response = new GallerySettingUploadRequest(uploadSettings).executeSync();
            if (response != null && response.length > 0 && (response[0] instanceof Boolean)) {
                return ((Boolean) response[0]).booleanValue();
            }
        } catch (Object error) {
            Log.e("GallerySettingsSyncAdapter", "Post setting failed, %s", error);
        }
        return false;
    }

    private boolean doDownload() {
        JSONObject resultData = null;
        try {
            Object[] response = new GallerySettingDownloadRequest().executeSync();
            if (response != null && response.length > 0 && (response[0] instanceof JSONObject)) {
                resultData = (JSONObject) response[0];
            }
        } catch (Object error) {
            Log.e("GallerySettingsSyncAdapter", "Get setting failed, %s", error);
        }
        if (resultData != null) {
            return this.mModel.onDownloadSettings(resultData);
        }
        Log.w("GallerySettingsSyncAdapter", "No syncable settings found to update");
        return true;
    }
}
