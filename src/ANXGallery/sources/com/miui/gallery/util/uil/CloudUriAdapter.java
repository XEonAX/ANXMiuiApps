package com.miui.gallery.util.uil;

import android.content.ContentUris;
import android.content.UriMatcher;
import android.net.Uri;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.sdk.uploadstatus.ItemType;
import com.miui.gallery.sdk.uploadstatus.UriAdapter;

public class CloudUriAdapter extends UriAdapter {
    private static final UriMatcher sUriMatcher = new UriMatcher(-1);

    static {
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "gallery_cloud/#", 0);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloud_owner_sububi/#", 1);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "share_image/#", 2);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "share_image_sububi/#", 3);
    }

    public Uri getUserUri(ItemType itemType, String localId) {
        switch (itemType) {
            case OWNER:
                return ContentUris.withAppendedId(Cloud.CLOUD_URI, Long.valueOf(localId).longValue());
            case OWNER_SUB_UBI:
                return ContentUris.withAppendedId(Cloud.CLOUD_SUBUBI, Long.valueOf(localId).longValue());
            case SHARER:
                return ContentUris.withAppendedId(ShareImage.SHARE_URI, Long.valueOf(localId).longValue());
            case SHARER_SUB_UBI:
                return ContentUris.withAppendedId(ShareImage.SHARE_URI_SUBUBI, Long.valueOf(localId).longValue());
            default:
                return null;
        }
    }

    public String getLocalId(Uri userUri) {
        return userUri.getLastPathSegment();
    }

    public static Uri getDownloadUri(long id) {
        if (ShareMediaManager.isOtherShareMediaId(id)) {
            return ContentUris.withAppendedId(ShareImage.SHARE_URI, ShareMediaManager.getOriginalMediaId(id));
        }
        return ContentUris.withAppendedId(Cloud.CLOUD_URI, id);
    }
}
