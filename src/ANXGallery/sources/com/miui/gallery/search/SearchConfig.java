package com.miui.gallery.search;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.provider.GalleryContract.Common;
import com.miui.gallery.provider.GalleryContract.Search;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.core.suggestion.BaseSuggestion;
import com.miui.gallery.search.core.suggestion.MapBackedSuggestionExtras;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.ui.AIAlbumStatusHelper;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

public class SearchConfig {
    private static SearchConfig sConfig;
    private HistoryConfig mHistoryConfig;
    private NavigationConfig mNavigationConfig;
    private ResultConfig mResultConfig;
    private SuggestionConfig mSuggestionConfig;

    public static class HistoryConfig {
        private int maxStoreCount;
        private int navigationReturnCount;

        public HistoryConfig(Context context) {
            this.maxStoreCount = context.getResources().getInteger(R.integer.search_history_max_store_count);
            this.navigationReturnCount = context.getResources().getInteger(R.integer.search_history_navigation_return_count);
        }

        public int getNavigationReturnCount() {
            return this.navigationReturnCount;
        }

        public String getTitle(Context context) {
            return context.getString(R.string.search_title_history);
        }

        public String getSubTitle(Context context) {
            return context.getString(R.string.search_clear_histories);
        }

        public SectionType getSectionType() {
            return SectionType.SECTION_TYPE_HISTORY;
        }

        public boolean shouldRecordHistory(String from) {
            return !TextUtils.isEmpty(from) && ("from_location_list".equals(from) || "from_tag_list".equals(from) || "from_suggestion".equals(from) || "from_navigation_history".equals(from) || "from_image_result_filter".equals(from));
        }
    }

    public static class NavigationConfig {
        private int peopleItemCount;
        private int recommendItemCount;

        public NavigationConfig(Context context) {
            this.recommendItemCount = context.getResources().getInteger(R.integer.search_navigation_recommend_item_count);
            this.peopleItemCount = context.getResources().getInteger(R.integer.search_navigation_people_item_count);
        }

        public int getSectionMaxItemCount(SectionType sectionType) {
            switch (sectionType) {
                case SECTION_TYPE_PEOPLE:
                    return this.peopleItemCount;
                case SECTION_TYPE_RECOMMEND:
                    return this.recommendItemCount;
                default:
                    return Integer.MAX_VALUE;
            }
        }

        public boolean useBatchContent(SectionType sectionType) {
            switch (sectionType) {
                case SECTION_TYPE_TAG:
                case SECTION_TYPE_LOCATION:
                case SECTION_TYPE_PEOPLE:
                case SECTION_TYPE_RECOMMEND:
                case SECTION_TYPE_HISTORY:
                    return true;
                default:
                    return false;
            }
        }

        public boolean isFatalCondition(int errorStatus) {
            switch (errorStatus) {
                case 3:
                case 10:
                case 12:
                case 13:
                case 14:
                    return true;
                default:
                    return false;
            }
        }
    }

    public static class ResultConfig {
        private int imageLoadCount;
        private int likelyImageLoadCount;
        private int tagLocationLoadCount;

        private ResultConfig(Context context) {
            this.tagLocationLoadCount = context.getResources().getInteger(R.integer.search_result_tag_location_load_count);
            this.imageLoadCount = context.getResources().getInteger(R.integer.search_result_image_load_count);
            this.likelyImageLoadCount = context.getResources().getInteger(R.integer.search_likely_image_load_count);
        }

        public int getTagLocationLoadCount() {
            return this.tagLocationLoadCount;
        }

        public int getImageLoadCount() {
            return this.imageLoadCount;
        }

        public int getLikelyImageLoadCount() {
            return this.likelyImageLoadCount;
        }
    }

    public static class SuggestionConfig {
        private Map<String, Map<String, String>> mQueryExtras = null;
        private boolean mShouldJumpWhenSingleSug = false;

        public SuggestionConfig(Context context) {
            this.mShouldJumpWhenSingleSug = context.getResources().getBoolean(R.bool.search_should_jump_when_single_suggestion);
        }

        public boolean supportShortcut(SectionType sectionType) {
            switch (sectionType) {
                case SECTION_TYPE_SUGGESTION:
                case SECTION_TYPE_GUIDE:
                case SECTION_TYPE_NO_RESULT:
                case SECTION_TYPE_WARNING:
                    return false;
                default:
                    return true;
            }
        }

        public boolean countToRecall(SectionType sectionType) {
            switch (sectionType) {
                case SECTION_TYPE_GUIDE:
                case SECTION_TYPE_NO_RESULT:
                case SECTION_TYPE_WARNING:
                    return false;
                default:
                    return true;
            }
        }

        public boolean shouldDrawSectionHeader(SectionType sectionType) {
            switch (sectionType) {
                case SECTION_TYPE_SUGGESTION:
                case SECTION_TYPE_GUIDE:
                case SECTION_TYPE_NO_RESULT:
                case SECTION_TYPE_WARNING:
                    return true;
                default:
                    return false;
            }
        }

