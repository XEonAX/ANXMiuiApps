package com.miui.gallery.ui;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.miui.gallery.R;

public class RecentTimelineGridHeaderItem extends RelativeLayout implements CheckableView {
    protected TextView mAlbumFrom;
    protected TextView mDateTime;
    protected TextView mFileCount;
    protected View mSelectGroupOrNot;
    protected View mSelectGroupOrNotContainer;

    public RecentTimelineGridHeaderItem(Context context, AttributeSet attrs) {
        super(context);
        setLayoutDirection(3);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mDateTime = (TextView) findViewById(R.id.datetime);
        this.mFileCount = (TextView) findViewById(R.id.file_count);
        this.mAlbumFrom = (TextView) findViewById(R.id.album_from);
        this.mSelectGroupOrNot = findViewById(R.id.do_select);
        ((TextView) this.mSelectGroupOrNot).setText(miui.R.string.select_all);
        this.mSelectGroupOrNotContainer = findViewById(R.id.do_select_container);
    }

    public void bindData(String timeLabel, int fileCount, String albumName, boolean isInPickMode) {
        bindTimeLabel(timeLabel);
        bindFileCount(fileCount);
        bindAlbumFrom(albumName, isInPickMode);
    }

    protected void bindTimeLabel(String timeLabel) {
        if (timeLabel != null) {
            this.mDateTime.setText(timeLabel);
        } else {
            this.mDateTime.setText("");
        }
    }

    protected void bindFileCount(int fileCount) {
        this.mFileCount.setText(getContext().getResources().getQuantityString(R.plurals.file_count_format, fileCount, new Object[]{Integer.valueOf(fileCount)}));
    }

    protected void bindAlbumFrom(String albumName, boolean isInPickMode) {
        if (TextUtils.isEmpty(albumName)) {
            this.mAlbumFrom.setVisibility(8);
            return;
        }
        this.mAlbumFrom.setVisibility(0);
        this.mAlbumFrom.setText(getResources().getString(R.string.album_from_format, new Object[]{albumName}));
        if (isInPickMode) {
            this.mAlbumFrom.setCompoundDrawablePadding(0);
            this.mAlbumFrom.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
        }
    }

    public void setCheckable(boolean checkable) {
        if (checkable) {
            this.mSelectGroupOrNotContainer.setVisibility(0);
            this.mAlbumFrom.setVisibility(8);
            return;
        }
        this.mSelectGroupOrNotContainer.setVisibility(8);
        this.mAlbumFrom.setVisibility(0);
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

    public void setAlbumFromClickedListener(OnClickListener listener) {
        this.mAlbumFrom.setOnClickListener(listener);
    }
}
