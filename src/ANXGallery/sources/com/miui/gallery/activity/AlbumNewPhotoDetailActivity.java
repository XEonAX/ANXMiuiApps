package com.miui.gallery.activity;

import android.os.Bundle;
import com.miui.gallery.R;

public class AlbumNewPhotoDetailActivity extends BaseActivity {
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getContentId());
    }

    protected int getContentId() {
        return R.layout.album_new_photo_detail_activity;
    }
}
