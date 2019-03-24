package com.miui.internal.analytics;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.vip.VipConstants;
import miui.net.ConnectivityHelper;
import miui.util.AppConstants;

public class AnalyticsManager {
    private static final String TAG = "AnalyticsManager";
    private static final String a = "last_collect_analytics_data";
    private static final String b = "last_upload_usage_app";
    private static final String c = "android.intent.action.COLLECT_ANALYTICS_DATA";
    private Context mContext;

    private static class Holder {
        static final AnalyticsManager d = new AnalyticsManager(AppConstants.getCurrentApplication());

        private Holder() {
        }
    }

    public static AnalyticsManager getInstance() {
        return Holder.d;
    }

    private AnalyticsManager(Context context) {
        this.mContext = context;
    }

    public synchronized void upload() {
        if (!DeviceHelper.IS_CTA_BUILD && DeviceHelper.isDeviceProvisioned(this.mContext) && ConnectivityHelper.getInstance().isUnmeteredNetworkConnected() && EventUtils.enableWrite(this.mContext)) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.mContext);
            long currentTimeMillis = System.currentTimeMillis();
            if (a(currentTimeMillis, defaultSharedPreferences.getLong(a, 0))) {
                defaultSharedPreferences.edit().putLong(a, currentTimeMillis).commit();
                Intent intent = new Intent();
                intent.setAction(c);
                this.mContext.sendOrderedBroadcast(intent, null);
            }
            if (EventUtils.enableWrite(this.mContext) && ConnectivityHelper.getInstance().isUnmeteredNetworkConnected() && a(currentTimeMillis, defaultSharedPreferences.getLong(b, 0))) {
                defaultSharedPreferences.edit().putLong(b, currentTimeMillis).commit();
                new DispatcherHelper(this.mContext).dispatch();
            }
        }
    }

    private boolean a(long j, long j2) {
        return j - j2 >= VipConstants.DAY;
    }
}
