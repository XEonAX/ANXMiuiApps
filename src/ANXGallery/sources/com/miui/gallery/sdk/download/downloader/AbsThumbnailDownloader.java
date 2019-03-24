package com.miui.gallery.sdk.download.downloader;

import android.accounts.Account;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.v4.provider.DocumentFile;
import android.text.TextUtils;
import android.util.Base64;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CheckResult;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryExtendedAuthToken;
import com.miui.gallery.cloud.GalleryMiCloudServerException;
import com.miui.gallery.cloud.HostManager.OwnerMedia;
import com.miui.gallery.cloud.HostManager.ShareMedia;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.cloud.NetworkUtils.RequestType;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.error.util.ErrorParseUtil;
import com.miui.gallery.preference.GalleryPreferences.FileDownload;
import com.miui.gallery.preference.ThumbnailPreference;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.assist.DownloadFailReason;
import com.miui.gallery.sdk.download.assist.DownloadItem;
import com.miui.gallery.sdk.download.assist.DownloadedItem;
import com.miui.gallery.sdk.download.assist.RequestItem;
import com.miui.gallery.sdk.download.util.DownloadUtil;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseDocumentProviderUtils;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryAes;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.concurrent.locks.ReentrantLock;
import miui.provider.MiCloudSmsCmd;
import miui.yellowpage.Tag.TagWebService.CommonResult;
import org.apache.http.NameValuePair;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;
import org.keyczar.Keyczar;

abstract class AbsThumbnailDownloader implements IDownloader {
    private static final int MAX_TRY_COUNT = CloudControlStrategyHelper.getSyncStrategy().getMaxDownloadTimes();

    protected abstract String checkAndReturnValidPath(RequestItem requestItem);

    protected abstract int getRequestHeight();

    protected abstract int getRequestWidth();

    protected abstract String getTag();

    protected abstract boolean updateDataBase(RequestItem requestItem, String str);

    AbsThumbnailDownloader() {
    }

    public void download(Account account, GalleryExtendedAuthToken extToken, List<DownloadItem> items) {
        if (items != null && items.size() > 0) {
            List<RequestItem> requests = new ArrayList();
            for (DownloadItem item : items) {
                if (checkConditionPermitted(item)) {
                    RequestItem request = new RequestItem(item, item.getUriAdapter().getDBItemForUri(item.getUri()));
                    String validPath = checkAndReturnValidPath(request);
                    if (TextUtils.isEmpty(validPath)) {
                        if (ThumbnailPreference.containsThumbnailKey(request.mDBItem.getSha1())) {
                            Log.i(getTag(), "build error sha1 %s", request.mDBItem.getSha1());
                            fireFailEvent(request, null, new DownloadFailReason(ErrorCode.THUMBNAIL_BUILD_ERROR, String.format("thumbnail can't build: %s", new Object[]{request.mDBItem.getFileName()}), null));
                        } else {
                            requests.add(request);
                        }
                    } else if (item.compareAnsSetStatus(0, 3)) {
                        DownloadItem.callbackSuccess(request.mDownloadItem, new DownloadedItem(validPath, request.mDBItem.isSecretItem() ? request.mDBItem.getSecretKey() : null));
                    }
                } else {
                    Log.d(getTag(), "Download condition not ok type %s", item.getType());
                }
            }
            if (requests.size() > 0) {
                Iterator<RequestItem> iterator = requests.iterator();
                while (iterator.hasNext()) {
                    if (!checkItemValid((RequestItem) iterator.next())) {
                        iterator.remove();
                    }
                }
                if (requests.size() > 0) {
                    for (Entry<String, List<RequestItem>> entry : classifyRequest(requests).entrySet()) {
                        downloadInternal(account, extToken, (List) entry.getValue());
                        Log.d(getTag(), "download batch %s", entry.getKey());
                    }
                }
            }
        }
    }

