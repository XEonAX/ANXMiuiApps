package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import com.miui.gallery.data.DBImage;
import org.json.JSONObject;

public class EditCloudFavoriteInfo extends EditCloudBase {
    public EditCloudFavoriteInfo(Context context) {
        super(context);
    }

    protected Request buildRequest(Account account, RequestCloudItem requestItem) throws Exception {
        DBImage dbImage = requestItem.dbCloud;
        String url = CloudUrlProvider.getUrlProvider(dbImage.isShareItem(), dbImage.isVideoType()).getUpdateUrl(account.name, dbImage.getServerId());
        JSONObject contentJson = new JSONObject();
        contentJson.put("content", dbImage.toJSONObject());
        return new Builder().setUrl(url).setMethod(2).setPostData(contentJson).setRetryTimes(requestItem.otherRetryTimes).setNeedReRequest(false).build();
    }

    protected int getColumnIndex() {
        return -1;
    }
}
