package com.miui.gallery.search.core.display;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;

public class BaseSuggestionViewHolder extends ViewHolder {
    protected View mClickView;
    protected ImageView mIconView;
    protected TextView mSubTitle;
    protected TextView mTitle;
    protected String mViewType;

    public BaseSuggestionViewHolder(View itemView) {
        super(itemView);
        this.mClickView = itemView.findViewById(R.id.click_view);
        this.mIconView = (ImageView) itemView.findViewById(R.id.icon);
        this.mTitle = (TextView) itemView.findViewById(R.id.title);
        this.mSubTitle = (TextView) itemView.findViewById(R.id.subtitle);
    }

    public String getViewType() {
        return this.mViewType;
    }

    public void setViewType(String viewType) {
        this.mViewType = viewType;
    }

    public ImageView getIconView() {
        return this.mIconView;
    }

    public TextView getTitle() {
        return this.mTitle;
    }

    public TextView getSubTitle() {
        return this.mSubTitle;
    }

    public View getClickView() {
        return this.mClickView;
    }
}
