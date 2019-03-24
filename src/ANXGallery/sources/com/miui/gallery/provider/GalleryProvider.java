package com.miui.gallery.provider;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.OperationApplicationException;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.MergeCursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.picker.helper.PickerSqlHelper;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.CloudUser;
import com.miui.gallery.provider.GalleryContract.ExtendedCloud;
import com.miui.gallery.provider.GalleryContract.Favorites;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.provider.GalleryContract.RecentDiscoveredMedia;
import com.miui.gallery.provider.GalleryContract.ShareUser;
import com.miui.gallery.provider.cache.MediaManager;
import com.miui.gallery.provider.cache.MediaManager.InitializeListener;
import com.miui.gallery.provider.cloudmanager.CloudManager;
import com.miui.gallery.provider.deprecated.GalleryCloudProvider;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.Numbers;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.SyncUtil.Request.Builder;
import com.miui.gallery.util.UriUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import miui.util.PlayerActions.Out;

public class GalleryProvider extends GalleryCloudProvider {
    private ContentResolver mContentResolver;
    private InitializeListener mInitializeListener = new InitializeListener() {
        public void onProgressUpdate() {
            GalleryProvider.this.notifyChange(Cloud.CLOUD_URI, null, null);
        }
    };

    private class ContentResolver extends GalleryContentResolver {
        private ContentResolver() {
        }

        /* synthetic */ ContentResolver(GalleryProvider x0, AnonymousClass1 x1) {
            this();
        }

        protected Object matchUri(Uri uri) {
            return Integer.valueOf(GalleryProvider.sUriMatcher.match(uri));
        }

