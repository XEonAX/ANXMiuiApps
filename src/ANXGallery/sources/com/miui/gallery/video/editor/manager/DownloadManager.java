package com.miui.gallery.video.editor.manager;

import android.net.Uri;
import com.miui.gallery.net.HttpManager;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.ResponseListener;
import com.miui.gallery.net.download.GalleryDownloadManager;
import com.miui.gallery.net.download.Request;
import com.miui.gallery.net.download.Request.Listener;
import com.miui.gallery.net.download.Verifier.Sha1;
import com.miui.gallery.net.resource.DownloadInfo;
import com.miui.gallery.net.resource.DownloadRequest;
import com.miui.gallery.util.Log;
import com.miui.gallery.video.editor.interfaces.IVideoEditorListener.IDownloadListener;
import com.miui.gallery.video.editor.model.VideoEditorBaseModel;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class DownloadManager {
    private List<Request> mRequestList = new ArrayList();

    public void download(VideoEditorBaseModel resource, IDownloadListener downloadHelper, Listener listener, boolean isActiveNetworkMetered) {
        long id = resource.getId();
        Log.d("DownloadManager", "downloading: %d", Long.valueOf(id));
        DownloadRequest request = new DownloadRequest(id);
        request.setTag("DownloadManager");
        final IDownloadListener iDownloadListener = downloadHelper;
        final VideoEditorBaseModel videoEditorBaseModel = resource;
        final boolean z = isActiveNetworkMetered;
        final Listener listener2 = listener;
        request.execute(new ResponseListener() {
            public void onResponse(Object... response) {
                DownloadInfo info = response[0];
                Log.d("DownloadManager", String.format("download %s, %s", new Object[]{info.url, info.sha1}));
                File file = new File(iDownloadListener.getDownloadPath(videoEditorBaseModel));
                if (file.exists()) {
                    Log.d("DownloadManager", "the file already exist and its path is : %s", file.getAbsolutePath());
                    file.delete();
                }
                Request downloadRequest = new Request(Uri.parse(info.url), file);
                DownloadManager.this.mRequestList.add(downloadRequest);
                downloadRequest.setVerifier(new Sha1(info.sha1));
                downloadRequest.setAllowedOverMetered(z);
                downloadRequest.setListener(listener2);
                GalleryDownloadManager.INSTANCE.enqueue(downloadRequest);
            }

            public void onResponseError(ErrorCode errorCode, String errorMessage, Object responseData) {
                listener2.onComplete(-1);
                Log.w("DownloadManager", "errorMessage:%s,errorCode.name:5s", errorMessage, errorCode.name());
            }
        });
    }

    public void cancelAll() {
        HttpManager.getInstance().cancelAll("DownloadManager");
        for (Request request : this.mRequestList) {
            request.setListener(null);
        }
    }
}
