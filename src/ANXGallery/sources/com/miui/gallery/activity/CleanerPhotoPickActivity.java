package com.miui.gallery.activity;

import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.ui.ScreenshotPhotoPickFragment;
import com.miui.gallery.ui.SlimPhotoPickFragment;

public class CleanerPhotoPickActivity extends BaseActivity {
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        startFragmentByType(getIntent().getIntExtra("extra_cleaner_photo_pick_type", -1));
        this.mActionBar.setCustomView(R.layout.cleaner_photo_pick_action_layout);
        this.mActionBar.setDisplayShowCustomEnabled(true);
    }

    private void startFragmentByType(int type) {
        switch (type) {
            case 0:
                if (getFragmentManager().findFragmentByTag("SlimPhotoPickFragment") == null) {
                    startFragment(new SlimPhotoPickFragment(), "SlimPhotoPickFragment", false, true);
                    return;
                }
                return;
            case 1:
                if (getFragmentManager().findFragmentByTag("ScreenshotPhotoPickFragment") == null) {
                    startFragment(new ScreenshotPhotoPickFragment(), "ScreenshotPhotoPickFragment", false, true);
                    return;
                }
                return;
            default:
                return;
        }
    }

    protected int getFragmentContainerId() {
        return 16908290;
    }
}
