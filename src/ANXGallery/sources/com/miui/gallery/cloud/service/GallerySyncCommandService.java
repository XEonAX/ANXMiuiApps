package com.miui.gallery.cloud.service;

import android.text.TextUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import com.xiaomi.micloudsdk.sync.SyncCommandServiceBase;

public class GallerySyncCommandService extends SyncCommandServiceBase {
    public void handleCommand(String command) {
        Log.d("GallerySyncCommandService", "command %s", (Object) command);
        if (TextUtils.equals("value_command_cancel_sync", command)) {
            SyncUtil.stopSync(this);
        }
    }
}
