package com.miui.gallery.loader;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.miui.gallery.model.ContentProxySource;
import com.miui.gallery.model.FaceSource;
import com.miui.gallery.model.LocalSource;
import com.miui.gallery.model.MediaSource;
import com.miui.gallery.model.PhotoLoaderSource;
import com.miui.gallery.model.SearchResultSource;
import com.miui.gallery.model.StorageSource;
import com.miui.gallery.model.UriSource;
import java.util.ArrayList;
import java.util.Iterator;

public class PhotoLoaderManager {
    private static PhotoLoaderManager sInstance;
    private ArrayList<PhotoLoaderSource> mSources;

    private PhotoLoaderManager() {
        initSources();
    }

    private void initSources() {
        this.mSources = new ArrayList();
        this.mSources.add(new LocalSource());
        this.mSources.add(new FaceSource());
        this.mSources.add(new SearchResultSource());
        this.mSources.add(new MediaSource());
        this.mSources.add(new StorageSource());
        this.mSources.add(new ContentProxySource());
        this.mSources.add(new UriSource());
    }

    public BaseLoader getPhotoDataSet(Context context, Uri uri, Bundle bundle) {
        if (uri != null) {
            Iterator it = this.mSources.iterator();
            while (it.hasNext()) {
                PhotoLoaderSource dataSource = (PhotoLoaderSource) it.next();
                if (dataSource.match(uri, bundle)) {
                    return dataSource.createDataLoader(context, uri, bundle);
                }
            }
        }
        return null;
    }

    public static synchronized PhotoLoaderManager getInstance() {
        PhotoLoaderManager photoLoaderManager;
        synchronized (PhotoLoaderManager.class) {
            if (sInstance == null) {
                sInstance = new PhotoLoaderManager();
            }
            photoLoaderManager = sInstance;
        }
        return photoLoaderManager;
    }
}
