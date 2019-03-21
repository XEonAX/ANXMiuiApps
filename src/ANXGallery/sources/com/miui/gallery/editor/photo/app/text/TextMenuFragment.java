package com.miui.gallery.editor.photo.app.text;

import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.MenuFragment;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.provider.AbstractTextProvider;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import java.util.ArrayList;
import java.util.List;

public class TextMenuFragment extends MenuFragment<AbstractEffectFragment, AbstractTextProvider> {
    private OnItemClickListener mBubbleItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            ((AbstractEffectFragment) TextMenuFragment.this.getRenderFragment()).add(TextMenuFragment.this.mTextBubbleAdapter.getItemData(position), Integer.valueOf(position));
            TextMenuFragment.this.mTextBubbleAdapter.setSelection(position);
            TextMenuFragment.this.mTextWatermarkAdapter.setSelection(-1);
            ScrollControlLinearLayoutManager.onItemClick(parent, position);
            return true;
        }
    };
    private RadioGroup mRadioGroup;
    private TextBubbleAdapter mTextBubbleAdapter;
    private TextBubbleAdapter mTextWatermarkAdapter;
    private ViewPager mViewPager;
    private OnItemClickListener mWatermarkItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            ((AbstractEffectFragment) TextMenuFragment.this.getRenderFragment()).add(TextMenuFragment.this.mTextWatermarkAdapter.getItemData(position), Integer.valueOf(TextMenuFragment.this.mTextBubbleAdapter.getItemCount() + position));
            TextMenuFragment.this.mTextWatermarkAdapter.setSelection(position);
            TextMenuFragment.this.mTextBubbleAdapter.setSelection(-1);
            ScrollControlLinearLayoutManager.onItemClick(parent, position);
            return true;
        }
    };

    private class TextPagerAdapter extends PagerAdapter {
        private List<TextBubbleAdapter> mAdapterList = new ArrayList(2);

        public TextPagerAdapter() {
            this.mAdapterList.add(TextMenuFragment.this.mTextBubbleAdapter);
            this.mAdapterList.add(TextMenuFragment.this.mTextWatermarkAdapter);
        }

        public int getCount() {
            return this.mAdapterList.size();
        }

        public Object instantiateItem(ViewGroup container, int position) {
            SimpleRecyclerView recyclerView = new SimpleRecyclerView(TextMenuFragment.this.getActivity());
            LinearLayoutManager linearLayoutManager = new ScrollControlLinearLayoutManager(TextMenuFragment.this.getActivity());
            linearLayoutManager.setOrientation(0);
            recyclerView.setLayoutManager(linearLayoutManager);
            container.addView(recyclerView);
            recyclerView.setAdapter((TextBubbleAdapter) this.mAdapterList.get(position));
            recyclerView.addItemDecoration(new BlankDivider(TextMenuFragment.this.getResources(), R.dimen.menu_panel_list_item_divider_width, 0));
            HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(recyclerView);
            return recyclerView;
        }

        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        public boolean isViewFromObject(View view, Object o) {
            return view == o;
        }
    }

    public TextMenuFragment() {
        super(Effect.TEXT);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.text_menu_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mTextBubbleAdapter = new TextBubbleAdapter(getActivity(), ((AbstractTextProvider) this.mSdkProvider).list(), 0);
        this.mTextBubbleAdapter.setOnItemClickListener(this.mBubbleItemClickListener);
        this.mTextWatermarkAdapter = new TextBubbleAdapter(getActivity(), ((AbstractTextProvider) this.mSdkProvider).listWatermark(), -1);
        this.mTextWatermarkAdapter.setOnItemClickListener(this.mWatermarkItemClickListener);
        ((TextView) view.findViewById(R.id.title)).setText(R.string.photo_editor_text);
        this.mRadioGroup = (RadioGroup) view.findViewById(R.id.radio_group_controller);
        this.mRadioGroup.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(RadioGroup radioGroup, int checkedId) {
                if (checkedId == R.id.radio_button_bubble) {
                    TextMenuFragment.this.mViewPager.setCurrentItem(0, true);
                } else if (checkedId == R.id.radio_button_watermark) {
                    TextMenuFragment.this.mViewPager.setCurrentItem(1, true);
                }
            }
        });
        this.mRadioGroup.check(R.id.radio_button_bubble);
        this.mViewPager = (ViewPager) view.findViewById(R.id.view_pager);
        this.mViewPager.setOffscreenPageLimit(1);
        this.mViewPager.setAdapter(new TextPagerAdapter());
        this.mViewPager.setCurrentItem(0, false);
    }
}
