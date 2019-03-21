package com.miui.gallery.editor.photo.app.adjust;

import android.os.Bundle;
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
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.model.AdjustData;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import com.miui.gallery.editor.photo.widgets.seekbar.BasicSeekBar;
import com.miui.gallery.editor.photo.widgets.seekbar.BiDirectionSeekBar;
import com.miui.gallery.editor.photo.widgets.seekbar.BubbleIndicator;
import com.miui.gallery.editor.photo.widgets.seekbar.BubbleIndicator.Callback;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;

public class AdjustFragment extends MenuFragment<AbstractEffectFragment, SdkProvider<AdjustData, AbstractEffectFragment>> {
    private AdjustAdapter mAdapter;
    private List<AdjustData> mDataList;
    private BubbleIndicator<TextView> mIndicator;
    private Callback<TextView> mIndicatorCallback = new Callback<TextView>() {
        public void updateProgress(TextView contentView, int progress) {
            contentView.setText(String.format("%d", new Object[]{Integer.valueOf(progress)}));
        }
    };
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            if (AdjustFragment.this.mAdapter.getSelection() != position) {
                AdjustFragment.this.performItemSelect(position, false);
            }
            return true;
        }
    };
    private SimpleRecyclerView mRecyclerView;
    private OnSeekBarChangeListener mSeekBarChangeListener = new OnSeekBarChangeListener() {
        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            AdjustFragment.this.doConfig(progress);
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    };
    private TextView mTitle;
    private LinearLayout mTopPanel;

    public AdjustFragment() {
        super(Effect.ADJUST);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mDataList = new ArrayList(this.mSdkProvider.list());
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.adjust_menu_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mTopPanel = (LinearLayout) view.findViewById(R.id.top_panel);
        this.mRecyclerView = (SimpleRecyclerView) view.findViewById(R.id.preview_list);
        this.mAdapter = new AdjustAdapter(getActivity(), this.mDataList, new Selector(getResources().getColor(R.color.photo_editor_highlight_color)));
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mAdapter.setOnItemClickListener(this.mOnItemClickListener);
        this.mTitle = (TextView) view.findViewById(R.id.title);
        this.mTitle.setText(R.string.photo_editor_adjust);
        this.mIndicator = new BubbleIndicator((TextView) View.inflate(getActivity(), R.layout.seekbar_bubble_indicator_text, null), getActivity().getResources().getDimensionPixelSize(R.dimen.photo_editor_bubble_indicator_offset), this.mIndicatorCallback, this.mSeekBarChangeListener);
        performItemSelect(0, true);
    }

    private void doRender(Metadata data) {
        ((AbstractEffectFragment) getRenderFragment()).remove(data);
        ((AbstractEffectFragment) getRenderFragment()).add(data, null);
        ((AbstractEffectFragment) getRenderFragment()).render();
    }

    private void doConfig(int value) {
        if (this.mAdapter.getSelection() == -1) {
            Log.w("AdjustFragment", "no effect rendered, skip");
            return;
        }
        Log.w("AdjustFragment", "AdjustData progress:" + value);
        AdjustData effect = (AdjustData) this.mDataList.get(this.mAdapter.getSelection());
        effect.progress = value;
        ((AbstractEffectFragment) getRenderFragment()).remove(effect);
        ((AbstractEffectFragment) getRenderFragment()).add(effect, null);
        ((AbstractEffectFragment) getRenderFragment()).render();
    }

    private void performItemSelect(int position, boolean skipRender) {
        SeekBar seekBar;
        AdjustData data = (AdjustData) this.mDataList.get(position);
        if (!skipRender) {
            doRender(data);
        }
        this.mAdapter.setSelection(position);
        if (this.mIndicator != null && this.mIndicator.isShowing()) {
            this.mIndicator.dismiss();
        }
        if (((SeekBar) this.mTopPanel.getChildAt(0)) != null) {
            this.mTopPanel.removeAllViews();
        }
        if (data.isMid()) {
            SeekBar bi = new BiDirectionSeekBar(getActivity());
            bi.setMaxValue(data.getMax());
            bi.setCurrentValue(data.progress);
            seekBar = bi;
        } else {
            seekBar = new BasicSeekBar(getActivity());
            seekBar.setMax(data.getMax());
            seekBar.setProgress(data.progress);
        }
        this.mTopPanel.addView(seekBar, -1, -2);
        this.mIndicator.onProgressChanged(seekBar, data.progress, true);
        seekBar.setOnSeekBarChangeListener(this.mIndicator);
    }
}
