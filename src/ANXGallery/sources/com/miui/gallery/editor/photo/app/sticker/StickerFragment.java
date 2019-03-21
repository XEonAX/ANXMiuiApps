package com.miui.gallery.editor.photo.app.sticker;

import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.MenuFragment;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.model.StickerCategory;
import com.miui.gallery.editor.photo.core.common.model.StickerData;
import com.miui.gallery.editor.photo.core.common.provider.AbstractStickerProvider;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import java.util.ArrayList;
import java.util.List;

public class StickerFragment extends MenuFragment<AbstractEffectFragment, AbstractStickerProvider> {
    private List<StickerCategory> mCategories;
    private HeaderAdapter mHeaderAdapter;
    private SimpleRecyclerView mHeaderView;
    private OnItemClickListener mItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            StickerFragment.this.mStickerPager.setCurrentItem(position + 1, true);
            if (StickerFragment.this.mRecentView.isSelected()) {
                StickerFragment.this.mRecentView.setSelected(false);
            }
            StickerFragment.this.mHeaderAdapter.setSelection(position);
            ScrollControlLinearLayoutManager.onItemClick(parent, position);
            return true;
        }
    };
    private OnItemClickListener mOnStickerSelectedListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            ((AbstractEffectFragment) StickerFragment.this.getRenderFragment()).add((Metadata) ((CategoryDetailAdapter) parent.getAdapter()).getDataList().get(position), null);
            ScrollControlLinearLayoutManager.onItemClick(parent, position);
            return true;
        }
    };
    private View mRecentView;
    private ViewPager mStickerPager;
    private StickerPagerAdapter mStickerPagerAdapter;
    private TextView mTitle;

    private class StickerPagerAdapter extends PagerAdapter implements OnPageChangeListener {
        private AbstractStickerProvider mProvider = ((AbstractStickerProvider) SdkManager.INSTANCE.getProvider(Effect.STICKER));
        private SparseArray<RecyclerView> mViewMapping = new SparseArray();

        public int getCount() {
            return StickerFragment.this.mCategories.size();
        }

        public Object instantiateItem(ViewGroup container, int position) {
            List<StickerData> dataList;
            SimpleRecyclerView recyclerView = new SimpleRecyclerView(StickerFragment.this.getActivity());
            StickerCategory stickerCategory = (StickerCategory) StickerFragment.this.mCategories.get(position);
            LinearLayoutManager linearLayoutManager = new ScrollControlLinearLayoutManager(StickerFragment.this.getActivity());
            linearLayoutManager.setOrientation(0);
            recyclerView.setLayoutManager(linearLayoutManager);
            container.addView(recyclerView);
            if (stickerCategory.id == -9223372036854775807L) {
                dataList = this.mProvider.recent();
                recyclerView.setTag("recent_tag");
            } else {
                dataList = this.mProvider.list(stickerCategory.id);
            }
            CategoryDetailAdapter adapter = new CategoryDetailAdapter(StickerFragment.this.getActivity(), dataList);
            recyclerView.setAdapter(adapter);
            adapter.setOnItemClickListener(StickerFragment.this.mOnStickerSelectedListener);
            recyclerView.addItemDecoration(new BlankDivider(StickerFragment.this.getResources(), R.dimen.menu_panel_list_item_divider_width, 0));
            HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(recyclerView);
            this.mViewMapping.put(position, recyclerView);
            return recyclerView;
        }

        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
            this.mViewMapping.remove(position);
        }

        public boolean isViewFromObject(View view, Object o) {
            return view == o;
        }

        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        public void onPageSelected(int position) {
            RecyclerView recyclerView = (RecyclerView) this.mViewMapping.get(position);
            if (recyclerView != null && "recent_tag".equals(recyclerView.getTag())) {
                CategoryDetailAdapter adapter = (CategoryDetailAdapter) recyclerView.getAdapter();
                adapter.setDataList(((AbstractStickerProvider) StickerFragment.this.mSdkProvider).recent());
                adapter.notifyDataSetChanged();
            }
        }

        public void onPageScrollStateChanged(int state) {
        }
    }

    public StickerFragment() {
        super(Effect.STICKER);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mCategories = new ArrayList();
        this.mCategories.addAll(((AbstractStickerProvider) this.mSdkProvider).list());
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.sticker_menu_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mHeaderAdapter = new HeaderAdapter(new ArrayList(this.mCategories), new Selector(getActivity().getResources().getColor(R.color.photo_editor_highlight_color)));
        this.mCategories.add(0, new CategoryRecent());
        this.mHeaderView = (SimpleRecyclerView) view.findViewById(R.id.category);
        this.mHeaderView.setAdapter(this.mHeaderAdapter);
        LinearLayoutManager linearLayoutManager = new ScrollControlLinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(0);
        this.mHeaderView.setLayoutManager(linearLayoutManager);
        this.mHeaderAdapter.setOnItemClickListener(this.mItemClickListener);
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mHeaderView);
        this.mStickerPagerAdapter = new StickerPagerAdapter();
        this.mStickerPager = (ViewPager) view.findViewById(R.id.sticker_pager);
        this.mStickerPager.setAdapter(this.mStickerPagerAdapter);
        this.mStickerPager.setCurrentItem(1, false);
        this.mStickerPager.addOnPageChangeListener(this.mStickerPagerAdapter);
        this.mRecentView = view.findViewById(R.id.recent);
        this.mRecentView.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (!StickerFragment.this.mRecentView.isSelected()) {
                    StickerFragment.this.mRecentView.setSelected(true);
                }
                StickerFragment.this.mHeaderAdapter.setSelection(-1);
                StickerFragment.this.mStickerPager.setCurrentItem(0, true);
            }
        });
        this.mTitle = (TextView) view.findViewById(R.id.title);
        this.mTitle.setText(R.string.photo_editor_sticker);
    }

    public void onDestroyView() {
        super.onDestroyView();
        this.mStickerPager.removeOnPageChangeListener(this.mStickerPagerAdapter);
    }
}
