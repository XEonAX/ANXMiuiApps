package com.miui.screenrecorder.service;

import android.annotation.TargetApi;
import android.content.Intent;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import com.miui.screenrecorder.BuildConfig;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.tools.LogUtil;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;

@TargetApi(24)
public class QuickService extends TileService {
    private static final String TAG = "QuickService";

    public void onStartListening() {
        super.onStartListening();
        Tile tile = getQsTile();
        if (tile != null) {
            tile.setLabel(getString(R.string.app_name));
            getQsTile().setState(1);
            getQsTile().updateTile();
            return;
        }
        LogUtil.e(TAG, "getQsTile is null");
    }

    public void onClick() {
        super.onClick();
        Intent intent = new Intent();
        intent.setAction("miui.intent.screenrecorder.RECORDER_SERVICE");
        intent.setPackage(BuildConfig.APPLICATION_ID);
        intent.putExtra("is_start_immediately", true);
        startService(intent);
        ScreenRecorderUtils.collapseStatusBar(ScreenRecorderApplication.getContext());
    }
}
