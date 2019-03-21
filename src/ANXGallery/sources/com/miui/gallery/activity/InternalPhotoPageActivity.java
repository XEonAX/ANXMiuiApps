package com.miui.gallery.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.miui.gallery.ui.PhotoPageFragment;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.photoview.PhotoPageDataCache;
import com.nostra13.universalimageloader.core.ImageLoader;

public class InternalPhotoPageActivity extends BaseActivity {
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null) {
            PhotoPageDataCache.getInstance().restoreInstance(savedInstanceState);
        }
        Intent intent = getIntent();
        repackageExtras();
        if (intent.getData() == null) {
            Log.e("InternalPhotoPageActivity", "uri shouldn't be null");
            finish();
            return;
        }
        startFragment(PhotoPageFragment.newInstance(intent.getData(), intent.getType(), intent.getExtras(), 1), "PhotoPageFragment", false, true);
    }

    private void repackageExtras() {
        Bundle bundle = PhotoPageDataCache.getInstance().getArguments();
        if (bundle != null) {
            Uri data = (Uri) bundle.getParcelable("photo_data");
            Intent intent = getIntent();
            intent.setData(data);
            intent.putExtras(bundle);
        }
    }

    protected boolean hasCustomContentView() {
        return true;
    }

    protected int getFragmentContainerId() {
        return 16908290;
    }

    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        PhotoPageDataCache.getInstance().saveInstance(outState);
    }

    public void onActivityReenter(int resultCode, Intent data) {
        PhotoPageFragment fragment = (PhotoPageFragment) getFragmentManager().findFragmentByTag("PhotoPageFragment");
        if (fragment != null) {
            fragment.onActivityReenter(resultCode, data);
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (getFragmentManager().getBackStackEntryCount() == 0) {
            PhotoPageFragment fragment = (PhotoPageFragment) getFragmentManager().findFragmentByTag("PhotoPageFragment");
            if (fragment != null) {
                fragment.onActivityResult(requestCode, resultCode, data);
            }
        }
    }

    protected void onPause() {
        super.onPause();
        ImageLoader.getInstance().pause();
    }

    protected void onResume() {
        super.onResume();
        ImageLoader.getInstance().resume();
    }

    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    protected void onDestroy() {
        super.onDestroy();
        PhotoPageDataCache.getInstance().clear();
    }

    public void onBackPressed() {
        if (getFragmentManager().getBackStackEntryCount() == 0) {
            PhotoPageFragment fragment = (PhotoPageFragment) getFragmentManager().findFragmentByTag("PhotoPageFragment");
            if (fragment != null && fragment.isVisible() && fragment.onBackPressed()) {
                return;
            }
        }
        super.onBackPressed();
    }

    public String[] getRuntimePermissions() {
        return null;
    }
}
