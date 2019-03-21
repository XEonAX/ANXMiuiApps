package com.miui.gallery.net.resource;

import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.net.HttpManager;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.ResponseListener;
import com.miui.gallery.net.download.GalleryDownloadManager;
import com.miui.gallery.net.download.Request;
import com.miui.gallery.net.download.Request.Listener;
import com.miui.gallery.net.download.Verifier.Sha1;
import com.miui.gallery.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class ResourceDownloadManager {
    private List<Request> mRequestList = new ArrayList();

    public void download(Resource resource, String downloadPath, final Listener listener, final boolean isActiveNetworkMetered) {
        long id = resource.id;
        Log.d("ResourceDownloadManager", "downloading: %d", Long.valueOf(id));
        if (TextUtils.isEmpty(downloadPath)) {
            Log.d("ResourceDownloadManager", "download path is empty");
            listener.onComplete(-1);
            return;
        }
        final File file = new File(downloadPath);
        if (file.exists()) {
            Log.d("ResourceDownloadManager", "file downloaded: %s", file.getAbsolutePath());
            listener.onComplete(0);
            return;
        }
        DownloadRequest request = new DownloadRequest(id);
        request.setTag("ResourceDownloadManager");
        request.execute(new ResponseListener() {
            public void onResponse(Object... response) {
                DownloadInfo info = response[0];
                Log.d("ResourceDownloadManager", String.format("download %s, %s", new Object[]{info.url, info.sha1}));
                Request downloadRequest = new Request(Uri.parse(info.url), file);
                ResourceDownloadManager.this.mRequestList.add(downloadRequest);
                downloadRequest.setVerifier(new Sha1(info.sha1));
                downloadRequest.setAllowedOverMetered(isActiveNetworkMetered);
                downloadRequest.setListener(listener);
                GalleryDownloadManager.INSTANCE.enqueue(downloadRequest);
            }

            public void onResponseError(ErrorCode errorCode, String errorMessage, Object responseData) {
                listener.onComplete(-1);
                Log.w("ResourceDownloadManager", "errorMessage:%s,errorCode.name:%s", errorMessage, errorCode.name());
            }
        });
    }

    public void cancelAll() {
        HttpManager.getInstance().cancelAll("ResourceDownloadManager");
        for (Request request : this.mRequestList) {
            request.setListener(null);
        }
    }
}
