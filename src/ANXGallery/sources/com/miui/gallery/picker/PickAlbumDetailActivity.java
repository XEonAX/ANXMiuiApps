package com.miui.gallery.picker;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;

public class PickAlbumDetailActivity extends PickAlbumDetailActivityBase {
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (this.mPicker != null) {
            setContentView(R.layout.picker_album_detail_activity);
            this.mAlbumDetailFragment = (PickAlbumDetailFragment) getFragmentManager().findFragmentById(R.id.album_detail);
            Intent intent = getIntent();
            long albumId = intent.getLongExtra("album_id", -1);
            String albumName = intent.getStringExtra("album_name");
            boolean isOtherSharedAlbum = intent.getBooleanExtra("other_share_album", false);
            boolean isPanoAlbum = intent.getBooleanExtra("pano_album", false);
            if (albumId == -1) {
                finish();
                return;
            }
            this.mAlbumDetailFragment.setItemStateListener(this.mItemStateListener);
            ((PickAlbumDetailFragment) this.mAlbumDetailFragment).setAlbumId(albumId);
            ((PickAlbumDetailFragment) this.mAlbumDetailFragment).setIsOtherSharedAlbum(isOtherSharedAlbum);
            ((PickAlbumDetailFragment) this.mAlbumDetailFragment).setIsPanoAlbum(isPanoAlbum);
            if (!TextUtils.isEmpty(albumName)) {
                setTitle(albumName);
            }
        }
    }
}
