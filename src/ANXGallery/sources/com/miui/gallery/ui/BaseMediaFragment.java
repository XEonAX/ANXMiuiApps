package com.miui.gallery.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.Loader;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import com.miui.gallery.util.Log;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseMediaFragment extends BaseFragment {
    private boolean mInPhotoPage;
    private PhotoPageReceiver mPhotoPageReceiver;

    private static class PhotoPageReceiver extends BroadcastReceiver {
        private WeakReference<BaseMediaFragment> mFragmentRef;

        public PhotoPageReceiver(BaseMediaFragment fragment) {
            this.mFragmentRef = new WeakReference(fragment);
        }

        public void onReceive(Context context, Intent intent) {
            BaseMediaFragment fragment = (BaseMediaFragment) this.mFragmentRef.get();
            if (fragment != null) {
                String action = intent.getAction();
                if ("com.miu.gallery.action.ENTER_PHOTO_PAGE".equals(action)) {
                    Log.i("BaseMediaFragment", "ACTION_ENTER_PHOTO_PAGE");
                    fragment.onPhotoPageCreate(intent);
                } else if ("com.miui.gallery.action.EXIT_PHOTO_PAGE".equals(action)) {
                    Log.i("BaseMediaFragment", "ACTION_EXIT_PHOTO_PAGE");
                    fragment.onPhotoPageDestroy(intent);
                }
            }
        }
    }

    protected abstract Loader getLoader();

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mPhotoPageReceiver = new PhotoPageReceiver(this);
    }

    public void onStart() {
        super.onStart();
        IntentFilter filter = new IntentFilter();
        filter.addAction("com.miu.gallery.action.ENTER_PHOTO_PAGE");
        filter.addAction("com.miui.gallery.action.EXIT_PHOTO_PAGE");
        LocalBroadcastManager.getInstance(this.mActivity).registerReceiver(this.mPhotoPageReceiver, filter);
    }

    public void onStop() {
        super.onStop();
        LocalBroadcastManager.getInstance(this.mActivity).unregisterReceiver(this.mPhotoPageReceiver);
    }

    public void onResume() {
        super.onResume();
    }

    public void onPause() {
        super.onPause();
        ImageLoader.getInstance().clearHardMemoryCache();
    }

    protected List<Loader> getLoaders() {
        ArrayList<Loader> ret = new ArrayList();
        ret.add(getLoader());
        return ret;
    }

    protected void onPhotoPageCreate(Intent i) {
        if (isAdded()) {
            List<Loader> loaders = getLoaders();
            if (loaders != null && loaders.size() > 0) {
                for (Loader loader : loaders) {
                    if (loader != null) {
                        loader.stopLoading();
                    }
                }
            }
        }
        this.mInPhotoPage = true;
    }

    protected void onPhotoPageDestroy(Intent i) {
        if (isAdded()) {
            if (i.getIntExtra("photo_result_code", -1) == -1) {
                List<Loader> loaders = getLoaders();
                if (loaders != null && loaders.size() > 0) {
                    for (Loader loader : loaders) {
                        if (loader != null) {
                            loader.startLoading();
                        }
                    }
                }
            } else {
                finish();
            }
        }
        this.mInPhotoPage = false;
    }

    protected boolean isInPhotoPage() {
        return this.mInPhotoPage;
    }
}
