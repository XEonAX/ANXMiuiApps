package com.miui.gallery.editor.photo.app.crop;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.MenuFragment;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractCropFragment;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractCropFragment.OnCropStateChangedListener;
import com.miui.gallery.editor.photo.core.common.model.CropData;
import com.miui.gallery.editor.photo.core.common.model.CropData.AspectRatio;
import com.miui.gallery.editor.photo.widgets.TouchTransLinearLayout;
import com.miui.gallery.editor.photo.widgets.TouchTransLinearLayout.OnTouchEvent;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import com.miui.gallery.editor.photo.widgets.seekbar.BiDirectionSeekBar;
import com.miui.gallery.editor.photo.widgets.seekbar.BubbleIndicator;
import com.miui.gallery.editor.photo.widgets.seekbar.BubbleIndicator.Callback;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ScreenUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CropFragment extends MenuFragment<AbstractCropFragment, SdkProvider<CropData, AbstractCropFragment>> {
    private CropAdapter mAdapter;
    private AutoCropData mAutoCropData = new AutoCropData();
    private OnClickListener mAutoCropListener = new OnClickListener() {
        public void onClick(View v) {
            CropFragment.this.doAutoCrop(true);
            BaseSamplingStatHelper.recordCountEvent("photo_editor", "crop_auto_click", new HashMap());
        }
    };
    private View mBottomView;
    private BubbleIndicator mBubbleIndicator;
    private OnClickListener mClearListener = new OnClickListener() {
        public void onClick(View v) {
            ((AbstractCropFragment) CropFragment.this.getRenderFragment()).restore();
            BaseSamplingStatHelper.recordCountEvent("photo_editor", "crop_restore_click", new HashMap());
        }
    };
    private int mCurrentProgress = 0;
    private List<CropData> mDataList;
    private Callback<TextView> mIndicatorCallback = new Callback<TextView>() {
        public void updateProgress(TextView contentView, int progress) {
            contentView.setText(contentView.getResources().getString(R.string.photo_editor_crop_rotation_format, new Object[]{Integer.valueOf(CropFragment.this.getDegreeShow(progress))}));
        }
    };
    private OnCropStateChangedListener mOnCropStateChangedListener = new OnCropStateChangedListener() {
        public void onCropped() {
            CropFragment.this.mTitle.setText(R.string.photo_editor_crop_reset);
            CropFragment.this.mTitle.setTextColor(CropFragment.this.getResources().getColor(R.color.photo_editor_highlight_color));
            CropFragment.this.mTitle.setOnClickListener(CropFragment.this.mClearListener);
        }

        public void onRestored() {
            CropFragment.this.setNormalTitle();
            CropFragment.this.mSeekBar.setOnSeekBarChangeListener(null);
            CropFragment.this.mSeekBar.setCurrentValue(0);
            CropFragment.this.mSeekBar.setOnSeekBarChangeListener(CropFragment.this.mBubbleIndicator);
            CropFragment.this.mAdapter.setSelection(2);
        }

        public void changeRotationState(boolean enable) {
            CropFragment.this.mSeekBar.setEnabled(enable);
        }
    };
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            CropData data = (CropData) CropFragment.this.mDataList.get(position);
            if (data == CropData.MIRROR) {
                ((AbstractCropFragment) CropFragment.this.getRenderFragment()).doMirror();
            } else if (data == CropData.ROTATE) {
                ((AbstractCropFragment) CropFragment.this.getRenderFragment()).doRotate();
            } else if (data instanceof AspectRatio) {
                CropFragment.this.mAdapter.setSelection(position);
                ((AbstractCropFragment) CropFragment.this.getRenderFragment()).setAspectRatio((AspectRatio) CropFragment.this.mAdapter.getSelectedItem());
            }
            ScrollControlLinearLayoutManager.onItemClick(parent, position);
            return true;
        }
    };
    private SimpleRecyclerView mRecyclerView;
    private BiDirectionSeekBar mSeekBar;
    private OnSeekBarChangeListener mSeekBarChangeListener = new OnSeekBarChangeListener() {
        boolean mStart;

        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            if (!this.mStart || Math.abs(progress - CropFragment.this.mCurrentProgress) >= 6) {
                this.mStart = false;
                CropFragment.this.mCurrentProgress = progress;
                ((AbstractCropFragment) CropFragment.this.getRenderFragment()).tuning(CropFragment.this.getDegree(progress));
            }
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
            ((AbstractCropFragment) CropFragment.this.getRenderFragment()).prepareTuning();
            this.mStart = true;
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            ((AbstractCropFragment) CropFragment.this.getRenderFragment()).finishTuning();
        }
    };
    private TextView mTitle;

    private class AutoCropTask extends AsyncTask<Void, Void, Void> {
        private AutoCropTask() {
        }

        /* synthetic */ AutoCropTask(CropFragment x0, AnonymousClass1 x1) {
            this();
        }

        protected Void doInBackground(Void... params) {
            AutoCropUtils.getAutoCropData(CropFragment.this.getPreview(), CropFragment.this.mAutoCropData);
            HashMap<String, String> map = new HashMap();
            map.put("result", String.valueOf(CropFragment.this.mAutoCropData.rotationResult));
            BaseSamplingStatHelper.recordCountEvent("photo_editor", "crop_auto_rotation_result", map);
            return null;
        }

        protected void onPostExecute(Void v) {
            if (!CropFragment.this.isAdded() || CropFragment.this.isRemoving()) {
                Log.w("CropMenuFragment", "AutoCrop fragment isRemoved");
                return;
            }
            CropFragment.this.mTitle.setVisibility(0);
            CropFragment.this.setNormalTitle();
        }
    }

    public CropFragment() {
        super(Effect.CROP);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mDataList = new ArrayList();
        this.mDataList.add(CropData.MIRROR);
        this.mDataList.add(CropData.ROTATE);
        this.mDataList.addAll(new ArrayList(this.mSdkProvider.list()));
        new AutoCropTask(this, null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.crop_menu_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        ((AbstractCropFragment) getRenderFragment()).setOnCropChangedListener(this.mOnCropStateChangedListener);
        ((TouchTransLinearLayout) view.findViewById(R.id.top_panel)).setOnTouchEvent(new OnTouchEvent() {
            public boolean onTouchEvent(MotionEvent event) {
                return ((AbstractCropFragment) CropFragment.this.getRenderFragment()).doTouchEvent(event);
            }
        });
        this.mSeekBar = (BiDirectionSeekBar) view.findViewById(R.id.seekbar);
        this.mSeekBar.setMaxValue(90);
        this.mSeekBar.setCurrentValue(0);
        this.mBubbleIndicator = new BubbleIndicator((TextView) View.inflate(getActivity(), R.layout.seekbar_bubble_indicator_text, null), getActivity().getResources().getDimensionPixelSize(R.dimen.photo_editor_bubble_indicator_offset), this.mIndicatorCallback, this.mSeekBarChangeListener);
        this.mSeekBar.setOnSeekBarChangeListener(this.mBubbleIndicator);
        this.mRecyclerView = (SimpleRecyclerView) view.findViewById(R.id.preview_list);
        LinearLayoutManager linearLayoutManager = new ScrollControlLinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(0);
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mRecyclerView);
        this.mAdapter = new CropAdapter(this.mDataList, new Selector(getResources().getColor(R.color.photo_editor_highlight_color)));
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mAdapter.setOnItemClickListener(this.mOnItemClickListener);
        this.mTitle = (TextView) view.findViewById(R.id.title);
        this.mTitle.setVisibility(4);
        this.mBottomView = view.findViewById(R.id.common_menu_bottom_bar);
        resetBottomBarHeight();
    }

    public void onDestroyView() {
        super.onDestroyView();
        ((AbstractCropFragment) getRenderFragment()).setOnCropChangedListener(null);
    }

    private void resetBottomBarHeight() {
        int height = ScreenUtils.getScreenHeight() - ((int) ((((((float) ScreenUtils.getScreenWidth()) - (getResources().getDimension(R.dimen.photo_editor_preview_padding) * 2.0f)) / ((float) getResources().getInteger(R.integer.editor_preview_width_ratio))) * ((float) getResources().getInteger(R.integer.editor_preview_height_ratio))) + getResources().getDimension(R.dimen.photo_editor_preview_padding_top)));
        LayoutParams lps = this.mBottomView.getLayoutParams();
        lps.height = (int) ((((float) height) - getResources().getDimension(R.dimen.menu_panel_list_height)) / 2.0f);
        this.mBottomView.setLayoutParams(lps);
    }

    private void setNormalTitle() {
        if (this.mAutoCropData.canAutoRotation()) {
            this.mTitle.setText(R.string.photo_editor_crop_auto);
            this.mTitle.setTextColor(getResources().getColor(R.color.photo_editor_highlight_color));
            this.mTitle.setOnClickListener(this.mAutoCropListener);
            return;
        }
        this.mTitle.setText(R.string.photo_editor_crop_and_rotate);
        this.mTitle.setTextColor(getResources().getColor(R.color.photo_editor_menu_bottom_bar_title_color));
        this.mTitle.setOnClickListener(null);
    }

    private int getDegreeShow(int progress) {
        if (progress == 0) {
            return 0;
        }
        int degreeShow = Math.round(getDegree(progress));
        if (degreeShow != 0) {
            return degreeShow;
        }
        if (progress > 0) {
            return 1;
        }
        return -1;
    }

    private float getDegree(int progress) {
        return (((float) progress) / 90.0f) * 45.0f;
    }

    private int getProgressFromDegree(float degree) {
        int progress = Math.round((90.0f * degree) / 45.0f);
        if (progress == 0) {
            return degree > 0.0f ? 1 : -1;
        } else {
            return progress;
        }
    }

    private void doAutoCrop(final boolean isManual) {
        this.mTitle.setOnClickListener(null);
        ((AbstractCropFragment) getRenderFragment()).autoCrop(this.mAutoCropData.getDegree());
        if (isManual) {
            this.mTitle.setText(R.string.photo_editor_crop_reset);
            this.mTitle.setOnClickListener(this.mClearListener);
        }
        this.mTitle.postDelayed(new Runnable() {
            public void run() {
                if (!isManual) {
                    CropFragment.this.mTitle.setText(R.string.photo_editor_crop_reset);
                    CropFragment.this.mTitle.setOnClickListener(CropFragment.this.mClearListener);
                }
                CropFragment.this.mSeekBar.setOnSeekBarChangeListener(null);
                CropFragment.this.mSeekBar.setCurrentValue(CropFragment.this.getProgressFromDegree(CropFragment.this.mAutoCropData.getDegree()));
                CropFragment.this.mSeekBar.setOnSeekBarChangeListener(CropFragment.this.mBubbleIndicator);
            }
        }, 400);
    }
}
