package com.xiaomi.push.mpcd.job;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.xiaomi.channel.commonutils.android.AppInfoUtils;
import com.xiaomi.xmpush.thrift.ClientCollectionType;

public class AppListCollectionJob extends CollectionJob {
    public AppListCollectionJob(Context context, int period) {
        super(context, period);
    }

    public String collectInfo() {
        StringBuilder builder = new StringBuilder();
        try {
            PackageManager packageManager = this.context.getPackageManager();
            int size = 0;
            for (PackageInfo info : packageManager.getInstalledPackages(128)) {
                if ((info.applicationInfo.flags & 1) == 0) {
                    if (builder.length() > 0) {
                        builder.append(";");
                    }
                    String label = info.applicationInfo.loadLabel(packageManager).toString();
                    builder.append(label).append(",").append(info.packageName).append(",").append(info.versionName).append(",").append(info.versionCode).append(",").append(AppInfoUtils.getAppPermissionBase64Str(this.context, info.packageName));
                    size++;
                    if (size >= 200) {
                        break;
                    }
                }
            }
        } catch (Throwable th) {
        }
        return builder.toString();
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.AppInstallList;
    }

    public int getJobId() {
        return 4;
    }
}
