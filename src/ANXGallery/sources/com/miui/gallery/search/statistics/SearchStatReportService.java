package com.miui.gallery.search.statistics;

import android.app.Notification;
import android.content.Intent;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.search.core.source.server.ServerSearchRequest.Builder;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.utils.SearchUtils;
import com.miui.gallery.service.IntentServiceBase;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.NotificationHelper;
import com.miui.gallery.util.PrivacyAgreementUtils;
import java.util.ArrayList;
import java.util.List;

public class SearchStatReportService extends IntentServiceBase {
    public static String EXTRA_LOG_ITEM = "log_item";
    public static String EXTRA_UPLOAD = "upload";

    protected Notification getNotification() {
        return NotificationHelper.getEmptyNotification(getApplicationContext());
    }

    protected int getNotificationId() {
        return 7;
    }

    protected void onHandleIntent(Intent intent) {
        super.onHandleIntent(intent);
        if (intent == null) {
            Log.w("SearchStatReportService", "Received a NULL intent!");
            return;
        }
        SearchStatLogItem logItem = null;
        if (intent.getSerializableExtra(EXTRA_LOG_ITEM) != null) {
            logItem = (SearchStatLogItem) intent.getSerializableExtra(EXTRA_LOG_ITEM);
            SearchLog.d("SearchStatReportService", "On log [%s]", logItem);
        }
        if (intent.getBooleanExtra(EXTRA_UPLOAD, false)) {
            uploadStatEvents(logItem);
        } else if (logItem != null) {
            SearchStatStorageHelper.saveLogItem(logItem);
        }
    }

    private void uploadStatEvents(SearchStatLogItem logItem) {
        String userID = SearchUtils.getXiaomiId();
        if (userID != null && PrivacyAgreementUtils.isCloudServiceAgreementEnable(GalleryApp.sGetAndroidContext()) && NetworkUtils.isNetworkConnected() && !NetworkUtils.isActiveNetworkMetered()) {
            ArrayList<SearchStatLogItem> logs = SearchStatStorageHelper.getSavedLogs();
            if ((logs != null && !logs.isEmpty()) || logItem != null) {
                if (logs == null) {
                    logs = new ArrayList(1);
                }
                if (logItem != null) {
                    logs.add(logItem);
                }
                int startPos = 0;
                while (startPos < logs.size()) {
                    try {
                        int endPos = Math.min(logs.size(), startPos + 10);
                        List batchItems = logs.subList(startPos, endPos);
                        try {
                            SearchLog.d("SearchStatReportService", "uploading batch statistic events [%d-%d][%s]...", Integer.valueOf(startPos), Integer.valueOf(endPos), batchItems);
                            new Builder().setMethod(1002).setUserPath(Builder.getDefaultUserPath(userID)).setUserId(userID).setQueryAppendPath("actionlog").addQueryParam("data", SearchStatUtils.getDataJson(batchItems)).setReportError(false).build().executeSync();
                            SearchLog.d("SearchStatReportService", "Upload batch succeed");
                            SearchStatStorageHelper.clearSavedLogs();
                        } catch (Exception e) {
                            SearchLog.d("SearchStatReportService", "Upload batch failed, %s", e);
                        } finally {
                            startPos = endPos;
                        }
                    } catch (Throwable e2) {
                        try {
                            SearchLog.e("SearchStatReportService", e2);
                            return;
                        } finally {
                            SearchLog.d("SearchStatReportService", "Done uploading [%d] items, delete uploaded events", Integer.valueOf(logs.size()));
                            SearchStatStorageHelper.clearSavedLogs();
                        }
                    }
                }
                SearchLog.d("SearchStatReportService", "Done uploading [%d] items, delete uploaded events", Integer.valueOf(logs.size()));
                SearchStatStorageHelper.clearSavedLogs();
            }
        } else if (logItem != null) {
            SearchStatStorageHelper.saveLogItem(logItem);
        }
    }
}
