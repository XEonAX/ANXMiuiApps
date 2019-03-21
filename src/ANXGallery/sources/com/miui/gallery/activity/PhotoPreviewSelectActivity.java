package com.miui.gallery.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.miui.gallery.ui.PhotoPreviewSelectFragment;

public class PhotoPreviewSelectActivity extends BaseActivity {
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        if (intent != null) {
            Uri uri = intent.getData();
            if (uri != null) {
                startFragment(PhotoPreviewSelectFragment.newInstance(uri, intent.getExtras()), "PhotoPreviewSelectFragment", false, true);
                return;
            }
        }
        finish();
    }

    protected boolean hasCustomContentView() {
        return true;
    }

    protected int getFragmentContainerId() {
        return 16908290;
    }

    protected void onDestroy() {
        super.onDestroy();
    }
}
