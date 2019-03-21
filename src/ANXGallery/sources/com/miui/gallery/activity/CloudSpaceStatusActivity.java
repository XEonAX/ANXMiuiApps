package com.miui.gallery.activity;

import android.os.Bundle;
import com.miui.gallery.R;

public class CloudSpaceStatusActivity extends BaseActivity {
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.cloud_space_status_activity);
    }

    protected boolean hasCustomContentView() {
        return true;
    }

    protected boolean allowUseOnOffline() {
        return false;
    }
}