    private static HashMap<String, List<RequestItem>> classifyRequest(List<RequestItem> requests) {
        HashMap<String, List<RequestItem>> map = new HashMap();
        for (RequestItem item : requests) {
            String key;
            if (item.mDBItem.isShareItem()) {
                key = String.valueOf(item.mDBItem.getGroupId());
            } else {
                key = "owner";
            }
            List<RequestItem> batch = (List) map.get(key);
            if (batch == null) {
                batch = new LinkedList();
                map.put(key, batch);
            }
            batch.add(item);
        }
        return map;
    }

    private void downloadInternal(Account account, GalleryExtendedAuthToken extToken, List<RequestItem> requests) {
        JSONObject thumbnails = requestUrls(account, extToken, requests);
        if (thumbnails != null) {
            for (RequestItem request : requests) {
                Log.i(getTag(), "download id %s", request.mDBItem.getId());
                if (Thread.currentThread().isInterrupted()) {
                    Log.i(getTag(), "for download interrupt %s", Boolean.valueOf(Thread.currentThread().isInterrupted()));
                    return;
                } else if (request.mDownloadItem.isStatusOk()) {
                    String id = request.mDBItem.getRequestId();
                    JSONObject thumbnail = thumbnails.optJSONObject(id);
                    if (thumbnail == null) {
                        Log.w(getTag(), "id: %s not found in content json", id);
                        ThumbnailPreference.putThumbnailKey(request.mDBItem.getSha1());
                        fireFailEvent(request, null, new DownloadFailReason(ErrorCode.THUMBNAIL_BUILD_ERROR, String.format(Locale.US, "request url for %s error", new Object[]{request.mDBItem.getServerId()}), null));
                    } else {
                        ReentrantLock lock = request.mDownloadItem.getUriLock();
                        if (lock.isLocked()) {
                            Log.d(getTag(), "%s wait lock", request.mDownloadItem);
                        }
                        lock.lock();
                        try {
                            String validPath = checkAndReturnValidPath(request);
                            if (TextUtils.isEmpty(validPath)) {
                                boolean isUrl = thumbnail.optBoolean("isUrl");
                                String data = thumbnail.optString("data");
                                ErrorCode errorCode = DownloadUtil.ensureDownloadTempFolder(request.mDBItem, request.mDownloadItem.getType());
                                if (errorCode != ErrorCode.NO_ERROR) {
                                    fireFailEvent(request, null, new DownloadFailReason(errorCode, String.format(Locale.US, "error create folder: %s", new Object[]{DownloadUtil.getDownloadTempFolderPath(request.mDBItem, request.mDownloadItem.getType())}), null));
                                    lock.unlock();
                                } else {
                                    String downloadedTempPath;
                                    if (isUrl) {
                                        Uri uri = Uri.parse(data);
                                        if (isValidUrl(uri)) {
                                            downloadedTempPath = downloadFile(request, uri.toString());
                                        } else {
                                            ThumbnailPreference.putThumbnailKey(request.mDBItem.getSha1());
                                            fireFailEvent(request, null, new DownloadFailReason(ErrorCode.THUMBNAIL_BUILD_ERROR, String.format(Locale.US, "invalid url %s for %s", new Object[]{uri, request.mDBItem.getServerId()}), null));
                                            lock.unlock();
                                        }
                                    } else {
                                        downloadedTempPath = downloadData(request, data);
                                    }
                                    onPostDownload(request, downloadedTempPath);
                                    lock.unlock();
                                }
                            } else {
                                Log.d(getTag(), "no need download file: %s, thumb: %s", request.mDBItem.getLocalFile(), request.mDBItem.getThumbnailFile());
                                if (request.mDownloadItem.compareAnsSetStatus(0, 3)) {
                                    byte[] secretKey;
                                    DownloadItem downloadItem = request.mDownloadItem;
                                    if (request.mDBItem.isSecretItem()) {
                                        secretKey = request.mDBItem.getSecretKey();
                                    } else {
                                        secretKey = null;
                                    }
                                    DownloadItem.callbackSuccess(downloadItem, new DownloadedItem(validPath, secretKey));
                                }
                                lock.unlock();
                            }
                        } catch (Throwable th) {
                            lock.unlock();
                        }
                    }
                } else {
                    Log.i(getTag(), "item %s status %s", request.mDownloadItem.getKey(), Integer.valueOf(request.mDownloadItem.getStatus()));
                }
            }
        }
    }

