package com.miui.gallery.search.resultpage;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.search.SearchConfig;
import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.result.BaseSuggestionResult;
import com.miui.gallery.search.core.result.ErrorInfo;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.result.SuggestionResult;
import com.miui.gallery.search.core.resultprocessor.LinearResultProcessor;
import com.miui.gallery.search.core.resultprocessor.ResultProcessor;
import com.miui.gallery.search.core.suggestion.BaseSuggestion;
import com.miui.gallery.search.core.suggestion.BaseSuggestionSection;
import com.miui.gallery.search.core.suggestion.CursorBackedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.GroupedSuggestionCursor;
import com.miui.gallery.search.core.suggestion.ListSuggestionCursor;
import com.miui.gallery.search.core.suggestion.MapBackedSuggestionExtras;
import com.miui.gallery.search.core.suggestion.RankInfo;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.core.suggestion.SuggestionSection;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.util.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class SearchImageResultHelper extends SearchResultHelper {
    private static final String[] OUT_PROJECTION = StringUtils.mergeStringArray(QUERY_PROJECTION, new String[]{"item_collapse_visibility"});
    private static final String[] QUERY_PROJECTION = new String[]{"_id", "alias_micro_thumbnail", "alias_create_date", "alias_create_time", "location", "sha1", "serverType", "duration", "mimeType", "alias_sync_state", "thumbnailFile", "localFile", "serverId", "alias_is_favorite", "specialTypeFlags", "size"};
    private static final String TITLE_SEPARATOR = GalleryApp.sGetAndroidContext().getString(R.string.name_split);
    private Context mContext;
    private boolean mSupportExpand;

    private class FilterProcessor extends LinearResultProcessor {
        private FilterProcessor() {
        }

        protected SuggestionResult getMergedResult(List<SourceResult> sourceResults) {
            ErrorInfo errorInfo = getMergedErrorInfo(sourceResults);
            List<Suggestion> suggestions = new ArrayList();
            QueryInfo queryInfo = null;
            boolean hasEmptyIcon = false;
            for (SourceResult sourceResult : sourceResults) {
                if (queryInfo == null && sourceResult.getQueryInfo() != null) {
                    queryInfo = sourceResult.getQueryInfo();
                }
                SuggestionCursor data = sourceResult.getData();
                if (data != null) {
                    for (int i = 0; i < data.getCount(); i++) {
                        if (data.moveToPosition(i)) {
                            BaseSuggestion suggestion = toSuggestion(data.getCurrent());
                            if (suggestion != null) {
                                suggestions.add(suggestion);
                                hasEmptyIcon |= TextUtils.isEmpty(suggestion.getSuggestionIcon());
                            }
                        }
                    }
                }
            }
            if (hasEmptyIcon) {
                for (Suggestion suggestion2 : suggestions) {
                    ((BaseSuggestion) suggestion2).setSuggestionIcon(null);
                }
            }
            SuggestionCursor suggestionCursor = new ListSuggestionCursor(queryInfo, suggestions);
            Bundle extras = suggestionCursor.getExtras();
            if (extras == Bundle.EMPTY) {
                extras = new Bundle();
            }
            extras.putInt("filter_style", hasEmptyIcon ? 0 : 1);
            suggestionCursor.setExtras(extras);
            return new BaseSuggestionResult(queryInfo, suggestionCursor, errorInfo);
        }
    }

    private class ImageResultProcessor extends DataListResultProcessor {
        private SparseBooleanArray mCachedGroupExpandState = null;

        public ImageResultProcessor(RankInfo rankInfo) {
            super(rankInfo);
        }

        protected SuggestionResult createSuggestionResult(List<Suggestion> suggestions, QueryInfo queryInfo, RankInfo rankInfo, ErrorInfo errorInfo) {
            long startTime = System.currentTimeMillis();
            ImageResultSuggestionCursor suggestionCursor = null;
            String serverIdSelection = getSuggestionsServerIdSelection(suggestions);
            if (!TextUtils.isEmpty(serverIdSelection)) {
                if (supportExpand(rankInfo)) {
                    ArrayList<String> collapsedGroupLocations = new ArrayList();
                    List<Long> collapsedVisibleIds = new ArrayList();
                    List<Integer> createDates = new ArrayList();
                    doExpandableFirstStepQuery(serverIdSelection, collapsedGroupLocations, collapsedVisibleIds, createDates);
                    if (createDates.size() > 0) {
                        suggestionCursor = doExpandableSecondStepQuery(queryInfo, rankInfo, createDates, collapsedGroupLocations, collapsedVisibleIds);
                    }
                } else {
                    suggestionCursor = doSimpleQuery(suggestions, queryInfo, rankInfo, serverIdSelection);
                }
            }
            SearchLog.d("ImageResultProcessor", "[%d]ms: query time for [%s]", Long.valueOf(System.currentTimeMillis() - startTime), queryInfo);
            return new BaseSuggestionResult(queryInfo, suggestionCursor, errorInfo);
        }

        protected ImageResultSuggestionCursor doSimpleQuery(List<Suggestion> suggestions, QueryInfo queryInfo, RankInfo rankInfo, String selection) {
            ImageResultSuggestionCursor suggestionCursor;
            if (rankInfo == null || "date".equals(rankInfo.getName())) {
                suggestionCursor = doSimpleQueryWithDate(queryInfo, rankInfo, selection);
            } else {
                suggestionCursor = doSimpleQueryWithRankValue(suggestions, rankInfo, queryInfo, selection);
            }
            if (!(suggestionCursor == null || rankInfo == null)) {
                suggestionCursor.setExtras(createRankInfoBundle(rankInfo));
            }
            return suggestionCursor;
        }

        protected ImageResultSuggestionCursor doSimpleQueryWithDate(QueryInfo queryInfo, RankInfo rankInfo, String selection) {
            Cursor cursor = null;
            try {
                String defaultOrder;
                String str = "%s %s";
                Object[] objArr = new Object[2];
                objArr[0] = "alias_create_time";
                if (rankInfo == null || rankInfo.getOrder() == null) {
                    defaultOrder = SearchConstants.getDefaultOrder("date");
                } else {
                    defaultOrder = rankInfo.getOrder();
                }
                objArr[1] = defaultOrder;
                cursor = SearchImageResultHelper.this.mContext.getContentResolver().query(getQueryUri(true), SearchImageResultHelper.QUERY_PROJECTION, appendNotInSecretSelection(selection), null, String.format(str, objArr));
                if (cursor == null || cursor.getCount() <= 0) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
                ArrayList<String> groupLocations = cursor.getExtras().getStringArrayList("extra_timeline_group_start_locations");
                ArrayList<Integer> groupStartPos = cursor.getExtras().getIntegerArrayList("extra_timeline_group_start_pos");
                List<SuggestionSection> arrayList = new ArrayList(groupStartPos.size());
                MatrixCursor imageGroupCursor = new MatrixCursor(SearchImageResultHelper.OUT_PROJECTION);
                List<Long> groupIds = new ArrayList();
                int i = 0;
                while (i < cursor.getCount()) {
                    cursor.moveToPosition(i);
                    groupIds.add(Long.valueOf(cursor.getLong(0)));
                    imageGroupCursor.addRow(toRow(cursor, "visible"));
                    i++;
                    if (groupStartPos.contains(Integer.valueOf(i)) || i == cursor.getCount()) {
                        int groupIndex;
                        if (i == cursor.getCount()) {
                            groupIndex = groupStartPos.size() - 1;
                        } else {
                            groupIndex = groupStartPos.indexOf(Integer.valueOf(i)) - 1;
                        }
                        arrayList.add(toSection(queryInfo, imageGroupCursor, Long.valueOf(cursor.getLong(3)), Integer.valueOf(cursor.getInt(2)), (String) groupLocations.get(groupIndex), null, null, null, groupIds));
                        imageGroupCursor = new MatrixCursor(SearchImageResultHelper.OUT_PROJECTION);
                        groupIds.clear();
                    }
                }
                ImageResultSuggestionCursor imageResultSuggestionCursor = new ImageResultSuggestionCursor(queryInfo, arrayList, false);
                imageResultSuggestionCursor.setNotificationUri(SearchImageResultHelper.this.mContext.getContentResolver(), cursor.getNotificationUri());
                return imageResultSuggestionCursor;
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }

        protected ImageResultSuggestionCursor doSimpleQueryWithRankValue(List<Suggestion> suggestions, RankInfo rankInfo, QueryInfo queryInfo, String selection) {
            String rankValue;
            String serverId;
            String title;
            List<String> rankValues = new ArrayList();
            List<String> arrayList = new ArrayList(suggestions.size());
            Map<String, String> serverIdToRankValueMap = new HashMap();
            Map<String, String> serverIdToTitleMap = new HashMap();
            for (Suggestion suggestion : suggestions) {
                rankValue = getSuggestionExtra(suggestion, "rankValue");
                if (TextUtils.isEmpty(rankValue)) {
                    rankValue = "#";
                }
                serverId = getSuggestionExtra(suggestion, "serverId");
                if (!TextUtils.isEmpty(serverId)) {
                    if (!arrayList.contains(serverId)) {
                        arrayList.add(serverId);
                    }
                    if (!rankValues.contains(rankValue)) {
                        rankValues.add(rankValue);
                    }
                    serverIdToRankValueMap.put(serverId, rankValue);
                    title = suggestion.getSuggestionTitle();
                    if (!TextUtils.isEmpty(title)) {
                        serverIdToTitleMap.put(serverId, title);
                    }
                }
            }
            rankValues.remove("#");
            if ("DESC".equals(rankInfo.getOrder())) {
                rankValues.add(0, "#");
            } else {
                rankValues.add("#");
            }
            Map<String, SparseIntArray> rankValueIndexMap = new HashMap();
            Cursor cursor = null;
            try {
                int i;
                cursor = SearchImageResultHelper.this.mContext.getContentResolver().query(getQueryUri(false), SearchImageResultHelper.QUERY_PROJECTION, appendNotInSecretSelection(selection), null, null);
                if (cursor != null && cursor.getCount() > 0) {
                    for (i = 0; i < cursor.getCount(); i++) {
                        cursor.moveToPosition(i);
                        serverId = cursor.getString(12);
                        rankValue = (String) serverIdToRankValueMap.get(serverId);
                        if (!TextUtils.isEmpty(rankValue)) {
                            if (rankValueIndexMap.get(rankValue) == null) {
                                rankValueIndexMap.put(rankValue, new SparseIntArray());
                            }
                            ((SparseIntArray) rankValueIndexMap.get(rankValue)).put(arrayList.indexOf(serverId), i);
                        }
                    }
                }
                if (rankValueIndexMap.size() > 0) {
                    List<SuggestionSection> groups = new ArrayList(rankValueIndexMap.size());
                    List<Long> groupIds = new ArrayList();
                    List<String> titles = new ArrayList();
                    for (String groupRankValue : rankValues) {
                        SparseIntArray indexes = (SparseIntArray) rankValueIndexMap.get(groupRankValue);
                        if (indexes != null && indexes.size() > 0) {
                            MatrixCursor imageGroupCursor = new MatrixCursor(SearchImageResultHelper.OUT_PROJECTION);
                            for (i = 0; i < indexes.size(); i++) {
                                cursor.moveToPosition(indexes.valueAt(i));
                                groupIds.add(Long.valueOf(cursor.getLong(0)));
                                title = (String) serverIdToTitleMap.get(cursor.getString(12));
                                if (!(TextUtils.isEmpty(title) || titles.contains(title))) {
                                    titles.add(title);
                                }
                                imageGroupCursor.addRow(toRow(cursor, "visible"));
                                SearchLog.e("ImageResultProcessor", "On add image " + cursor.getString(12));
                            }
                            groups.add(toSection(queryInfo, imageGroupCursor, null, null, TextUtils.join(SearchImageResultHelper.TITLE_SEPARATOR, titles), null, groupRankValue, null, groupIds));
                            groupIds.clear();
                            titles.clear();
                        }
                    }
                    ImageResultSuggestionCursor imageResultSuggestionCursor = new ImageResultSuggestionCursor(queryInfo, groups, false);
                    imageResultSuggestionCursor.setNotificationUri(SearchImageResultHelper.this.mContext.getContentResolver(), cursor.getNotificationUri());
                    return imageResultSuggestionCursor;
                }
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }

        private void doExpandableFirstStepQuery(String selection, ArrayList<String> outLocations, List<Long> outIds, List<Integer> outCreateDates) {
            long startTime = System.currentTimeMillis();
            Cursor cursor = null;
            try {
                cursor = SearchImageResultHelper.this.mContext.getContentResolver().query(getQueryUri(true), SearchImageResultHelper.QUERY_PROJECTION, appendNotInSecretSelection(selection), null, "alias_create_time DESC ");
                if (cursor != null && cursor.getCount() > 0) {
                    outLocations.addAll(cursor.getExtras().getStringArrayList("extra_timeline_group_start_locations"));
                    ArrayList<Integer> groupStartPos = cursor.getExtras().getIntegerArrayList("extra_timeline_group_start_pos");
                    if (cursor.moveToFirst()) {
                        do {
                            outIds.add(Long.valueOf(cursor.getLong(0)));
                        } while (cursor.moveToNext());
                    }
                    Iterator it = groupStartPos.iterator();
                    while (it.hasNext()) {
                        cursor.moveToPosition(((Integer) it.next()).intValue());
                        outCreateDates.add(Integer.valueOf(cursor.getInt(2)));
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                SearchLog.d("ImageResultProcessor", "[%d]ms: first step query time for [%s]", Long.valueOf(System.currentTimeMillis() - startTime), selection);
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                SearchLog.d("ImageResultProcessor", "[%d]ms: first step query time for [%s]", Long.valueOf(System.currentTimeMillis() - startTime), selection);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:31:0x0139  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private ImageResultSuggestionCursor doExpandableSecondStepQuery(QueryInfo queryInfo, RankInfo rankInfo, List<Integer> createDates, ArrayList<String> collapsedGroupLocations, List<Long> collapsedVisibleIds) {
            Throwable th;
            long startTime = System.currentTimeMillis();
            ImageResultSuggestionCursor suggestionCursor = null;
            String selection = String.format("%s IN (%s)", new Object[]{"alias_create_date", TextUtils.join(",", createDates.toArray())});
            Cursor cursor = null;
            try {
                cursor = SearchImageResultHelper.this.mContext.getContentResolver().query(getQueryUri(true), SearchImageResultHelper.QUERY_PROJECTION, appendNotInSecretSelection(selection), null, "alias_create_time DESC ");
                if (cursor != null && cursor.getCount() > 0) {
                    ArrayList<String> expandedGroupLocations = cursor.getExtras().getStringArrayList("extra_timeline_group_start_locations");
                    ArrayList<Integer> groupStartPos = cursor.getExtras().getIntegerArrayList("extra_timeline_group_start_pos");
                    List<SuggestionSection> arrayList = new ArrayList(groupStartPos.size());
                    MatrixCursor imageGroupCursor = new MatrixCursor(SearchImageResultHelper.OUT_PROJECTION);
                    List<Long> groupVisibleIds = new ArrayList();
                    List<Long> groupAllIds = new ArrayList();
                    int i = 0;
                    while (i < cursor.getCount()) {
                        cursor.moveToPosition(i);
                        long tempId = cursor.getLong(0);
                        groupAllIds.add(Long.valueOf(tempId));
                        if (collapsedVisibleIds.contains(Long.valueOf(tempId))) {
                            groupVisibleIds.add(Long.valueOf(tempId));
                        }
                        imageGroupCursor.addRow(toRow(cursor, collapsedVisibleIds.contains(Long.valueOf(tempId)) ? "visible" : "invisible"));
                        i++;
                        if (groupStartPos.contains(Integer.valueOf(i)) || i == cursor.getCount()) {
                            int groupIndex = i == cursor.getCount() ? groupStartPos.size() - 1 : groupStartPos.indexOf(Integer.valueOf(i)) - 1;
                            arrayList.add(toSection(queryInfo, imageGroupCursor, Long.valueOf(cursor.getLong(3)), (Integer) createDates.get(groupIndex), collapsedGroupLocations != null ? (String) collapsedGroupLocations.get(groupIndex) : null, expandedGroupLocations != null ? (String) expandedGroupLocations.get(groupIndex) : null, null, groupVisibleIds, groupAllIds));
                            imageGroupCursor = new MatrixCursor(SearchImageResultHelper.OUT_PROJECTION);
                            groupVisibleIds.clear();
                            groupAllIds.clear();
                        }
                    }
                    SparseBooleanArray oldExpandStates = null;
                    SuggestionCursor oldCursor = SearchImageResultHelper.this.getResult() != null ? SearchImageResultHelper.this.getResult().getData() : null;
                    if (oldCursor != null) {
                        oldExpandStates = ((ImageResultSuggestionCursor) oldCursor).getGroupExpandStateArray();
                    }
                    if (oldExpandStates == null) {
                        oldExpandStates = this.mCachedGroupExpandState;
                    }
                    this.mCachedGroupExpandState = oldExpandStates;
                    ImageResultSuggestionCursor imageResultSuggestionCursor = new ImageResultSuggestionCursor(queryInfo, arrayList, SearchImageResultHelper.this.mSupportExpand, this.mCachedGroupExpandState);
                    try {
                        imageResultSuggestionCursor.setNotificationUri(SearchImageResultHelper.this.mContext.getContentResolver(), cursor.getNotificationUri());
                        if (rankInfo != null) {
                            imageResultSuggestionCursor.setExtras(createRankInfoBundle(rankInfo));
                        }
                        suggestionCursor = imageResultSuggestionCursor;
                    } catch (Throwable th2) {
                        th = th2;
                        suggestionCursor = imageResultSuggestionCursor;
                        if (cursor != null) {
                        }
                        SearchLog.d("ImageResultProcessor", "[%d]ms: second step query time for [%s]", Long.valueOf(System.currentTimeMillis() - startTime), selection);
                        throw th;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                SearchLog.d("ImageResultProcessor", "[%d]ms: second step query time for [%s]", Long.valueOf(System.currentTimeMillis() - startTime), selection);
                return suggestionCursor;
            } catch (Throwable th3) {
                th = th3;
                if (cursor != null) {
                    cursor.close();
                }
                SearchLog.d("ImageResultProcessor", "[%d]ms: second step query time for [%s]", Long.valueOf(System.currentTimeMillis() - startTime), selection);
                throw th;
            }
        }

        private Uri getQueryUri(boolean generateHeader) {
            return Media.URI.buildUpon().appendQueryParameter("generate_headers", String.valueOf(generateHeader)).build();
        }

        private String appendNotInSecretSelection(String selection) {
            return String.format("(%s) AND (%s != %s)", new Object[]{selection, "localGroupId", Long.valueOf(-1000)});
        }

        private String getSuggestionsServerIdSelection(List<Suggestion> suggestions) {
            StringBuilder serverIdBuilder = new StringBuilder();
            for (Suggestion suggestion : suggestions) {
                String serverId = getSuggestionExtra(suggestion, "serverId");
                if (serverId != null) {
                    serverIdBuilder.append("'").append(serverId).append("',");
                }
            }
            if (serverIdBuilder.length() > 0) {
                serverIdBuilder.deleteCharAt(serverIdBuilder.length() - 1);
                serverIdBuilder.insert(0, "serverId IN (").append(")");
            }
            return serverIdBuilder.toString();
        }

        private BaseSuggestionSection toSection(QueryInfo queryInfo, Cursor items, Long createTime, Integer createDate, String title, String expandedTitle, String rankValue, List<Long> visibleIds, List<Long> allIds) {
            BaseSuggestionSection section = new BaseSuggestionSection(queryInfo, SectionType.SECTION_TYPE_IMAGE_LIST.getName(), new CursorBackedSuggestionCursor(queryInfo, items));
            Map<String, String> sectionExtra = new HashMap();
            sectionExtra.put("all_ids", TextUtils.join(",", allIds));
            if (createDate != null) {
                sectionExtra.put("create_date", createDate.toString());
            }
            if (createTime != null) {
                sectionExtra.put("create_time", String.valueOf(createTime));
            }
            if (title != null) {
                sectionExtra.put("title", title);
            }
            if (rankValue != null) {
                sectionExtra.put("rank_value", rankValue);
            }
            if (visibleIds != null) {
                sectionExtra.put("collapse_visible_ids", TextUtils.join(",", visibleIds));
            }
            if (expandedTitle != null) {
                sectionExtra.put("expand_title", expandedTitle);
            }
            section.setSectionExtras(new MapBackedSuggestionExtras(sectionExtra));
            return section;
        }

        private Object[] toRow(Cursor cursor, String collapseVisibility) {
            Object[] objects = new Object[SearchImageResultHelper.OUT_PROJECTION.length];
            objects[0] = Long.valueOf(cursor.getLong(0));
            objects[1] = cursor.getString(1);
            objects[2] = Integer.valueOf(cursor.getInt(2));
            objects[3] = Long.valueOf(cursor.getLong(3));
            objects[4] = cursor.getString(4);
            objects[5] = cursor.getString(5);
            objects[6] = Integer.valueOf(cursor.getInt(6));
            objects[7] = Long.valueOf(cursor.getLong(7));
            objects[8] = cursor.getString(8);
            objects[9] = Integer.valueOf(cursor.getInt(9));
            objects[10] = cursor.getString(10);
            objects[11] = cursor.getString(11);
            objects[12] = cursor.getString(12);
            objects[13] = cursor.getString(13);
            objects[14] = cursor.getString(14);
            objects[15] = Long.valueOf(cursor.getLong(15));
            objects[16] = collapseVisibility;
            return objects;
        }

        protected BaseSuggestion toSuggestion(Suggestion suggestion) {
            BaseSuggestion imageSuggestion = super.toSuggestion(suggestion);
            if (imageSuggestion != null) {
                MapBackedSuggestionExtras extras = new MapBackedSuggestionExtras("serverId", Uri.parse(imageSuggestion.getIntentActionURI()).getQueryParameter("serverId"));
                if (!(suggestion.getSuggestionExtras() == null || suggestion.getSuggestionExtras().getExtraColumnNames() == null)) {
                    for (String column : suggestion.getSuggestionExtras().getExtraColumnNames()) {
                        extras.putExtra(column, suggestion.getSuggestionExtras().getExtra(column));
                    }
                }
                imageSuggestion.setSuggestionExtras(extras);
            }
            return imageSuggestion;
        }

        protected boolean supportExpand(RankInfo rankInfo) {
            return SearchImageResultHelper.this.mSupportExpand && (rankInfo == null || "date".equals(rankInfo.getName()));
        }

        protected String getSuggestionExtra(Suggestion suggestion, String columnName) {
            return (suggestion == null || suggestion.getSuggestionExtras() == null) ? null : suggestion.getSuggestionExtras().getExtra(columnName);
        }
    }

    public SearchImageResultHelper(Context context, QueryInfo queryInfo, boolean supportExpand, SuggestionSection section) {
        super(queryInfo, section);
        this.mContext = context;
        this.mSupportExpand = supportExpand;
    }

    public SearchImageResultHelper(Context context, QueryInfo queryInfo, boolean supportExpand, GroupedSuggestionCursor<SuggestionSection> sections) {
        super(queryInfo, (GroupedSuggestionCursor) sections);
        this.mContext = context;
        this.mSupportExpand = supportExpand;
    }

    protected ResultProcessor<SuggestionResult> createFilterProcessor() {
        return new FilterProcessor();
    }

    protected ImageResultProcessor createDataListResultProcessor(RankInfo rankInfo) {
        return new ImageResultProcessor(rankInfo);
    }

    protected int getDataLoadCount(QueryInfo queryInfo) {
        if (queryInfo.getSearchType() == SearchType.SEARCH_TYPE_FEEDBACK_LIKELY_RESULT) {
            return SearchConfig.get().getResultConfig().getLikelyImageLoadCount();
        }
        return SearchConfig.get().getResultConfig().getImageLoadCount();
    }
}
