package com.miui.screenrecorder.view;

import android.content.Context;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.config.ScreenRecorderConfig;

public class FramesListPreference extends MiuiScreenRecorderListPreference {
    private static final boolean DEFAULT_FIXED_FRAME = true;
    private boolean mIsFixedFrames;

    public FramesListPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        this.mLeftTitle = (TextView) view.findViewById(R.id.left_title);
        if (this.mLeftTitle != null) {
            this.mLeftTitle.setText(this.mTitleStr);
            refreshLayout(PreferenceManager.getDefaultSharedPreferences(getAppContext()).getBoolean(ScreenRecorderConfig.KEY_SCREENRECORDER_FIXED_FRAME, true));
        }
        this.mLeftSummary = (TextView) view.findViewById(R.id.left_summary);
        if (this.mLeftSummary != null) {
            this.mLeftSummary.setText(this.mSummaryStr);
        }
        this.mRightValue = (TextView) view.findViewById(R.id.right_value);
        if (this.mRightValue != null) {
            this.mRightValue.setText(this.mValueStr);
        }
    }

    protected void onClick() {
        if (this.mIsFixedFrames) {
            super.onClick();
        } else {
            Toast.makeText(getAppContext(), getAppContext().getString(R.string.cannot_change_frames), 0).show();
        }
        if (this.mClickListener != null) {
            this.mClickListener.onClick();
        }
    }

    public void refreshLayout(boolean isFixedFrames) {
        this.mIsFixedFrames = isFixedFrames;
        if (isFixedFrames) {
            this.mLeftTitle.setEnabled(true);
            this.mLeftSummary.setEnabled(true);
            this.mRightValue.setEnabled(true);
            return;
        }
        this.mLeftTitle.setEnabled(false);
        this.mLeftSummary.setEnabled(false);
        this.mRightValue.setEnabled(false);
    }
}
