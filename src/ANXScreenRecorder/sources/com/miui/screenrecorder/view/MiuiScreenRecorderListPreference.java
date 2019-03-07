package com.miui.screenrecorder.view;

import android.content.Context;
import android.preference.ListPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.data.MiuiScreenRecorderGlobalData;

public class MiuiScreenRecorderListPreference extends ListPreference {
    ListClickListener mClickListener;
    TextView mLeftSummary;
    TextView mLeftTitle;
    TextView mRightValue;
    String mSummaryStr;
    String mTitleStr;
    String mValueStr;

    public interface ListClickListener {
        void onClick();
    }

    public MiuiScreenRecorderListPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public void setOnListClickListener(ListClickListener listener) {
        this.mClickListener = listener;
    }

    private void init() {
        setLayoutResource(R.layout.settings_item);
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        this.mLeftTitle = (TextView) view.findViewById(R.id.left_title);
        if (this.mLeftTitle != null) {
            this.mLeftTitle.setText(this.mTitleStr);
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
        if (MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
            Toast.makeText(getAppContext(), getAppContext().getString(R.string.cannot_change_parames), 0).show();
        } else {
            super.onClick();
        }
        if (this.mClickListener != null) {
            this.mClickListener.onClick();
        }
    }

    public void setLeftTitle(String title) {
        this.mTitleStr = title;
    }

    public void setLeftSummary(String summary) {
        this.mSummaryStr = summary;
    }

    public void setRightValue(String value) {
        if (value != null && !value.equals(this.mValueStr)) {
            this.mValueStr = value;
            notifyChanged();
        }
    }

    Context getAppContext() {
        return ScreenRecorderApplication.getContext();
    }
}
