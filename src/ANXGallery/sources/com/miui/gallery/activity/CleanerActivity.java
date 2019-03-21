package com.miui.gallery.activity;

import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.ui.CleanerFragment;

public class CleanerActivity extends BaseActivity {
    private CleanerFragment mCleanerFragment;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.cleaner_activity);
        this.mCleanerFragment = (CleanerFragment) getFragmentManager().findFragmentById(R.id.cleaner);
        getWindow().setBackgroundDrawableResource(R.color.cleaner_background);
    }

    public void onBackPressed() {
        if (!this.mCleanerFragment.onBackPressed()) {
            super.onBackPressed();
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mCleanerFragment.onActivityAttachedToWindow();
    }
}