    private void onPostDownload(RequestItem request, String downloadTempPath) {
        byte[] bArr = null;
        if (FileUtils.isFileExist(downloadTempPath)) {
            if (!checkItemValid(new RequestItem(request.mDownloadItem, request.mDownloadItem.getUriAdapter().getDBItemForUri(request.mDownloadItem.getUri())))) {
                return;
            }
            if (handleDownloadTempFile(request, downloadTempPath)) {
                ErrorCode errorCode = DownloadUtil.ensureDownloadFolder(request.mDBItem, request.mDownloadItem.getType());
                if (errorCode != ErrorCode.NO_ERROR) {
                    fireFailEvent(request, null, new DownloadFailReason(errorCode, String.format(Locale.US, "error create folder: %s", new Object[]{DownloadUtil.getDownloadFolderPath(request.mDBItem, request.mDownloadItem.getType())}), null));
                    return;
                }
                File downloadFile = new File(DownloadUtil.getDownloadFilePath(request.mDBItem, request.mDownloadItem.getType()));
                if (request.mDBItem.isSecretItem()) {
                    boolean encodeResult = GalleryAes.encryptFile(downloadTempPath, downloadFile.getAbsolutePath(), request.mDBItem.getSecretKey());
                    MediaFileUtils.deleteFileType(FileType.TEMP, downloadTempPath);
                    if (!encodeResult) {
                        fireFailEvent(request, null, new DownloadFailReason(ErrorCode.FILE_OPERATE_ERROR, "encrypt error", null));
                        return;
                    }
                } else if (!FileUtils.move(new File(downloadTempPath), downloadFile)) {
                    fireFailEvent(request, null, new DownloadFailReason(ErrorCode.FILE_OPERATE_ERROR, "rename error", null));
                    return;
                }
                updateDataBase(request, downloadFile.getAbsolutePath());
                if (request.mDownloadItem.compareAnsSetStatus(0, 3)) {
                    DownloadItem downloadItem = request.mDownloadItem;
                    String absolutePath = downloadFile.getAbsolutePath();
                    if (request.mDBItem.isSecretItem()) {
                        bArr = request.mDBItem.getSecretKey();
                    }
                    DownloadItem.callbackSuccess(downloadItem, new DownloadedItem(absolutePath, bArr));
                    return;
                }
                return;
            }
            ThumbnailPreference.putThumbnailKey(request.mDBItem.getSha1());
            fireFailEvent(request, null, new DownloadFailReason(ErrorCode.WRITE_EXIF_ERROR, "write exif error", null));
        }
    }

    private boolean isValidUrl(Uri uri) {
        String scheme = uri.getScheme();
        return "http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
    }

    private boolean checkConditionPermitted(DownloadItem item) {
        DownloadFailReason reason = DownloadUtil.checkCondition(item);
        if (reason == null) {
            return true;
        }
        if (item.isStatusOk()) {
            DownloadItem.callbackError(item, reason);
        }
        return false;
    }

