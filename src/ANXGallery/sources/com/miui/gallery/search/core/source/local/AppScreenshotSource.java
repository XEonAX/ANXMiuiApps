package com.miui.gallery.search.core.source.local;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.Common;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.SearchContract.Icon;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.suggestion.BaseSuggestion;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class AppScreenshotSource extends LocalCacheBackedSuggestionSource<List<Pair<String, Suggestion>>> {
    private static final Uri CONTENT_URI = Media.URI_OWNER_ALBUM_MEDIA;
    private static final String[] PROJECTION = new String[]{"_id", "alias_clear_thumbnail", "location"};

    public AppScreenshotSource(Context context) {
        super(context);
    }

    public String getName() {
        return "local_app_screenshot_source";
    }

    protected boolean isFatalCondition(QueryInfo queryInfo, int status) {
        return super.isFatalCondition(queryInfo, status) || status == 14;
    }

    public List<Pair<String, Suggestion>> loadContent() {
        if (getScreenshotAlbumId() == null) {
            return null;
        }
        return (List) SafeDBUtil.safeQuery(this.mContext, CONTENT_URI, PROJECTION, "localGroupId = ? AND location NOT NULL AND title like '?%'", new String[]{getScreenshotAlbumId().toString(), "Screenshot"}, "alias_create_time DESC", new QueryHandler<List<Pair<String, Suggestion>>>() {
            public List<Pair<String, Suggestion>> handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return null;
                }
                List<Pair<String, Suggestion>> content = new ArrayList();
                Set<String> appNames = new HashSet();
                do {
                    String appName = cursor.getString(2);
                    if (!(TextUtils.isEmpty(appName) || appNames.contains(appName))) {
                        content.add(new Pair(appName.toLowerCase(), AppScreenshotSource.this.createAppScreenshotSuggestion(appName, cursor)));
                        appNames.add(appName);
                    }
                } while (cursor.moveToNext());
                return content;
            }
        });
    }

    public Uri getContentUri() {
        return CONTENT_URI;
    }

    protected List<Suggestion> handleQuery(List<Pair<String, Suggestion>> cache, String query, QueryInfo queryInfo) {
        if (!BaseMiscUtil.isValid(cache)) {
            return null;
        }
        List<Suggestion> arrayList = new ArrayList();
        for (Pair<String, Suggestion> suggestionPair : cache) {
            if (((String) suggestionPair.first).contains(query)) {
                arrayList.add(suggestionPair.second);
            }
        }
        return arrayList;
    }

    protected SectionType getSectionType() {
        return SectionType.SECTION_TYPE_APP_SCREENSHOT;
    }

    private Long getScreenshotAlbumId() {
        return (Long) SafeDBUtil.safeQuery(this.mContext, Cloud.CLOUD_URI, new String[]{"_id"}, "serverId=? AND (serverType=0)", new String[]{String.valueOf(2)}, null, new QueryHandler<Long>() {
            public Long handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return null;
                }
                return Long.valueOf(cursor.getLong(0));
            }
        });
    }

    private Suggestion createAppScreenshotSuggestion(String appName, Cursor cursor) {
        BaseSuggestion suggestion = new BaseSuggestion();
        suggestion.setSuggestionTitle(appName);
        String coverPath = cursor.getString(1);
        if (TextUtils.isEmpty(coverPath)) {
            coverPath = Icon.LOCAL_IMAGE_URI.buildUpon().appendQueryParameter("id", cursor.getString(0)).build().toString();
        } else {
            coverPath = Scheme.FILE.wrap(coverPath);
        }
        suggestion.setSuggestionIcon(coverPath);
        suggestion.setIntentActionURI(Common.URI_ALBUM_PAGE.buildUpon().appendQueryParameter("serverId", String.valueOf(2)).appendQueryParameter("screenshotAppName", appName).toString());
        return suggestion;
    }
}
