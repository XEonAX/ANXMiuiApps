package com.miui.gallery.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.support.v7.util.DiffUtil;
import android.support.v7.util.DiffUtil.Callback;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.State;
import android.support.v7.widget.SimpleItemAnimator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.cleaner.ScanResult;
import com.miui.gallery.cleaner.ScanResultAdapter;
import com.miui.gallery.cleaner.ScannerManager;
import com.miui.gallery.cleaner.ScannerManager.ScanObserver;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.DividerItemDecoration;
import com.miui.gallery.util.ScreenUtils;
import com.miui.gallery.widget.recyclerview.CleanerItemAnimator;
import java.util.HashMap;
import java.util.List;
import miui.app.AlertDialog.Builder;
import miui.view.animation.CubicEaseInOutInterpolator;

public class CleanerFragment extends BaseFragment {
    private ActionLayout mActionLayout;
    private ScanResultAdapter mAdapter;
    private Dialog mExitConfirmDialog;
    private int mExpandHeight;
    private boolean mIsScanStarted;
    private CleanerRotateProgressBar mProgressBar;
    private RecyclerView mRecyclerView;
    private int mRetractHeight;
    private ScanLayout mScanLayout;
    private ScanObserver mScanObserver = new ScanObserver() {
        public void onScanStart() {
            CleanerFragment.this.mActionLayout.show(false);
            CleanerFragment.this.mScanLayout.expand(false);
            CleanerFragment.this.mProgressBar.showRingCircle(false);
        }

        public void onScanCanceled() {
        }

        public void onScanProgress(long size) {
            CleanerFragment.this.mProgressBar.setNumber(size, true);
        }

        public void onScanFinish(long size) {
            if (CleanerFragment.this.mScannerManager.isScanResultEmpty()) {
                CleanerFragment.this.mProgressBar.showEmptyAnim();
                CleanerFragment.this.mActionLayout.showNoScanResultTip();
                return;
            }
            CleanerFragment.this.updateScanResult();
            CleanerFragment.this.mProgressBar.setNumber(size, true, new Runnable() {
                public void run() {
                    CleanerFragment.this.mActionLayout.hide(true);
                    CleanerFragment.this.mScanLayout.retract(true);
                    CleanerFragment.this.mProgressBar.hideRingCircle(true);
                }
            });
        }

        public void onScanResultUpdate(long size) {
            if (!CleanerFragment.this.mScannerManager.isScanFinish()) {
                return;
            }
            if (CleanerFragment.this.mScannerManager.isScanResultEmpty()) {
                CleanerFragment.this.mProgressBar.showEmptyAnim();
                CleanerFragment.this.mScanLayout.expand(true);
                CleanerFragment.this.mActionLayout.show(true);
                CleanerFragment.this.mActionLayout.showNoScanResultTip();
                return;
            }
            CleanerFragment.this.updateScanResult();
        }
    };
    private ScannerManager mScannerManager;
    private int mScreenHeight;

    private class ActionLayout implements OnClickListener {
        private AlphaAnimation mAlphaAnimation = null;
        private TextView mButton;
        private TextView mDescription;
        private MarginLayoutParams mLayoutParams;
        private TextView mTitle;
        private View mView;

        public ActionLayout(View view) {
            this.mView = view;
            this.mView.setVisibility(8);
            this.mLayoutParams = (MarginLayoutParams) view.getLayoutParams();
            this.mTitle = (TextView) view.findViewById(R.id.title);
            this.mDescription = (TextView) view.findViewById(R.id.description);
            this.mButton = (TextView) view.findViewById(R.id.stop_scan);
            this.mButton.setOnClickListener(this);
        }

        public void setHeight(int topMargin, int height) {
            this.mLayoutParams.topMargin = topMargin;
            this.mLayoutParams.height = height;
            this.mView.setLayoutParams(this.mLayoutParams);
        }

        public void show(boolean anim) {
            show(anim, 0);
        }

