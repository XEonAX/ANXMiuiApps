package com.miui.gallery.editor.photo.app.filter;

import android.graphics.drawable.ColorDrawable;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.FilterData;

class FilterMenuItem extends ViewHolder {
    private ColorDrawable mColorDrawable = ((ColorDrawable) new ColorDrawable().mutate());
    private View mConfigIndicator;
    private FilterData mData;
    private ImageView mPreviewView;
    boolean mSelected;
    private View mSelector;
    private TextView mTitleView;
    private TextView mValueIndicator;

    FilterMenuItem(View itemView) {
        super(itemView);
        this.mPreviewView = (ImageView) itemView.findViewById(R.id.preview);
        this.mTitleView = (TextView) itemView.findViewById(R.id.title);
        this.mValueIndicator = (TextView) itemView.findViewById(R.id.value_indicator);
        this.mConfigIndicator = itemView.findViewById(R.id.configable_indicator);
        this.mSelector = itemView.findViewById(R.id.selector);
    }

    void bindData(FilterData data) {
        this.mData = data;
        this.mPreviewView.setImageResource(data.icon);
        this.mPreviewView.setContentDescription(data.name);
        this.mTitleView.setText(data.name);
    }

    void setState(boolean selected, boolean editMode) {
        LayoutParams lp = (LayoutParams) this.mSelector.getLayoutParams();
        this.mSelected = selected;
        int[] rules = lp.getRules();
        if (selected) {
            if (editMode) {
                this.mValueIndicator.setVisibility(0);
                this.mConfigIndicator.setVisibility(8);
            } else {
                this.mValueIndicator.setVisibility(8);
                if (!this.mData.isNone()) {
                    this.mConfigIndicator.setVisibility(0);
                }
            }
            if (rules[10] != -1) {
                lp.addRule(10, -1);
                lp.removeRule(6);
                return;
            }
            return;
        }
        this.mValueIndicator.setVisibility(8);
        this.mConfigIndicator.setVisibility(8);
        if (rules[6] != R.id.title) {
            lp.removeRule(10);
            lp.addRule(6, R.id.title);
        }
    }

    void setForegroundColor(int foregroundColor) {
        this.mColorDrawable.setColor(foregroundColor);
        if (this.mSelected) {
            this.mColorDrawable.setAlpha((int) (this.mData.isNone() ? 153.0d : 229.5d));
        }
        this.mSelector.setBackground(this.mColorDrawable);
    }

    void updateIndicator(int value) {
        this.mValueIndicator.setText(String.valueOf(value));
    }
}