    private JSONObject requestUrls(Account account, GalleryExtendedAuthToken extToken, List<RequestItem> requests) {
        DownloadFailReason failReason;
        StringBuilder ids = new StringBuilder();
        for (RequestItem request : requests) {
            if (ids.length() > 0) {
                ids.append(",");
            }
            ids.append(request.mDBItem.getRequestId());
        }
        String url = getRequestUrl((RequestItem) requests.get(0), account.name);
        ArrayList<NameValuePair> params = new ArrayList();
        params.add(new BasicNameValuePair("width", Integer.toString(getRequestWidth())));
        params.add(new BasicNameValuePair(nexExportFormat.TAG_FORMAT_HEIGHT, Integer.toString(getRequestHeight())));
        params.add(new BasicNameValuePair("ids", ids.toString()));
        params.add(new BasicNameValuePair("priority", ((RequestItem) requests.get(0)).mDownloadItem.getType().isBackground() ? "low" : "high"));
        JSONObject thumbnails = null;
        DownloadFailReason failReason2 = null;
        try {
            JSONObject json = CloudUtils.getFromXiaomi(url, params, account, extToken, 0, false);
            if (json == null) {
                failReason2 = new DownloadFailReason(ErrorCode.SERVER_ERROR, "data empty", null);
            } else if (json.optInt(CommonResult.RESULT_CODE) == 0) {
                JSONObject data = json.optJSONObject("data");
                if (data != null) {
                    thumbnails = data.optJSONObject("content");
                }
                if (thumbnails == null) {
                    failReason2 = new DownloadFailReason(ErrorCode.SERVER_ERROR, "data empty", null);
                }
            } else {
                failReason2 = new DownloadFailReason(ErrorCode.SERVER_ERROR, json.optString("description"), null);
            }
            if (failReason2 != null) {
                for (RequestItem request2 : requests) {
                    fireFailEvent(request2, null, failReason2);
                }
            }
        } catch (JSONException e) {
            failReason = new DownloadFailReason(ErrorCode.DATA_PARSE_ERROR, "parse data error", e);
            if (failReason != null) {
                for (RequestItem request22 : requests) {
                    fireFailEvent(request22, null, failReason);
                }
                failReason2 = failReason;
            }
        } catch (ConnectTimeoutException e2) {
            failReason = new DownloadFailReason(ErrorCode.CONNECT_TIMEOUT, String.format("connect timeout: %s", new Object[]{url}), e2);
            if (failReason != null) {
                for (RequestItem request222 : requests) {
                    fireFailEvent(request222, null, failReason);
                }
                failReason2 = failReason;
            }
        } catch (SocketTimeoutException e3) {
            failReason = new DownloadFailReason(ErrorCode.SOCKET_TIMEOUT, String.format("connect timeout: %s", new Object[]{url}), e3);
            if (failReason != null) {
                for (RequestItem request2222 : requests) {
                    fireFailEvent(request2222, null, failReason);
                }
                failReason2 = failReason;
            }
        } catch (GalleryMiCloudServerException e4) {
            failReason = new DownloadFailReason(ErrorParseUtil.parseError(e4, null), e4.getCloudServerException().getMessage(), e4.getCloudServerException());
            if (failReason != null) {
                for (RequestItem request22222 : requests) {
                    fireFailEvent(request22222, null, failReason);
                }
                failReason2 = failReason;
            }
        } catch (Throwable th) {
            if (null != null) {
                for (RequestItem request222222 : requests) {
                    fireFailEvent(request222222, null, null);
                }
            }
        }
        return thumbnails;
    }

    private String getRequestUrl(RequestItem requestItem, String userId) {
        if (requestItem.mDBItem.isShareItem()) {
            return ShareMedia.getRequestThumbnailUrl();
        }
        return OwnerMedia.getRequestThumbnailUrl();
    }

