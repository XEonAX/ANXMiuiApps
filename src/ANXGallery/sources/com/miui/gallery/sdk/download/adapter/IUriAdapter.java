package com.miui.gallery.sdk.download.adapter;

import android.net.Uri;
import com.miui.gallery.data.DBImage;

public interface IUriAdapter {
    DBImage getDBItemForUri(Uri uri);
}
