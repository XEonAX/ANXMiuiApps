package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import com.miui.gallery.data.DBImage;
import org.json.JSONObject;

public class EditCloudGeoInfo extends EditCloudBase {
    public EditCloudGeoInfo(Context context) {
        super(context);
    }

    protected Request buildRequest(Account account, RequestCloudItem requestItem) throws Exception {
        DBImage dbImage = requestItem.dbCloud;
        String url = CloudUrlProvider.getUrlProvider(dbImage.isShareItem(), dbImage.isVideoType()).getUpdateUrl(account.name, dbImage.getServerId());
        JSONObject contentJson = new JSONObject();
        JSONObject cloudJson = dbImage.toJSONObject();
        cloudJson.put("geoInfo", dbImage.getGeoInfo());
        contentJson.put("content", cloudJson);
        return new Builder().setUrl(url).setMethod(2).setPostData(contentJson).setRetryTimes(requestItem.otherRetryTimes).setNeedReRequest(false).build();
    }

    protected int getColumnIndex() {
        return 70;
    }
}
