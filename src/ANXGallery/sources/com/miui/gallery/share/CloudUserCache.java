package com.miui.gallery.share;

import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.provider.GalleryContract.CloudUser;
import com.miui.gallery.provider.GalleryContract.ShareUser;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public abstract class CloudUserCache extends DBCache<String, List<CloudUserCacheEntry>> {
    private static final List<CloudUserCacheEntry> EMPTY_ENTRY_LIST = Lists.newArrayList();
    private static final CloudUserCache sOwnerUserCache = new CloudUserCache() {
        public Uri getUri() {
            return CloudUser.CLOUD_USER_URI;
        }

        public void syncFromServer(String albumId, OnCompletionListener<Void, Void> l) {
            AlbumShareUIManager.syncAllUserInfoFromNetworkAsync(l);
        }

        protected String[] getProjection() {
            return new String[]{"albumId", "userId", "createTime", "relation", "relationText", "serverStatus", "phone"};
        }

        protected CloudUserCacheEntry newValueElement(Cursor cursor) {
            return new CloudUserCacheEntry(cursor.getString(0), cursor.getString(1), cursor.getLong(2), cursor.getString(3), cursor.getString(4), cursor.getString(5), cursor.getString(6));
        }

        protected String getSelection() {
            return "serverStatus = ?";
        }

        protected String[] getSelectionArgs() {
            return new String[]{"normal"};
        }
    };
    private static final CloudUserCache sSharerUserCache = new CloudUserCache() {
        public Uri getUri() {
            return ShareUser.SHARE_USER_URI;
        }

        public void syncFromServer(String albumId, OnCompletionListener<Void, Void> l) {
            AlbumShareUIManager.syncUserListForAlbumAsync(albumId, true, l);
        }

        protected String[] getProjection() {
            return new String[]{"albumId", "userId", "createTime", "relation", "relationText", "serverStatus"};
        }

        protected CloudUserCacheEntry newValueElement(Cursor cursor) {
            return new CloudUserCacheEntry(cursor.getString(0), cursor.getString(1), cursor.getLong(2), cursor.getString(3), cursor.getString(4), cursor.getString(5), null);
        }

        protected String getSelection() {
            return null;
        }

        protected String[] getSelectionArgs() {
            return new String[0];
        }
    };

    protected abstract String[] getProjection();

    protected abstract String getSelection();

    protected abstract String[] getSelectionArgs();

    protected abstract CloudUserCacheEntry newValueElement(Cursor cursor);

    public abstract void syncFromServer(String str, OnCompletionListener<Void, Void> onCompletionListener);

    protected String newKey(Cursor cursor) {
        return cursor.getString(0);
    }

    protected List<CloudUserCacheEntry> newValue(Cursor cursor) {
        return Lists.newArrayList();
    }

    protected Cursor queryInBackground() {
        return GalleryApp.sGetAndroidContext().getContentResolver().query(getUri(), getProjection(), getSelection(), getSelectionArgs(), "albumId");
    }

    protected Map<String, List<CloudUserCacheEntry>> loadInBackground() {
        Map<String, List<CloudUserCacheEntry>> map = Maps.newHashMap();
        Cursor cursor = queryInBackground();
        if (cursor != null) {
            String lastKey = null;
            List<CloudUserCacheEntry> lastUsers = null;
            while (cursor.moveToNext()) {
                try {
                    String key = newKey(cursor);
                    if (key != null) {
                        if (!TextUtils.equals(lastKey, key)) {
                            lastKey = key;
                            lastUsers = newValue(cursor);
                            map.put(key, lastUsers);
                        }
                        if (lastUsers != null) {
                            lastUsers.add(newValueElement(cursor));
                        }
                    }
                } finally {
                    cursor.close();
                }
            }
        }
        return map;
    }

    public List<CloudUserCacheEntry> getCloudUserListByAlbumId(String albumId) {
        List<CloudUserCacheEntry> users = (List) getCache().get(albumId);
        return users != null ? Collections.unmodifiableList(users) : EMPTY_ENTRY_LIST;
    }

    public static CloudUserCache getOwnerUserCache() {
        return sOwnerUserCache;
    }

    public static CloudUserCache getSharerUserCache() {
        return sSharerUserCache;
    }
}
