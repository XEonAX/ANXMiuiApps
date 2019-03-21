package com.miui.gallery.picker.uri;

import android.net.Uri;
import android.os.AsyncTask;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.AccountCache.AccountInfo;
import com.miui.gallery.cloud.CloudGalleryOwnerRequestor;
import com.miui.gallery.cloud.CloudGallerySharerRequestor;
import com.miui.gallery.cloud.CloudUrlProvider;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.cloud.RequestCloudItem;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.adapter.BaseUriAdapter;
import com.miui.gallery.util.Log;
import com.xiaomi.micloudsdk.file.MiCloudFileRequestor;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class OriginUrlRequestor {
    private ProgressListener mProgressListener;
    private AsyncTask mRequestAsyncTask;
    private final List<OriginUrlRequestTask> mTasks;

    public interface ProgressListener {
        void onCancelled();

        void onEnd(ArrayList<OriginInfo> arrayList, boolean z);

        void onStart(int i);

        void onUpdate(int i);
    }

    public static class OriginInfo {
        private static String FILE_SHA1 = "sha1";
        private static String FILE_URI = "file_uri";
        private static String ORIGIN_DOWNLOAD_INFO = "origin_download_info";
        private static String ORIGIN_HEIGHT = "origin_height";
        private static String ORIGIN_WIDTH = "origin_width";
        private Uri mFileUri;
        private int mHeight;
        private JSONObject mOriginDownloadInfo;
        private String mSha1;
        private int mWidth;

        public OriginInfo(Uri fileUri, String sha1) {
            this.mFileUri = fileUri;
            this.mSha1 = sha1;
        }

        public void setOriginDownloadInfo(JSONObject downloadInfo, int height, int width) {
            this.mOriginDownloadInfo = downloadInfo;
            this.mHeight = height;
            this.mWidth = width;
        }

        public String toJson() {
            JSONObject originInfoJson = new JSONObject();
            try {
                originInfoJson.put(FILE_URI, this.mFileUri);
                originInfoJson.put(FILE_SHA1, this.mSha1);
                if (this.mOriginDownloadInfo != null) {
                    originInfoJson.put(ORIGIN_DOWNLOAD_INFO, this.mOriginDownloadInfo);
                    originInfoJson.put(ORIGIN_HEIGHT, this.mHeight);
                    originInfoJson.put(ORIGIN_WIDTH, this.mWidth);
                }
                return originInfoJson.toString();
            } catch (Exception e) {
                Log.e("OriginUrlRequestor", "originInfo to json error");
                return null;
            }
        }
    }

    public static class OriginUrlRequestTask {
        Uri mDownloadUri;
        int mMediaType;
        int mOriginHeight;
        int mOriginWidth;
        int mPosition;

        public OriginUrlRequestTask(int position, Uri downloadUri, int height, int width, int mediaType) {
            this.mPosition = position;
            this.mDownloadUri = downloadUri;
            this.mOriginHeight = height;
            this.mOriginWidth = width;
            this.mMediaType = mediaType;
        }
    }

    public OriginUrlRequestor(ArrayList<OriginUrlRequestTask> requests, ProgressListener listener) {
        this.mTasks = (List) requests.clone();
        this.mProgressListener = listener;
    }

    public void start(Uri[] resultImageUris, String[] resultSha1s) {
        int length;
        if (resultImageUris != null) {
            length = resultImageUris.length;
        } else {
            length = 0;
        }
        final ArrayList<OriginInfo> originRequestResults = new ArrayList(length);
        if (resultImageUris != null && resultSha1s != null && resultImageUris.length == resultSha1s.length) {
            for (int i = 0; i < resultImageUris.length; i++) {
                originRequestResults.add(new OriginInfo(resultImageUris[i], resultSha1s[i]));
            }
            this.mProgressListener.onStart(this.mTasks.size());
            this.mRequestAsyncTask = new AsyncTask<Void, Integer, Boolean>() {
                protected Boolean doInBackground(Void... params) {
                    if (OriginUrlRequestor.this.mTasks.isEmpty()) {
                        return Boolean.valueOf(true);
                    }
                    if (!NetworkUtils.isNetworkConnected() || !CTA.canConnectNetwork()) {
                        return Boolean.valueOf(false);
                    }
                    AccountInfo info = AccountCache.getAccountInfo();
                    if (info == null) {
                        return Boolean.valueOf(false);
                    }
                    BaseUriAdapter uriAdapter = new BaseUriAdapter();
                    MiCloudFileRequestor ownerRequestor = new CloudGalleryOwnerRequestor(info.mAccount, CloudUrlProvider.getUrlProvider(false, false));
                    MiCloudFileRequestor sharerRequestor = new CloudGallerySharerRequestor(info.mAccount, CloudUrlProvider.getUrlProvider(true, false));
                    MiCloudFileRequestor ownerVideoRequestor = new CloudGalleryOwnerRequestor(info.mAccount, CloudUrlProvider.getUrlProvider(false, true));
                    MiCloudFileRequestor sharerVideoRequestor = new CloudGallerySharerRequestor(info.mAccount, CloudUrlProvider.getUrlProvider(true, true));
                    for (OriginUrlRequestTask task : OriginUrlRequestor.this.mTasks) {
                        if (isCancelled()) {
                            return Boolean.valueOf(false);
                        }
                        if (task.mMediaType != 0) {
                            DBImage dbImage = uriAdapter.getDBItemForUri(task.mDownloadUri);
                            RequestCloudItem requestItem = new RequestCloudItem(DownloadType.ORIGIN.getPriority(), dbImage);
                            MiCloudFileRequestor requestor = dbImage.isShareItem() ? task.mMediaType == 1 ? sharerRequestor : sharerVideoRequestor : task.mMediaType == 1 ? ownerRequestor : ownerVideoRequestor;
                            try {
                                JSONObject requestResult = requestor.requestDownload(requestItem);
                                if (requestResult != null && requestResult.optString("result").equals("ok")) {
                                    ((OriginInfo) originRequestResults.get(task.mPosition)).setOriginDownloadInfo(requestResult.getJSONObject("data"), task.mOriginHeight, task.mOriginWidth);
                                }
                            } catch (Exception e) {
                                Log.e("OriginUrlRequestor", "request origin download info error" + e);
                            }
                            publishProgress(new Integer[]{Integer.valueOf(OriginUrlRequestor.this.mTasks.indexOf(task) + 1)});
                        }
                    }
                    return Boolean.valueOf(true);
                }

                protected void onPostExecute(Boolean result) {
                    if (OriginUrlRequestor.this.mProgressListener != null) {
                        OriginUrlRequestor.this.mProgressListener.onEnd(originRequestResults, result.booleanValue());
                    }
                }

                protected void onProgressUpdate(Integer... progress) {
                    if (OriginUrlRequestor.this.mProgressListener != null) {
                        OriginUrlRequestor.this.mProgressListener.onUpdate(progress[0].intValue());
                    }
                }

                protected void onCancelled() {
                    if (OriginUrlRequestor.this.mProgressListener != null) {
                        OriginUrlRequestor.this.mProgressListener.onCancelled();
                    }
                }
            }.execute(new Void[0]);
        } else if (this.mProgressListener != null) {
            this.mProgressListener.onEnd(originRequestResults, false);
        }
    }

    public void cancel() {
        if (this.mRequestAsyncTask != null) {
            this.mRequestAsyncTask.cancel(true);
        }
    }

    public void destroy() {
        if (this.mRequestAsyncTask != null) {
            this.mRequestAsyncTask.cancel(true);
            this.mRequestAsyncTask = null;
        }
        if (this.mProgressListener != null) {
            this.mProgressListener = null;
        }
    }
}