    /* JADX WARNING: Removed duplicated region for block: B:85:0x04d4 A:{Catch:{ all -> 0x05fd }} */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x050a  */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x05ee A:{SYNTHETIC, Splitter: B:100:0x05ee} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x056c A:{Catch:{ all -> 0x05fd }} */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x059f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private String downloadFile(RequestItem item, String url) {
        long start;
        OutputStream outputStream;
        ConnectTimeoutException e;
        SocketTimeoutException e2;
        Throwable t;
        Throwable th;
        HttpURLConnection connection = null;
        InputStream in = null;
        ParcelFileDescriptor pfd = null;
        File downloadTempFile = new File(DownloadUtil.getDownloadTempFilePath(item.mDBItem, item.mDownloadItem.getType()));
        int count = 0;
        boolean needRetry = true;
        OutputStream out = null;
        while (needRetry && count < MAX_TRY_COUNT) {
            needRetry = false;
            start = System.currentTimeMillis();
            try {
                connection = NetworkUtils.getHttpConn(url, RequestType.GET);
                int requestTimeOut = FileDownload.getConnTimeout(item.mDownloadItem.getType());
                if (item.mDBItem.isVideoType()) {
                    requestTimeOut = FileDownload.clampConnTimeout(requestTimeOut * 2);
                }
                connection.setConnectTimeout(requestTimeOut);
                connection.setReadTimeout(requestTimeOut);
                connection.connect();
                int statusCode = connection.getResponseCode();
                if (statusCode < 200 || statusCode >= 300) {
                    if (CheckResult.checkKSSThumbnailResult(statusCode) == GallerySyncResult.NotRetryError) {
                        ThumbnailPreference.putThumbnailKey(item.mDBItem.getSha1());
                        Log.e(getTag(), "thumbnail can't be download forever, just add sha1 to preference %d, %s", Integer.valueOf(statusCode), item.mDBItem.getSha1());
                        HashMap<String, String> params = new HashMap();
                        params.put("statusCode", String.valueOf(statusCode));
                        params.put("downloadType", String.valueOf(item.mDownloadItem.getType()));
                        BaseSamplingStatHelper.recordErrorEvent("Sync", "sync_thumbnail_build_error", params);
                        fireFailEvent(item, url, new DownloadFailReason(ErrorCode.THUMBNAIL_BUILD_ERROR, String.format("thumbnail can't build: %s", new Object[]{item.mDBItem.getFileName()}), null));
                        BaseMiscUtil.closeSilently(in);
                        BaseMiscUtil.closeSilently(out);
                        BaseMiscUtil.closeSilently(pfd);
                        if (connection != null) {
                            connection.disconnect();
                        }
                        Log.d(getTag(), "download %s, origin file %s, cost %d, success %s", item.mDownloadItem, item.mDBItem.getFileName(), Long.valueOf(System.currentTimeMillis() - start), Boolean.valueOf(FileUtils.isFileExist(downloadTempFile.getAbsolutePath())));
                        count++;
                        outputStream = out;
                        return null;
                    } else if (CheckResult.isNotRetryCode(statusCode)) {
                        fireFailEvent(item, url, new DownloadFailReason(ErrorCode.SERVER_ERROR, String.format("server ret: %s", new Object[]{Integer.valueOf(statusCode)}), null));
                        BaseMiscUtil.closeSilently(in);
                        BaseMiscUtil.closeSilently(out);
                        BaseMiscUtil.closeSilently(pfd);
                        if (connection != null) {
                            connection.disconnect();
                        }
                        Log.d(getTag(), "download %s, origin file %s, cost %d, success %s", item.mDownloadItem, item.mDBItem.getFileName(), Long.valueOf(System.currentTimeMillis() - start), Boolean.valueOf(FileUtils.isFileExist(downloadTempFile.getAbsolutePath())));
                        count++;
                        outputStream = out;
                        return null;
                    }
                }
                long totalSize = (long) connection.getContentLength();
                if (totalSize <= 0) {
                    totalSize = item.mDBItem.getSize();
                }
                try {
                    in = connection.getInputStream();
                    OutputStream fileOutputStream;
                    if (BaseDocumentProviderUtils.needUseDocumentProvider(downloadTempFile.getAbsolutePath())) {
                        DocumentFile downloadTempDocumentFile = BaseDocumentProviderUtils.getDocumentFile(GalleryApp.sGetAndroidContext(), downloadTempFile);
                        if (downloadTempDocumentFile == null) {
                            BaseMiscUtil.closeSilently(in);
                            BaseMiscUtil.closeSilently(out);
                            BaseMiscUtil.closeSilently(pfd);
                            if (connection != null) {
                                connection.disconnect();
                            }
                            Log.d(getTag(), "download %s, origin file %s, cost %d, success %s", item.mDownloadItem, item.mDBItem.getFileName(), Long.valueOf(System.currentTimeMillis() - start), Boolean.valueOf(FileUtils.isFileExist(downloadTempFile.getAbsolutePath())));
                            count++;
                            outputStream = out;
                            return null;
                        }
                        Uri uri = downloadTempDocumentFile.getUri();
                        pfd = GalleryApp.sGetAndroidContext().getContentResolver().openFileDescriptor(uri, MiCloudSmsCmd.TYPE_WIPE);
                        fileOutputStream = new FileOutputStream(pfd.getFileDescriptor());
                    } else {
                        fileOutputStream = new FileOutputStream(downloadTempFile, false);
                    }
                } catch (FileNotFoundException e3) {
                    ThumbnailPreference.putThumbnailKey(item.mDBItem.getSha1());
                    fireFailEvent(item, url, new DownloadFailReason(ErrorCode.THUMBNAIL_BUILD_ERROR, String.format(Locale.US, "thumbnail build error, ret %s", new Object[]{Integer.valueOf(statusCode)}), e3));
                    BaseMiscUtil.closeSilently(in);
                    BaseMiscUtil.closeSilently(out);
                    BaseMiscUtil.closeSilently(pfd);
                    if (connection != null) {
                        connection.disconnect();
                    }
                    Log.d(getTag(), "download %s, origin file %s, cost %d, success %s", item.mDownloadItem, item.mDBItem.getFileName(), Long.valueOf(System.currentTimeMillis() - start), Boolean.valueOf(FileUtils.isFileExist(downloadTempFile.getAbsolutePath())));
                    count++;
                    outputStream = out;
                    return null;
                }
                try {
                    byte[] m_dataBuffer = new byte[8192];
                    long currentSize = 0;
                    while (true) {
                        int len = in.read(m_dataBuffer, 0, 8192);
                        if (len < 0) {
                            break;
                        }
                        outputStream.write(m_dataBuffer, 0, len);
                        currentSize += (long) len;
                        DownloadItem.callbackProgress(item.mDownloadItem, currentSize, totalSize);
                    }
                    outputStream.flush();
                    decreaseConnTimeout(item.mDownloadItem.getType());
                    DownloadUtil.statDownloadSuccess(item);
                    BaseMiscUtil.closeSilently(in);
                    BaseMiscUtil.closeSilently(outputStream);
                    BaseMiscUtil.closeSilently(pfd);
                    if (connection != null) {
                        connection.disconnect();
                    }
                    Log.d(getTag(), "download %s, origin file %s, cost %d, success %s", item.mDownloadItem, item.mDBItem.getFileName(), Long.valueOf(System.currentTimeMillis() - start), Boolean.valueOf(FileUtils.isFileExist(downloadTempFile.getAbsolutePath())));
                    count++;
                    DownloadUtil.statDownloadRetryTimes(item, count, MAX_TRY_COUNT);
                    return downloadTempFile.getAbsolutePath();
                } catch (ConnectTimeoutException e4) {
                    e = e4;
                } catch (SocketTimeoutException e5) {
                    e2 = e5;
                    needRetry = true;
                    increaseConnTimeout(item.mDownloadItem.getType());
                    if (count + 1 >= MAX_TRY_COUNT) {
                    }
                    BaseMiscUtil.closeSilently(in);
                    BaseMiscUtil.closeSilently(outputStream);
                    BaseMiscUtil.closeSilently(pfd);
                    if (connection != null) {
                    }
                    Log.d(getTag(), "download %s, origin file %s, cost %d, success %s", item.mDownloadItem, item.mDBItem.getFileName(), Long.valueOf(System.currentTimeMillis() - start), Boolean.valueOf(FileUtils.isFileExist(downloadTempFile.getAbsolutePath())));
                    count++;
                    out = outputStream;
                } catch (Throwable th2) {
                    t = th2;
                    if (checkConditionPermitted(item.mDownloadItem)) {
                    }
                    BaseMiscUtil.closeSilently(in);
                    BaseMiscUtil.closeSilently(outputStream);
                    BaseMiscUtil.closeSilently(pfd);
                    if (connection != null) {
                    }
                    Log.d(getTag(), "download %s, origin file %s, cost %d, success %s", item.mDownloadItem, item.mDBItem.getFileName(), Long.valueOf(System.currentTimeMillis() - start), Boolean.valueOf(FileUtils.isFileExist(downloadTempFile.getAbsolutePath())));
                    count++;
                    out = outputStream;
                }
            } catch (ConnectTimeoutException e6) {
                e = e6;
                outputStream = out;
            } catch (SocketTimeoutException e7) {
                e2 = e7;
                outputStream = out;
                needRetry = true;
                increaseConnTimeout(item.mDownloadItem.getType());
                if (count + 1 >= MAX_TRY_COUNT) {
                    fireFailEvent(item, url, new DownloadFailReason(ErrorCode.SOCKET_TIMEOUT, String.format("socket timeout: %s", new Object[]{url}), e2));
                }
                BaseMiscUtil.closeSilently(in);
                BaseMiscUtil.closeSilently(outputStream);
                BaseMiscUtil.closeSilently(pfd);
                if (connection != null) {
                    connection.disconnect();
                    connection = null;
                }
                Log.d(getTag(), "download %s, origin file %s, cost %d, success %s", item.mDownloadItem, item.mDBItem.getFileName(), Long.valueOf(System.currentTimeMillis() - start), Boolean.valueOf(FileUtils.isFileExist(downloadTempFile.getAbsolutePath())));
                count++;
                out = outputStream;
            } catch (Throwable th3) {
                th = th3;
                outputStream = out;
            }
        }
        DownloadUtil.statDownloadRetryTimes(item, count, MAX_TRY_COUNT);
        return downloadTempFile.getAbsolutePath();
        needRetry = true;
        try {
            increaseConnTimeout(item.mDownloadItem.getType());
            if (count + 1 >= MAX_TRY_COUNT) {
                fireFailEvent(item, url, new DownloadFailReason(ErrorCode.CONNECT_TIMEOUT, String.format("connect timeout: %s", new Object[]{url}), e));
            }
            BaseMiscUtil.closeSilently(in);
            BaseMiscUtil.closeSilently(outputStream);
            BaseMiscUtil.closeSilently(pfd);
            if (connection != null) {
                connection.disconnect();
                connection = null;
            }
            Log.d(getTag(), "download %s, origin file %s, cost %d, success %s", item.mDownloadItem, item.mDBItem.getFileName(), Long.valueOf(System.currentTimeMillis() - start), Boolean.valueOf(FileUtils.isFileExist(downloadTempFile.getAbsolutePath())));
            count++;
            out = outputStream;
        } catch (Throwable th4) {
            th = th4;
        }
        BaseMiscUtil.closeSilently(in);
        BaseMiscUtil.closeSilently(outputStream);
        BaseMiscUtil.closeSilently(pfd);
        if (connection != null) {
            connection.disconnect();
        }
        Log.d(getTag(), "download %s, origin file %s, cost %d, success %s", item.mDownloadItem, item.mDBItem.getFileName(), Long.valueOf(System.currentTimeMillis() - start), Boolean.valueOf(FileUtils.isFileExist(downloadTempFile.getAbsolutePath())));
        count++;
        throw th;
    }

