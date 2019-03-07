package com.miui.screenrecorder.view;

import android.content.Context;
import android.preference.CheckBoxPreference;
import android.util.AttributeSet;
import android.widget.Toast;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.data.MiuiScreenRecorderGlobalData;

public class MiuiScreenRecorderCheckBoxPreference extends CheckBoxPreference {
    private CheckClickListener mClickListener;

    private interface CheckClickListener {
        void onClick();
    }

    public MiuiScreenRecorderCheckBoxPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onClick() {
        if (MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
            Toast.makeText(ScreenRecorderApplication.getContext(), ScreenRecorderApplication.getContext().getString(R.string.cannot_change_parames), 0).show();
        } else {
            super.onClick();
        }
        if (this.mClickListener != null) {
            this.mClickListener.onClick();
        }
    }
}
