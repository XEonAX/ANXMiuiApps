package com.miui.gallery.model;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.loader.BaseLoader;
import com.miui.gallery.loader.UriSetLoader;
import miui.provider.Notes.Data;

public class UriSource extends PhotoLoaderSource {
    public boolean match(Uri uri, Bundle data) {
        String type = data != null ? data.getString(Data.MIME_TYPE) : null;
        if (type == null) {
            type = GalleryApp.sGetAndroidContext().getContentResolver().getType(uri);
        }
        if (type == null || type.startsWith("image/")) {
            return true;
        }
        return false;
    }

    public BaseLoader createDataLoader(Context context, Uri uri, Bundle data) {
        return new UriSetLoader(context, uri, data);
    }
}
