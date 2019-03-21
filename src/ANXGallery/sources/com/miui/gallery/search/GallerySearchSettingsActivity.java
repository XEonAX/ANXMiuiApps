package com.miui.gallery.search;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.AIAlbumStatusHelper;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.SyncUtil;

public class GallerySearchSettingsActivity extends BaseActivity implements OnClickListener {
    private TextView mRequestView;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.search_settings_activity);
        this.mRequestView = (TextView) findViewById(R.id.request);
        int status = AIAlbumStatusHelper.getOpenApiSearchStatus();
        configByStatus(status);
        if (status == 2) {
            AIAlbumStatusHelper.requestOpenCloudControlSearch("GallerySearchSettingsActivity");
        }
    }

    private void configByStatus(int searchStatus) {
        switch (searchStatus) {
            case 0:
                this.mRequestView.setOnClickListener(this);
                this.mRequestView.setEnabled(true);
                this.mRequestView.setText(R.string.search_request_open);
                return;
            case 1:
                this.mRequestView.setOnClickListener(null);
                this.mRequestView.setEnabled(false);
                this.mRequestView.setText(R.string.search_request_applied);
                return;
            case 2:
                this.mRequestView.setOnClickListener(null);
                this.mRequestView.setEnabled(false);
                this.mRequestView.setText(R.string.search_request_requesting);
                return;
            default:
                return;
        }
    }

    public void onClick(View v) {
        if (v != null && v.getId() == R.id.request) {
            if (SyncUtil.existXiaomiAccount(this)) {
                AIAlbumStatusHelper.setLocalSearchStatus(this, true);
                configByStatus(2);
                BaseSamplingStatHelper.recordCountEvent("search", "search_open_switch");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putSerializable("cloud_guide_source", CloudGuideSource.SEARCH);
            IntentUtil.guideToLoginXiaomiAccount((Context) this, bundle);
        }
    }

    protected void onResume() {
        super.onResume();
        BaseSamplingStatHelper.recordPageStart(this, "search_settings");
    }

    protected void onPause() {
        super.onPause();
        BaseSamplingStatHelper.recordPageEnd(this, "search_settings");
    }
}
