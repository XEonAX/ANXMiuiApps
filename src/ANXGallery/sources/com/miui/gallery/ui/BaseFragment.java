package com.miui.gallery.ui;

import android.app.Activity;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.nostra13.universalimageloader.core.ImageLoader;
import miui.app.Fragment;

public abstract class BaseFragment extends Fragment {
    protected BaseActivity mActivity;
    protected boolean mUserFirstVisible = false;

    public abstract String getPageName();

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

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mActivity = (BaseActivity) activity;
    }

    public void onDetach() {
        super.onDetach();
        this.mActivity = null;
    }

    protected boolean useImageLoader() {
        return true;
    }

    public void onPause() {
        super.onPause();
        if (useImageLoader()) {
            ImageLoader.getInstance().onPagePause();
        }
        if (recordPageByDefault()) {
            BaseSamplingStatHelper.recordPageEnd(this.mActivity, getPageName());
        }
    }

    public void onResume() {
        super.onResume();
        if (useImageLoader()) {
            ImageLoader.getInstance().onPageResume();
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

    public void finish() {
        if (this.mActivity.getFragmentManager().getBackStackEntryCount() > 0) {
            this.mActivity.getFragmentManager().popBackStack();
        } else {
            this.mActivity.onBackPressed();
        }
    }
}
