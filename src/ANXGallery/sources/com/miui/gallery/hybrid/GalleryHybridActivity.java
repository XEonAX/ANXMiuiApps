package com.miui.gallery.hybrid;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.hybrid.GalleryHybridFragment.HybridViewEventListener;
import com.miui.gallery.hybrid.hybridclient.HybridClient;
import com.miui.gallery.hybrid.hybridclient.HybridClientFactory;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StringUtils;

public class GalleryHybridActivity extends BaseActivity implements HybridViewEventListener {
    private HybridClient mHybridClient;
    private GalleryHybridFragment mHybridFragment;
    private TextView mTitleView;

    protected void onCreate(Bundle savedInstanceState) {
        this.mHybridClient = HybridClientFactory.createHybridClient(this, getIntent());
        super.onCreate(savedInstanceState);
        setContentView(R.layout.hybrid_activity);
        configureActionBar();
        this.mHybridFragment = (GalleryHybridFragment) getFragmentManager().findFragmentById(R.id.hybrid_fragment);
        this.mHybridFragment.setHybridViewEventListener(this);
        this.mHybridFragment.setHybridClient(this.mHybridClient);
        load();
    }

    protected void onCtaChecked(boolean agreed) {
        if (agreed && resumed()) {
            load();
        }
    }

    private void configureActionBar() {
        this.mActionBar.setDisplayShowCustomEnabled(true);
        this.mActionBar.setDisplayShowHomeEnabled(false);
        this.mActionBar.setDisplayShowTitleEnabled(false);
        this.mActionBar.setHomeButtonEnabled(true);
        this.mActionBar.setCustomView(R.layout.hybrid_action_bar_custom_view);
        View customView = this.mActionBar.getCustomView();
        this.mTitleView = (TextView) customView.findViewById(R.id.title);
        customView.findViewById(R.id.close).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                GalleryHybridActivity.this.finish();
            }
        });
    }

    private void load() {
        if (this.mHybridFragment == null) {
            Log.w("GalleryHybridActivity", "Hybrid fragment not attached, couldn't load url now!");
        } else if (CTA.canConnectNetwork()) {
            this.mHybridFragment.load();
        } else {
            Log.w("GalleryHybridActivity", "CTA not allowed, couldn't connect to network!");
        }
    }

    public void onReceivedTitle(String title) {
        if (!TextUtils.isEmpty(title)) {
            this.mTitleView.setText(title);
        }
    }

    public void onBackPressed() {
        if (!this.mHybridFragment.onBackPressed()) {
            super.onBackPressed();
        }
    }

    public String[] getRuntimePermissions() {
        if (this.mHybridClient != null) {
            return StringUtils.mergeStringArray(super.getRuntimePermissions(), this.mHybridClient.getRuntimePermissions());
        }
        return super.getRuntimePermissions();
    }

    protected boolean allowUseOnOffline() {
        return false;
    }
}
