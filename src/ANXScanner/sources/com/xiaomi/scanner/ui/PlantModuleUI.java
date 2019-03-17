package com.xiaomi.scanner.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppUI;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.debug.Log.Tag;

public class PlantModuleUI {
    private static final Tag TAG = new Tag("PlantModuleUI");
    private FrameLayout fullRoot = ((FrameLayout) this.mActivity.findViewById(R.id.full_screen_panel_layout));
    private ScanActivity mActivity;
    private PlantResultView mPlantResult;

    public PlantModuleUI(ScanActivity activity) {
        this.mActivity = activity;
        updateTitle();
    }

    private void updateTitle() {
        AppUI appUI = this.mActivity.getAppUI();
        if (appUI != null) {
            appUI.setTitle(R.string.plant_title);
        }
    }

    public void showResult(String resultPage) {
        changeTo(true);
        this.mPlantResult = new PlantResultView(this.mActivity, new OnClickListener() {
            public void onClick(View v) {
                PlantModuleUI.this.onBackPressed();
            }
        }, resultPage);
        this.fullRoot.addView(this.mPlantResult);
    }

    private void changeTo(boolean full) {
        this.fullRoot.setVisibility(full ? 0 : 8);
        if (!full) {
            this.fullRoot.removeAllViews();
            onDestroy();
        }
    }

    public boolean onBackPressed() {
        boolean canBack;
        if (this.fullRoot.getVisibility() == 0) {
            canBack = true;
        } else {
            canBack = false;
        }
        if (canBack) {
            changeTo(false);
            this.mActivity.getCaptureModule().startPreview();
        }
        return canBack;
    }

    public void onDestroy() {
        if (this.mPlantResult != null) {
            this.mPlantResult.onDestroy();
        }
        this.mPlantResult = null;
    }
}
