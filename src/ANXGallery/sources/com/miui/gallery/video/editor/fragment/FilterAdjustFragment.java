package com.miui.gallery.video.editor.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.widgets.NoScrollViewPager;
import com.miui.gallery.util.Log;
import com.miui.gallery.video.editor.Filter;
import com.miui.gallery.video.editor.VideoEditor.OnCompletedListener;
import com.miui.gallery.video.editor.adapter.FilterAdjustPageAdapter;
import com.miui.gallery.video.editor.adapter.FilterRecyclerViewAdapter;
import com.miui.gallery.video.editor.ui.MenuFragment;
import com.miui.gallery.video.editor.widget.AdjustView;
import com.miui.gallery.video.editor.widget.AdjustView.IAdjustEffectChangeListener;
import com.miui.gallery.video.editor.widget.AdjustView.IFilterAdjustHeadViewListener;
import com.miui.gallery.video.editor.widget.EffectActionBar;
import com.miui.gallery.video.editor.widget.EffectActionBar.ActionListener;
import com.miui.gallery.video.editor.widget.FilterAdjustHeadView;
import com.miui.gallery.video.editor.widget.FilterAdjustHeadView.FilterHeadViewClickListener;
import com.miui.gallery.video.editor.widget.FilterView;
import com.miui.gallery.video.editor.widget.FilterView.OnItemSelectedListener;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter;
import java.util.ArrayList;
import java.util.List;
import miui.hybrid.Response;

