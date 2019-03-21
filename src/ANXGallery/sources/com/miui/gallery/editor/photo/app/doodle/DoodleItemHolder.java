package com.miui.gallery.editor.photo.app.doodle;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.DoodleData;
import com.miui.gallery.editor.photo.drawable.SelectableDrawable;
import miui.view.animation.SineEaseInOutInterpolator;

class DoodleItemHolder {
    private final ImageView mImageView = ((ImageView) this.wholeView.findViewById(R.id.img));
    public final View wholeView;

    DoodleItemHolder(Context context, ViewGroup parent) {
        this.wholeView = LayoutInflater.from(context).inflate(R.layout.doodle_menu_item, parent, false);
    }

    public void bind(DoodleData doodleData, int position) {
        SelectableDrawable selectableDrawable = new SelectableDrawable(this.mImageView.getResources().getDrawable(doodleData.normal), this.mImageView.getResources().getDrawable(doodleData.selected));
        selectableDrawable.setInterpolator(new SineEaseInOutInterpolator());
        selectableDrawable.setDuration((long) this.mImageView.getResources().getInteger(R.integer.selectable_drawable_fade_duration));
        this.mImageView.setImageDrawable(selectableDrawable);
        this.mImageView.setContentDescription(this.mImageView.getResources().getString(doodleData.talkback));
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.mImageView.setOnClickListener(onClickListener);
    }

    public void setSelected(boolean selected) {
        this.mImageView.setSelected(selected);
    }
}
