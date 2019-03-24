package com.miui.gallery.search.core.source.server;

import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.search.core.source.server.ServerSearchRequest.Builder;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.utils.SearchUtils;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.PrivacyAgreementUtils;
import miui.yellowpage.YellowPageContract.Search;

public class OpenSearchRequest {
    public static int request() {
        String userID = SearchUtils.getXiaomiId();
        if (TextUtils.isEmpty(userID)) {
            return 3;
        }
        if (!PrivacyAgreementUtils.isCloudServiceAgreementEnable(GalleryApp.sGetAndroidContext())) {
            return 4;
        }
        if (!NetworkUtils.isNetworkConnected()) {
            return 1;
        }
        try {
            Object[] response = new Builder().setMethod(1001).setUserPath(Builder.getDefaultUserPath(userID)).setUserId(userID).setQueryAppendPath("hint").setUseCache(false).build().executeSync();
            if (response != null && response.length > 0) {
                BaseSamplingStatHelper.recordCountEvent(Search.DIRECTORY, "request_open_search_succeeded");
                return 0;
            }
        } catch (Throwable e) {
            SearchLog.e("OpenSearchRequest", e);
        }
        BaseSamplingStatHelper.recordCountEvent(Search.DIRECTORY, "request_open_search_failed");
        return 9;
    }
}
