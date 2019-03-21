package com.miui.gallery.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.data.LocationUtil;

public class PhotoPageTopBar {
    private TextView mLocation = ((TextView) this.mTopLayout.findViewById(R.id.top_bar_location));
    private View mOperationView = this.mTopLayout.findViewById(R.id.operation_btn);
    private TextView mSubTitle = ((TextView) this.mTopLayout.findViewById(R.id.top_bar_subtitle));
    private TextView mTitle = ((TextView) this.mTopLayout.findViewById(R.id.top_bar_title));
    private View mTopLayout;

    public PhotoPageTopBar(Context context, OnClickListener listener) {
        this.mTopLayout = LayoutInflater.from(context).inflate(R.layout.photo_page_top_bar, null);
        this.mTopLayout.findViewById(R.id.action_back).setOnClickListener(listener);
    }

    public View getView() {
        return this.mTopLayout;
    }

    public View getOperationView() {
        return this.mOperationView;
    }

    public void setTitle(String title) {
        this.mTitle.setText(title);
    }

    public void setSubTitle(String subtitle) {
        this.mSubTitle.setText(subtitle);
    }

    public void setLocation(Context context, String location) {
        if (LocationUtil.isLocationValidate(location)) {
            this.mLocation.setText(location);
            this.mLocation.setVisibility(0);
            return;
        }
        this.mLocation.setVisibility(4);
    }

    public boolean isShowing() {
        return this.mTopLayout.getVisibility() == 0;
    }

    public void show() {
        this.mTopLayout.setVisibility(0);
    }

    public void hide() {
        this.mTopLayout.setVisibility(8);
    }
}
