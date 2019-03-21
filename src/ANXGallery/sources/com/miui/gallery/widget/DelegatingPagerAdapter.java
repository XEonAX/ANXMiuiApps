package com.miui.gallery.widget;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

public class DelegatingPagerAdapter extends PagerAdapter {
    private final PagerAdapter mDelegate;

    public DelegatingPagerAdapter(PagerAdapter delegate) {
        this.mDelegate = delegate;
    }

    public PagerAdapter getDelegate() {
        return this.mDelegate;
    }

    public int getCount() {
        return this.mDelegate.getCount();
    }

    public void startUpdate(ViewGroup container) {
        this.mDelegate.startUpdate(container);
    }

    public Object instantiateItem(ViewGroup container, int position) {
        return this.mDelegate.instantiateItem(container, position);
    }

    public void destroyItem(ViewGroup container, int position, Object object) {
        this.mDelegate.destroyItem(container, position, object);
    }

    public void setPrimaryItem(ViewGroup container, int position, Object object) {
        this.mDelegate.setPrimaryItem(container, position, object);
    }

    public void finishUpdate(ViewGroup container) {
        this.mDelegate.finishUpdate(container);
    }

    public boolean isViewFromObject(View view, Object object) {
        return this.mDelegate.isViewFromObject(view, object);
    }

    public int getItemPosition(Object object, int position) {
        return this.mDelegate.getItemPosition(object, position);
    }

    public void notifyDataSetChanged() {
        this.mDelegate.notifyDataSetChanged();
    }

    public void registerDataSetObserver(DataSetObserver observer) {
        this.mDelegate.registerDataSetObserver(observer);
    }

    public void unregisterDataSetObserver(DataSetObserver observer) {
        this.mDelegate.unregisterDataSetObserver(observer);
    }

    public float getPageWidth(int position) {
        return this.mDelegate.getPageWidth(position);
    }

    public void refreshItem(Object object, int position) {
        this.mDelegate.refreshItem(object, position);
    }

    public Parcelable saveState() {
        return this.mDelegate.saveState();
    }

    public void restoreState(Parcelable state, ClassLoader loader) {
        this.mDelegate.restoreState(state, loader);
    }

    public int getSlipWidth(int slipHeight, int position) {
        return this.mDelegate.getSlipWidth(slipHeight, position);
    }
}
