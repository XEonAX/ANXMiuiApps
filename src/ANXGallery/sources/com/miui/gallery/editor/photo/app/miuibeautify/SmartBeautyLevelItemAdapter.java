package com.miui.gallery.editor.photo.app.miuibeautify;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.drawable.SelectableDrawable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import com.miui.gallery.util.ScreenUtils;
import java.util.List;
import miui.view.animation.SineEaseInOutInterpolator;

public class SmartBeautyLevelItemAdapter extends Adapter<BeautyLevelItemHolder> implements Selectable {
    private List<LevelItem> mBeautyItemList;
    private Context mContext;
    private Delegator mDelegator = new Delegator(0);
    private int mItemWidth;

    class BeautyLevelItemHolder extends ViewHolder {
        private ImageView mImageView;

        BeautyLevelItemHolder(View itemView) {
            super(itemView);
            this.mImageView = (ImageView) itemView.findViewById(R.id.img);
        }

        public void bind(int normal, int selected) {
            SelectableDrawable selectableDrawable = new SelectableDrawable(this.mImageView.getResources().getDrawable(normal), this.mImageView.getResources().getDrawable(selected));
            selectableDrawable.setInterpolator(new SineEaseInOutInterpolator());
            selectableDrawable.setDuration((long) this.mImageView.getResources().getInteger(R.integer.selectable_drawable_fade_duration));
            this.mImageView.setImageDrawable(selectableDrawable);
        }
    }

    public static class LevelItem {
        private int mResourceNormal;
        private int mResourcePressed;

        public LevelItem(int resourceNormal, int resourcePressed) {
            this.mResourceNormal = resourceNormal;
            this.mResourcePressed = resourcePressed;
        }

        public int getNormalResource() {
            return this.mResourceNormal;
        }

        public int getPressedResource() {
            return this.mResourcePressed;
        }
    }

    public SmartBeautyLevelItemAdapter(Context context, List<LevelItem> listItems) {
        this.mContext = context;
        this.mBeautyItemList = listItems;
        if (getItemCount() != 0) {
            this.mItemWidth = (int) ((((float) ScreenUtils.getScreenWidth()) - (2.0f * context.getResources().getDimension(R.dimen.beautyedit_beauty_level_recycler_padding))) / ((float) getItemCount()));
        }
    }

    public BeautyLevelItemHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = getInflater().inflate(R.layout.beauty_level_item, parent, false);
        view.getLayoutParams().width = this.mItemWidth;
        return new BeautyLevelItemHolder(view);
    }

    public void onBindViewHolder(BeautyLevelItemHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.bind(((LevelItem) this.mBeautyItemList.get(position)).getNormalResource(), ((LevelItem) this.mBeautyItemList.get(position)).getPressedResource());
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mBeautyItemList == null ? 0 : this.mBeautyItemList.size();
    }

    public void setSelection(int index) {
        this.mDelegator.setSelection(index);
    }

    public int getSelection() {
        return this.mDelegator.getSelection();
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.mDelegator.onAttachedToRecyclerView(recyclerView);
    }

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.mDelegator.onDetachedFromRecyclerView(recyclerView);
    }
}
