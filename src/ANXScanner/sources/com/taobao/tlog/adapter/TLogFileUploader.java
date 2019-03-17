package com.taobao.tlog.adapter;

import android.content.Context;
import com.taobao.tao.log.TLogConstant;
import com.taobao.tao.log.TLogUtils;
import com.taobao.tao.log.collect.LogFileUploadManager;
import java.util.HashMap;
import java.util.Map;

public class TLogFileUploader {
    private static boolean isValid;

    static {
        isValid = false;
        try {
            Class.forName("com.taobao.tao.log.TLog");
            isValid = true;
        } catch (ClassNotFoundException e) {
            isValid = false;
        }
    }

    public static void uploadLogFile(Context context, Map<String, Object> params) {
        uploadLogFile(context, params, null);
    }

    public static void uploadLogFile(Context context, Map<String, Object> params, String fileName) {
        if (isValid) {
            if (params != null) {
                Object exception = params.get("type");
                if ((exception instanceof String) && "exception".equalsIgnoreCase((String) exception)) {
                    return;
                }
            }
            LogFileUploadManager logFileUploadManager = LogFileUploadManager.getInstances(context);
            if (fileName == null) {
                logFileUploadManager.addFiles(TLogUtils.getFilePath(TLogConstant.FILE_PREFIX, 1, null));
            } else {
                logFileUploadManager.addFiles(TLogUtils.getFilePath(fileName, 1, null));
            }
            logFileUploadManager.setType("client");
            logFileUploadManager.setExtData(params);
            Map<String, String> reportParams = new HashMap();
            reportParams.put("userId", "-1");
            reportParams.put("serviceId", "motu-remote");
            reportParams.put("serialNumber", "-1");
            reportParams.put("taskId", "-1");
            logFileUploadManager.setReportParams(reportParams);
            logFileUploadManager.startUpload();
        }
    }
}
