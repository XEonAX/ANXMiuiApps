package com.miui.gallery.search.core.display;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.history.SearchHistoryService;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.util.ActionURIHandler;

public class DefaultActionClickListener implements OnActionClickListener {
    private Context mContext;

    public DefaultActionClickListener(Context context) {
        this.mContext = context;
    }

    public void onClick(View view, int actionType, Object data, Bundle extra) {
        String from = extractFrom(extra);
        switch (actionType) {
            case 0:
            case 1:
                String uriString = null;
                if (data instanceof Suggestion) {
                    recordHistoryIfNeeded((Suggestion) data, from);
                    uriString = ((Suggestion) data).getIntentActionURI();
                } else if (data != null) {
                    uriString = data.toString();
                }
                try {
                    handleUri((Activity) this.mContext, Uri.parse(uriString), extra);
                    return;
                } catch (Exception e) {
                    Object obj;
                    String str = "DefaultActionClickListener";
                    String str2 = "Action uri parse failed for extra [%s] from %s";
                    if (extra == null) {
                        obj = "null";
                    } else {
                        obj = extra.toString();
                    }
                    if (from == null) {
                        from = "null";
                    }
                    SearchLog.w(str, str2, obj, from);
                    return;
                }
            case 2:
                SearchHistoryService.clearHistory(this.mContext);
                SearchStatUtils.reportEvent(from, "clear_search_history");
                return;
            default:
                return;
        }
    }

    protected void handleUri(Activity activity, Uri uri, Bundle bundle) {
        ActionURIHandler.handleUri(activity, uri, bundle);
    }

    private void recordHistoryIfNeeded(Suggestion suggestion, String from) {
        if (SearchConfig.get().getHistoryConfig().shouldRecordHistory(from)) {
            SearchHistoryService.addHistory(this.mContext, suggestion);
        }
    }

    private String extractFrom(Bundle extra) {
        if (extra == null || extra.isEmpty()) {
            return null;
        }
        String[] eventKeys = extra.getStringArray("search_event_keys");
        String[] eventValues = extra.getStringArray("search_event_values");
        if (eventKeys == null || eventValues == null || eventKeys.length != eventValues.length) {
            return null;
        }
        for (int i = 0; i < eventKeys.length; i++) {
            if ("from".equals(eventKeys[i])) {
                return eventValues[i];
            }
        }
        return null;
    }
}
