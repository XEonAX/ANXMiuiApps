package com.miui.gallery.error;

import android.content.Context;
import android.os.AsyncTask;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.error.core.ErrorCodeTranslator;
import com.miui.gallery.error.core.ErrorTip;
import com.miui.gallery.error.core.ErrorTranslateCallback;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.StorageUtils;
import java.util.List;

public class BaseErrorCodeTranslator implements ErrorCodeTranslator {
    private AsyncTask<ErrorCode, Void, ErrorTip> mTask;

    private ErrorTip translateInternal(Context context, ErrorCode code) {
        switch (code) {
            case NO_CTA_PERMISSION:
                return new ErrorNoCTAPermissionTip(ErrorCode.NO_CTA_PERMISSION);
            case NO_NETWORK:
                return new ErrorNoNetworkTip(ErrorCode.NO_NETWORK);
            case NO_WIFI_CONNECTED:
                return new ErrorNoWifiTip(ErrorCode.NO_WIFI_CONNECTED);
            case SYNC_OFF:
                return new ErrorSyncOffTip(ErrorCode.SYNC_OFF);
            case STORAGE_FULL:
                boolean changeStorage = false;
                if (StorageUtils.hasExternalSDCard(context)) {
                    List<String> roots = StorageUtils.getMountedVolumePaths(context);
                    if (roots != null && roots.size() > 0) {
                        for (String root : roots) {
                            if (StorageUtils.getAvailableBytes(root) > 104857600) {
                                changeStorage = true;
                            }
                        }
                    }
                }
                return changeStorage ? new ErrorChangeStorageTip(ErrorCode.STORAGE_FULL) : new ErrorStorageFullTip(ErrorCode.STORAGE_FULL);
            case STORAGE_LOW:
                return new ErrorStorageFullTip(ErrorCode.STORAGE_LOW);
            case PRIMARY_STORAGE_WRITE_ERROR:
                return new ErrorPrimaryStorageWriteTip(ErrorCode.PRIMARY_STORAGE_WRITE_ERROR);
            case SECONDARY_STORAGE_WRITE_ERROR:
                return new ErrorSecondaryStorageWriteTip(ErrorCode.SECONDARY_STORAGE_WRITE_ERROR);
            case DECODE_ERROR:
                return new ErrorDecodeTip(ErrorCode.DECODE_ERROR);
            case NETWORK_RESTRICT:
                return new ErrorNetworkRestrictTip(ErrorCode.NETWORK_RESTRICT);
            case NO_ACCOUNT:
                return new ErrorNoAccountTip(ErrorCode.NO_ACCOUNT);
            case CONNECT_TIMEOUT:
                return new ErrorConnectTimeoutTip(ErrorCode.CONNECT_TIMEOUT);
            case SOCKET_TIMEOUT:
                return new ErrorSocketTimeoutTip(ErrorCode.SOCKET_TIMEOUT);
            case OVER_QUOTA:
                return new ErrorOverQuotaTip(ErrorCode.OVER_QUOTA);
            case THUMBNAIL_BUILD_ERROR:
                return new ErrorBuildThumbnailTip(ErrorCode.THUMBNAIL_BUILD_ERROR);
            case NOT_SYNCED:
                return new ErrorNotSyncedTip(ErrorCode.NOT_SYNCED);
            case WRITE_EXIF_ERROR:
                return new ErrorWriteExifTip(ErrorCode.WRITE_EXIF_ERROR);
            default:
                return new ErrorUnknownTip(ErrorCode.UNKNOWN);
        }
    }

    public void translate(final Context context, final ErrorCode code, final ErrorTranslateCallback callback) {
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                if (BaseErrorCodeTranslator.this.mTask != null) {
                    BaseErrorCodeTranslator.this.mTask.cancel(true);
                    BaseErrorCodeTranslator.this.mTask = null;
                }
                BaseErrorCodeTranslator.this.mTask = new AsyncTask<ErrorCode, Void, ErrorTip>() {
                    protected ErrorTip doInBackground(ErrorCode... params) {
                        return BaseErrorCodeTranslator.this.translateInternal(context, params[0]);
                    }

                    protected void onPostExecute(ErrorTip tip) {
                        if (!isCancelled() && callback != null) {
                            callback.onTranslate(tip);
                        }
                    }
                }.execute(new ErrorCode[]{code});
            }
        });
    }
}
