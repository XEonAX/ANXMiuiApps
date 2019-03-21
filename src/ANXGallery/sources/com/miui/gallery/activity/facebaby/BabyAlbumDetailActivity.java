package com.miui.gallery.activity.facebaby;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.ui.BabyAlbumDetailFragment;

public class BabyAlbumDetailActivity extends BaseActivity {
    private BabyAlbumDetailFragment mAlbumDetailFragment;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.baby_album_detail_activity);
        this.mAlbumDetailFragment = (BabyAlbumDetailFragment) getFragmentManager().findFragmentById(R.id.baby_album_detail);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        this.mAlbumDetailFragment.onActivityResult(requestCode, resultCode, data);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        this.mAlbumDetailFragment.onCreateOptionsMenu(menu, getMenuInflater());
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        if (this.mAlbumDetailFragment.onOptionsItemSelected(item)) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
