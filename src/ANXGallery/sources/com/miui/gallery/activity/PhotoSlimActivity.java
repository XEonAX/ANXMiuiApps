package com.miui.gallery.activity;

import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.ui.PhotoSlimFragment;

public class PhotoSlimActivity extends BaseActivity {
    private PhotoSlimFragment mPhotoSlimFragment;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.photo_slim_activity);
        this.mPhotoSlimFragment = (PhotoSlimFragment) getFragmentManager().findFragmentById(R.id.photo_slim_fragment);
    }

    public void onBackPressed() {
        if (!this.mPhotoSlimFragment.onBackPressed()) {
            super.onBackPressed();
        }
    }
}
