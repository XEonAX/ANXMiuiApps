package com.miui.gallery.picker;

import android.app.Activity;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.nostra13.universalimageloader.core.ImageLoader;
import miui.app.Fragment;

public abstract class PickerCompatFragment extends Fragment {
    private static int IMAGE_LOADER_USED_COUNT = 0;
    protected Activity mActivity;
    protected boolean mUserFirstVisible = false;

    protected abstract String getPageName();

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mActivity = activity;
    }

    public void onDetach() {
        super.onDetach();
        this.mActivity = null;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        int themeRes = getThemeRes();
        if (themeRes != 0) {
            setThemeRes(themeRes);
        }
    }

    protected int getThemeRes() {
        return R.style.f22GalleryTheme.NoActionBar;
    }

    protected boolean recordPageByDefault() {
        return true;
    }

    protected boolean useImageLoader() {
        return true;
    }

    public void onPause() {
        super.onPause();
        if (useImageLoader()) {
            IMAGE_LOADER_USED_COUNT--;
            if (IMAGE_LOADER_USED_COUNT <= 0) {
                ImageLoader.getInstance().pause();
                IMAGE_LOADER_USED_COUNT = 0;
            }
        }
        if (recordPageByDefault()) {
            BaseSamplingStatHelper.recordPageEnd(this.mActivity, getPageName());
        }
    }

    public void onResume() {
        super.onResume();
        if (useImageLoader()) {
            IMAGE_LOADER_USED_COUNT++;
            ImageLoader.getInstance().resume();
        }
        if (recordPageByDefault()) {
            BaseSamplingStatHelper.recordPageStart(this.mActivity, getPageName());
        }
    }

    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (getUserVisibleHint() && !this.mUserFirstVisible) {
            onUserFirstVisible();
            this.mUserFirstVisible = true;
        }
    }

    protected void onUserFirstVisible() {
    }
}
