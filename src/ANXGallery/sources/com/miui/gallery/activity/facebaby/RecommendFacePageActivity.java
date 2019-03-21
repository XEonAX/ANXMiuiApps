package com.miui.gallery.activity.facebaby;

import android.os.Bundle;
import android.view.KeyEvent;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.ui.RecommendFacePageFragment;

public class RecommendFacePageActivity extends BaseActivity {
    RecommendFacePageFragment mRecommendFaceFragment;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.recommend_face_page_activity);
        this.mRecommendFaceFragment = (RecommendFacePageFragment) getFragmentManager().findFragmentById(R.id.recommend_face_fragment);
    }

    public void finish() {
        this.mRecommendFaceFragment.onActivityFinish();
        super.finish();
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return false;
        }
        finish();
        return true;
    }
}
