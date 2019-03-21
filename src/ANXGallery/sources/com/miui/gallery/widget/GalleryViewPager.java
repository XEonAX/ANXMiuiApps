package com.miui.gallery.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.miui.gallery.widget.ViewPager.OnPageChangeListener;
import com.miui.gallery.widget.ViewPager.OnPageSettledListener;

public class GalleryViewPager extends ViewPager {
    private int mLayoutDirection;
    private ReversingOnPageChangeListener mReversingOnPageChangeListener = new ReversingOnPageChangeListener();
    private ReversingOnPageSettledListener mReversingOnPageSettledListener = new ReversingOnPageSettledListener();

    private class ReversingAdapter extends DelegatingPagerAdapter {
        public ReversingAdapter(PagerAdapter adapter) {
            super(adapter);
        }

        public void destroyItem(ViewGroup container, int position, Object object) {
            super.destroyItem(container, GalleryViewPager.processingIndex(position, getCount(), GalleryViewPager.this.isRtl()), object);
        }

        public float getPageWidth(int position) {
            return super.getPageWidth(GalleryViewPager.processingIndex(position, getCount(), GalleryViewPager.this.isRtl()));
        }

        public Object instantiateItem(ViewGroup container, int position) {
            return super.instantiateItem(container, GalleryViewPager.processingIndex(position, getCount(), GalleryViewPager.this.isRtl()));
        }

        public void setPrimaryItem(ViewGroup container, int position, Object object) {
            super.setPrimaryItem(container, GalleryViewPager.processingIndex(position, getCount(), GalleryViewPager.this.isRtl()), object);
        }

        public void refreshItem(Object object, int position) {
            super.refreshItem(object, GalleryViewPager.processingIndex(position, getCount(), GalleryViewPager.this.isRtl()));
        }

        public int getItemPosition(Object object, int position) {
            return super.getItemPosition(object, GalleryViewPager.processingIndex(position, getCount(), GalleryViewPager.this.isRtl()));
        }
    }

    private class ReversingOnPageChangeListener implements OnPageChangeListener {
        OnPageChangeListener mListener;

        private ReversingOnPageChangeListener() {
        }

        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            if (this.mListener != null) {
                this.mListener.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
        }

        public void onPageSelected(int position) {
            if (this.mListener != null) {
                PagerAdapter adapter = super.getAdapter();
                if (adapter != null) {
                    position = GalleryViewPager.processingIndex(position, adapter.getCount(), GalleryViewPager.this.isRtl());
                }
                this.mListener.onPageSelected(position);
            }
        }

        public void onPageScrollStateChanged(int state) {
            if (this.mListener != null) {
                this.mListener.onPageScrollStateChanged(state);
            }
        }
    }

    private class ReversingOnPageSettledListener implements OnPageSettledListener {
        OnPageSettledListener mListener;

        private ReversingOnPageSettledListener() {
        }

        public void onPageSettled(int position) {
            if (this.mListener != null) {
                PagerAdapter adapter = super.getAdapter();
                if (adapter != null) {
                    position = GalleryViewPager.processingIndex(position, adapter.getCount(), GalleryViewPager.this.isRtl());
                }
                this.mListener.onPageSettled(position);
            }
        }
    }

    public GalleryViewPager(Context context) {
        super(context);
        init(context);
    }

    public GalleryViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public GalleryViewPager(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(Context context) {
        super.setOnPageChangeListener(this.mReversingOnPageChangeListener);
        super.setOnPageSettledListener(this.mReversingOnPageSettledListener);
        this.mLayoutDirection = context.getResources().getConfiguration().getLayoutDirection();
    }

    public void onRtlPropertiesChanged(int layoutDirection) {
        super.onRtlPropertiesChanged(layoutDirection);
        if (this.mLayoutDirection != layoutDirection) {
            int currentItem = getCurrentItem();
            this.mLayoutDirection = layoutDirection;
            PagerAdapter pagerAdapter = getAdapter();
            if (pagerAdapter != null) {
                pagerAdapter.notifyDataSetChanged();
                setCurrentItem(currentItem);
            }
        }
    }

    public void setAdapter(PagerAdapter adapter) {
        if (adapter != null) {
            adapter = new ReversingAdapter(adapter);
        }
        super.setAdapter(adapter);
        setCurrentItem(0);
    }

    public PagerAdapter getAdapter() {
        ReversingAdapter adapter = (ReversingAdapter) super.getAdapter();
        return adapter == null ? null : adapter.getDelegate();
    }

    private boolean isRtl() {
        return this.mLayoutDirection == 1;
    }

    public Object getItem(int position) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null) {
            position = processingIndex(position, adapter.getCount(), isRtl());
        }
        return super.getItem(position);
    }

    public int getCurrentItem() {
        int item = super.getCurrentItem();
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null) {
            return processingIndex(item, adapter.getCount(), isRtl());
        }
        return item;
    }

    public void setCurrentItem(int position, boolean smoothScroll) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null) {
            position = processingIndex(position, adapter.getCount(), isRtl());
        }
        super.setCurrentItem(position, smoothScroll);
    }

    public void setCurrentItem(int position) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null) {
            position = processingIndex(position, adapter.getCount(), isRtl());
        }
        super.setCurrentItem(position);
    }

    public void setOnPageChangeListener(OnPageChangeListener listener) {
        this.mReversingOnPageChangeListener.mListener = listener;
    }

    public void setOnPageSettledListener(OnPageSettledListener listener) {
        this.mReversingOnPageSettledListener.mListener = listener;
    }

    private static int processingIndex(int index, int count, boolean reverse) {
        if (reverse) {
            return (count - index) - 1;
        }
        return index;
    }
}
