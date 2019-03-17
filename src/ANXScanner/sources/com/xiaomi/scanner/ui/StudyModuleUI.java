package com.xiaomi.scanner.ui;

import android.view.View;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppUI;
import com.xiaomi.scanner.app.ScanActivity;

public class StudyModuleUI {
    private final ScanActivity mActivity;

    public StudyModuleUI(ScanActivity activity, View parent) {
        this.mActivity = activity;
        initUI();
    }

    private void initUI() {
        AppUI appUI = this.mActivity.getAppUI();
        if (appUI != null) {
            appUI.setTitle(R.string.study_title);
        }
    }

    public void onResume() {
    }
}
