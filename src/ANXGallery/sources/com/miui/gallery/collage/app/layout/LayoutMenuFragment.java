package com.miui.gallery.collage.app.layout;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.collage.app.common.AbstractLayoutFragment;
import com.miui.gallery.collage.app.common.CollageMenuFragment;
import com.miui.gallery.collage.core.CollagePresenter.DataLoadListener;
import com.miui.gallery.collage.core.layout.LayoutModel;
import com.miui.gallery.collage.core.layout.LayoutPresenter;
import com.miui.gallery.collage.render.CollageMargin;
import com.miui.gallery.collage.render.CollageRatio;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import java.util.ArrayList;
import java.util.List;

public class LayoutMenuFragment extends CollageMenuFragment<LayoutPresenter, AbstractLayoutFragment> {
    private CollageMargin mCollageMargin = CollageMargin.NONE;
    private CollageRatio mCollageRatio = CollageRatio.RATIO_3_4;
    private boolean mDataInit = false;
    private DataLoadListener mDataLoadListener = new DataLoadListener() {
        public void onDataLoad() {
            LayoutMenuFragment.this.mDataReady = true;
            LayoutMenuFragment.this.reloadData();
            LayoutMenuFragment.this.notifyDataInit();
        }
    };
    private boolean mDataReady = false;
    private LayoutMenuAdapter mLayoutMenuAdapter;
    private List<LayoutModel> mLayoutModels = new ArrayList();
    private OnClickListener mMarginClickListener = new OnClickListener() {
        public void onClick(View v) {
            CollageMargin[] margins = CollageMargin.values();
            CollageMargin next = margins[(LayoutMenuFragment.this.mCollageMargin.ordinal() + 1) % margins.length];
            LayoutMenuFragment.this.mMarginImageView.setImageResource(next.iconRes);
            ((AbstractLayoutFragment) LayoutMenuFragment.this.getRenderFragment()).onSelectMargin(next.marginSize);
            LayoutMenuFragment.this.mCollageMargin = next;
        }
    };
    private ImageView mMarginImageView;
    private View mMarginWrapper;
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView recyclerView, View child, int position) {
            ScrollControlLinearLayoutManager.onItemClick(recyclerView, position);
            LayoutMenuFragment.this.mLayoutMenuAdapter.setSelection(position);
            LayoutMenuFragment.this.onSelectModel(position);
            return true;
        }
    };
    private OnClickListener mRatioClickListener = new OnClickListener() {
        public void onClick(View v) {
            CollageRatio[] ratios = CollageRatio.values();
            CollageRatio next = ratios[(LayoutMenuFragment.this.mCollageRatio.ordinal() + 1) % ratios.length];
            LayoutMenuFragment.this.mRatioImageView.setImageResource(next.iconRes);
            ((AbstractLayoutFragment) LayoutMenuFragment.this.getRenderFragment()).onSelectRatio(next.ratio);
            LayoutMenuFragment.this.mCollageRatio = next;
        }
    };
    private ImageView mRatioImageView;
    private View mRatioWrapper;
    private SimpleRecyclerView mRecyclerView;
    private boolean mViewReady = false;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ((LayoutPresenter) this.mPresenter).loadDataFromResourceAsync(this.mDataLoadListener);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.collage_layout_menu, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        this.mMarginWrapper = view.findViewById(R.id.collage_margin_control_wrapper);
        this.mMarginImageView = (ImageView) view.findViewById(R.id.collage_margin_control);
        this.mRatioWrapper = view.findViewById(R.id.collage_ratio_control_wrapper);
        this.mRatioImageView = (ImageView) view.findViewById(R.id.collage_ratio_control);
        this.mRecyclerView = (SimpleRecyclerView) view.findViewById(R.id.collage_layout_list);
        this.mLayoutMenuAdapter = new LayoutMenuAdapter(getActivity(), this.mLayoutModels, new Selector(getResources().getDrawable(R.drawable.collage_item_background_selector)));
        this.mRecyclerView.setLayoutManager(new ScrollControlLinearLayoutManager(getActivity(), 0, false));
        this.mRecyclerView.addItemDecoration(new BlankDivider(getResources(), R.dimen.collage_menu_item_margin, 0));
        this.mRecyclerView.setAdapter(this.mLayoutMenuAdapter);
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mRecyclerView);
        this.mViewReady = true;
        notifyDataInit();
    }

    private void notifyDataInit() {
        if (this.mViewReady && this.mDataReady && !this.mDataInit) {
            onSelectModel(0);
            this.mLayoutMenuAdapter.setOnItemClickListener(this.mOnItemClickListener);
            this.mMarginWrapper.setOnClickListener(this.mMarginClickListener);
            this.mRatioWrapper.setOnClickListener(this.mRatioClickListener);
            this.mDataInit = true;
        }
    }

    private void reloadData() {
        this.mLayoutModels.clear();
        List<LayoutModel> posters = ((LayoutPresenter) this.mPresenter).getLayouts(((LayoutPresenter) this.mPresenter).getImageCount());
        if (posters != null) {
            this.mLayoutModels.addAll(posters);
        }
        this.mLayoutMenuAdapter.notifyDataSetChanged();
    }

    private void onSelectModel(int index) {
        if (this.mLayoutModels.size() != 0) {
            ((AbstractLayoutFragment) getRenderFragment()).onSelectModel((LayoutModel) this.mLayoutModels.get(index));
        }
    }
}
