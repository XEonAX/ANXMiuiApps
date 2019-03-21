package com.xiaomi.push.service.awake.module;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.awake.AwakeDataHelper;
import com.xiaomi.push.service.awake.AwakeUploadHelper;
import com.xiaomi.push.service.awake.ComponentHelper;

class ProviderAwakeModule implements IAwakeModule {
    ProviderAwakeModule() {
    }

    public void doAwake(Context context, AwakeInfo packageInfo) {
        if (packageInfo != null) {
            awakeByProvider(context, packageInfo.getAction(), packageInfo.getAwakeInfo());
        } else {
            AwakeUploadHelper.uploadData(context, "provider", 1008, "A receive incorrect message");
        }
    }

    public void doSendAwakeResult(Context context, Intent intent, String uri) {
        parseProvider(context, uri);
    }

    private void awakeByProvider(Context context, String authority, String awakeInfo) {
        if (context == null || TextUtils.isEmpty(authority) || TextUtils.isEmpty(awakeInfo)) {
            if (TextUtils.isEmpty(awakeInfo)) {
                AwakeUploadHelper.uploadData(context, "provider", 1008, "argument error");
            } else {
                AwakeUploadHelper.uploadData(context, awakeInfo, 1008, "argument error");
            }
        } else if (ComponentHelper.checkProvider(context, authority)) {
            AwakeUploadHelper.uploadData(context, awakeInfo, 1002, "B is ready");
            AwakeUploadHelper.uploadData(context, awakeInfo, 1004, "A is ready");
            String info = AwakeDataHelper.encode(awakeInfo);
            try {
                if (TextUtils.isEmpty(info)) {
                    AwakeUploadHelper.uploadData(context, awakeInfo, 1008, "info is empty");
                    return;
                }
                String result = context.getContentResolver().getType(AwakeDataHelper.getContentUri(authority, info));
                if (TextUtils.isEmpty(result) || !"success".equals(result)) {
                    AwakeUploadHelper.uploadData(context, awakeInfo, 1008, "A is fail to help B's provider");
                    return;
                }
                AwakeUploadHelper.uploadData(context, awakeInfo, 1005, "A is successful");
                AwakeUploadHelper.uploadData(context, awakeInfo, 1006, "The job is finished");
            } catch (Throwable e) {
                MyLog.e(e);
                AwakeUploadHelper.uploadData(context, awakeInfo, 1008, "A meet a exception when help B's provider");
            }
        } else {
            AwakeUploadHelper.uploadData(context, awakeInfo, 1003, "B is not ready");
        }
    }

    private void parseProvider(Context context, String uri) {
        try {
            if (TextUtils.isEmpty(uri) || context == null) {
                AwakeUploadHelper.uploadData(context, "provider", 1008, "B get a incorrect message");
                return;
            }
            String[] strs = uri.split("/");
            if (strs.length <= 0 || TextUtils.isEmpty(strs[strs.length - 1])) {
                AwakeUploadHelper.uploadData(context, "provider", 1008, "B get a incorrect message");
                return;
            }
            String awakeInfo = strs[strs.length - 1];
            if (TextUtils.isEmpty(awakeInfo)) {
                AwakeUploadHelper.uploadData(context, "provider", 1008, "B get a incorrect message");
                return;
            }
            awakeInfo = Uri.decode(awakeInfo);
            if (TextUtils.isEmpty(awakeInfo)) {
                AwakeUploadHelper.uploadData(context, "provider", 1008, "B get a incorrect message");
                return;
            }
            awakeInfo = AwakeDataHelper.decode(awakeInfo);
            if (TextUtils.isEmpty(awakeInfo)) {
                AwakeUploadHelper.uploadData(context, "provider", 1008, "B get a incorrect message");
            } else {
                AwakeUploadHelper.uploadData(context, awakeInfo, 1007, "play with provider successfully");
            }
        } catch (Exception e) {
            AwakeUploadHelper.uploadData(context, "provider", 1008, "B meet a exception" + e.getMessage());
        }
    }
}
