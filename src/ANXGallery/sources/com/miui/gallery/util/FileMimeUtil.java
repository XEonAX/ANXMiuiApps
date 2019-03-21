package com.miui.gallery.util;

import android.text.TextUtils;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import java.util.HashMap;
import java.util.Locale;

public class FileMimeUtil extends BaseFileMimeUtil {
    private static HashMap<String, String> sSupportUploadMimeTypeMap;

    private static String getSupportedMimeTypeByExt(String extension) {
        if (sSupportUploadMimeTypeMap == null) {
            sSupportUploadMimeTypeMap = CloudControlStrategyHelper.getUploadSupportedFileTypes();
        }
        if (sSupportUploadMimeTypeMap == null) {
            return null;
        }
        return (String) sSupportUploadMimeTypeMap.get(extension);
    }

    public static String getSupportUploadMimeType(String path) {
        if (!TextUtils.isEmpty(path)) {
            String mimeType = MediaFile.getMimeTypeForFile(path);
            if (!TextUtils.isEmpty(mimeType) && (BaseFileMimeUtil.isImageFromMimeType(mimeType) || BaseFileMimeUtil.isVideoFromMimeType(mimeType))) {
                int lastDot = path.lastIndexOf(46);
                if (lastDot >= 0) {
                    String supportUploadMimeType = getSupportedMimeTypeByExt(path.substring(lastDot + 1).toUpperCase(Locale.ROOT));
                    if (supportUploadMimeType != null) {
                        return supportUploadMimeType;
                    }
                    if (BaseFileMimeUtil.isVideoFromMimeType(mimeType)) {
                        try {
                            supportUploadMimeType = BaseFileMimeUtil.rawGetMimeType(path, VIDEO_MIMES);
                        } catch (Throwable e) {
                            Log.w("BaseFileMimeUtil", e);
                        }
                        if (supportUploadMimeType != null) {
                            return supportUploadMimeType;
                        }
                    }
                }
            }
        }
        return "*/*";
    }
}
