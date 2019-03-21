package com.miui.gallery.activity.facebaby;

import android.content.Intent;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.ui.IgnorePeoplePageFragment;

public class IgnorePeoplePageActivity extends BaseActivity {
    private IgnorePeoplePageFragment mFragment;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.ignore_people_page_activity);
        this.mFragment = (IgnorePeoplePageFragment) getFragmentManager().findFragmentById(R.id.ignore_people_page_fragment);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        this.mFragment.onActivityResult(requestCode, resultCode, data);
    }
}
