package com.miui.gallery.video.editor.adapter;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class FilterAdjustPageAdapter extends PagerAdapter {
    private List<View> mViewList;

    public FilterAdjustPageAdapter(List<View> viewList) {
        this.mViewList = viewList;
    }

    public int getCount() {
        if (this.mViewList != null) {
            return this.mViewList.size();
        }
        return 0;
    }

    public boolean isViewFromObject(View view, Object object) {
        return view == object;
    }

    public Object instantiateItem(ViewGroup container, int position) {
        container.addView((View) this.mViewList.get(position));
        return this.mViewList.get(position);
    }

    public void destroyItem(ViewGroup container, int position, Object object) {
        container.removeView((View) this.mViewList.get(position));
    }
}
