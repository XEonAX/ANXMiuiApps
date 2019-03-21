package com.miui.gallery.search.utils;

import android.accounts.Account;
import android.os.Bundle;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.result.SuggestionResult;
import com.miui.gallery.search.core.suggestion.RankInfo;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import java.util.Map;

public class SearchUtils {
    public static boolean isErrorResult(SuggestionResult suggestionResult) {
        return SearchConstants.isErrorStatus(getErrorStatus(suggestionResult));
    }

    public static int getErrorStatus(SuggestionResult suggestionResult) {
        if (suggestionResult == null || suggestionResult.getErrorInfo() == null) {
            return -1;
        }
        return suggestionResult.getErrorInfo().getErrorStatus();
    }

    public static void removeExtraParamsForPersistence(Map<String, String> params) {
        if (params != null && !params.isEmpty()) {
            params.remove("use_persistent_response");
            params.remove("serialId");
            params.remove("logData");
        }
    }

    public static String generateResultHashCode(Object result) {
        if (result instanceof String) {
            return String.valueOf(result.hashCode());
        }
        if (result != null) {
            return String.valueOf(result.toString().hashCode());
        }
        return null;
    }

    public static boolean compareResultHashCode(SourceResult s1, SourceResult s2) {
        String hash1 = getResultHashCode(s1);
        return hash1 != null && hash1.equals(getResultHashCode(s2));
    }

    public static String getResultHashCode(SourceResult sourceResult) {
        if (sourceResult == null || sourceResult.getResultExtras() == null || sourceResult.getResultExtras() == Bundle.EMPTY) {
            return null;
        }
        return sourceResult.getResultExtras().getString("result_hash_code");
    }

    public static String getXiaomiId() {
        Account account = AccountCache.getAccount();
        if (account != null) {
            return account.name;
        }
        return null;
    }

    public static RankInfo getRankInfo(SuggestionCursor suggestionCursor) {
        return (suggestionCursor == null || suggestionCursor.getExtras() == null) ? null : (RankInfo) suggestionCursor.getExtras().getSerializable("rankInfo");
    }
}
