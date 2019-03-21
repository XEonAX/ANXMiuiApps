package com.miui.gallery.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import com.miui.gallery.R;
import com.miui.gallery.ui.AlbumDetailFragment;

public class AlbumDetailActivity extends BaseActivity {
    private AlbumDetailFragment mAlbumDetailFragment;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.album_detail_activity);
        Intent intent = getIntent();
        if ("android.intent.action.VIEW".equals(intent.getAction())) {
            Uri uri = intent.getData();
            if (uri != null) {
                intent.putExtra("album_server_id", uri.getLastPathSegment());
            }
        }
        this.mAlbumDetailFragment = (AlbumDetailFragment) getFragmentManager().findFragmentById(R.id.album_detail);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        this.mAlbumDetailFragment.onCreateOptionsMenu(menu, getMenuInflater());
        return true;
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        this.mAlbumDetailFragment.onPrepareOptionsMenu(menu);
        return super.onPrepareOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        if (this.mAlbumDetailFragment.onOptionsItemSelected(item)) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    public void onBackPressed() {
        if (!this.mAlbumDetailFragment.onBackPressed()) {
            super.onBackPressed();
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        this.mAlbumDetailFragment.onActivityResult(requestCode, resultCode, data);
    }

    public void onDestroy() {
        super.onDestroy();
    }
}
