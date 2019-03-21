package miui.cloud.stat;

import android.content.ContentValues;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.miui.utils.SafeContentResolver;
import miui.cloud.util.SyncStateChangedHelper;

public class MiCloudStatUtil {
    public static void performSyncSuccessStat(Context context, String authority, long timeStart, Bundle extras) {
        wrapSuccessBundle(extras, authority);
        performSyncTimeConsumeStat(context, timeStart, true);
        performSyncResultStat(context, extras);
        performSyncPhoneStateStat(context, extras);
    }

    public static void performSyncErrorStat(Context context, long timeStart, Bundle extras) {
        performSyncTimeConsumeStat(context, timeStart, false);
        performSyncResultStat(context, extras);
        performSyncPhoneStateStat(context, extras);
    }

    private static void performSyncResultStat(Context context, Bundle extras) {
        Log.d("MiCloudStatUtil", "performSyncResultStat: ");
        if (((Boolean) SyncStateChangedHelper.SYNC_SETTINGS_PROVIDER_INSTALLED.get(context)).booleanValue()) {
            boolean isIgnoreTemperature = extras.getBoolean("micloud_ignore_temperature");
            boolean isIgnoreWifiSettings = extras.getBoolean("micloud_ignore_wifi_settings");
            boolean isIgnoreBatteryLow = extras.getBoolean("micloud_ignore_battery_low");
            boolean isForceSync = extras.getBoolean("micloud_force");
            boolean isRetry = extras.getBoolean("stat_key_sync_retry");
            String reason = extras.getString("stat_key_sync_reason");
            String authority = extras.getString("stat_key_sync_authority");
            boolean isSuccessful = extras.getBoolean("stat_key_sync_successful");
            ContentValues values = new ContentValues();
            values.put("micloud_ignore_temperature", Boolean.valueOf(isIgnoreTemperature));
            values.put("micloud_ignore_wifi_settings", Boolean.valueOf(isIgnoreWifiSettings));
            values.put("micloud_ignore_battery_low", Boolean.valueOf(isIgnoreBatteryLow));
            values.put("micloud_force", Boolean.valueOf(isForceSync));
            values.put("stat_key_sync_retry", Boolean.valueOf(isRetry));
            values.put("stat_key_sync_reason", reason);
            values.put("stat_key_sync_successful", Boolean.valueOf(isSuccessful));
            values.put("stat_key_sync_authority", authority);
            SafeContentResolver.insert(context, SyncStateChangedHelper.OPEN_SYNC_RESULT_URI, values);
            return;
        }
        Log.d("MiCloudStatUtil", "provider not available, skip");
    }

    private static void performSyncTimeConsumeStat(Context context, long timeStart, boolean isSuccessful) {
        Log.d("MiCloudStatUtil", "performSyncTimeConsumeStat: ");
        if (((Boolean) SyncStateChangedHelper.SYNC_SETTINGS_PROVIDER_INSTALLED.get(context)).booleanValue()) {
            long timeConsume = System.currentTimeMillis() - timeStart;
            ContentValues values = new ContentValues();
            values.put("stat_key_sync_time_consume", Long.valueOf(timeConsume));
            if (isSuccessful) {
                values.put("stat_key_sync_successful", Boolean.valueOf(true));
            } else {
                values.put("stat_key_sync_successful", Boolean.valueOf(false));
            }
            SafeContentResolver.insert(context, SyncStateChangedHelper.OPEN_SYNC_TIME_CONSUME, values);
            return;
        }
        Log.d("MiCloudStatUtil", "provider not available, skip");
    }

    public static void performSyncPhoneStateStat(Context context, Bundle extras) {
        Log.d("MiCloudStatUtil", "performSyncPhoneState: ");
        if (((Boolean) SyncStateChangedHelper.SYNC_SETTINGS_PROVIDER_INSTALLED.get(context)).booleanValue()) {
            ContentValues values = new ContentValues();
            boolean isForceSync = extras.getBoolean("micloud_force");
            boolean isSyncStart = extras.getBoolean("stat_key_sync_start");
            values.put("micloud_force", Boolean.valueOf(isForceSync));
            values.put("stat_key_sync_start", Boolean.valueOf(isSyncStart));
            SafeContentResolver.insert(context, SyncStateChangedHelper.OPEN_SYNC_PHONE_STATE, values);
            return;
        }
        Log.d("MiCloudStatUtil", "provider not available, skip");
    }

    public static void wrapErrorBundle(Bundle extras, String authority, String reason, boolean retry) {
        extras.putBoolean("stat_key_sync_start", false);
        extras.putString("stat_key_sync_authority", authority);
        extras.putBoolean("stat_key_sync_successful", false);
        extras.putString("stat_key_sync_reason", reason);
        extras.putBoolean("stat_key_sync_retry", retry);
    }

    private static void wrapSuccessBundle(Bundle extras, String authority) {
        extras.putBoolean("stat_key_sync_start", false);
        extras.putString("stat_key_sync_authority", authority);
        extras.putBoolean("stat_key_sync_successful", true);
        extras.putBoolean("stat_key_sync_retry", false);
        extras.putString("stat_key_sync_reason", "no_error");
    }
}
