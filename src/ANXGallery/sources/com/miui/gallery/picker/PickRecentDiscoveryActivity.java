package com.miui.gallery.picker;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;

public class PickRecentDiscoveryActivity extends PickAlbumDetailActivityBase {
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (this.mPicker != null) {
            setContentView(R.layout.picker_recent_discovery_activity);
            this.mAlbumDetailFragment = (PickRecentDiscoveryFragment) getFragmentManager().findFragmentById(R.id.album_recent);
            Intent intent = getIntent();
            long albumId = intent.getLongExtra("album_id", -1);
            String albumName = intent.getStringExtra("album_name");
            if (albumId == -1) {
                finish();
                return;
            }
            this.mAlbumDetailFragment.setItemStateListener(this.mItemStateListener);
            if (!TextUtils.isEmpty(albumName)) {
                setTitle(albumName);
            }
        }
    }
}
