package com.miui.gallery.model;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.miui.gallery.loader.BaseLoader;
import com.miui.gallery.loader.StorageSetLoader;
import com.miui.gallery.util.BaseMiscUtil;

public class StorageSource extends PhotoLoaderSource {
    public boolean match(Uri uri, Bundle data) {
        if (isContentSchemeWithExtraPhotoItems(uri, data) || isFileScheme(uri)) {
            return true;
        }
        return false;
    }

    public BaseLoader createDataLoader(Context context, Uri uri, Bundle data) {
        return new StorageSetLoader(context, uri, data);
    }

    private static boolean isContentSchemeWithExtraPhotoItems(Uri uri, Bundle data) {
        return uri != null && data != null && "content".equals(uri.getScheme()) && BaseMiscUtil.isValid(data.getParcelableArrayList("com.miui.gallery.extra.photo_items"));
    }

    private static boolean isFileScheme(Uri uri) {
        return uri != null && "file".equals(uri.getScheme());
    }
}
