package com.miui.gallery.editor.photo.app.doodle;

import android.app.Fragment;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.MenuFragment;
import com.miui.gallery.editor.photo.app.OperationUpdateListener;
import com.miui.gallery.editor.photo.app.doodle.PaintSelectView.PaintSizeChangeListener;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractDoodleFragment;
import com.miui.gallery.editor.photo.core.common.model.DoodleData;
import com.miui.gallery.editor.photo.widgets.seekbar.BubbleIndicator;
import com.miui.gallery.editor.photo.widgets.seekbar.BubbleIndicator.Callback;
import com.miui.gallery.editor.photo.widgets.seekbar.ColorGradientDrawable;
import com.miui.gallery.editor.photo.widgets.seekbar.ColorPicker;
import java.util.ArrayList;
import java.util.List;

public class DoodleMenuFragment extends MenuFragment<AbstractDoodleFragment, SdkProvider<DoodleData, AbstractDoodleFragment>> {
    private ColorPicker mColorPicker;
    private int mCurrentIndex = -1;
    private List<DoodleData> mDoodleDataList;
    private List<DoodleItemHolder> mDoodleItemHolderList = new ArrayList();
    private BubbleIndicator<View> mIndicator;
    private Callback<View> mIndicatorCallback = new Callback<View>() {
        public void updateProgress(View contentView, int progress) {
            ((GradientDrawable) contentView.getBackground()).setColor(DoodleMenuFragment.this.mColorPicker.getColor());
        }
    };
    private LinearLayout mMenuItemParent;
    private OnSeekBarChangeListener mOnSeekBarChangeListener = new OnSeekBarChangeListener() {
        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            int color = DoodleMenuFragment.this.mColorPicker.getColor();
            DoodleMenuFragment.this.mColorPicker.setThumbColor(color);
            ((AbstractDoodleFragment) DoodleMenuFragment.this.getRenderFragment()).setColor(color);
            ((DoodleGesFragment) DoodleMenuFragment.this.getGestureFragment()).setPaintColor(color);
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    };
    private OnClickListener mOperationClickListener = new OnClickListener() {
        public void onClick(View v) {
            switch (v.getId()) {
                case R.id.operation_revoke /*2131886399*/:
                    ((AbstractDoodleFragment) DoodleMenuFragment.this.getRenderFragment()).doRevoke();
                    return;
                case R.id.operation_revert /*2131886400*/:
                    ((AbstractDoodleFragment) DoodleMenuFragment.this.getRenderFragment()).doRevert();
                    return;
                default:
                    return;
            }
        }
    };
    private View mOperationPanel;
    private OperationUpdateListener mOperationUpdateListener = new OperationUpdateListener() {
        public void onOperationUpdate() {
            DoodleMenuFragment.this.refreshOperationPanel();
        }
    };
    private PaintSizeChangeListener mPaintSizeChangeListener = new PaintSizeChangeListener() {
        public void onPaintSizeChange(float paintSize) {
            ((AbstractDoodleFragment) DoodleMenuFragment.this.getRenderFragment()).setPaintSize(paintSize * DoodleMenuFragment.this.getResources().getDisplayMetrics().density);
        }
    };
    private View mRevert;
    private View mRevoke;
    private TextView mTitleView;

    private class ItemClickListener implements OnClickListener {
        private final DoodleData mDoodleData;
        private final int mIndex;

        /* synthetic */ ItemClickListener(DoodleMenuFragment x0, DoodleData x1, int x2, AnonymousClass1 x3) {
            this(x1, x2);
        }

        private ItemClickListener(DoodleData doodleData, int index) {
            this.mDoodleData = doodleData;
            this.mIndex = index;
        }

