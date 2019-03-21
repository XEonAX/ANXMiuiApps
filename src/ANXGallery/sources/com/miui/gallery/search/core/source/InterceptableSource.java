package com.miui.gallery.search.core.source;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.BaseSourceResult;
import com.miui.gallery.search.core.result.ErrorInfo;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.utils.SearchUtils;
import com.miui.gallery.ui.AIAlbumStatusHelper;
import com.miui.gallery.util.PrivacyAgreementUtils;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.deprecated.Preference;

public abstract class InterceptableSource extends AbstractSource {
    protected Context mContext;

    protected abstract SourceResult doGetSuggestions(QueryInfo queryInfo);

    public InterceptableSource(Context context) {
        this.mContext = context;
    }

    public SourceResult getSuggestions(QueryInfo queryInfo) {
        SourceResult sourceResult = getPrejudgeResult(queryInfo);
        return sourceResult != null ? sourceResult : doGetSuggestions(queryInfo);
    }

    protected boolean isFatalCondition(QueryInfo queryInfo, int status) {
        return status == 12;
    }

    protected BaseSourceResult generateDefaultResult(QueryInfo queryInfo, SuggestionCursor resultData) {
        return new BaseSourceResult(queryInfo, this, resultData);
    }

    protected SourceResult getPrejudgeResult(QueryInfo query) {
        BaseSourceResult sourceResult;
        if (isFatalCondition(query, 3) && TextUtils.isEmpty(SearchUtils.getXiaomiId())) {
            sourceResult = generateDefaultResult(query, null);
            sourceResult.setErrorInfo(new ErrorInfo(3));
            return sourceResult;
        } else if (!PrivacyAgreementUtils.isCloudServiceAgreementEnable(this.mContext)) {
            sourceResult = generateDefaultResult(query, null);
            sourceResult.setErrorInfo(new ErrorInfo(4));
            return sourceResult;
        } else if (!isFatalCondition(query, 10) || Preference.sIsFirstSynced()) {
            if (isFatalCondition(query, 12) && !AIAlbumStatusHelper.isLocalSearchOpen(true)) {
                sourceResult = generateDefaultResult(query, null);
                sourceResult.setErrorInfo(new ErrorInfo(12));
                return sourceResult;
            } else if (isFatalCondition(query, 13) && !AIAlbumStatusHelper.isCloudControlSearchAIAlbumOpen()) {
                sourceResult = generateDefaultResult(query, null);
                sourceResult.setErrorInfo(new ErrorInfo(13));
                return sourceResult;
            } else if (!isFatalCondition(query, 14) || AIAlbumStatusHelper.isCloudControlSearchBarOpen()) {
                return null;
            } else {
                sourceResult = generateDefaultResult(query, null);
                sourceResult.setErrorInfo(new ErrorInfo(14));
                return sourceResult;
            }
        } else if (!NetworkUtils.isNetworkConnected()) {
            sourceResult = generateDefaultResult(query, null);
            sourceResult.setErrorInfo(new ErrorInfo(1));
            return sourceResult;
        } else if (SyncUtil.isGalleryCloudSyncable(this.mContext)) {
            sourceResult = generateDefaultResult(query, null);
            sourceResult.setErrorInfo(new ErrorInfo(10));
            return sourceResult;
        } else {
            sourceResult = generateDefaultResult(query, null);
            sourceResult.setErrorInfo(new ErrorInfo(4));
            return sourceResult;
        }
    }
}