public class FilterAdjustFragment extends MenuFragment {
    private AdjustView mAdjustView;
    private EffectActionBar mBottomBar;
    private FilterAdjustHeadView mFilterAdjustHeadView;
    private FilterView mFilterView;
    private LinearLayout mHeadBar;
    private NoScrollViewPager mNoScrollViewPager;
    private FilterAdjustPageAdapter mPageAdapter;
    private int mSavedSelectedFilterIndex = -1;
    private List<View> mViewList;
    private boolean showFilterView = true;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.video_editor_filter_and_adjust, container, false);
        this.mNoScrollViewPager = (NoScrollViewPager) view.findViewById(R.id.filter_pager);
        this.mFilterAdjustHeadView = (FilterAdjustHeadView) view.findViewById(R.id.filterheadview);
        this.mBottomBar = (EffectActionBar) view.findViewById(R.id.video_editor_effect_action_bar);
        this.mHeadBar = (LinearLayout) view.findViewById(R.id.head_area);
        initData();
        initListener();
        return view;
    }

    private void initData() {
        this.mViewList = new ArrayList();
        this.mFilterView = new FilterView(this.mContext);
        this.mAdjustView = new AdjustView(this.mContext);
        this.mViewList.add(this.mFilterView);
        this.mViewList.add(this.mAdjustView);
        this.mBottomBar.setTitle(this.mContext.getResources().getString(R.string.video_editor_filter));
        this.mFilterAdjustHeadView.selectFilter(this.showFilterView);
        this.mFilterView.updateSelectedItemPosition(this.mSavedSelectedFilterIndex);
        this.mPageAdapter = new FilterAdjustPageAdapter(this.mViewList);
        this.mNoScrollViewPager.setAdapter(this.mPageAdapter);
    }

    private void initListener() {
        this.mFilterAdjustHeadView.setHeadViewClickListener(new FilterHeadViewClickListener() {
            public void onFilterClick() {
                if (FilterAdjustFragment.this.mFilterView != null) {
                    FilterAdjustFragment.this.mNoScrollViewPager.setCurrentItem(0);
                    FilterAdjustFragment.this.mBottomBar.setTitle(FilterAdjustFragment.this.mContext.getResources().getString(R.string.video_editor_filter));
                    FilterAdjustFragment.this.showFilterView = true;
                }
            }

            public void onAdjustClick() {
                if (FilterAdjustFragment.this.mAdjustView != null) {
                    FilterAdjustFragment.this.mNoScrollViewPager.setCurrentItem(1);
                    FilterAdjustFragment.this.mBottomBar.setTitle(FilterAdjustFragment.this.mContext.getResources().getString(R.string.video_editor_adjust));
                    FilterAdjustFragment.this.showFilterView = false;
                    FilterAdjustFragment.this.mAdjustView.refreshData();
                }
            }
        });
        this.mAdjustView.setIFilterAdjustHeadViewListener(new IFilterAdjustHeadViewListener() {
            public void removeAllViewFromHeadBar() {
                FilterAdjustFragment.this.mHeadBar.removeAllViews();
            }

            public void addSeekBarToHeadBar(View view) {
                if (view != null) {
                    FilterAdjustFragment.this.mHeadBar.addView(view, -1, -2);
                }
            }

            public void addFilterViewToHeadBar(View view) {
                FilterAdjustFragment.this.mHeadBar.removeAllViews();
                FilterAdjustFragment.this.mHeadBar.addView(FilterAdjustFragment.this.mFilterAdjustHeadView);
            }
        });
        this.mAdjustView.setIAdjustEffectChangeListener(new IAdjustEffectChangeListener() {
            public void adjustBrightness(int progress) {
                FilterAdjustFragment.this.mVideoEditor.adjustBrightness(progress);
                FilterAdjustFragment.this.mVideoEditor.setVideoEditorAdjust(true);
            }

            public void adjustSaturation(int progress) {
                FilterAdjustFragment.this.mVideoEditor.adjustSaturation(progress);
                FilterAdjustFragment.this.mVideoEditor.setVideoEditorAdjust(true);
            }

            public void adjustContrast(int progress) {
                FilterAdjustFragment.this.mVideoEditor.adjustContrast(progress);
                FilterAdjustFragment.this.mVideoEditor.setVideoEditorAdjust(true);
            }

            public void adjustSharpness(int progress) {
                FilterAdjustFragment.this.mVideoEditor.adjustSharpness(progress);
                FilterAdjustFragment.this.mVideoEditor.setVideoEditorAdjust(true);
            }

            public void adjustVignetteRange(int progress) {
                FilterAdjustFragment.this.mVideoEditor.adjustVignetteRange(progress);
                FilterAdjustFragment.this.mVideoEditor.setVideoEditorAdjust(true);
            }
        });
        this.mBottomBar.setActionListener(new ActionListener() {
            public void onCancelAction() {
                FilterAdjustFragment.this.doCancel();
            }

            public void onApplyAction() {
                FilterAdjustFragment.this.doApply();
            }
        });
        this.mFilterView.setItemSelectedListener(new OnItemSelectedListener() {
            public boolean onItemSelect(SingleChoiceRecyclerViewAdapter adapter, int position, boolean isChanged) {
                Filter filter = ((FilterRecyclerViewAdapter) adapter).getFilter(position);
                if (filter == null) {
                    return true;
                }
                FilterAdjustFragment.this.mVideoEditor.setFilter(filter);
                return FilterAdjustFragment.this.mVideoEditor.apply(new OnCompletedListener() {
                    public void onCompleted() {
                        FilterAdjustFragment.this.mVideoEditor.play();
                        FilterAdjustFragment.this.recordEventWithEffectChanged();
                        FilterAdjustFragment.this.updatePalyBtnView();
                    }
                });
            }
        });
    }

    public int getEffectId() {
        return R.id.video_editor_filter;
    }

    public boolean doCancel() {
        if (this.mAdjustView != null && this.mAdjustView.isTracking()) {
            return false;
        }
        if (this.showFilterView) {
            doFilterCancel();
        } else {
            this.mAdjustView.doCancel();
            if (this.mVideoEditor != null) {
                this.mVideoEditor.setVideoEditorAdjust(false);
            }
            doFilterCancel();
        }
        recordEventWithCancel();
        return true;
    }

    public boolean doApply() {
        if ((this.mAdjustView != null && this.mAdjustView.isTracking()) || this.mVideoEditor == null || this.mVideoEditor.getState() == Response.CODE_GENERIC_ERROR) {
            return false;
        }
        this.mVideoEditor.saveEditState();
        if (this.mFilterView != null) {
            this.mSavedSelectedFilterIndex = this.mFilterView.getSelectedItemPosition();
        }
        recordEventWithApply();
        onExitMode();
        return true;
    }

    private boolean doFilterCancel() {
        if (this.mVideoEditor == null) {
            Log.d("FilterAdjustFragment", "doCancel: videoEditor is null.");
            return false;
        }
        this.mVideoEditor.restoreEditState();
        return this.mVideoEditor.apply(new OnCompletedListener() {
            public void onCompleted() {
                if (FilterAdjustFragment.this.mVideoEditor != null) {
                    FilterAdjustFragment.this.mVideoEditor.play();
                    FilterAdjustFragment.this.onExitMode();
                }
            }
        });
    }

    public List<String> getCurrentEffect() {
        List<String> currentEffectList = new ArrayList();
        if (this.mFilterView != null) {
            List<String> filterEffectList = this.mFilterView.getFilterCurrentEffect();
            if (filterEffectList != null) {
                currentEffectList.addAll(filterEffectList);
            }
        }
        if (this.mAdjustView != null) {
            List<String> adjustEffectList = this.mAdjustView.getAdjustCurrentEffect();
            if (adjustEffectList != null) {
                currentEffectList.addAll(adjustEffectList);
            }
            this.mAdjustView.clearCurrentEffects();
        }
        return currentEffectList;
    }

    public void onDestroyView() {
        super.onDestroyView();
        if (this.mPageAdapter != null) {
            this.mPageAdapter = null;
        }
        if (this.mFilterAdjustHeadView != null) {
            this.mFilterAdjustHeadView.setHeadViewClickListener(null);
        }
        if (this.mBottomBar != null) {
            this.mBottomBar.removeListener();
        }
        if (this.mFilterView != null) {
            this.mFilterView = null;
        }
        if (this.mAdjustView != null) {
            this.mAdjustView = null;
        }
    }
}
