package com.miui.gallery.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import com.miui.gallery.R;
import com.miui.gallery.ui.PhotoDetailFragment;

public class PhotoDetailActivity extends BaseActivity {
    private PhotoDetailFragment mPhotoDetailFragment;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.photo_detail_activity);
        this.mPhotoDetailFragment = (PhotoDetailFragment) getFragmentManager().findFragmentById(R.id.photo_detail);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        this.mPhotoDetailFragment.onCreateOptionsMenu(menu, getMenuInflater());
        return true;
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        this.mPhotoDetailFragment.onPrepareOptionsMenu(menu);
        return super.onPrepareOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        if (this.mPhotoDetailFragment.onOptionsItemSelected(item)) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        this.mPhotoDetailFragment.onActivityResult(requestCode, resultCode, data);
    }

    public void onBackPressed() {
        if (!this.mPhotoDetailFragment.onBackPressed()) {
            super.onBackPressed();
        }
    }

    protected boolean supportShowOnScreenLocked() {
        return true;
    }
}
