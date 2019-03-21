package com.miui.gallery.search.widget.bannerView;

import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class BaseBannerAdapter<T extends BaseBannerItemData> {
    private List<T> mData;
    private OnDataChangedListener mOnDataChangedListener;
    private OnUpdateTextListener mOnUpdateTextListener;

    interface OnDataChangedListener {
        void onChanged();
    }

    public interface OnUpdateTextListener {
        void onUpdateText(String str, String str2);
    }

    public abstract void bindView(View view, int i);

    public abstract View getView(BannerView bannerView);

    public BaseBannerAdapter(T[] data) {
        this.mData = new ArrayList(Arrays.asList(data));
    }

    public void setData(List<T> data) {
        this.mData = data;
        notifyDataChanged();
    }

    public void setData(T[] data) {
        setData(new ArrayList(Arrays.asList(data)));
    }

    void setOnDataChangedListener(OnDataChangedListener listener) {
        this.mOnDataChangedListener = listener;
    }

    public void setOnUpdateTextListener(OnUpdateTextListener onUpdateTextListener) {
        this.mOnUpdateTextListener = onUpdateTextListener;
    }

    public OnUpdateTextListener getOnUpdateTextListener() {
        return this.mOnUpdateTextListener;
    }

    public int getCount() {
        return this.mData == null ? 0 : this.mData.size();
    }

    void notifyDataChanged() {
        this.mOnDataChangedListener.onChanged();
    }

    public T getItem(int position) {
        return (BaseBannerItemData) this.mData.get(position);
    }
}
