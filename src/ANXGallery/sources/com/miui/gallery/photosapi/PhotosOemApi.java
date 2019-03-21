package com.miui.gallery.photosapi;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;

public final class PhotosOemApi {
    public static String getAuthority(Context context) {
        return context.getString(R.string.provider_authority);
    }

    public static Uri getQueryProcessingUri(Context context, long mediaStoreId) {
        return getBaseBuilder(context).appendPath("processing").appendPath(String.valueOf(mediaStoreId)).build();
    }

    public static Uri getQueryProcessingUri(Context context) {
        return getBaseBuilder(context).appendPath("processing").build();
    }

    private static Builder getBaseBuilder(Context context) {
        return new Builder().scheme("content").authority(getAuthority(context));
    }
}
