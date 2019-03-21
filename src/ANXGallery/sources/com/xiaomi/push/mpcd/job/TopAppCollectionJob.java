package com.xiaomi.push.mpcd.job;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.misc.CollectionUtils;
import com.xiaomi.xmpush.thrift.ClientCollectionType;
import java.util.Calendar;
import java.util.List;

public class TopAppCollectionJob extends CollectionJob {
    private SharedPreferences preferences;

    public TopAppCollectionJob(Context context, int period) {
        super(context, period);
        this.preferences = context.getSharedPreferences("mipush_extra", 0);
    }

    public String collectInfo() {
        String result = null;
        try {
            ActivityManager activityManager = (ActivityManager) this.context.getSystemService("activity");
            if (VERSION.SDK_INT < 21) {
                result = ((RunningTaskInfo) activityManager.getRunningTasks(1).get(0)).topActivity.getPackageName();
            } else {
                UsageStatsManager usageStatsManager = (UsageStatsManager) this.context.getSystemService("usagestats");
                Calendar cal = Calendar.getInstance();
                cal.add(5, -1);
                long beginTime = cal.getTimeInMillis();
                cal.add(5, 1);
                List<UsageStats> queryUsageStats = usageStatsManager.queryUsageStats(0, beginTime, cal.getTimeInMillis());
                if (CollectionUtils.isEmpty(queryUsageStats)) {
                    return null;
                }
                long recentTime = 0;
                String recentPkg = "";
                for (int i = 0; i < queryUsageStats.size(); i++) {
                    UsageStats stats = (UsageStats) queryUsageStats.get(i);
                    if (stats.getLastTimeStamp() > recentTime) {
                        recentTime = stats.getLastTimeStamp();
                        recentPkg = stats.getPackageName();
                    }
                }
                result = recentPkg;
            }
        } catch (Throwable th) {
        }
        if (TextUtils.isEmpty(result)) {
            return null;
        }
        if (TextUtils.equals(result, this.preferences.getString("ltapn", null))) {
            return "^";
        }
        this.preferences.edit().putString("ltapn", result).commit();
        return result;
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.TopApp;
    }

    public int getJobId() {
        return 9;
    }
}