    private void increaseConnTimeout(DownloadType type) {
        int timeout = FileDownload.getConnTimeout(type) + 3000;
        if (FileDownload.setConnTimeout(type, timeout)) {
            Log.i(getTag(), "increase conn timeout %d, type %s", Integer.valueOf(timeout), type.name());
        }
    }

    private void decreaseConnTimeout(DownloadType type) {
        int timeout = FileDownload.getConnTimeout(type) - 1000;
        if (FileDownload.setConnTimeout(type, timeout)) {
            Log.i(getTag(), "decrease conn timeout %d, type %s", Integer.valueOf(timeout), type.name());
        }
    }

    private void fireFailEvent(RequestItem item, String url, DownloadFailReason reason) {
        Log.d(getTag(), "download fail %s", (Object) reason);
        if ((reason != null ? reason.getCause() : null) != null) {
            Log.e(getTag(), reason.getCause());
        }
        deleteTempFile(item);
        if (item.mDownloadItem.isStatusOk()) {
            DownloadItem.callbackError(item.mDownloadItem, reason);
        }
        DownloadUtil.statDownloadError(item, url, reason);
    }

    private void deleteTempFile(RequestItem item) {
        if (item.mDBItem != null) {
            String tempFile = DownloadUtil.getDownloadTempFilePath(item.mDBItem, item.mDownloadItem.getType());
            MediaFileUtils.deleteFileType(FileType.TEMP, tempFile);
        }
    }

