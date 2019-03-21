package com.xiaomi.push.service.awake.module;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.awake.AwakeDataHelper;
import com.xiaomi.push.service.awake.AwakeUploadHelper;
import com.xiaomi.push.service.awake.ComponentHelper;

class ServiceActionAwakeModule implements IAwakeModule {
    ServiceActionAwakeModule() {
    }

    public void doAwake(Context context, AwakeInfo packageInfo) {
        if (packageInfo != null) {
            awakeByServiceAction(context, packageInfo.getTargetPackageName(), packageInfo.getAction(), packageInfo.getAwakeInfo());
        } else {
            AwakeUploadHelper.uploadData(context, "service", 1008, "A receive incorrect message");
        }
    }

    public void doSendAwakeResult(Context context, Intent intent, String uri) {
        if (context == null || !(context instanceof Service)) {
            AwakeUploadHelper.uploadData(context, "service", 1008, "A receive incorrect message");
        } else {
            parseService((Service) context, intent);
        }
    }

    private void awakeByServiceAction(Context context, String targetPackage, String action, String awakeInfo) {
        if (context == null || TextUtils.isEmpty(targetPackage) || TextUtils.isEmpty(action) || TextUtils.isEmpty(awakeInfo)) {
            if (TextUtils.isEmpty(awakeInfo)) {
                AwakeUploadHelper.uploadData(context, "service", 1008, "argument error");
            } else {
                AwakeUploadHelper.uploadData(context, awakeInfo, 1008, "argument error");
            }
        } else if (ComponentHelper.checkService(context, targetPackage, action)) {
            AwakeUploadHelper.uploadData(context, awakeInfo, 1002, "B is ready");
            AwakeUploadHelper.uploadData(context, awakeInfo, 1004, "A is ready");
            try {
                Intent serviceIntent = new Intent();
                serviceIntent.setAction(action);
                serviceIntent.setPackage(targetPackage);
                serviceIntent.putExtra("awake_info", AwakeDataHelper.encode(awakeInfo));
                if (context.startService(serviceIntent) != null) {
                    AwakeUploadHelper.uploadData(context, awakeInfo, 1005, "A is successful");
                    AwakeUploadHelper.uploadData(context, awakeInfo, 1006, "The job is finished");
                    return;
                }
                AwakeUploadHelper.uploadData(context, awakeInfo, 1008, "A is fail to help B's service");
            } catch (Throwable e) {
                MyLog.e(e);
                AwakeUploadHelper.uploadData(context, awakeInfo, 1008, "A meet a exception when help B's service");
            }
        } else {
            AwakeUploadHelper.uploadData(context, awakeInfo, 1003, "B is not ready");
        }
    }

    private void parseService(Service service, Intent intent) {
        String awakeInfo = intent.getStringExtra("awake_info");
        if (TextUtils.isEmpty(awakeInfo)) {
            AwakeUploadHelper.uploadData(service.getApplicationContext(), "service", 1008, "B get a incorrect message");
            return;
        }
        awakeInfo = AwakeDataHelper.decode(awakeInfo);
        if (TextUtils.isEmpty(awakeInfo)) {
            AwakeUploadHelper.uploadData(service.getApplicationContext(), "service", 1008, "B get a incorrect message");
        } else {
            AwakeUploadHelper.uploadData(service.getApplicationContext(), awakeInfo, 1007, "play with service successfully");
        }
    }
}
