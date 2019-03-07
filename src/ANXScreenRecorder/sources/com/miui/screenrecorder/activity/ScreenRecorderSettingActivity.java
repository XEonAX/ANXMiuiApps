package com.miui.screenrecorder.activity;

import android.annotation.TargetApi;
import android.os.Bundle;
import com.miui.screenrecorder.view.ScreenRecorderSettingsFragment;
import miui.app.Activity;

public class ScreenRecorderSettingActivity extends Activity {
    @TargetApi(11)
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getFragmentManager().beginTransaction().replace(16908290, new ScreenRecorderSettingsFragment()).commitAllowingStateLoss();
    }
}
