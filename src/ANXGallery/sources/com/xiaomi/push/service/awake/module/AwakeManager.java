package com.xiaomi.push.service.awake.module;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.push.service.awake.AwakeUploadHelper;
import java.util.HashMap;
import org.json.JSONObject;

public final class AwakeManager {
    private static volatile AwakeManager sInstance;
    private String mAppId;
    private Context mContext;
    private HashMap<HelpType, IAwakeModule> mModuleMap = new HashMap();
    private int mOnLineCmd;
    private String mPackageName;
    private IProcessData mSendDataIml;

    private AwakeManager(Context context) {
        this.mContext = context;
        this.mModuleMap.put(HelpType.SERVICE_ACTION, new ServiceActionAwakeModule());
        this.mModuleMap.put(HelpType.SERVICE_COMPONENT, new ServiceComponentAwakeModule());
        this.mModuleMap.put(HelpType.ACTIVITY, new ActivityActionAwakeModule());
        this.mModuleMap.put(HelpType.PROVIDER, new ProviderAwakeModule());
    }

    public static AwakeManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (AwakeManager.class) {
                if (sInstance == null) {
                    sInstance = new AwakeManager(context);
                }
            }
        }
        return sInstance;
    }

    public void setPackageInfo(String appID, String packageName, int cmd, IProcessData sendDataIml) {
        setAppId(appID);
        setPackageName(packageName);
        setOnLineCmd(cmd);
        setSendDataIml(sendDataIml);
    }

    public IProcessData getSendDataIml() {
        return this.mSendDataIml;
    }

    public void setSendDataIml(IProcessData mSendDataIml) {
        this.mSendDataIml = mSendDataIml;
    }

    public String getAppId() {
        return this.mAppId;
    }

    public void setAppId(String mAppId) {
        this.mAppId = mAppId;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public void setPackageName(String mPackageName) {
        this.mPackageName = mPackageName;
    }

    public int getOnLineCmd() {
        return this.mOnLineCmd;
    }

    public void setOnLineCmd(int mOnLineCmd) {
        this.mOnLineCmd = mOnLineCmd;
    }

    public void wakeup(Context context, String awakeInfo, int cmd, String spackageName, String appId) {
        if (context == null || TextUtils.isEmpty(awakeInfo) || TextUtils.isEmpty(spackageName) || TextUtils.isEmpty(appId)) {
            AwakeUploadHelper.uploadData(context, "" + awakeInfo, 1008, "A receive a incorrect message");
            return;
        }
        setOnLineCmd(cmd);
        final String str = awakeInfo;
        final Context context2 = context;
        final String str2 = spackageName;
        final String str3 = appId;
        ScheduledJobManager.getInstance(this.mContext).addOneShootJob(new Runnable() {
            public void run() {
                if (TextUtils.isEmpty(str)) {
                    AwakeUploadHelper.uploadData(context2, "null", 1008, "A receive a incorrect message with empty info");
                    return;
                }
                try {
                    AwakeUploadHelper.uploadData(context2, str, 1001, "get message");
                    JSONObject jsonObject = new JSONObject(str);
                    String action = jsonObject.optString("action");
                    String targetPackageName = jsonObject.optString("awakened_app_packagename");
                    String srcPackageName = jsonObject.optString("awake_app_packagename");
                    String srcAppId = jsonObject.optString("awake_app");
                    String helpType = jsonObject.optString("awake_type");
                    if (!str2.equals(srcPackageName) || !str3.equals(srcAppId)) {
                        AwakeUploadHelper.uploadData(context2, str, 1008, "A receive a incorrect message with incorrect package info" + srcPackageName);
                    } else if (TextUtils.isEmpty(helpType) || TextUtils.isEmpty(srcPackageName) || TextUtils.isEmpty(srcAppId) || TextUtils.isEmpty(targetPackageName)) {
                        AwakeUploadHelper.uploadData(context2, str, 1008, "A receive a incorrect message with empty type");
                    } else {
                        AwakeManager.this.setPackageName(srcPackageName);
                        AwakeManager.this.setAppId(srcAppId);
                        AwakeInfo localAwakeInfo = new AwakeInfo();
                        localAwakeInfo.setAction(action);
                        localAwakeInfo.setTargetPackageName(targetPackageName);
                        localAwakeInfo.setAwakeInfo(str);
                        if ("service".equals(helpType)) {
                            if (TextUtils.isEmpty(action)) {
                                localAwakeInfo.setClassName("com.xiaomi.mipush.sdk.PushMessageHandler");
                                AwakeManager.this.doAwake(HelpType.SERVICE_COMPONENT, context2, localAwakeInfo);
                                return;
                            }
                            AwakeManager.this.doAwake(HelpType.SERVICE_ACTION, context2, localAwakeInfo);
                        } else if (HelpType.ACTIVITY.typeValue.equals(helpType)) {
                            AwakeManager.this.doAwake(HelpType.ACTIVITY, context2, localAwakeInfo);
                        } else if (HelpType.PROVIDER.typeValue.equals(helpType)) {
                            AwakeManager.this.doAwake(HelpType.PROVIDER, context2, localAwakeInfo);
                        } else {
                            AwakeUploadHelper.uploadData(context2, str, 1008, "A receive a incorrect message with unknown type " + helpType);
                        }
                    }
                } catch (Throwable e) {
                    MyLog.e(e);
                    AwakeUploadHelper.uploadData(context2, str, 1008, "A meet a exception when receive the message");
                }
            }
        });
    }

    public void sendResult(HelpType helpType, Context context, Intent intent, String uri) {
        if (helpType != null) {
            ((IAwakeModule) this.mModuleMap.get(helpType)).doSendAwakeResult(context, intent, uri);
        } else {
            AwakeUploadHelper.uploadData(context, "null", 1008, "A receive a incorrect message with empty type");
        }
    }

    private void doAwake(HelpType helpType, Context context, AwakeInfo awakeInfo) {
        ((IAwakeModule) this.mModuleMap.get(helpType)).doAwake(context, awakeInfo);
    }
}
