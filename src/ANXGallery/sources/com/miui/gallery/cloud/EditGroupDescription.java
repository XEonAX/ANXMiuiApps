package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import org.json.JSONObject;

public class EditGroupDescription extends EditCloudBase {
    public EditGroupDescription(Context context) {
        super(context);
    }

    protected Request buildRequest(Account account, RequestCloudItem requestItem) throws Exception {
        String url = CloudGroupUrlProvider.getUrlProvider(false).getEditGroupUrl(account.name, requestItem.dbCloud.getServerId());
        return new Builder().setUrl(url).setMethod(2).setPostData(new JSONObject().put("content", requestItem.dbCloud.toJSONObject())).setRetryTimes(requestItem.otherRetryTimes).setNeedReRequest(false).build();
    }

    protected int getColumnIndex() {
        return 6;
    }
}
