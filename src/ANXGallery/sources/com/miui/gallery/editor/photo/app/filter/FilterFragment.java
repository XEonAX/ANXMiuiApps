package com.miui.gallery.editor.photo.app.filter;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.MenuFragment;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.model.FilterCategory;
import com.miui.gallery.editor.photo.core.common.model.FilterData;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import com.miui.gallery.editor.photo.widgets.seekbar.BasicSeekBar;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;
import miui.view.animation.CubicEaseOutInterpolator;

public class FilterFragment extends MenuFragment<AbstractEffectFragment, SdkProvider<FilterCategory, AbstractEffectFragment>> {
    private List<FilterCategory> mCategories;
    private ViewPager mFilterPager;
    private FilterHeadAdapter mHeaderAdapter;
    private OnItemClickListener mItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            FilterFragment.this.mFilterPager.setCurrentItem(position, true);
            FilterFragment.this.mHeaderAdapter.setSelection(position);
            return true;
        }
    };
    private FilterPagerAdapter mPagerAdapter;
    private SimpleRecyclerView mRecyclerView;
    private SeekBar mSeekBar;
    private OnSeekBarChangeListener mSeekBarChangeListener = new OnSeekBarChangeListener() {
        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            FilterFragment.this.doConfig(progress);
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    };
    private FilterData mSelectedItem;
    private TextView mTitle;
    private LinearLayout mTopPanel;

    private class FilterPagerAdapter extends PagerAdapter {
        private FilterAdapter[] mFilterAdapters;
        private OnItemClickListener mOnItemClickListener;

        private FilterPagerAdapter() {
            this.mFilterAdapters = new FilterAdapter[FilterFragment.this.mCategories.size()];
            this.mOnItemClickListener = new OnItemClickListener() {
                public boolean OnItemClick(RecyclerView parent, View child, int position) {
                    ScrollControlLinearLayoutManager.onItemClick(parent, position);
                    FilterAdapter filterAdapter = (FilterAdapter) parent.getAdapter();
                    FilterData filterData = filterAdapter.getItemData(position);
                    if (filterData == null) {
                        Log.e("FilterFragment", "FilterAdapter get filterData null:pos is %d", Integer.valueOf(position));
                    } else if (!filterData.equals(FilterFragment.this.mSelectedItem)) {
                        FilterFragment.this.doRender(filterData, Integer.valueOf(filterData.progress));
                        filterAdapter.setSelectedIndex(position);
                        FilterFragment.this.mSelectedItem = filterData;
                        if (filterAdapter.isInEditMode() && !filterData.isNone()) {
                            FilterFragment.this.mSeekBar.setProgress(filterData.progress);
                        }
                        FilterPagerAdapter.this.clearOtherSelector();
                    } else if (filterAdapter.isInEditMode()) {
                        filterAdapter.exitEditMode();
                        FilterFragment.this.showTopPanel(false);
                    } else if (!filterData.isNone()) {
                        filterAdapter.enterEditMode();
                        FilterFragment.this.mSeekBar.setProgress(filterData.progress);
                        FilterFragment.this.showTopPanel(true);
                    }
                    return true;
                }
            };
        }

        /* synthetic */ FilterPagerAdapter(FilterFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void updateProgressValue(int value) {
            FilterAdapter filterAdapter = getCurrentAdapter();
            if (filterAdapter != null && filterAdapter.isInEditMode()) {
                filterAdapter.update(value);
            }
        }

        private void clearOtherSelector() {
            int i = 0;
            while (i < this.mFilterAdapters.length) {
                if (!(i == FilterFragment.this.mFilterPager.getCurrentItem() || this.mFilterAdapters[i] == null)) {
                    if (FilterFragment.this.mSelectedItem == null || !FilterFragment.this.mSelectedItem.isNone()) {
                        this.mFilterAdapters[i].clearSelected();
                    } else {
                        this.mFilterAdapters[i].setSelectedIndex(0);
                    }
                }
                i++;
            }
        }

        private FilterAdapter getCurrentAdapter() {
            return this.mFilterAdapters[FilterFragment.this.mFilterPager.getCurrentItem()];
        }

        public int getCount() {
            return FilterFragment.this.mCategories.size();
        }

        public Object instantiateItem(ViewGroup container, int position) {
            SimpleRecyclerView recyclerView = new SimpleRecyclerView(FilterFragment.this.getActivity());
            FilterCategory filterCategory = (FilterCategory) FilterFragment.this.mCategories.get(position);
            List<? extends FilterData> list = filterCategory.getFilterDatas();
            List<FilterData> dataList = new ArrayList(list.size());
            dataList.addAll(list);
            LinearLayoutManager linearLayoutManager = new ScrollControlLinearLayoutManager(FilterFragment.this.getActivity());
            linearLayoutManager.setOrientation(0);
            recyclerView.setLayoutManager(linearLayoutManager);
            FilterAdapter adapter = new FilterAdapter(dataList, filterCategory.highlighColor, filterCategory.subHighlighColor, filterCategory.subItemSize);
            adapter.setOnItemClickListener(this.mOnItemClickListener);
            adapter.setSelectedIndex(findSelected(dataList));
            recyclerView.setAdapter(adapter);
            recyclerView.addItemDecoration(new BlankDivider(FilterFragment.this.getResources(), R.dimen.menu_panel_list_item_divider_width, 0));
            container.addView(recyclerView);
            this.mFilterAdapters[position] = adapter;
            HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(recyclerView);
            return recyclerView;
        }

        private int findSelected(List<FilterData> dataList) {
            if (FilterFragment.this.mSelectedItem == null || FilterFragment.this.mSelectedItem.isNone()) {
                return 0;
            }
            for (int i = 0; i < dataList.size(); i++) {
                if (((FilterData) dataList.get(i)).equals(FilterFragment.this.mSelectedItem)) {
                    ((FilterData) dataList.get(i)).progress = FilterFragment.this.mSelectedItem.progress;
                    return i;
                }
            }
            return -1;
        }

        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        public boolean isViewFromObject(View view, Object o) {
            return view == o;
        }
    }

    public FilterFragment() {
        super(Effect.FILTER);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mCategories = new ArrayList();
        this.mCategories.addAll(this.mSdkProvider.list());
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.filter_menu_fragment, container, false);
        this.mTopPanel = (LinearLayout) view.findViewById(R.id.top_panel);
        this.mSeekBar = new BasicSeekBar(getActivity());
        this.mSeekBar.setOnSeekBarChangeListener(this.mSeekBarChangeListener);
        this.mSeekBar.setMax(100);
        this.mTopPanel.addView(this.mSeekBar, -1, -2);
        this.mHeaderAdapter = new FilterHeadAdapter(this.mCategories, new Selector(getActivity().getResources().getColor(R.color.photo_editor_highlight_color)));
        this.mRecyclerView = (SimpleRecyclerView) view.findViewById(R.id.filter_type_list);
        this.mRecyclerView.setAdapter(this.mHeaderAdapter);
        this.mHeaderAdapter.setOnItemClickListener(this.mItemClickListener);
        this.mFilterPager = (ViewPager) view.findViewById(R.id.filter_pager);
        this.mFilterPager.setOffscreenPageLimit(1);
        this.mPagerAdapter = new FilterPagerAdapter(this, null);
        this.mFilterPager.setAdapter(this.mPagerAdapter);
        this.mFilterPager.setCurrentItem(0, false);
        this.mTitle = (TextView) view.findViewById(R.id.title);
        this.mTitle.setText(R.string.photo_editor_filter);
        return view;
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
    }

    private void doRender(FilterData filterData, Object value) {
        ((AbstractEffectFragment) getRenderFragment()).clear();
        ((AbstractEffectFragment) getRenderFragment()).add(filterData, value);
        ((AbstractEffectFragment) getRenderFragment()).render();
    }

    private void doConfig(int value) {
        this.mPagerAdapter.updateProgressValue(value);
        if (this.mSelectedItem != null) {
            this.mSelectedItem.progress = value;
        }
        ((AbstractEffectFragment) getRenderFragment()).clear();
        ((AbstractEffectFragment) getRenderFragment()).add(this.mSelectedItem, Integer.valueOf(value));
        ((AbstractEffectFragment) getRenderFragment()).render();
    }

    public void showTopPanel(boolean show) {
        this.mTopPanel.setVisibility(show ? 0 : 8);
        this.mRecyclerView.setVisibility(show ? 8 : 0);
        PropertyValuesHolder y;
        PropertyValuesHolder alpha;
        ObjectAnimator recyclerAnimal;
        PropertyValuesHolder y2;
        PropertyValuesHolder alpha2;
        if (show) {
            ObjectAnimator topAnimal = new ObjectAnimator();
            topAnimal.setTarget(this.mTopPanel);
            y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{getResources().getDimension(R.dimen.photo_editor_filter_tab_offset), 0.0f});
            alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{0.0f, 1.0f});
            topAnimal.setValues(new PropertyValuesHolder[]{y, alpha});
            topAnimal.setInterpolator(new CubicEaseOutInterpolator());
            topAnimal.setDuration((long) getResources().getInteger(R.integer.photo_editor_filter_tab_disappear_duration));
            topAnimal.start();
            recyclerAnimal = new ObjectAnimator();
            recyclerAnimal.setTarget(this.mRecyclerView);
            y2 = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{0.0f, -getResources().getDimension(R.dimen.photo_editor_filter_tab_offset)});
            alpha2 = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{1.0f, 0.0f});
            recyclerAnimal.setValues(new PropertyValuesHolder[]{y2, alpha2});
            recyclerAnimal.setInterpolator(new CubicEaseOutInterpolator());
            recyclerAnimal.setDuration((long) getResources().getInteger(R.integer.photo_editor_filter_tab_disappear_duration));
            recyclerAnimal.start();
            return;
        }
        recyclerAnimal = new ObjectAnimator();
        recyclerAnimal.setTarget(this.mRecyclerView);
        y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{-getResources().getDimension(R.dimen.photo_editor_filter_tab_offset), 0.0f});
        alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{0.0f, 1.0f});
        recyclerAnimal.setValues(new PropertyValuesHolder[]{y, alpha});
        recyclerAnimal.setInterpolator(new CubicEaseOutInterpolator());
        recyclerAnimal.setDuration((long) getResources().getInteger(R.integer.photo_editor_filter_tab_disappear_duration));
        recyclerAnimal.start();
        ObjectAnimator panelAnimal = new ObjectAnimator();
        panelAnimal.setTarget(this.mTopPanel);
        y2 = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{0.0f, getResources().getDimension(R.dimen.photo_editor_filter_tab_offset)});
        alpha2 = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{1.0f, 0.0f});
        panelAnimal.setValues(new PropertyValuesHolder[]{y2, alpha2});
        panelAnimal.setInterpolator(new CubicEaseOutInterpolator());
        panelAnimal.setDuration((long) getResources().getInteger(R.integer.photo_editor_filter_tab_disappear_duration));
        panelAnimal.start();
    }
}
