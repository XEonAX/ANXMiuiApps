package com.miui.gallery.search.history;

import android.app.IntentService;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.search.SearchContract.History;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.utils.SearchLog;

public class SearchHistoryService extends IntentService {
    public static String EXTRA_HISTORY_ITEM = "history_item";
    public static String EXTRA_OPERATION = "operation";

    public static void addHistory(Context context, Suggestion suggestion) {
        if (context != null && suggestion != null) {
            Intent intent = new Intent(context, SearchHistoryService.class);
            intent.putExtra(EXTRA_OPERATION, 0);
            intent.putExtra(EXTRA_HISTORY_ITEM, toContentValues(suggestion));
            context.startService(intent);
        }
    }

    protected static ContentValues toContentValues(Suggestion suggestion) {
        ContentValues contentValues = new ContentValues();
        String title = suggestion.getSuggestionTitle();
        String actionUri = suggestion.getIntentActionURI();
        if (title != null) {
            if (actionUri != null) {
                String uriTitle = Uri.parse(actionUri).getQueryParameter("title");
                if (!TextUtils.isEmpty(uriTitle)) {
                    title = uriTitle;
                }
            }
            contentValues.put("title", title);
        }
        if (suggestion.getSuggestionSubTitle() != null) {
            contentValues.put("subTitle", suggestion.getSuggestionSubTitle());
        }
        if (actionUri != null) {
            contentValues.put("actionUri", suggestion.getIntentActionURI());
        }
        if (suggestion.getSuggestionIcon() != null) {
            contentValues.put("icon", suggestion.getSuggestionIcon());
        }
        return contentValues;
    }

    public static void clearHistory(Context context) {
        Intent intent = new Intent(context, SearchHistoryService.class);
        intent.putExtra(EXTRA_OPERATION, 2);
        context.startService(intent);
    }

    public SearchHistoryService() {
        super("SearchHistoryService");
    }

    protected void onHandleIntent(Intent intent) {
        int operation = intent.getIntExtra(EXTRA_OPERATION, -1);
        switch (operation) {
            case 0:
                ContentValues contentValues = (ContentValues) intent.getParcelableExtra(EXTRA_HISTORY_ITEM);
                if (contentValues == null) {
                    SearchLog.w("SearchHistoryService", "No history item found for operation add");
                    return;
                } else {
                    getContentResolver().insert(History.URI, contentValues);
                    return;
                }
            case 1:
                return;
            case 2:
                getContentResolver().delete(History.URI, null, null);
                return;
            default:
                SearchLog.w("SearchHistoryService", "Invalid history operation type: %d", Integer.valueOf(operation));
                return;
        }
    }
}
