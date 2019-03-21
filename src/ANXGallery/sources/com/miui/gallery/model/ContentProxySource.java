package com.miui.gallery.model;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.miui.gallery.loader.BaseLoader;

public class ContentProxySource extends PhotoLoaderSource {
    public boolean match(Uri uri, Bundle data) {
        return uri != null && "content".equals(uri.getScheme());
    }

    public BaseLoader createDataLoader(Context context, Uri uri, Bundle data) {
        return new ContentProxyLoader(context, uri, data);
    }
}
