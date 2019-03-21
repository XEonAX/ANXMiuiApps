package miui.cloud.util;

import android.net.Uri;
import com.miui.app.ProviderInstalled;

public class SyncStateChangedHelper {
    public static final Uri INTERNAL_STAT_URI = Uri.parse("content://com.miui.cloudservice.SyncSettingStatusProvider/internal");
    public static final Uri OPEN_SWITCH_STATE_STAT_URI = Uri.parse("content://com.miui.cloudservice.SyncSettingStatusProvider/open_switch_state");
    public static final Uri OPEN_SYNC_PHONE_STATE = Uri.parse("content://com.miui.cloudservice.SyncSettingStatusProvider/open_sync_phone_state");
    public static final Uri OPEN_SYNC_RESULT_URI = Uri.parse("content://com.miui.cloudservice.SyncSettingStatusProvider/open_sync_result");
    public static final Uri OPEN_SYNC_TIME_CONSUME = Uri.parse("content://com.miui.cloudservice.SyncSettingStatusProvider/open_sync_time_consume");
    public static final ProviderInstalled SYNC_SETTINGS_PROVIDER_INSTALLED = new ProviderInstalled("com.miui.cloudservice.SyncSettingStatusProvider");
}
