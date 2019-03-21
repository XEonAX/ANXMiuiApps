package com.miui.gallery.settingsbackup;

import android.content.Context;
import com.miui.gallery.util.Log;
import com.miui.os.Rom;
import com.xiaomi.settingsdk.backup.ICloudBackup;
import com.xiaomi.settingsdk.backup.data.DataPackage;
import com.xiaomi.settingsdk.backup.data.SettingItem;
import org.json.JSONObject;

public class GallerySettingsBackupImpl implements ICloudBackup {
    public void onBackupSettings(Context context, DataPackage dataPackage) {
        Log.d("GallerySettingsBackupImpl", "onBackupSettings start");
        dataPackage.addKeyJson("com.miui.gallery.settings", logJSON(GallerySettingsBackupHelper.backupToCloud(context)));
        Log.d("GallerySettingsBackupImpl", "onBackupSettings end");
    }

    public void onRestoreSettings(Context context, DataPackage dataPackage, int packageVersion) {
        Log.d("GallerySettingsBackupImpl", "onRestoreSettings start");
        if (dataPackage != null) {
            SettingItem<?> item = dataPackage.get("com.miui.gallery.settings");
            if (item != null) {
                GallerySettingsBackupHelper.restoreFromCloud(context, logJSON((JSONObject) item.getValue()));
            }
        }
        Log.d("GallerySettingsBackupImpl", "onRestoreSettings end");
    }

    public int getCurrentVersion(Context context) {
        return 1;
    }

    private static JSONObject logJSON(JSONObject json) {
        if (json == null) {
            return null;
        }
        if (!Rom.IS_ALPHA && !Rom.IS_DEV) {
            return json;
        }
        Log.d("GallerySettingsBackupImpl", json.toString());
        return json;
    }
}
