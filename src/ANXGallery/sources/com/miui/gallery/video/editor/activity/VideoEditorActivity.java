package com.miui.gallery.video.editor.activity;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import com.android.internal.WindowCompat;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.video.editor.config.VideoEditorConfig;
import com.miui.gallery.video.editor.ui.MenuFragment;
import com.miui.gallery.video.editor.ui.VideoEditorFragment;
import com.miui.gallery.view.BrightnessManager;

public class VideoEditorActivity extends BaseActivity {
    private BrightnessManager mBrightnessManager;
    private OnBackPressedListener mOnBackPressedListener;
    private VideoEditorFragment mVideoEditorFragment;

    public interface OnBackPressedListener {
        boolean onBackPressed();
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(null);
        WindowCompat.setCutoutModeShortEdges(getWindow());
        VideoEditorConfig.init(this);
        initView();
        initScreenBrightness();
    }

    private void initScreenBrightness() {
        Intent intent = getIntent();
        if (intent != null) {
            float manualBrightness = intent.getFloatExtra("photo-brightness-manual", -1.0f);
            float autoBrightness = intent.getFloatExtra("photo-brightness-auto", -1.0f);
            if (manualBrightness >= 0.0f || autoBrightness >= 0.0f) {
                this.mBrightnessManager = new BrightnessManager(this, manualBrightness, autoBrightness);
            }
        }
    }

    protected void onResume() {
        super.onResume();
        if (this.mBrightnessManager != null) {
            this.mBrightnessManager.onResume();
        }
    }

    protected void onPause() {
        super.onPause();
        if (this.mBrightnessManager != null) {
            this.mBrightnessManager.onPause();
        }
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (this.mBrightnessManager != null) {
            this.mBrightnessManager.onWindowFocusChanged(hasFocus);
        }
    }

    public void setOnBackPressedListener(OnBackPressedListener onBackPressedListener) {
        this.mOnBackPressedListener = onBackPressedListener;
    }

    public void onBackPressed() {
        if (this.mOnBackPressedListener == null || !this.mOnBackPressedListener.onBackPressed()) {
            super.onBackPressed();
        }
    }

    private void initView() {
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.activity_video_editor);
        loadVideoEditorFragment();
    }

    protected boolean hasCustomContentView() {
        return true;
    }

    public void loadVideoEditorFragment() {
        if (!isFinishing()) {
            this.mVideoEditorFragment = new VideoEditorFragment();
            getFragmentManager().beginTransaction().replace(R.id.video_editor_activity_root, this.mVideoEditorFragment).commitAllowingStateLoss();
        }
    }

    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
        if (fragment instanceof MenuFragment) {
            this.mVideoEditorFragment.onAttachMenuFragment(fragment);
        }
    }
}