        public void show(boolean anim, long delay) {
            cancelAnimation();
            if (anim && !isVisible()) {
                this.mAlphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                this.mAlphaAnimation.setStartOffset(delay);
                this.mAlphaAnimation.setDuration(500);
                this.mAlphaAnimation.setInterpolator(new CubicEaseInOutInterpolator());
                this.mView.startAnimation(this.mAlphaAnimation);
            }
            this.mView.setVisibility(0);
        }

        public void hide(boolean anim) {
            cancelAnimation();
            if (anim && isVisible()) {
                this.mAlphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                this.mAlphaAnimation.setDuration(350);
                this.mAlphaAnimation.setInterpolator(new CubicEaseInOutInterpolator());
                this.mAlphaAnimation.setAnimationListener(new AnimationListener() {
                    public void onAnimationStart(Animation animation) {
                    }

                    public void onAnimationRepeat(Animation animation) {
                    }

                    public void onAnimationEnd(Animation animation) {
                        ActionLayout.this.mView.setVisibility(8);
                    }
                });
                this.mView.startAnimation(this.mAlphaAnimation);
                return;
            }
            this.mView.setVisibility(8);
        }

        private void showNoScanResultTip() {
            this.mTitle.setText(R.string.cleaner_scan_finish);
            this.mDescription.setText(R.string.cleaner_scan_no_result);
            this.mButton.setText(R.string.cleaner_scan_ok);
        }

        public boolean isVisible() {
            return this.mView.getVisibility() == 0;
        }

        private void cancelAnimation() {
            if (this.mAlphaAnimation != null) {
                this.mAlphaAnimation.setAnimationListener(null);
                this.mAlphaAnimation.cancel();
                this.mAlphaAnimation = null;
                this.mView.clearAnimation();
            }
        }

        public void setMarginTop(int marginTop) {
            this.mLayoutParams.topMargin = marginTop;
            this.mView.setLayoutParams(this.mLayoutParams);
        }

        public void onClick(View v) {
            if (isVisible()) {
                CleanerFragment.this.onBackPressed();
            }
        }
    }

    private class ScanLayout {
        private ValueAnimator mFlexAnimator = null;
        private LayoutParams mLayoutParams;
        public View mView;

        public ScanLayout(View view) {
            this.mView = view;
            this.mLayoutParams = new RecyclerView.LayoutParams(-1, CleanerFragment.this.mExpandHeight);
            this.mView.setLayoutParams(this.mLayoutParams);
            this.mView.setBackgroundResource(R.color.cleaner_scan_layout_background);
        }

        public void expand(boolean anim) {
            expand(anim, 0);
        }

        public void expand(boolean anim, long delay) {
            cancelAnimation();
            if (anim) {
                int height = this.mLayoutParams.height;
                if (height != CleanerFragment.this.mExpandHeight) {
                    initFlexAnimator(height, CleanerFragment.this.mExpandHeight);
                    this.mFlexAnimator.setStartDelay(delay);
                    this.mFlexAnimator.start();
                    return;
                }
                return;
            }
            setHeight(CleanerFragment.this.mExpandHeight);
        }

        public void retract(boolean anim) {
            retract(anim, 0);
        }

        public void retract(boolean anim, long delay) {
            cancelAnimation();
            if (anim) {
                int height = this.mLayoutParams.height;
                if (height != CleanerFragment.this.mRetractHeight) {
                    initFlexAnimator(height, CleanerFragment.this.mRetractHeight);
                    this.mFlexAnimator.setStartDelay(delay);
                    this.mFlexAnimator.start();
                    return;
                }
                return;
            }
            setHeight(CleanerFragment.this.mRetractHeight);
        }

        public boolean isAnimationRunning() {
            return this.mFlexAnimator != null && this.mFlexAnimator.isRunning();
        }

