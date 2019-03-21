package com.miui.gallery.activity.facebaby;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.ui.FacePageFragment;

public class FacePageActivity extends BaseActivity {
    FacePageFragment mFaceFragment;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.face_page_activity);
        this.mFaceFragment = (FacePageFragment) getFragmentManager().findFragmentById(R.id.faceFragment);
    }

    public void onResume() {
        super.onResume();
        setImmersionMenuEnabled(true);
    }

    public void onPause() {
        super.onPause();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.face_album_menu, menu);
        return true;
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        boolean toPhotoMode = this.mFaceFragment.isFaceDisplayMode();
        MenuItem item = menu.findItem(R.id.action_change_mode_to_photo);
        if (item != null) {
            item.setVisible(toPhotoMode);
        }
        item = menu.findItem(R.id.action_change_mode_to_face);
        if (item != null) {
            item.setVisible(!toPhotoMode);
        }
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        if (this.mFaceFragment.onOptionsItemSelected(item)) {
            return super.onOptionsItemSelected(item);
        }
        return super.onOptionsItemSelected(item);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        this.mFaceFragment.onActivityResult(requestCode, resultCode, data);
    }
}