        protected void notifyInternal(Uri uri, ContentObserver observer, boolean sync, int syncReason) {
            switch (GalleryProvider.sUriMatcher.match(uri)) {
                case 56:
                case 58:
                case 68:
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Cloud.CLOUD_URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Album.URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Media.URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Media.URI_OWNER_ALBUM_MEDIA, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Media.URI_ALL, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Media.URI_OTHER_ALBUM_MEDIA, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(PeopleFace.ONE_PERSON_URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(RecentDiscoveredMedia.URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(RecentDiscoveredMedia.URI_COVER, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(PeopleFace.PERSONS_URI, observer, false);
                    break;
                case 57:
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Album.URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Media.URI_OTHER_ALBUM_MEDIA, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Media.URI_ALL, observer, false);
                    break;
                case 63:
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(PeopleFace.PERSONS_URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(PeopleFace.IGNORE_PERSONS_URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(PeopleFace.ONE_PERSON_URI, observer, false);
                    break;
                case 66:
                case 71:
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(ShareUser.SHARE_USER_URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Album.URI_SHARE_ALL, observer, false);
                    break;
                case 72:
                case 73:
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(CloudUser.CLOUD_USER_URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Album.URI_SHARE_ALL, observer, false);
                    break;
                case 77:
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(RecentDiscoveredMedia.URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(RecentDiscoveredMedia.URI_COVER, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Album.URI, observer, false);
                    break;
                case BaiduSceneResult.BASKETBALL /*85*/:
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Favorites.URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Album.URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Media.URI, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Media.URI_OWNER_ALBUM_MEDIA, observer, false);
                    GalleryProvider.this.getContext().getContentResolver().notifyChange(Media.URI_ALL, observer, false);
                    break;
            }
            if (sync) {
                SyncUtil.requestSync(GalleryProvider.this.getContext(), new Builder().setSyncType(SyncType.NORMAL).setSyncReason(syncReason).setDelayUpload(true).build());
            }
        }
    }

    static {
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", Out.KEY_ALBUM, 50);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "media", 51);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "media/#", 52);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "album_media", 53);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "share_album_media/#", 64);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "persons", 54);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "ignore_persons", 82);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "person", 55);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "gallery_cloud", 56);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "gallery_cloud/#", 58);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloud_owner_sububi/#", 59);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "share_image", 57);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "share_image/#", 60);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "share_image_sububi/#", 61);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "person_recommend", 62);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "peopleFace", 63);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloud_and_share", 65);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "owner_and_other_album", 66);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "other_share_album", 67);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloud_write_bulk_notify", 68);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "person_item", 69);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "share_user", 70);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "share_user/#", 71);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloud_user", 72);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloud_user/#", 73);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "people_face_cover", 74);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "discovery_message", 75);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "discovery_message/#", 76);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "recent_discovered_media", 77);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "recent_discovered_cover", 78);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloudControl", 79);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloudControl/#", 80);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "people_cover", 81);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "image_face", 83);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "people_tag", 84);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "favorites", 85);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "extended_cloud", 86);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "pick_cloud_and_share", 87);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "persons_item", 88);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "month_media", 89);
    }

    public boolean onCreate() {
        super.onCreate();
        this.mContentResolver = new ContentResolver(this, null);
        this.mMediaManager = MediaManager.getInstance();
        this.mMediaManager.addInitializeListener(this.mInitializeListener);
        this.mMediaManager.load(sDBHelper);
        return true;
    }

    private boolean isBlockedByMediaManager(int uriCode) {
        switch (uriCode) {
            case 79:
            case BaiduSceneResult.SKI /*80*/:
                return false;
            default:
                return true;
        }
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String orderBy) {
        SQLiteDatabase db = sDBHelper.getReadableDatabase();
        Cursor cursor = null;
        int matchResult = sUriMatcher.match(uri);
        boolean z;
        boolean removeDuplicateItems;
        boolean removeProcessingItems;
        Bundle bundle;
        String localId;
        switch (matchResult) {
            case 50:
                boolean joinVideo = uri.getBooleanQueryParameter("join_video", false);
                boolean joinFace = uri.getBooleanQueryParameter("join_face", false);
                boolean joinShare = uri.getBooleanQueryParameter("join_share", false);
                boolean joinPano = uri.getBooleanQueryParameter("join_pano", false);
                boolean joinRecent = uri.getBooleanQueryParameter("join_recent", false);
                boolean joinFavorites = uri.getBooleanQueryParameter("join_favorites", false);
                boolean excludeEmptyAlbum = uri.getBooleanQueryParameter("exclude_empty_album", false);
                boolean queryAllExistAlbum = uri.getBooleanQueryParameter("all_except_deleted", false);
                boolean fillCovers = uri.getBooleanQueryParameter("fill_covers", true);
                boolean stubForVirtualAlbums = uri.getBooleanQueryParameter("stub_for_virtual_albums", false);
                String mediaTypeString = uri.getQueryParameter("media_type");
                cursor = AlbumManager.query(db, projection, selection, selectionArgs, orderBy, joinVideo, joinFace, joinShare, joinPano, joinRecent, joinFavorites, excludeEmptyAlbum, queryAllExistAlbum, uri.getBooleanQueryParameter("remove_duplicate_items", false), mediaTypeString == null ? null : Integer.valueOf(mediaTypeString), fillCovers, stubForVirtualAlbums, UriUtil.getLimit(uri));
                z = false;
                break;
            case 51:
            case 65:
            case BaiduSceneResult.BOWLING /*89*/:
                this.mMediaManager.ensureMinimumPartDone();
                removeDuplicateItems = uri.getBooleanQueryParameter("remove_duplicate_items", false);
                z = uri.getBooleanQueryParameter("generate_headers", false);
                removeProcessingItems = uri.getBooleanQueryParameter("remove_processing_items", false);
                bundle = new Bundle();
                bundle.putBoolean("extra_generate_header", z);
                bundle.putInt("extra_media_group_by", matchResult == 89 ? 1 : 0);
                if (removeProcessingItems) {
                    selection = buildNonProcessingSelection(selection);
                }
                cursor = this.mMediaManager.query(projection, selection, selectionArgs, orderBy, removeDuplicateItems ? "sha1" : null, bundle);
                if (cursor != null) {
                    registerNotifyUri(cursor, matchResult);
                }
                if (matchResult == 65) {
                    Cursor shareMediaCursor = ShareMediaManager.query(db, projection, selection, selectionArgs, "sha1", orderBy);
                    if (shareMediaCursor != null) {
                        registerNotifyUri(shareMediaCursor, matchResult);
                    }
                    cursor = new MergeCursor(new Cursor[]{cursor, shareMediaCursor});
                }
                return cursor;
            case 53:
                removeDuplicateItems = uri.getBooleanQueryParameter("remove_duplicate_items", false);
                z = uri.getBooleanQueryParameter("generate_headers", false);
                removeProcessingItems = uri.getBooleanQueryParameter("remove_processing_items", false);
                bundle = new Bundle();
                bundle.putBoolean("extra_generate_header", z);
                if (removeProcessingItems) {
                    selection = buildNonProcessingSelection(selection);
                }
                cursor = this.mMediaManager.query(projection, selection, selectionArgs, orderBy, removeDuplicateItems ? "sha1" : null, bundle);
                break;
            case 54:
                cursor = GalleryCloudProvider.rawQuery(FaceManager.buildPersonsQuery(), null);
                z = false;
                break;
            case 55:
                cursor = GalleryCloudProvider.rawQuery(FaceManager.buildOnePersonQuery(projection, selection, orderBy, selectionArgs[0], selectionArgs[1]), null);
                z = false;
                break;
            case 56:
                cursor = db.query(UriUtil.getDistinct(uri), "cloud", projection, selection, selectionArgs, UriUtil.getGroupBy(uri), UriUtil.getHaving(uri), orderBy, UriUtil.getLimit(uri));
                z = false;
                break;
            case 57:
                cursor = db.query(UriUtil.getDistinct(uri), "shareImage", projection, selection, selectionArgs, UriUtil.getGroupBy(uri), UriUtil.getHaving(uri), orderBy, UriUtil.getLimit(uri));
                z = false;
                break;
            case 58:
                localId = String.valueOf(ContentUris.parseId(uri));
                cursor = db.query("cloud", projection, parseSelection(selection, "_id = %s", new String[]{localId}), selectionArgs, null, null, orderBy);
                z = false;
                break;
            case 59:
                localId = uri.getLastPathSegment();
                z = false;
                break;
            case 60:
                cursor = db.query("shareImage", projection, parseSelection(selection, "_id = %s", new String[]{uri.getLastPathSegment()}), selectionArgs, null, null, orderBy);
                z = false;
                break;
            case 61:
                localId = uri.getLastPathSegment();
                z = false;
                break;
            case 62:
                cursor = GalleryCloudProvider.rawQuery(FaceManager.buildRecommendFacesOfOnePersonQuery(projection, orderBy, selectionArgs[0]), null);
                z = false;
                break;
            case 63:
                cursor = db.query("peopleFace", projection, selection, selectionArgs, UriUtil.getGroupBy(uri), UriUtil.getHaving(uri), orderBy, UriUtil.getLimit(uri));
                z = false;
                break;
            case 64:
                localId = String.valueOf(ShareAlbumManager.getOriginalAlbumId(ContentUris.parseId(uri)));
                cursor = ShareMediaManager.query(db, projection, parseSelection(selection, "localGroupId = %s", new String[]{localId}), selectionArgs, uri.getBooleanQueryParameter("remove_duplicate_items", false) ? "sha1" : null, orderBy);
                z = false;
                break;
            case 66:
                cursor = ShareAlbumManager.query(getContext(), db, projection, selection, selectionArgs, orderBy);
                z = false;
                break;
            case 67:
                cursor = db.query("shareAlbum", projection, selection, selectionArgs, null, null, orderBy);
                z = false;
                break;
            case 69:
                cursor = GalleryCloudProvider.rawQuery(FaceManager.buildOnePersonItemQuery(projection, selectionArgs[0]), null);
                z = false;
                break;
            case 70:
                cursor = db.query(UriUtil.getDistinct(uri), "shareUser", projection, selection, selectionArgs, UriUtil.getGroupBy(uri), UriUtil.getHaving(uri), orderBy, UriUtil.getLimit(uri));
                z = false;
                break;
            case 72:
                cursor = db.query(UriUtil.getDistinct(uri), "cloudUser", projection, selection, selectionArgs, UriUtil.getGroupBy(uri), UriUtil.getHaving(uri), orderBy, UriUtil.getLimit(uri));
                z = false;
                break;
            case 74:
                cursor = AlbumManager.queryFaceAlbumCover(db);
                z = false;
                break;
            case 75:
                cursor = db.query(UriUtil.getDistinct(uri), "discoveryMessage", projection, selection, selectionArgs, UriUtil.getGroupBy(uri), UriUtil.getHaving(uri), orderBy, UriUtil.getLimit(uri));
                z = false;
                break;
            case 76:
                cursor = db.query("discoveryMessage", projection, parseSelection(selection, "_id = %s", new String[]{uri.getLastPathSegment()}), selectionArgs, null, null, orderBy);
                z = false;
                break;
            case 77:
                removeDuplicateItems = uri.getBooleanQueryParameter("remove_duplicate_items", false);
                z = uri.getBooleanQueryParameter("generate_headers", false);
                if (uri.getBooleanQueryParameter("remove_processing_items", false)) {
                    selection = buildNonProcessingSelection(selection);
                }
                cursor = RecentDiscoveryMediaManager.query(db, projection, selection, selectionArgs, UriUtil.getGroupBy(uri), orderBy, removeDuplicateItems, z);
                break;
            case 78:
                int coverCount;
                removeDuplicateItems = uri.getBooleanQueryParameter("remove_duplicate_items", false);
                try {
                    coverCount = Integer.parseInt(uri.getQueryParameter("album_cover_count"));
                } catch (NumberFormatException e) {
                    Log.e("GalleryProvider", e.getMessage());
                    coverCount = 1;
                }
                cursor = RecentDiscoveryMediaManager.queryAlbumCover(db, coverCount, removeDuplicateItems);
                z = false;
                break;
            case 79:
                cursor = db.query(UriUtil.getDistinct(uri), "cloudControl", projection, selection, selectionArgs, UriUtil.getGroupBy(uri), UriUtil.getHaving(uri), orderBy, UriUtil.getLimit(uri));
                z = false;
                break;
            case BaiduSceneResult.SKI /*80*/:
                localId = String.valueOf(ContentUris.parseId(uri));
                cursor = db.query("cloudControl", projection, parseSelection(selection, "_id = %s", new String[]{localId}), selectionArgs, null, null, orderBy);
                z = false;
                break;
            case BaiduSceneResult.SWIM /*81*/:
                cursor = GalleryCloudProvider.rawQuery(FaceManager.buildPeopleCoverQuery(projection, uri.getQueryParameter("serverId"), uri.getQueryParameter("_id")), null);
                z = false;
                break;
            case BaiduSceneResult.FITNESS /*82*/:
                cursor = GalleryCloudProvider.rawQuery(FaceManager.buildIgnorePersonsQuery(), null);
                z = false;
                break;
            case BaiduSceneResult.RUN /*83*/:
                cursor = GalleryCloudProvider.rawQuery(FaceManager.buildImageFaceQuery(projection, uri.getQueryParameter("serverId"), uri.getQueryParameter("image_server_id")), null);
                z = false;
                break;
            case BaiduSceneResult.FOOTBALL /*84*/:
                cursor = GalleryCloudProvider.rawQuery(FaceManager.buildPeopleTagQuery(), null);
                z = false;
                break;
            case BaiduSceneResult.BASKETBALL /*85*/:
                cursor = db.query(UriUtil.getDistinct(uri), "favorites", projection, selection, selectionArgs, UriUtil.getGroupBy(uri), UriUtil.getHaving(uri), orderBy, UriUtil.getLimit(uri));
                z = false;
                break;
            case BaiduSceneResult.TENNIS /*86*/:
                cursor = db.query(UriUtil.getDistinct(uri), "extended_cloud", projection, selection, selectionArgs, UriUtil.getGroupBy(uri), UriUtil.getHaving(uri), orderBy, UriUtil.getLimit(uri));
                z = false;
                break;
            case BaiduSceneResult.BADMINTON /*87*/:
                cursor = GalleryCloudProvider.rawQuery(PickerSqlHelper.buildPickerResultQuery(projection, selection, selectionArgs, UriUtil.getGroupBy(uri), orderBy), null);
                z = false;
                break;
            case 88:
                cursor = GalleryCloudProvider.rawQuery(FaceManager.buildPersonsItemQuery(projection, selection, orderBy, selectionArgs[0], selectionArgs[1]), null);
                z = false;
                break;
            default:
                cursor = super.query(uri, projection, selection, selectionArgs, orderBy);
                z = false;
                break;
        }
        if (cursor != null) {
            registerNotifyUri(cursor, matchResult);
        }
        return cursor;
    }

    private String buildNonProcessingSelection(String originalSelection) {
        List<String> paths = ProcessingMediaManager.queryProcessingMediaPaths();
        if (!BaseMiscUtil.isValid(paths)) {
            return originalSelection;
        }
        StringBuilder sb = new StringBuilder("localFile NOT IN (");
        for (int i = 0; i < paths.size(); i++) {
            if (!TextUtils.isEmpty((CharSequence) paths.get(i))) {
                DatabaseUtils.appendEscapedSQLString(sb, (String) paths.get(i));
                if (i != paths.size() - 1) {
                    sb.append(", ");
                }
            }
        }
        sb.append(")");
        return DatabaseUtils.concatenateWhere(originalSelection, sb.toString());
    }

    private String parseSelection(String selection, String selectionFormat, String[] selectionArgs) {
        return String.format(selectionFormat, (Object[]) selectionArgs) + (!TextUtils.isEmpty(selection) ? " AND (" + selection + ")" : "");
    }

    public Uri insert(Uri uri, ContentValues values) {
        int matchResult = sUriMatcher.match(uri);
        if (isBlockedByMediaManager(matchResult) && !this.mMediaManager.initialized()) {
            return null;
        }
        long id;
        SQLiteDatabase db = sDBHelper.getWritableDatabase();
        switch (matchResult) {
            case 56:
            case 57:
            case 63:
            case 68:
                id = doInsertWithNoNotify(uri, matchResult, values);
                break;
            case 70:
                id = db.insert("shareUser", null, values);
                break;
            case 72:
                id = db.insert("cloudUser", null, values);
                break;
            case 75:
                id = db.insert("discoveryMessage", null, values);
                break;
            case 77:
                id = db.insertWithOnConflict("recentDiscoveredMedia", null, values, 5);
                break;
            case 79:
                id = db.insertWithOnConflict("cloudControl", null, values, 5);
                break;
            case BaiduSceneResult.BASKETBALL /*85*/:
                id = db.insert("favorites", null, values);
                if (id > 0 && values.containsKey("sha1") && values.containsKey("isFavorite")) {
                    String sha1 = values.getAsString("sha1");
                    if (values.getAsInteger("isFavorite").intValue() > 0) {
                        this.mMediaManager.insertToFavorites(sha1);
                        break;
                    }
                }
                break;
            default:
                return super.insert(uri, values);
        }
        if (id != -1) {
            notifyChange(uri, null, values, 1);
        }
        return ContentUris.withAppendedId(uri, id);
    }

    private long doInsertWithNoNotify(Uri uri, int matchResult, ContentValues values) {
        SQLiteDatabase db = sDBHelper.getWritableDatabase();
        long id = -1;
        switch (matchResult) {
            case 56:
            case 68:
                db.beginTransactionNonExclusive();
                try {
                    id = onPreInsert(db, "cloud", values);
                    if (id == -1) {
                        id = db.insert("cloud", null, appendValuesForCloud(values, true));
                        if (id != -1) {
                            this.mMediaManager.insert(id, values);
                            if (values.containsKey("serverType") && Numbers.equals(values.getAsInteger("serverType"), 0)) {
                                Long attr = values.getAsLong("attributes");
                                this.mMediaManager.insertAttributes(id, attr == null ? 0 : attr.longValue());
                            }
                        }
                    }
                    db.setTransactionSuccessful();
                    return id;
                } finally {
                    db.endTransaction();
                }
            case 57:
                return db.insert("shareImage", null, appendValuesForCloud(values, true));
            case 63:
                return db.insert("peopleFace", null, appendValuesForCloud(values, true));
            case 77:
                return db.insertWithOnConflict("recentDiscoveredMedia", null, values, 5);
            default:
                return -1;
        }
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        int matchResult = sUriMatcher.match(uri);
        if (isBlockedByMediaManager(matchResult) && !this.mMediaManager.initialized()) {
            return 0;
        }
        int count;
        SQLiteDatabase db = sDBHelper.getWritableDatabase();
        switch (matchResult) {
            case 51:
                count = -1;
                break;
            case 52:
                count = -1;
                break;
            case 56:
            case 68:
                String selectById = genIDSelection(selection, selectionArgs);
                this.mMediaManager.delete(selectById, null);
                count = db.delete("cloud", selection, selectionArgs);
                if (count > 0) {
                    deleteAttributes(selectById);
                    break;
                }
                break;
            case 57:
                count = db.delete("shareImage", selection, selectionArgs);
                break;
            case 63:
                count = db.delete("peopleFace", selection, selectionArgs);
                break;
            case 70:
                count = db.delete("shareUser", selection, selectionArgs);
                break;
            case 72:
                count = db.delete("cloudUser", selection, selectionArgs);
                break;
            case 75:
                count = db.delete("discoveryMessage", selection, selectionArgs);
                break;
            case 77:
                count = db.delete("recentDiscoveredMedia", selection, selectionArgs);
                break;
            case 79:
                count = db.delete("cloudControl", selection, selectionArgs);
                break;
            case BaiduSceneResult.BASKETBALL /*85*/:
                List<String> sha1List = getSha1ListFromFavorites(selection, selectionArgs, true);
                count = db.delete("favorites", selection, selectionArgs);
                if (count > 0 && BaseMiscUtil.isValid(sha1List)) {
                    for (String sha1 : sha1List) {
                        this.mMediaManager.removeFromFavorites(sha1);
                    }
                    break;
                }
            default:
                return super.delete(uri, selection, selectionArgs);
        }
        if (count <= 0) {
            return count;
        }
        notifyChange(uri, null, null);
        return count;
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        boolean isFavorite = true;
        int matchResult = sUriMatcher.match(uri);
        if (isBlockedByMediaManager(matchResult) && !this.mMediaManager.initialized()) {
            return 0;
        }
        int count;
        SQLiteDatabase db = sDBHelper.getWritableDatabase();
        switch (matchResult) {
            case 56:
            case 68:
                appendValuesForCloud(values, false);
                String selectById = genIDSelection(selection, selectionArgs);
                if (values.containsKey("attributes")) {
                    updateAttributes(db, "cloud", selectById, values);
                }
                this.mMediaManager.update(selectById, null, values);
                count = db.update("cloud", values, selection, selectionArgs);
                break;
            case 57:
                count = db.update("shareImage", appendValuesForCloud(values, false), selection, selectionArgs);
                break;
            case 58:
                Set<String> keys = values.keySet();
                if (keys.size() == 1 && keys.contains("sync_status")) {
                    count = this.mMediaManager.update(genIDSelection(selection, selectionArgs), null, values);
                    break;
                }
                throw new IllegalArgumentException("only support key: sync_status");
                break;
            case 63:
                count = db.update("peopleFace", values, selection, selectionArgs);
                break;
            case 67:
                count = db.update("shareAlbum", values, selection, selectionArgs);
                break;
            case 70:
            case 71:
                count = db.update("shareUser", values, selection, selectionArgs);
                break;
            case 72:
            case 73:
                count = db.update("cloudUser", values, selection, selectionArgs);
                break;
            case 75:
            case 76:
                count = db.update("discoveryMessage", values, selection, selectionArgs);
                break;
            case 79:
            case BaiduSceneResult.SKI /*80*/:
                count = db.update("cloudControl", values, selection, selectionArgs);
                break;
            case BaiduSceneResult.BASKETBALL /*85*/:
                count = db.update("favorites", values, selection, selectionArgs);
                if (count > 0 && values.containsKey("isFavorite")) {
                    if (values.getAsInteger("isFavorite").intValue() <= 0) {
                        isFavorite = false;
                    }
                    for (String sha1 : getSha1ListFromFavorites(selection, selectionArgs, false)) {
                        if (isFavorite) {
                            this.mMediaManager.insertToFavorites(sha1);
                        } else {
                            this.mMediaManager.removeFromFavorites(sha1);
                        }
                    }
                    break;
                }
            default:
                count = super.update(uri, values, selection, selectionArgs);
                break;
        }
        if (count > 0 && needNotifyUpdate(matchResult, values)) {
            notifyChange(uri, null, values);
        }
        return count;
    }

    private boolean needNotifyUpdate(int matchResult, ContentValues values) {
        if (matchResult == 58 || matchResult == 63) {
            return true;
        }
        if (matchResult == 68 && (values.containsKey("sha1") || values.containsKey("specialTypeFlags"))) {
            return true;
        }
        if (matchResult == 85 && values.containsKey("sha1")) {
            return true;
        }
        return false;
    }

    public int bulkInsert(Uri uri, ContentValues[] values) {
        int matchResult = sUriMatcher.match(uri);
        if (isBlockedByMediaManager(matchResult) && !this.mMediaManager.initialized()) {
            return 0;
        }
        int rows = 0;
        if (values == null) {
            return 0;
        }
        SQLiteDatabase db = sDBHelper.getWritableDatabase();
        db.beginTransaction();
        ContentValues valuesInserted = null;
        int i = 0;
        while (i < values.length) {
            try {
                if (doInsertWithNoNotify(uri, matchResult, values[i]) != -1) {
                    rows++;
                    valuesInserted = values[i];
                }
                i++;
            } finally {
                db.endTransaction();
            }
        }
        db.setTransactionSuccessful();
        if (rows <= 0) {
            return rows;
        }
        notifyChange(uri, null, valuesInserted, 1);
        return rows;
    }

    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> operations) throws OperationApplicationException {
        if (!this.mMediaManager.initialized()) {
            return null;
        }
        SQLiteDatabase db = sDBHelper.getWritableDatabase();
        db.beginTransaction();
        try {
            ContentProviderResult[] results = super.applyBatch(operations);
            db.setTransactionSuccessful();
            return results;
        } finally {
            db.endTransaction();
        }
    }

    public Bundle call(String method, String arg, Bundle extras) {
        if (!this.mMediaManager.initialized()) {
            return null;
        }
        SQLiteDatabase db = sDBHelper.getWritableDatabase();
        if (!CloudManager.canHandle(method)) {
            return super.call(method, arg, extras);
        }
        Bundle result = CloudManager.call(getContext(), db, this.mMediaManager, method, arg, extras);
        notifyChange(Cloud.CLOUD_URI, null, result.getBoolean("should_request_sync"), result.getInt("sync_reason", 0));
        return result;
    }

    private static boolean shouldRequestSync(Uri uri, ContentValues values) {
        if (uri.getQueryParameter("URI_PARAM_REQUEST_SYNC") != null) {
            return uri.getBooleanQueryParameter("URI_PARAM_REQUEST_SYNC", false);
        }
        if (values == null || !values.containsKey("localFlag") || values.getAsInteger("localFlag").intValue() == 0) {
            return false;
        }
        return true;
    }

    private void notifyChange(Uri uri, ContentObserver observer, ContentValues values) {
        notifyChange(uri, observer, shouldRequestSync(uri, values), 0);
    }

    private void notifyChange(Uri uri, ContentObserver observer, ContentValues values, int syncReason) {
        notifyChange(uri, observer, shouldRequestSync(uri, values), syncReason);
    }

    private void notifyChange(Uri uri, ContentObserver observer, boolean sync, int syncReason) {
        if (needDelayNotify(uri)) {
            this.mContentResolver.notifyChangeDelay(uri, observer, sync, syncReason);
        } else {
            this.mContentResolver.notifyChange(uri, observer, sync, syncReason);
        }
    }

    private boolean needDelayNotify(Uri uri) {
        switch (sUriMatcher.match(uri)) {
            case 68:
                return true;
            default:
                return uri.getBooleanQueryParameter("delay_notify", false);
        }
    }

    private void registerNotifyUri(Cursor cursor, int matchResult) {
        switch (matchResult) {
            case 50:
                cursor.setNotificationUri(getContext().getContentResolver(), Album.URI);
                return;
            case 51:
            case 52:
            case BaiduSceneResult.BOWLING /*89*/:
                cursor.setNotificationUri(getContext().getContentResolver(), Media.URI);
                return;
            case 53:
                cursor.setNotificationUri(getContext().getContentResolver(), Media.URI_OWNER_ALBUM_MEDIA);
                return;
            case 54:
                cursor.setNotificationUri(getContext().getContentResolver(), PeopleFace.PERSONS_URI);
                return;
            case 55:
                cursor.setNotificationUri(getContext().getContentResolver(), PeopleFace.ONE_PERSON_URI);
                return;
            case 56:
            case 58:
                cursor.setNotificationUri(getContext().getContentResolver(), Cloud.CLOUD_URI);
                return;
            case 64:
                cursor.setNotificationUri(getContext().getContentResolver(), Media.URI_OTHER_ALBUM_MEDIA);
                return;
            case 65:
                cursor.setNotificationUri(getContext().getContentResolver(), Media.URI_ALL);
                return;
            case 66:
                cursor.setNotificationUri(getContext().getContentResolver(), Album.URI_SHARE_ALL);
                return;
            case 70:
            case 71:
                cursor.setNotificationUri(getContext().getContentResolver(), ShareUser.SHARE_USER_URI);
                return;
            case 72:
            case 73:
                cursor.setNotificationUri(getContext().getContentResolver(), CloudUser.CLOUD_USER_URI);
                return;
            case 74:
                cursor.setNotificationUri(getContext().getContentResolver(), PeopleFace.PERSONS_URI);
                return;
            case 77:
                cursor.setNotificationUri(getContext().getContentResolver(), RecentDiscoveredMedia.URI);
                return;
            case 78:
                cursor.setNotificationUri(getContext().getContentResolver(), RecentDiscoveredMedia.URI_COVER);
                return;
            case BaiduSceneResult.SWIM /*81*/:
                cursor.setNotificationUri(getContext().getContentResolver(), PeopleFace.PERSONS_URI);
                return;
            case BaiduSceneResult.FITNESS /*82*/:
                cursor.setNotificationUri(getContext().getContentResolver(), PeopleFace.IGNORE_PERSONS_URI);
                return;
            case BaiduSceneResult.BASKETBALL /*85*/:
                cursor.setNotificationUri(getContext().getContentResolver(), Favorites.URI);
                return;
            case BaiduSceneResult.TENNIS /*86*/:
                cursor.setNotificationUri(getContext().getContentResolver(), ExtendedCloud.URI);
                return;
            default:
                return;
        }
    }

    private List<String> getSha1ListFromFavorites(String selection, String[] args, boolean onlyFavoriteItems) {
        List<String> ret;
        Cursor cursor = null;
        if (onlyFavoriteItems) {
            try {
                if (TextUtils.isEmpty(selection)) {
                    selection = "isFavorite NOT NULL AND isFavorite> 0";
                } else {
                    selection = selection + " AND (isFavorite NOT NULL AND isFavorite> 0)";
                }
            } catch (Throwable th) {
                BaseMiscUtil.closeSilently(cursor);
            }
        }
        cursor = sDBHelper.query("favorites", new String[]{"sha1"}, selection, args, null, null, null, null);
        if (cursor == null || cursor.getCount() <= 0) {
            ret = new ArrayList();
            BaseMiscUtil.closeSilently(cursor);
        } else {
            ret = new ArrayList(cursor.getCount());
            while (cursor.moveToNext()) {
                String sha1 = cursor.getString(0);
                if (!TextUtils.isEmpty(sha1)) {
                    ret.add(sha1);
                }
            }
            BaseMiscUtil.closeSilently(cursor);
        }
        return ret;
    }
}
