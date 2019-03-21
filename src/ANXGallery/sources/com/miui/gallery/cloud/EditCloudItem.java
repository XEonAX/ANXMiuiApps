package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.util.UbiFocusUtils;
import java.util.List;
import org.json.JSONObject;

public class EditCloudItem extends EditCloudBase {
    public EditCloudItem(Context context) {
        super(context);
    }

    protected Request buildRequest(Account account, RequestCloudItem requestItem) throws Exception {
        DBImage dbImage = requestItem.dbCloud;
        String editUrl = CloudUrlProvider.getUrlProvider(dbImage.isShareItem(), dbImage.isVideoType()).getEditUrl(account.name, dbImage.getRequestId());
        JSONObject jSONObject = new JSONObject();
        jSONObject = dbImage.toJSONObject();
        if (dbImage.isUbiFocus()) {
            List<DBImage> subDbImages = UbiFocusUtils.getSubUbiImages(dbImage.isShareItem(), dbImage.getRequestId(), dbImage.getId());
            if (subDbImages != null) {
                JSONObject subUbiImageMap = new JSONObject();
                for (DBImage subDbImage : subDbImages) {
                    subUbiImageMap.putOpt(String.valueOf(subDbImage.getSubUbiIndex()), subDbImage.toJsonObjectForSubUbi());
                }
                subUbiImageMap.putOpt(String.valueOf(dbImage.getSubUbiIndex()), dbImage.toJsonObjectForSubUbi());
                jSONObject.putOpt("ubiSubImageContentMap", subUbiImageMap);
            }
        }
        return new Builder().setUrl(editUrl).setMethod(2).setPostData(new JSONObject().put("content", jSONObject)).setRetryTimes(requestItem.otherRetryTimes).setNeedReRequest(false).build();
    }

    protected int getColumnIndex() {
        return 57;
    }
}
