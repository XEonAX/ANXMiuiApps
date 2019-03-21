package com.miui.gallery.model;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.loader.BaseLoader;
import com.miui.gallery.loader.StorageSetLoader;
import com.miui.gallery.loader.UriSetLoader;
import com.miui.gallery.util.ContentUtils;
import com.miui.gallery.util.Log;
import java.io.File;

public class ContentProxyLoader extends BaseLoader {
    private Bundle mData;
    private BaseLoader mProxy;
    private Uri mUri;

    public ContentProxyLoader(Context context, Uri uri, Bundle data) {
        super(context);
        this.mUri = uri;
        this.mData = data;
    }

    public BaseDataSet loadInBackground() {
        if (this.mProxy == null) {
            String path = ContentUtils.getValidFilePathForContentUri(getContext(), this.mUri);
            Log.i("ContentProxyLoader", "uri %s, path %s", this.mUri, path);
            if (TextUtils.isEmpty(path)) {
                this.mProxy = new UriSetLoader(getContext(), this.mUri, this.mData);
            } else {
                this.mProxy = new StorageSetLoader(getContext(), Uri.fromFile(new File(path)), this.mData);
            }
        }
        return this.mProxy != null ? (BaseDataSet) this.mProxy.loadInBackground() : null;
    }
}
