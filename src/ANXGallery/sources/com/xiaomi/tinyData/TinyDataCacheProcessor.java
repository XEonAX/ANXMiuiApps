package com.xiaomi.tinyData;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.push.service.XMPushService.PingCallBack;
import com.xiaomi.xmpush.thrift.ConfigKey;
import java.io.File;

public class TinyDataCacheProcessor implements PingCallBack {
    private static boolean mIsTinyDataExtracting = false;
    private Context mContext;
    private int mPeriod;
    private boolean mUploadSwitch;

    public TinyDataCacheProcessor(Context context) {
        this.mContext = context;
    }

    public void pingFollowUpAction() {
        readOnlineConfig(this.mContext);
        if (this.mUploadSwitch && verifyUploadPeriod()) {
            MyLog.w("TinyData TinyDataCacheProcessor.pingFollowUpAction ts:" + System.currentTimeMillis());
            TinyDataUploader uploader = TinyDataManager.getInstance(this.mContext).getUploader();
            if (canUpload(uploader)) {
                mIsTinyDataExtracting = true;
                TinyDataCacheReader.addTinyDataCacheReadJob(this.mContext, uploader);
                return;
            }
            MyLog.w("TinyData TinyDataCacheProcessor.pingFollowUpAction !canUpload(uploader) ts:" + System.currentTimeMillis());
        }
    }

    private void readOnlineConfig(Context context) {
        this.mUploadSwitch = OnlineConfig.getInstance(context).getBooleanValue(ConfigKey.TinyDataUploadSwitch.getValue(), true);
        this.mPeriod = OnlineConfig.getInstance(context).getIntValue(ConfigKey.TinyDataUploadFrequency.getValue(), 7200);
        this.mPeriod = Math.max(60, this.mPeriod);
    }

    private boolean verifyUploadPeriod() {
        return Math.abs((System.currentTimeMillis() / 1000) - this.mContext.getSharedPreferences("mipush_extra", 4).getLong("last_tiny_data_upload_timestamp", -1)) > ((long) this.mPeriod);
    }

    private boolean canUpload(TinyDataUploader uploader) {
        if (!Network.hasNetwork(this.mContext) || uploader == null || TextUtils.isEmpty(getAppId(this.mContext.getPackageName())) || !new File(this.mContext.getFilesDir(), "tiny_data.data").exists() || mIsTinyDataExtracting) {
            return false;
        }
        return true;
    }

    private String getAppId(String pkgName) {
        if ("com.xiaomi.xmsf".equals(pkgName)) {
            return "1000271";
        }
        return this.mContext.getSharedPreferences("pref_registered_pkg_names", 0).getString(pkgName, null);
    }

    public static void setIsTinyDataExtracting(boolean status) {
        mIsTinyDataExtracting = status;
    }
}
