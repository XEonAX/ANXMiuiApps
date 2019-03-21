package com.miui.gallery.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;
import com.miui.gallery.R;
import com.miui.gallery.ui.PeoplePageFragment;
import com.miui.gallery.util.SyncUtil;

public class PeoplePageActivity extends BaseActivity {
    private final Handler mMainHandler = new Handler();
    PeoplePageFragment mPeopleFragment;
    private Runnable mRequestSyncRunnable = new Runnable() {
        public void run() {
            SyncUtil.requestSync(PeoplePageActivity.this);
        }
    };

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.people_page_activity);
        this.mPeopleFragment = (PeoplePageFragment) getFragmentManager().findFragmentById(R.id.people_page);
        this.mMainHandler.postDelayed(this.mRequestSyncRunnable, 3000);
        setImmersionMenuEnabled(true);
    }

    public void onResume() {
        super.onResume();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.people_album_menu, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        if (this.mPeopleFragment.onOptionsItemSelected(item)) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    public void onDestroy() {
        super.onDestroy();
        this.mMainHandler.removeCallbacks(this.mRequestSyncRunnable);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        this.mPeopleFragment.onActivityResult(requestCode, resultCode, data);
    }
}
