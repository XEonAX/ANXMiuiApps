package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import com.miui.gallery.cloud.HostManager.SyncPull;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public class SyncOwnerAll extends SyncOwnerCloud {
    public SyncOwnerAll(Context context, Account account, GalleryExtendedAuthToken extendedAuthToken) {
        super(context, account, extendedAuthToken);
    }

    protected String getSyncUrl() {
        return SyncPull.getPullOwnerAllUrl();
    }

    protected void appendParams(ArrayList<NameValuePair> params, ArrayList<SyncTagItem> syncTagList) throws UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException {
        super.appendParams(params, syncTagList);
        if (ApplicationHelper.isSecretAlbumFeatureOpen()) {
            params.add(new BasicNameValuePair("returnHiddenData", String.valueOf(true)));
        }
        params.add(new BasicNameValuePair("returnSystemAlbum", String.valueOf(true)));
    }

    public boolean hasStarted() {
        List<SyncTagItem> tagList = getCurrentSyncTag();
        if (tagList == null || tagList.size() == 0) {
            return false;
        }
        if (((SyncTagItem) tagList.get(0)).currentValue != 0) {
            return true;
        }
        return false;
    }
}
