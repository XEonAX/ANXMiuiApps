package com.miui.gallery.settingsbackup;

import com.xiaomi.settingsdk.backup.CloudBackupServiceBase;
import com.xiaomi.settingsdk.backup.ICloudBackup;

public class GallerySettingsBackupService extends CloudBackupServiceBase {
    protected ICloudBackup getBackupImpl() {
        return new GallerySettingsBackupImpl();
    }
}