        private void initFlexAnimator(int start, int end) {
            this.mFlexAnimator = new ValueAnimator();
            this.mFlexAnimator.setIntValues(new int[]{start, end});
            this.mFlexAnimator.setDuration(500);
            this.mFlexAnimator.setInterpolator(new CubicEaseInOutInterpolator());
            this.mFlexAnimator.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator animation) {
                    Integer value = (Integer) animation.getAnimatedValue();
                    if (value != null) {
                        ScanLayout.this.setHeight(value.intValue());
                    }
                }
            });
        }

        private void cancelAnimation() {
            if (this.mFlexAnimator != null) {
                this.mFlexAnimator.cancel();
                this.mFlexAnimator = null;
            }
        }

        private void setHeight(int height) {
            this.mLayoutParams.height = height;
            this.mView.setLayoutParams(this.mLayoutParams);
            CleanerFragment.this.mActionLayout.setMarginTop(height);
        }
    }

    private class ScanResultDiffCallback extends Callback {
        private List<ScanResult> mNewList;
        private List<ScanResult> mOldList;

        public ScanResultDiffCallback(List<ScanResult> oldList, List<ScanResult> newList) {
            this.mOldList = oldList;
            this.mNewList = newList;
        }

        public int getOldListSize() {
            return this.mOldList == null ? 0 : this.mOldList.size();
        }

        public int getNewListSize() {
            return this.mNewList == null ? 0 : this.mNewList.size();
        }

        public boolean areItemsTheSame(int oldItemPosition, int newItemPosition) {
            int typeOld;
            int typeNew;
            if (this.mOldList == null || oldItemPosition >= this.mOldList.size()) {
                typeOld = -1;
            } else {
                typeOld = ((ScanResult) this.mOldList.get(oldItemPosition)).getType();
            }
            if (this.mNewList == null || newItemPosition >= this.mNewList.size()) {
                typeNew = -1;
            } else {
                typeNew = ((ScanResult) this.mNewList.get(newItemPosition)).getType();
            }
            if (typeOld == typeNew) {
                return true;
            }
            return false;
        }

        public boolean areContentsTheSame(int oldItemPosition, int newItemPosition) {
            long sizeOld;
            long sizeNew;
            if (this.mOldList == null || oldItemPosition >= this.mOldList.size()) {
                sizeOld = 0;
            } else {
                sizeOld = ((ScanResult) this.mOldList.get(oldItemPosition)).getSize();
            }
            if (this.mNewList == null || newItemPosition >= this.mNewList.size()) {
                sizeNew = 0;
            } else {
                sizeNew = ((ScanResult) this.mNewList.get(newItemPosition)).getSize();
            }
            if (sizeOld == sizeNew) {
                return true;
            }
            return false;
        }
    }

    private class ScanResultLayoutManager extends LinearLayoutManager {
        public ScanResultLayoutManager(Context context) {
            super(context);
        }

        public boolean canScrollVertically() {
            return (CleanerFragment.this.mActionLayout.isVisible() || CleanerFragment.this.mScanLayout.isAnimationRunning()) ? false : true;
        }

        protected int getExtraLayoutSpace(State state) {
            return CleanerFragment.this.mScreenHeight;
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.cleaner_fragment, container, false);
        this.mRecyclerView = (RecyclerView) view.findViewById(R.id.recycler_view);
        this.mRecyclerView.setLayoutManager(new ScanResultLayoutManager(this.mActivity));
        this.mRecyclerView.addItemDecoration(new DividerItemDecoration(getResources().getDrawable(R.drawable.card_divider), 1, 1));
        this.mAdapter = new ScanResultAdapter(this.mActivity);
        this.mRecyclerView.setAdapter(this.mAdapter);
        SimpleItemAnimator animator = new CleanerItemAnimator();
        animator.setSupportsChangeAnimations(false);
        this.mRecyclerView.setItemAnimator(animator);
        this.mActionLayout = new ActionLayout(view.findViewById(R.id.action_layout));
        this.mProgressBar = new CleanerRotateProgressBar(this.mActivity);
        this.mScanLayout = new ScanLayout(this.mProgressBar);
        this.mAdapter.setHeader(this.mScanLayout.mView);
        this.mScannerManager = ScannerManager.getInstance();
        return view;
    }

    public String getPageName() {
        return "cleaner";
    }

    public boolean onBackPressed() {
        if (this.mProgressBar.isRotating() || this.mScannerManager.isScanning()) {
            if (this.mExitConfirmDialog == null) {
                this.mExitConfirmDialog = new Builder(this.mActivity).setPositiveButton((int) R.string.cleaner_scan_exit_dialog_positive, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        CleanerFragment.this.onExit();
                        BaseSamplingStatHelper.recordCountEvent("cleaner", "cleaner_scan_exit_confirm");
                    }
                }).setNegativeButton(17039360, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        CleanerFragment.this.onExitCancel();
                    }
                }).setOnCancelListener(new OnCancelListener() {
                    public void onCancel(DialogInterface dialog) {
                        CleanerFragment.this.onExitCancel();
                    }
                }).setTitle((int) R.string.cleaner_scan_exit_dialog_title).setMessage((int) R.string.cleaner_scan_exit_dialog_message).create();
            }
            this.mExitConfirmDialog.show();
            HashMap<String, String> params = new HashMap();
            params.put("durationBeforeExit", BaseSamplingStatHelper.formatValueStage((float) ((int) ((System.currentTimeMillis() - this.mScannerManager.getStartTime()) / 1000)), ScannerManager.TIME_COST_STAGE));
            BaseSamplingStatHelper.recordCountEvent("cleaner", "cleaner_scan_exit", params);
        } else {
            onExit();
        }
        return true;
    }

    private void onExit() {
        this.mScannerManager.resetScan();
        this.mActivity.finish();
    }

    private void onExitCancel() {
        BaseSamplingStatHelper.recordCountEvent("cleaner", "cleaner_scan_exit_cancel");
    }

    public void onStart() {
        super.onStart();
        this.mScannerManager.registerObserver(this.mScanObserver);
        if (this.mScreenHeight == 0) {
            int screenHeight = ScreenUtils.getExactScreenHeight(this.mActivity);
            if (screenHeight != this.mScreenHeight) {
                initLayoutHeight(screenHeight);
            }
        }
        if (this.mScannerManager.isReset()) {
            this.mScannerManager.startScan();
            this.mIsScanStarted = true;
            return;
        }
        this.mIsScanStarted = false;
        if (this.mScreenHeight != 0) {
            setLayoutByScanResult();
        }
    }

    public void onActivityAttachedToWindow() {
        initLayoutHeight(ScreenUtils.getExactScreenHeight(this.mActivity));
        setLayoutByScanResult();
    }

    private void initLayoutHeight(int height) {
        this.mScreenHeight = height;
        this.mExpandHeight = (this.mScreenHeight * getResources().getInteger(R.integer.cleaner_scan_layout_expand_percent)) / 100;
        this.mRetractHeight = this.mScreenHeight - this.mExpandHeight;
        this.mScanLayout.setHeight(this.mExpandHeight);
        this.mActionLayout.setHeight(this.mExpandHeight, this.mRetractHeight);
    }

    private void setLayoutByScanResult() {
        if (!this.mIsScanStarted) {
            if (this.mScannerManager.isScanning()) {
                this.mActionLayout.show(false);
                this.mScanLayout.expand(false);
                this.mProgressBar.showRingCircle(false);
            } else if (this.mScannerManager.isScanResultEmpty()) {
                this.mScanLayout.expand(true, 300);
                this.mActionLayout.show(true, 300);
                this.mProgressBar.showEmptyAnim(300);
                this.mActionLayout.showNoScanResultTip();
            } else {
                this.mScanLayout.retract(false);
                this.mProgressBar.hideRingCircle(false);
                this.mActionLayout.hide(false);
                this.mProgressBar.setNumber(this.mScannerManager.getScanSize());
                updateScanResult();
            }
        }
    }

    public void onStop() {
        super.onStop();
        this.mScannerManager.unregisterObserver(this.mScanObserver);
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mExitConfirmDialog != null && this.mExitConfirmDialog.isShowing()) {
            this.mExitConfirmDialog.dismiss();
        }
    }

    private void updateScanResult() {
        List<ScanResult> oldResult = this.mAdapter.getDataList();
        List<ScanResult> newResult = this.mScannerManager.getScanResults();
        DiffUtil.calculateDiff(new ScanResultDiffCallback(oldResult, newResult)).dispatchUpdatesTo(this.mAdapter);
        this.mAdapter.updateDataList(newResult);
    }

    protected int getThemeRes() {
        return R.style.f23GalleryTheme.NoActionBar.DarkStatusBar;
    }
}
