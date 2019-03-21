package com.miui.gallery.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.miui.gallery.R;

public class PeoplePageGridHeaderItem extends RelativeLayout {
    protected TextView mGroupName;

    public PeoplePageGridHeaderItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mGroupName = (TextView) findViewById(R.id.groupName);
    }

    public void bindData(String groupName) {
        this.mGroupName.setText(groupName);
    }
}
