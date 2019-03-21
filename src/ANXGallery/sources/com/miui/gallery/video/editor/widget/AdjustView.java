package com.miui.gallery.video.editor.widget;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.seekbar.BasicSeekBar;
import com.miui.gallery.editor.photo.widgets.seekbar.BiDirectionSeekBar;
import com.miui.gallery.editor.photo.widgets.seekbar.BubbleIndicator;
import com.miui.gallery.editor.photo.widgets.seekbar.BubbleIndicator.Callback;
import com.miui.gallery.video.editor.adapter.AdjustAdapter;
import com.miui.gallery.video.editor.manager.FilterAdjustManager;
import com.miui.gallery.video.editor.model.AdjustData;
import com.miui.gallery.video.editor.model.FilterAdjustData;
import com.miui.gallery.video.editor.ui.SimpleRecyclerView;
import com.miui.gallery.video.editor.ui.SimpleRecyclerView.OnItemClickListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class AdjustView extends LinearLayout {
    private AdjustAdapter mAdapter;
    private HashMap<Integer, String> mAdjustCurrentEffects;
    private List<AdjustData> mDataList;
    private IAdjustEffectChangeListener mIAdjustEffectChangeListener;
    private IFilterAdjustHeadViewListener mIFilterAdjustHeadViewListener;
    private BubbleIndicator<TextView> mIndicator;
    private Callback<TextView> mIndicatorCallback = new Callback<TextView>() {
        public void updateProgress(TextView contentView, int progress) {
            contentView.setText(String.valueOf(progress));
        }
    };
    private boolean mIsAdjustView;
    private boolean mIsTracking;
    private SimpleRecyclerView mRecyclerView;
    private SeekBar mSeekBar;
    private OnSeekBarChangeListener mSeekBarChangeListener = new OnSeekBarChangeListener() {
        int value = 0;

        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            this.value = progress;
            AdjustView.this.mIsTracking = true;
            AdjustView.this.setEffect(this.value, (AdjustData) AdjustView.this.mDataList.get(AdjustView.this.mAdapter.getSelection()));
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
            AdjustView.this.mIsTracking = true;
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            AdjustView.this.mIsTracking = false;
            AdjustView.this.setEffect(this.value, (AdjustData) AdjustView.this.mDataList.get(AdjustView.this.mAdapter.getSelection()));
        }
    };
    OnItemClickListener onAdjustItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView recyclerView, View child, int position) {
            if (AdjustView.this.mAdapter.getSelection() == position) {
                AdjustView.this.updateHeadBar();
            } else {
                AdjustView.this.mAdapter.setSelection(position);
                AdjustData data = (AdjustData) AdjustView.this.mDataList.get(position);
                if (data != null && (data instanceof FilterAdjustData)) {
                    AdjustView.this.performItemSelect(data);
                }
            }
            return true;
        }
    };

    public interface IFilterAdjustHeadViewListener {
        void addFilterViewToHeadBar(View view);

        void addSeekBarToHeadBar(View view);

        void removeAllViewFromHeadBar();
    }

    public interface IAdjustEffectChangeListener {
        void adjustBrightness(int i);

        void adjustContrast(int i);

        void adjustSaturation(int i);

        void adjustSharpness(int i);

        void adjustVignetteRange(int i);
    }

    public AdjustView(Context context) {
        super(context);
        init(context);
    }

    private void init(Context context) {
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.video_editor_adjustview, this);
        initData(context);
        initRecylerView(context);
    }

    private void initData(Context context) {
        this.mDataList = new ArrayList();
        List<FilterAdjustData> filterAdjustList = FilterAdjustManager.getAdjustData();
        if (filterAdjustList != null && filterAdjustList.size() > 0) {
            for (AdjustData bean : filterAdjustList) {
                if (bean != null) {
                    this.mDataList.add(bean);
                }
            }
        }
        this.mIndicator = new BubbleIndicator((TextView) View.inflate(context, R.layout.seekbar_bubble_indicator_text, null), context.getResources().getDimensionPixelSize(R.dimen.photo_editor_bubble_indicator_offset), this.mIndicatorCallback, this.mSeekBarChangeListener);
    }

    private void initRecylerView(Context context) {
        this.mRecyclerView = (SimpleRecyclerView) findViewById(R.id.recylerview);
        this.mAdapter = new AdjustAdapter(context, this.mDataList, new Selector(getResources().getColor(R.color.photo_editor_highlight_color)));
        this.mRecyclerView.setAdapter(this.mAdapter);
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mRecyclerView);
        this.mAdapter.setOnItemClickListener(this.onAdjustItemClickListener);
    }

    public void refreshData() {
        if (this.mAdapter != null) {
            this.mAdapter.setSelection(-1);
        }
    }

    private void setEffect(int progress, AdjustData data) {
        if (this.mAdapter.getSelection() != -1 && this.mIAdjustEffectChangeListener != null) {
            if (this.mAdjustCurrentEffects == null) {
                this.mAdjustCurrentEffects = new HashMap();
            }
            data.setProgress(progress);
            if (data instanceof FilterAdjustData) {
                int id = ((FilterAdjustData) data).getId();
                if (!this.mAdjustCurrentEffects.containsKey(Integer.valueOf(id))) {
                    this.mAdjustCurrentEffects.put(Integer.valueOf(id), ((FilterAdjustData) data).getLable());
                }
                switch (id) {
                    case 0:
                        this.mIAdjustEffectChangeListener.adjustBrightness(progress);
                        return;
                    case 1:
                        this.mIAdjustEffectChangeListener.adjustContrast(progress);
                        return;
                    case 2:
                        this.mIAdjustEffectChangeListener.adjustSaturation(progress);
                        return;
                    case 3:
                        this.mIAdjustEffectChangeListener.adjustSharpness(progress);
                        return;
                    case 4:
                        this.mIAdjustEffectChangeListener.adjustVignetteRange(progress);
                        return;
                    default:
                        throw new IllegalArgumentException("not support adjust id: " + id);
                }
            }
        }
    }

    private void updateHeadBar() {
        if (this.mIFilterAdjustHeadViewListener != null) {
            if (this.mIsAdjustView) {
                this.mIFilterAdjustHeadViewListener.addFilterViewToHeadBar(null);
            } else {
                removePreviousSeekBar();
                this.mIFilterAdjustHeadViewListener.addSeekBarToHeadBar(this.mSeekBar);
            }
            this.mIsAdjustView = !this.mIsAdjustView;
        }
    }

    private void performItemSelect(AdjustData data) {
        removePreviousSeekBar();
        addNewSeekBar(data);
    }

    private void addNewSeekBar(AdjustData data) {
        if (data.isMid()) {
            BiDirectionSeekBar bi = new BiDirectionSeekBar(getContext());
            bi.setMaxValue(data.getMax());
            bi.setCurrentValue(data.progress);
            this.mSeekBar = bi;
        } else {
            this.mSeekBar = new BasicSeekBar(getContext());
            this.mSeekBar.setMax(data.getMax());
            this.mSeekBar.setProgress(data.progress);
        }
        if (this.mIFilterAdjustHeadViewListener != null) {
            this.mIsAdjustView = true;
            this.mIFilterAdjustHeadViewListener.addSeekBarToHeadBar(this.mSeekBar);
        }
        this.mSeekBar.setOnSeekBarChangeListener(this.mIndicator);
    }

    private void removePreviousSeekBar() {
        if (this.mIndicator != null && this.mIndicator.isShowing()) {
            this.mIndicator.dismiss();
        }
        if (this.mIFilterAdjustHeadViewListener != null) {
            this.mIFilterAdjustHeadViewListener.removeAllViewFromHeadBar();
        }
    }

    public void setIFilterAdjustHeadViewListener(IFilterAdjustHeadViewListener IFilterAdjustHeadViewListener) {
        this.mIFilterAdjustHeadViewListener = IFilterAdjustHeadViewListener;
    }

    public void setIAdjustEffectChangeListener(IAdjustEffectChangeListener IAdjustEffectChangeListener) {
        this.mIAdjustEffectChangeListener = IAdjustEffectChangeListener;
    }

    public boolean doCancel() {
        if (this.mDataList == null) {
            this.mDataList = new ArrayList();
        }
        this.mDataList.clear();
        List<FilterAdjustData> filterAdjustList = FilterAdjustManager.getAdjustData();
        if (filterAdjustList != null && filterAdjustList.size() > 0) {
            for (AdjustData bean : filterAdjustList) {
                if (bean != null) {
                    AdjustData data = bean;
                    this.mDataList.add(data);
                    setEffect(bean.getProgress(), data);
                }
            }
        }
        return true;
    }

    public List<String> getAdjustCurrentEffect() {
        if (this.mAdjustCurrentEffects == null) {
            return null;
        }
        List<String> currentLists = new ArrayList();
        for (String effect : this.mAdjustCurrentEffects.values()) {
            if (effect != null) {
                currentLists.add(effect);
            }
        }
        return currentLists;
    }

    public void clearCurrentEffects() {
        if (this.mAdjustCurrentEffects != null) {
            this.mAdjustCurrentEffects.clear();
        }
    }

    public boolean isTracking() {
        return this.mIsTracking;
    }
}
