package com.miui.gallery.search;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.search.transitions.SearchTransitionHelperImp;

public class SearchActivity extends BaseActivity {
    SearchFragment mSearchFragment;

    protected void onCreate(Bundle savedInstanceState) {
        boolean usingSpecialAnimation = false;
        super.onCreate(savedInstanceState);
        this.mSearchFragment = (SearchFragment) getFragmentManager().findFragmentByTag("RootFragment");
        if (this.mSearchFragment == null) {
            this.mSearchFragment = new SearchFragment();
            startFragment(this.mSearchFragment, "RootFragment", false, true);
        }
        if (getIntent() != null && getIntent().getBooleanExtra("usingSpecialAnimation", false)) {
            usingSpecialAnimation = true;
        }
        if (usingSpecialAnimation && SearchTransitionHelperImp.supportSharedElementTransition()) {
            ActivityCompat.setEnterSharedElementCallback(this, this.mSearchFragment.getSharedElementCallback(true));
            ActivityCompat.postponeEnterTransition(this);
        }
    }

    protected void onNewIntent(Intent intent) {
        setIntent(intent);
        if (this.mSearchFragment != null) {
            this.mSearchFragment.onNewIntent(intent);
        }
    }

    public void onBackPressed() {
        if (!this.mSearchFragment.onBackPressed()) {
            super.onBackPressed();
            if (!SearchTransitionHelperImp.supportSharedElementTransition()) {
                overridePendingTransition(R.anim.appear, R.anim.disappear);
            }
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        this.mSearchFragment.onActivityResult(requestCode, resultCode, data);
    }

    protected int getFragmentContainerId() {
        return 16908290;
    }

    protected boolean hasCustomContentView() {
        return true;
    }
}
