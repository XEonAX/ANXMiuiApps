package com.miui.gallery.editor.photo.app.frame;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.MenuFragment;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractFrameFragment;
import com.miui.gallery.editor.photo.core.common.model.FrameData;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import com.miui.gallery.editor.photo.widgets.seekbar.BasicSeekBar;
import java.util.ArrayList;
import java.util.List;

public class FrameMenuFragment extends MenuFragment<AbstractFrameFragment, SdkProvider<FrameData, AbstractFrameFragment>> {
    private FrameAdapter mFrameAdapter;
    private List<FrameData> mFrameDataList;
    private SparseIntArray mItemStatusArray = new SparseIntArray();
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView recyclerView, View child, int position) {
            ScrollControlLinearLayoutManager.onItemClick(recyclerView, position);
            FrameMenuFragment.this.mFrameAdapter.setSelection(position);
            FrameMenuFragment.this.onSelect(position);
            return true;
        }
    };
    private SimpleRecyclerView mRecyclerView;
    private BasicSeekBar mSeekBar;
    private OnSeekBarChangeListener mSeekBarChangeListener = new OnSeekBarChangeListener() {
        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            ((AbstractFrameFragment) FrameMenuFragment.this.getRenderFragment()).setScaleProgress(((float) progress) / ((float) seekBar.getMax()));
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            FrameMenuFragment.this.putStatus(FrameMenuFragment.this.mFrameAdapter.getSelection(), seekBar.getProgress());
        }
    };

    public FrameMenuFragment() {
        super(Effect.FRAME);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.frame_menu_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        ((TextView) view.findViewById(R.id.title)).setText(R.string.photo_editor_frame);
        this.mRecyclerView = (SimpleRecyclerView) view.findViewById(R.id.preview_list);
        this.mSeekBar = (BasicSeekBar) view.findViewById(R.id.seek_bar);
        this.mSeekBar.setOnSeekBarChangeListener(this.mSeekBarChangeListener);
        this.mFrameDataList = new ArrayList(this.mSdkProvider.list());
        LinearLayoutManager linearLayoutManager = new ScrollControlLinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(0);
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        this.mFrameAdapter = new FrameAdapter(this.mFrameDataList, getActivity());
        this.mFrameAdapter.setOnItemClickListener(this.mOnItemClickListener);
        this.mRecyclerView.setAdapter(this.mFrameAdapter);
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mRecyclerView);
        onSelect(0);
    }

    private void onSelect(int position) {
        FrameData frameData = (FrameData) this.mFrameDataList.get(position);
        ((AbstractFrameFragment) getRenderFragment()).setRatio(((float) frameData.width) / ((float) frameData.height), frameData.toString());
        this.mSeekBar.setProgress(getStatus(position, this.mSeekBar.getMax()));
    }

    public void putStatus(int position, int value) {
        this.mItemStatusArray.put(position, value);
    }

    public int getStatus(int position, int defaultValue) {
        return this.mItemStatusArray.get(position, defaultValue);
    }
}
