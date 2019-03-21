package com.miui.gallery.ui;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.gallery.R;

public abstract class TimeLineGridHeaderItem extends LinearLayout implements CheckableView {
    protected TextView mDateTime;
    protected TextView mLocation;
    private View mSelectGroupOrNot;

    public TimeLineGridHeaderItem(Context context) {
        this(context, null);
    }

    public TimeLineGridHeaderItem(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public TimeLineGridHeaderItem(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setLayoutDirection(3);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mDateTime = (TextView) findViewById(R.id.datetime);
        this.mLocation = (TextView) findViewById(R.id.location);
        this.mSelectGroupOrNot = findViewById(R.id.do_select);
        ((TextView) this.mSelectGroupOrNot).setText(miui.R.string.select_all);
    }

    public void bindData(String time, String location) {
        this.mDateTime.setText(time);
        if (TextUtils.isEmpty(location)) {
            this.mLocation.setVisibility(4);
            return;
        }
        this.mLocation.setText(location);
        this.mLocation.setVisibility(0);
    }

    public void setCheckable(boolean checkable) {
        if (checkable) {
            if (this.mSelectGroupOrNot.getBackground() == null) {
                this.mSelectGroupOrNot.setBackgroundResource(R.drawable.select_all_button);
            }
            this.mSelectGroupOrNot.setVisibility(0);
            return;
        }
        this.mSelectGroupOrNot.setVisibility(8);
    }

    public void setChecked(boolean checked) {
        ((TextView) this.mSelectGroupOrNot).setText(getContext().getString(checked ? miui.R.string.deselect_all : miui.R.string.select_all));
    }

    public boolean isChecked() {
        return false;
    }

    public void toggle() {
    }

    public void setCheckableListener(OnClickListener l) {
        this.mSelectGroupOrNot.setOnClickListener(l);
    }
}
