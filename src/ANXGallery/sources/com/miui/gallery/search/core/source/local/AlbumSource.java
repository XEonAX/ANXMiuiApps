package com.miui.gallery.search.core.source.local;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.Pair;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.Common;
import com.miui.gallery.search.SearchConstants.SectionType;
import com.miui.gallery.search.SearchContract.Icon;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.suggestion.BaseSuggestion;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.miui.gallery.util.AlbumsCursorHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.util.ArrayList;
import java.util.List;

public class AlbumSource extends LocalCacheBackedSuggestionSource<List<Pair<String, Suggestion>>> {
    private static final Uri CONTENT_URI = Album.URI_ALL_EXCEPT_DELETED;
    private final String[] PROJECTION = new String[]{"_id", "serverId", "name", "cover_id", "cover_path"};
    private final String[] SHARE_PROJECTION = new String[]{"_id", "creatorId"};

    public AlbumSource(Context context) {
        super(context);
    }

    public String getName() {
        return "local_album_source";
    }

    protected boolean isFatalCondition(QueryInfo queryInfo, int status) {
        return super.isFatalCondition(queryInfo, status) || status == 14;
    }

    public List<Pair<String, Suggestion>> loadContent() {
        return (List) SafeDBUtil.safeQuery(this.mContext, CONTENT_URI, this.PROJECTION, null, null, null, new QueryHandler<List<Pair<String, Suggestion>>>() {
            public List<Pair<String, Suggestion>> handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return null;
                }
                LongSparseArray<String> shareAlbumInfo = AlbumSource.this.getShareAlbumInfo();
                List<Pair<String, Suggestion>> albums = new ArrayList(cursor.getCount());
                do {
                    String albumName = AlbumsCursorHelper.getAlbumName(AlbumSource.this.mContext, cursor.getLong(0), cursor.getString(1), cursor.getString(2));
                    if (!TextUtils.isEmpty(albumName)) {
                        Suggestion suggestion = AlbumSource.this.createAlbumSuggestion(albumName, cursor, shareAlbumInfo);
                        if (suggestion != null) {
                            albums.add(new Pair(albumName.toLowerCase(), suggestion));
                        }
                    }
                } while (cursor.moveToNext());
                return albums;
            }
        });
    }

    private LongSparseArray<String> getShareAlbumInfo() {
        return (LongSparseArray) SafeDBUtil.safeQuery(this.mContext, Album.URI_SHARE_ALL, this.SHARE_PROJECTION, null, null, null, new QueryHandler<LongSparseArray<String>>() {
            public LongSparseArray<String> handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return null;
                }
                LongSparseArray<String> result = new LongSparseArray();
                do {
                    if (cursor.getLong(0) >= 2147383647) {
                        result.append(cursor.getLong(0), cursor.getString(1));
                    }
                } while (cursor.moveToNext());
                return result;
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
        for (Pair<String, Suggestion> album : cache) {
            if (((String) album.first).contains(query)) {
                arrayList.add(album.second);
            }
        }
        return arrayList;
    }

    protected SectionType getSectionType() {
        return SectionType.SECTION_TYPE_ALBUM;
    }

    private Suggestion createAlbumSuggestion(String albumName, Cursor cursor, LongSparseArray<String> shareAlbumInfo) {
        long id = cursor.getLong(0);
        if (id == 2147483646) {
            return null;
        }
        Suggestion suggestion = new BaseSuggestion();
        suggestion.setSuggestionSource(this);
        suggestion.setSuggestionTitle(albumName);
        Builder actionUriBuilder = Common.URI_ALBUM_PAGE.buildUpon();
        String serverId = cursor.getString(1);
        if (TextUtils.isEmpty(serverId)) {
            actionUriBuilder.appendQueryParameter("id", String.valueOf(id));
        } else {
            actionUriBuilder.appendQueryParameter("serverId", serverId);
            if (!TextUtils.isEmpty((CharSequence) shareAlbumInfo.get(id))) {
                actionUriBuilder.appendQueryParameter("creatorId", (String) shareAlbumInfo.get(id));
            }
        }
        suggestion.setIntentActionURI(actionUriBuilder.build().toString());
        String cover = cursor.getString(4);
        if (TextUtils.isEmpty(cover)) {
            long coverId = cursor.getLong(3);
            if (coverId < 0) {
                return suggestion;
            }
            suggestion.setSuggestionIcon(Icon.LOCAL_IMAGE_URI.buildUpon().appendQueryParameter("id", String.valueOf(coverId)).build().toString());
            return suggestion;
        }
        suggestion.setSuggestionIcon(Scheme.FILE.wrap(cover));
        return suggestion;
    }
}