    private String downloadData(RequestItem item, String data) {
        ParcelFileDescriptor pfd = null;
        File downloadFile = new File(DownloadUtil.getDownloadTempFilePath(item.mDBItem, item.mDownloadItem.getType()));
        try {
            OutputStream out;
            if (BaseDocumentProviderUtils.needUseDocumentProvider(downloadFile.getAbsolutePath())) {
                DocumentFile downloadDocumentFile = BaseDocumentProviderUtils.getDocumentFile(GalleryApp.sGetAndroidContext(), downloadFile);
                if (downloadDocumentFile != null) {
                    pfd = GalleryApp.sGetAndroidContext().getContentResolver().openFileDescriptor(downloadDocumentFile.getUri(), MiCloudSmsCmd.TYPE_WIPE);
                    out = new FileOutputStream(pfd.getFileDescriptor());
                }
                return null;
            }
            out = new FileOutputStream(downloadFile, false);
            out.write(Base64.decode(data.getBytes(Keyczar.DEFAULT_ENCODING), 2));
            BaseMiscUtil.closeSilently(out);
            BaseMiscUtil.closeSilently(pfd);
            return downloadFile.getAbsolutePath();
        } catch (Object e) {
            Log.e(getTag(), "download data error.", e);
        } catch (Object e2) {
            Log.e(getTag(), "download data error.", e2);
        } catch (Object e22) {
            Log.e(getTag(), "download data error.", e22);
        } finally {
            BaseMiscUtil.closeSilently(null);
            BaseMiscUtil.closeSilently(null);
        }
    }

    private boolean checkItemValid(RequestItem item) {
        DBImage dbImage = item.mDBItem;
        if (DownloadUtil.canDownloadStatus(dbImage)) {
            return true;
        }
        if (dbImage == null) {
            fireFailEvent(item, null, new DownloadFailReason(ErrorCode.PARAMS_ERROR, "dbImage null", null));
        } else if (DownloadUtil.isNotSyncedStatus(dbImage)) {
            fireFailEvent(item, null, new DownloadFailReason(ErrorCode.NOT_SYNCED, String.format("item invalid server[%s], local[%s]", new Object[]{dbImage.getServerStatus(), Integer.valueOf(dbImage.getLocalFlag())}), null));
        } else {
            fireFailEvent(item, null, new DownloadFailReason(ErrorCode.PARAMS_ERROR, String.format("item invalid server[%s], local[%s]", new Object[]{dbImage.getServerStatus(), Integer.valueOf(dbImage.getLocalFlag())}), null));
        }
        return false;
    }

    protected boolean handleDownloadTempFile(RequestItem item, String downloadTemp) {
        return true;
    }
}
