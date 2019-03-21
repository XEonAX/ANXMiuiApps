package com.miui.gallery.editor.photo.app.sticker;

import android.content.Context;
import android.graphics.Bitmap.Config;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.StickerData;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import java.util.List;

public class CategoryDetailAdapter extends Adapter<StickerHolder> {
    private List<StickerData> mDataList;
    private DisplayImageOptions mDisplayImageOptions = new Builder().resetViewBeforeLoading(true).imageScaleType(ImageScaleType.IN_SAMPLE_POWER_OF_2).bitmapConfig(Config.ARGB_8888).cacheThumbnail(false).loadThumbnail(true).build();
    private ImageSize mSize;

    public CategoryDetailAdapter(Context context, List<StickerData> list) {
        this.mDataList = list;
        this.mSize = new ImageSize(context.getResources().getDimensionPixelSize(R.dimen.menu_panel_list_item_width), context.getResources().getDimensionPixelSize(R.dimen.menu_panel_list_height));
    }

    public List<StickerData> getDataList() {
        return this.mDataList;
    }

    public void setDataList(List<StickerData> dataList) {
        this.mDataList = dataList;
    }

    public StickerHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new StickerHolder(getInflater().inflate(R.layout.sticker_menu_item, parent, false), this.mDisplayImageOptions, this.mSize);
    }

    public void onBindViewHolder(StickerHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.bind((StickerData) this.mDataList.get(position), position);
    }

    public int getItemCount() {
        return this.mDataList.size();
    }
}
