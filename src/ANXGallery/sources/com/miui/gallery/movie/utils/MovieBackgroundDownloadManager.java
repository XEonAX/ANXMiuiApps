package com.miui.gallery.movie.utils;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.movie.MovieConfig;
import com.miui.gallery.movie.entity.TemplateResource;
import com.miui.gallery.movie.net.TemplateResourceRequest;
import com.miui.gallery.movie.ui.factory.MovieFactory;
import com.miui.gallery.movie.ui.factory.TemplateFactory;
import com.miui.gallery.net.base.RequestError;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import java.util.List;

public class MovieBackgroundDownloadManager {
    private static MovieBackgroundDownloadManager sInstance = new MovieBackgroundDownloadManager();
    private List<TemplateResource> mTemplateResources;

    private class BackgroundDownloadTask extends AsyncTask<Void, Void, Void> {
        private int mTemplateId;

        public BackgroundDownloadTask(int templateId) {
            this.mTemplateId = templateId;
        }

        protected Void doInBackground(Void... params) {
            Object templateName = MovieFactory.getParentTemplateName(MovieFactory.getTemplateNameById(this.mTemplateId));
            if (TextUtils.equals(templateName, "movieAssetsNormal") || FileUtils.isFileExist(TemplateFactory.getTemplateDir(templateName))) {
                Log.d("MovieBackgroundDownloadManager", "%s is already exist", templateName);
            } else {
                List<TemplateResource> templateResources = MovieBackgroundDownloadManager.this.mTemplateResources;
                if (templateResources == null) {
                    try {
                        Object[] objects = new TemplateResourceRequest().executeSync();
                        if (objects != null && objects.length > 0 && (objects[0] instanceof List)) {
                            templateResources = (List) objects[0];
                        }
                        Log.d("MovieBackgroundDownloadManager", "getTemplateList %d ", Integer.valueOf(templateResources == null ? -1 : templateResources.size()));
                    } catch (RequestError e) {
                        Log.e("MovieBackgroundDownloadManager", "RequestError: getTemplateList");
                    }
                }
                if (templateResources == null) {
                    Log.d("MovieBackgroundDownloadManager", "template resource is null");
                } else {
                    for (TemplateResource templateResource : templateResources) {
                        if (TextUtils.equals(templateResource.nameKey, templateName)) {
                            Log.d("MovieBackgroundDownloadManager", "start download %s in background", templateResource.nameKey);
                            MovieDownloadManager.getInstance().downloadResource(templateResource, null, false);
                        }
                    }
                }
                MovieBackgroundDownloadManager.this.mTemplateResources = templateResources;
            }
            return null;
        }
    }

    private MovieBackgroundDownloadManager() {
    }

    public static MovieBackgroundDownloadManager getInstance() {
        return sInstance;
    }

    public void downloadTemplate(Context context, int templateId) {
        if (!NetworkUtils.isNetworkConnected()) {
            Log.d("MovieBackgroundDownloadManager", "download templateId %d no network", Integer.valueOf(templateId));
        } else if (NetworkUtils.isActiveNetworkMetered()) {
            Log.d("MovieBackgroundDownloadManager", "download templateId %d in network metered", Integer.valueOf(templateId));
        } else {
            MovieConfig.init(context);
            new BackgroundDownloadTask(templateId).execute(new Void[0]);
        }
    }
}
