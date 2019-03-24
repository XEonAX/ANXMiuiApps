package com.miui.internal.server;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.vip.VipConstants;
import miui.net.ConnectivityHelper;
import miui.os.DropBoxManager.Entry;
import miui.util.AppConstants;
import miui.util.ErrorReport;
import org.json.JSONObject;

public class ErrorReportManager {
    private static final String TAG = "ErrorReportManager";
    private static final String iq = "error_report_last_update_time";
    private static final int ir = 512000;
    private Context mContext;

    private static class Holder {
        static final ErrorReportManager is = new ErrorReportManager(AppConstants.getCurrentApplication());

        private Holder() {
        }
    }

    public static ErrorReportManager getInstance() {
        return Holder.is;
    }

    private ErrorReportManager(Context context) {
        this.mContext = context;
    }

    /* JADX WARNING: Missing block: B:30:0x0082, code:
            return;
     */
    /* JADX WARNING: Missing block: B:32:0x0084, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void upload() {
        if (!DeviceHelper.IS_CTA_BUILD && DeviceHelper.isDeviceProvisioned(this.mContext) && ConnectivityHelper.getInstance().isUnmeteredNetworkConnected()) {
            DropBoxManagerService instance = DropBoxManagerService.getInstance();
            Entry nextEntry = instance.getNextEntry(ErrorReport.DROPBOX_TAG, ac());
            while (nextEntry != null && ErrorReport.isUserAllowed(this.mContext)) {
                Object text = nextEntry.getText(ir);
                JSONObject jSONObject = null;
                if (!TextUtils.isEmpty(text)) {
                    try {
                        jSONObject = new JSONObject(text);
                    } catch (Throwable e) {
                        Log.w(TAG, "Fail to parse json", e);
                    }
                }
                if (jSONObject != null && !ErrorReport.sendReportRequest(this.mContext, jSONObject, 3) && !ConnectivityHelper.getInstance().isUnmeteredNetworkConnected()) {
                    Log.w(TAG, "Stop uploading error report for free network disconnect");
                    break;
                }
                long timeMillis = nextEntry.getTimeMillis();
                b(timeMillis);
                nextEntry.close();
                nextEntry = instance.getNextEntry(ErrorReport.DROPBOX_TAG, timeMillis);
            }
            if (nextEntry != null) {
                nextEntry.close();
            }
        }
    }

    private long ac() {
        long j = PreferenceManager.getDefaultSharedPreferences(this.mContext).getLong(iq, 0);
        long currentTimeMillis = System.currentTimeMillis();
        return Math.max(j, currentTimeMillis - (currentTimeMillis % VipConstants.DAY));
    }

    private void b(long j) {
        PreferenceManager.getDefaultSharedPreferences(this.mContext).edit().putLong(iq, j).apply();
    }
}