        public void addQueryExtra(String keyword, String originPeopleName, String peopleServerID) {
            if (this.mQueryExtras == null) {
                this.mQueryExtras = new HashMap();
            }
            Map<String, String> extraMap = new HashMap(2);
            extraMap.put("name", keyword);
            extraMap.put("peopleName", originPeopleName);
            extraMap.put("peopleId", peopleServerID);
            this.mQueryExtras.put(keyword, extraMap);
        }

        public String getQueryExtras(String queryText) {
            String str = null;
            if (this.mQueryExtras == null || TextUtils.isEmpty(queryText)) {
                return str;
            }
            Object extras = new ArrayList();
            for (String keyword : this.mQueryExtras.keySet()) {
                if (queryText.contains(keyword)) {
                    extras.add(this.mQueryExtras.get(keyword));
                }
            }
            if (extras.isEmpty()) {
                return str;
            }
            Map<String, List> extraInfo = new HashMap(1);
            extraInfo.put("extraInfo", extras);
            try {
                return GsonUtils.toJson(extraInfo);
            } catch (JSONException e) {
                Log.e("SearchConfig", "Failed to transform to json [%s]", extras);
                return str;
            }
        }
    }

    private SearchConfig() {
        init(GalleryApp.sGetAndroidContext());
    }

    public static SearchConfig get() {
        if (sConfig == null) {
            synchronized (SearchConfig.class) {
                if (sConfig == null) {
                    sConfig = new SearchConfig();
                }
            }
        }
        return sConfig;
    }

    public void init(Context context) {
        if (this.mNavigationConfig == null) {
            this.mNavigationConfig = new NavigationConfig(context);
        }
        if (this.mSuggestionConfig == null) {
            this.mSuggestionConfig = new SuggestionConfig(context);
        }
        if (this.mHistoryConfig == null) {
            this.mHistoryConfig = new HistoryConfig(context);
        }
        if (this.mResultConfig == null) {
            this.mResultConfig = new ResultConfig(context);
        }
    }

    public NavigationConfig getNavigationConfig() {
        if (this.mNavigationConfig != null) {
            return this.mNavigationConfig;
        }
        throw new RuntimeException("SearchConfig haven't been initiated yet!");
    }

    public SuggestionConfig getSuggestionConfig() {
        return this.mSuggestionConfig;
    }

    public HistoryConfig getHistoryConfig() {
        return this.mHistoryConfig;
    }

    public ResultConfig getResultConfig() {
        return this.mResultConfig;
    }

    public boolean showSection(SectionType sectionType) {
        if (sectionType != SectionType.SECTION_TYPE_PEOPLE || AIAlbumStatusHelper.isFaceAlbumEnabled()) {
            return true;
        }
        return false;
    }

    public Suggestion getDefaultMoreItem(Context context, SectionType sectionType, boolean fixed) {
        if (context == null || sectionType == null) {
            return null;
        }
        Uri actionUri = null;
        switch (sectionType) {
            case SECTION_TYPE_TAG:
                actionUri = Search.URI_TAG_LIST_PAGE;
                break;
            case SECTION_TYPE_LOCATION:
                actionUri = Search.URI_LOCATION_LIST_PAGE;
                break;
            case SECTION_TYPE_PEOPLE:
                actionUri = Common.URI_PEOPLE_LIST_PAGE;
                break;
        }
        if (actionUri == null) {
            return null;
        }
        Suggestion suggestion = new BaseSuggestion();
        suggestion.setSuggestionTitle(context.getString(R.string.search_title_more));
        suggestion.setIntentActionURI(actionUri.toString());
        suggestion.setSuggestionExtras(new MapBackedSuggestionExtras("fixed", String.valueOf(fixed)));
        return suggestion;
    }

    public String getTitleForSection(SectionType sectionType) {
        int res;
        switch (sectionType) {
            case SECTION_TYPE_TAG:
                res = R.string.search_title_tag;
                break;
            case SECTION_TYPE_LOCATION:
                res = R.string.search_title_location;
                break;
            case SECTION_TYPE_PEOPLE:
                res = R.string.search_title_people;
                break;
            case SECTION_TYPE_ALBUM:
                res = R.string.search_title_album;
                break;
            case SECTION_TYPE_RECOMMEND:
                res = R.string.search_title_recommend;
                break;
            case SECTION_TYPE_SUGGESTION:
                res = R.string.search_title_suggestion;
                break;
            case SECTION_TYPE_OTHER:
                res = R.string.search_title_others;
                break;
            case SECTION_TYPE_HISTORY:
                res = R.string.search_title_history;
                break;
            case SECTION_TYPE_APP_SCREENSHOT:
                res = R.string.search_title_app_screenshot;
                break;
            default:
                return null;
        }
        return GalleryApp.sGetAndroidContext().getString(res);
    }

    public ArrayList<String> getVoiceAssistantSuggestion(Context context) {
        ArrayList<String> suggestTextsArray = null;
        String[] suggestTexts = context.getResources().getStringArray(R.array.search_voice_assistant_suggestion);
        if (suggestTexts.length > 0) {
            suggestTextsArray = new ArrayList(suggestTexts.length);
            for (String text : suggestTexts) {
                suggestTextsArray.add(text);
            }
        }
        return suggestTextsArray;
    }
}
