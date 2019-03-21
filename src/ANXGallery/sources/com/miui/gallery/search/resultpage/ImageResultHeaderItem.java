package com.miui.gallery.search.resultpage;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.ui.CheckableView;

public class ImageResultHeaderItem extends RelativeLayout implements CheckableView {
    private ImageView mExpandIcon;
    private boolean mExpandable;
    protected View mSelectGroupOrNot;
    protected View mSelectGroupOrNotContainer;
    protected TextView mSubTitle;
    protected TextView mTitle;

    public ImageResultHeaderItem(Context context, AttributeSet attrs) {
        super(context);
        setLayoutDirection(3);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mTitle = (TextView) findViewById(R.id.header_title);
        this.mSubTitle = (TextView) findViewById(R.id.header_sub_title);
        this.mSelectGroupOrNot = findViewById(R.id.do_select);
        ((TextView) this.mSelectGroupOrNot).setText(miui.R.string.select_all);
        this.mSelectGroupOrNotContainer = findViewById(R.id.do_select_container);
        this.mExpandIcon = (ImageView) findViewById(R.id.expand_icon);
    }

    public void bindData(String title, String subTitle, boolean expandable, int expandIconResource, OnClickListener expandToggleListener) {
        this.mTitle.setText(title);
        if (TextUtils.isEmpty(subTitle)) {
            this.mSubTitle.setVisibility(4);
        } else {
            this.mSubTitle.setText(subTitle);
            this.mSubTitle.setVisibility(0);
        }
        this.mExpandable = expandable;
        if (this.mExpandable) {
            this.mExpandIcon.setVisibility(0);
            this.mExpandIcon.setImageResource(expandIconResource);
            this.mExpandIcon.setOnClickListener(expandToggleListener);
            return;
        }
        this.mExpandIcon.setVisibility(8);
        this.mExpandIcon.setOnClickListener(null);
    }

    public void setCheckable(boolean checkable) {
        int i = 0;
        if (checkable) {
            this.mSelectGroupOrNotContainer.setVisibility(0);
            this.mExpandIcon.setVisibility(8);
            return;
        }
        this.mSelectGroupOrNotContainer.setVisibility(8);
        ImageView imageView = this.mExpandIcon;
        if (!this.mExpandable) {
            i = 8;
        }
        imageView.setVisibility(i);
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
        this.mSelectGroupOrNotContainer.setOnClickListener(l);
    }
}
