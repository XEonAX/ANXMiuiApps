package com.miui.gallery.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import com.miui.gallery.R;
import com.miui.gallery.ui.RecentDiscoveryFragment;

public class RecentDiscoveryActivity extends BaseActivity {
    private RecentDiscoveryFragment mRecentDiscoveryFragment;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.recent_discovery_activity);
        this.mRecentDiscoveryFragment = (RecentDiscoveryFragment) getFragmentManager().findFragmentById(R.id.album_recent);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        this.mRecentDiscoveryFragment.onCreateOptionsMenu(menu, getMenuInflater());
        return true;
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        this.mRecentDiscoveryFragment.onPrepareOptionsMenu(menu);
        return super.onPrepareOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        return this.mRecentDiscoveryFragment.onOptionsItemSelected(item) || super.onOptionsItemSelected(item);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        this.mRecentDiscoveryFragment.onActivityResult(requestCode, resultCode, data);
    }
}
