package com.xiaomi.push.service.awake.module;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.awake.AwakeDataHelper;
import com.xiaomi.push.service.awake.AwakeUploadHelper;
import com.xiaomi.push.service.awake.ComponentHelper;

class ActivityActionAwakeModule implements IAwakeModule {
    ActivityActionAwakeModule() {
    }

    public void doAwake(Context context, AwakeInfo packageInfo) {
        if (packageInfo != null) {
            awakeByActivity(context, packageInfo.getTargetPackageName(), packageInfo.getAction(), packageInfo.getAwakeInfo());
        } else {
            AwakeUploadHelper.uploadData(context, "activity", 1008, "A receive incorrect message");
        }
    }

    public void doSendAwakeResult(Context context, Intent intent, String uri) {
        if (context == null || !(context instanceof Activity) || intent == null) {
            AwakeUploadHelper.uploadData(context, "activity", 1008, "B receive incorrect message");
        } else {
            parseActivity((Activity) context, intent);
        }
    }

    private void awakeByActivity(Context context, String targetPackage, String action, String awakeInfo) {
        if (context == null || TextUtils.isEmpty(targetPackage) || TextUtils.isEmpty(action) || TextUtils.isEmpty(awakeInfo)) {
            if (TextUtils.isEmpty(awakeInfo)) {
                AwakeUploadHelper.uploadData(context, "activity", 1008, "argument error");
            } else {
                AwakeUploadHelper.uploadData(context, awakeInfo, 1008, "argument error");
            }
        } else if (ComponentHelper.checkActivity(context, targetPackage, action)) {
            AwakeUploadHelper.uploadData(context, awakeInfo, 1002, "B is ready");
            AwakeUploadHelper.uploadData(context, awakeInfo, 1004, "A is ready");
            Intent intent = new Intent(action);
            intent.setPackage(targetPackage);
            intent.putExtra("awake_info", AwakeDataHelper.encode(awakeInfo));
            intent.addFlags(276824064);
            intent.setAction(action);
            try {
                context.startActivity(intent);
                AwakeUploadHelper.uploadData(context, awakeInfo, 1005, "A is successful");
                AwakeUploadHelper.uploadData(context, awakeInfo, 1006, "The job is finished");
            } catch (Throwable e) {
                MyLog.e(e);
                AwakeUploadHelper.uploadData(context, awakeInfo, 1008, "A meet a exception when help B's activity");
            }
        } else {
            AwakeUploadHelper.uploadData(context, awakeInfo, 1003, "B is not ready");
        }
    }

    private void parseActivity(Activity activity, Intent intent) {
        String awakeInfo = intent.getStringExtra("awake_info");
        if (TextUtils.isEmpty(awakeInfo)) {
            AwakeUploadHelper.uploadData(activity.getApplicationContext(), "activity", 1008, "B get incorrect message");
            return;
        }
        awakeInfo = AwakeDataHelper.decode(awakeInfo);
        if (TextUtils.isEmpty(awakeInfo)) {
            AwakeUploadHelper.uploadData(activity.getApplicationContext(), "activity", 1008, "B get incorrect message");
        } else {
            AwakeUploadHelper.uploadData(activity.getApplicationContext(), awakeInfo, 1007, "play with activity successfully");
        }
    }
}
