package com.miui.gallery.sdk.download.adapter;

import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;

public class BaseUriAdapter implements IUriAdapter {
    private static final UriMatcher sUriMatcher = new UriMatcher(-1);

    static {
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "gallery_cloud/#", 0);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "share_image/#", 2);
    }

    public DBImage getDBItemForUri(Uri uri) {
        final Uri imageUri = translate2ImageUri(uri);
        if (imageUri == null) {
            return null;
        }
        return (DBImage) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), imageUri, new String[]{"*"}, null, null, null, new QueryHandler<DBImage>() {
            public DBImage handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToNext()) {
                    return null;
                }
                return CloudUtils.createDBImageByUri(BaseUriAdapter.this.getBaseUri(imageUri), cursor);
            }
        });
    }

    private Uri translate2ImageUri(Uri uri) {
        switch (sUriMatcher.match(uri)) {
            case 0:
            case 2:
                return uri;
            default:
                return null;
        }
    }

    private Uri getBaseUri(Uri uri) {
        switch (sUriMatcher.match(uri)) {
            case 0:
                return GalleryCloudUtils.CLOUD_URI;
            case 2:
                return GalleryCloudUtils.SHARE_IMAGE_URI;
            default:
                return null;
        }
    }
}