        public void onClick(View v) {
            ((AbstractDoodleFragment) DoodleMenuFragment.this.getRenderFragment()).setDoodleData(this.mDoodleData);
            if (this.mIndex != DoodleMenuFragment.this.mCurrentIndex) {
                v.setSelected(true);
                if (DoodleMenuFragment.this.mCurrentIndex != -1) {
                    ((DoodleItemHolder) DoodleMenuFragment.this.mDoodleItemHolderList.get(DoodleMenuFragment.this.mCurrentIndex)).setSelected(false);
                }
                DoodleMenuFragment.this.mCurrentIndex = this.mIndex;
            }
        }
    }

    public DoodleMenuFragment() {
        super(Effect.DOODLE);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.doodle_menu_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mTitleView = (TextView) view.findViewById(R.id.title);
        this.mTitleView.setText(R.string.photo_editor_doodle);
        this.mOperationPanel = view.findViewById(R.id.operation_panel);
        this.mRevoke = view.findViewById(R.id.operation_revoke);
        this.mRevert = view.findViewById(R.id.operation_revert);
        this.mRevoke.setOnClickListener(this.mOperationClickListener);
        this.mRevert.setOnClickListener(this.mOperationClickListener);
        this.mColorPicker = (ColorPicker) view.findViewById(R.id.color_picker);
        this.mColorPicker.setProgressDrawable(new ColorGradientDrawable(ColorPicker.COLORS));
        this.mMenuItemParent = (LinearLayout) view.findViewById(R.id.menu_parent);
        this.mDoodleDataList = new ArrayList(this.mSdkProvider.list());
        this.mDoodleItemHolderList.clear();
        for (int i = 0; i < this.mDoodleDataList.size(); i++) {
            DoodleData doodleData = (DoodleData) this.mDoodleDataList.get(i);
            DoodleItemHolder doodleItemHolder = new DoodleItemHolder(getActivity(), this.mMenuItemParent);
            doodleItemHolder.bind(doodleData, i);
            this.mMenuItemParent.addView(doodleItemHolder.wholeView, new LayoutParams(0, -1, 1.0f));
            doodleItemHolder.setOnClickListener(new ItemClickListener(this, doodleData, i, null));
            this.mDoodleItemHolderList.add(doodleItemHolder);
        }
        ((DoodleItemHolder) this.mDoodleItemHolderList.get(0)).setSelected(true);
        this.mCurrentIndex = 0;
        View indicatorView = View.inflate(getActivity(), R.layout.doodle_color_indicator, null);
        this.mIndicator = new BubbleIndicator(indicatorView, getActivity().getResources().getDimensionPixelSize(R.dimen.photo_editor_bubble_indicator_offset), this.mIndicatorCallback, this.mOnSeekBarChangeListener);
        this.mColorPicker.setOnSeekBarChangeListener(this.mIndicator);
        this.mColorPicker.setProgress(this.mColorPicker.getMax() / 2);
        this.mColorPicker.setThumbColor(this.mColorPicker.getColor());
        ((GradientDrawable) indicatorView.getBackground()).setColor(this.mColorPicker.getColor());
        ((DoodleGesFragment) getGestureFragment()).setPaintSizeChangeListener(this.mPaintSizeChangeListener);
        ((DoodleGesFragment) getGestureFragment()).setPaintColor(this.mColorPicker.getColor());
        ((AbstractDoodleFragment) getRenderFragment()).setOperationUpdateListener(this.mOperationUpdateListener);
    }

    private void refreshOperationPanel() {
        this.mTitleView.setVisibility(8);
        this.mOperationPanel.setVisibility(0);
        this.mRevoke.setEnabled(((AbstractDoodleFragment) getRenderFragment()).canRevoke());
        this.mRevert.setEnabled(((AbstractDoodleFragment) getRenderFragment()).canRevert());
    }

    public void onDestroyView() {
        ((DoodleGesFragment) getGestureFragment()).setPaintSizeChangeListener(null);
        super.onDestroyView();
    }

    protected Fragment createGestureFragment() {
        return new DoodleGesFragment();
    }
}
