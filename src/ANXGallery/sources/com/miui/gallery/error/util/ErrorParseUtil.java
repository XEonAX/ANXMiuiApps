package com.miui.gallery.error.util;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.GalleryMiCloudServerException;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StorageUtils;
import com.miui.security.net.NetworkRestrict;
import com.xiaomi.micloudsdk.exception.CloudServerException;
import com.xiaomi.opensdk.exception.RetriableException;
import com.xiaomi.opensdk.exception.UnretriableException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.HttpHostConnectException;

public class ErrorParseUtil {
    public static ErrorCode parseError(Throwable t, String filePath) {
        if (t instanceof ConnectTimeoutException) {
            return ErrorCode.CONNECT_TIMEOUT;
        }
        if (t instanceof SocketTimeoutException) {
            return ErrorCode.SOCKET_TIMEOUT;
        }
        String msg;
        if (isHostConnectException(t)) {
            Context context = GalleryApp.sGetAndroidContext();
            if (NetworkUtils.isActiveNetworkMetered()) {
                if (NetworkRestrict.isMobileRestrict(context, "com.miui.gallery")) {
                    Log.d("ErrorParseUtil", "mobile net is restrict");
                    return ErrorCode.NETWORK_RESTRICT;
                }
            } else if (NetworkRestrict.isWifiRestrict(context, "com.miui.gallery")) {
                Log.d("ErrorParseUtil", "wifi is restrict");
                return ErrorCode.NETWORK_RESTRICT;
            }
        }
        if (t instanceof IOException) {
            msg = t.getCause() != null ? t.getCause().getMessage() : t.getMessage();
            if (!TextUtils.isEmpty(msg) && (msg.contains("EROFS") || msg.contains("Read-only file system") || msg.contains("EPERM") || msg.contains("ENOTCONN") || msg.contains("EBUSY") || msg.contains("ENOSPC") || msg.contains("Permission denied"))) {
                String secondaryStoragePath = StorageUtils.getSecondaryStoragePath();
                if (TextUtils.isEmpty(secondaryStoragePath) || !msg.contains(secondaryStoragePath)) {
                    return ErrorCode.PRIMARY_STORAGE_WRITE_ERROR;
                }
                return ErrorCode.SECONDARY_STORAGE_WRITE_ERROR;
            }
        }
        if (t instanceof FileNotFoundException) {
            if ((TextUtils.isEmpty(t.getMessage()) ? t.toString() : t.getMessage()).contains("No space left on device")) {
                return ErrorCode.STORAGE_FULL;
            }
        }
        if (t instanceof GalleryMiCloudServerException) {
            Exception serverException = ((GalleryMiCloudServerException) t).getCloudServerException();
            if ((serverException instanceof CloudServerException) && ((CloudServerException) serverException).is5xxServerException()) {
                return ErrorCode.OVER_QUOTA;
            }
            return ErrorCode.SERVER_ERROR;
        } else if (t instanceof RetriableException) {
            return ErrorCode.RETRIABLE_ERROR;
        } else {
            if (t instanceof UnretriableException) {
                msg = TextUtils.isEmpty(t.getMessage()) ? t.toString() : t.getMessage();
                if (!TextUtils.isEmpty(msg) && msg.contains("Local IO error")) {
                    try {
                        testWriteStorage(filePath);
                    } catch (IOException e) {
                        return parseError(e, null);
                    }
                }
            }
            return ErrorCode.UNKNOWN;
        }
    }

    private static void testWriteStorage(String filePath) throws IOException {
        Throwable th;
        filePath = StorageUtils.getVolumePath(GalleryApp.sGetAndroidContext(), filePath);
        if (TextUtils.isEmpty(filePath)) {
            filePath = StorageUtils.getPriorStoragePath();
        }
        File testFile = new File(filePath, ".test");
        FileOutputStream fos = null;
        try {
            FileOutputStream fos2 = new FileOutputStream(testFile);
            try {
                fos2.write("test".getBytes());
                testFile.delete();
                BaseMiscUtil.closeSilently(fos2);
            } catch (Throwable th2) {
                th = th2;
                fos = fos2;
                testFile.delete();
                BaseMiscUtil.closeSilently(fos);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            testFile.delete();
            BaseMiscUtil.closeSilently(fos);
            throw th;
        }
    }

    private static boolean isHostConnectException(Throwable t) {
        if ((t instanceof HttpHostConnectException) || (t instanceof UnknownHostException)) {
            return true;
        }
        String msg = t.toString();
        if (TextUtils.isEmpty(msg) || !msg.contains("HttpHostConnectException")) {
            return false;
        }
        return true;
    }
}
