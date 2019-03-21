package com.miui.gallery.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.cleaner.slim.SlimController;
import com.miui.gallery.cleaner.slim.SlimController.SpaceSlimObserver;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import java.util.HashMap;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;

public class PhotoSlimFragment extends BaseFragment implements SpaceSlimObserver {
    private Button mActionButton;
    private OnClickListener mActionButtonClickListener = new OnClickListener() {
        public void onClick(View v) {
            PhotoSlimFragment.this.onBackPressed();
        }
    };
    private TextView mActionDescription;
    private TextView mActionTitle;
    private AlertDialog mExitConfirmDialog;
    private SlimRotateProgressBar mProgressBar;
    private SlimController mSlimController;

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.photo_slim_fragment, container, false);
        this.mActionTitle = (TextView) view.findViewById(R.id.title);
        this.mActionTitle.setText(R.string.slim_running);
        this.mActionDescription = (TextView) view.findViewById(R.id.description);
        this.mActionButton = (Button) view.findViewById(R.id.action_button);
        this.mActionButton.setText(R.string.slim_stop);
        this.mActionButton.setOnClickListener(this.mActionButtonClickListener);
        this.mProgressBar = (SlimRotateProgressBar) view.findViewById(R.id.progress_bar);
        this.mProgressBar.setDescription(getString(R.string.slim_space));
        this.mProgressBar.setNumber(0, false, null);
        this.mSlimController = SlimController.getInstance();
        return view;
    }

    public void onStart() {
        super.onStart();
        if (!this.mSlimController.isSlimStarted()) {
            this.mActivity.finish();
        }
        this.mSlimController.registerObserver(this);
        if (this.mSlimController.isSlimming()) {
            long releaseSize = this.mSlimController.getReleaseSize();
            this.mProgressBar.setNumber(releaseSize, false);
            if (this.mSlimController.isSlimPaused()) {
                showExitConfirmDialog();
                onSlimPaused();
                return;
            }
            onSlimProgress(-1, releaseSize, this.mSlimController.getRemainCount());
            return;
        }
        this.mProgressBar.setNumber(this.mSlimController.getReleaseSize());
        showFinishState();
    }

    public void onStop() {
        super.onStop();
        this.mSlimController.unregisterObserver(this);
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mExitConfirmDialog != null && this.mExitConfirmDialog.isShowing()) {
            this.mExitConfirmDialog.dismiss();
        }
    }

    public void onSlimProgress(long id, long releaseSize, int remainCount) {
        if (getActivity() != null && !this.mSlimController.isSlimPaused()) {
            this.mActionTitle.setText(remainTime((int) Math.ceil((double) (((float) (remainCount + 1)) * 0.2f))));
            if (remainCount >= 1) {
                this.mProgressBar.setNumber(releaseSize, false, null);
                this.mActionDescription.setText(getResources().getQuantityString(R.plurals.slim_remain_photo_count, remainCount, new Object[]{Integer.valueOf(remainCount)}));
                return;
            }
            this.mProgressBar.setNumber(releaseSize, true, new Runnable() {
                public void run() {
                    PhotoSlimFragment.this.showFinishState();
                }
            });
        }
    }

    public void onSlimResumed() {
        this.mProgressBar.resume();
    }

    public void onSlimPaused() {
        SlimController slimController = this.mSlimController;
        int remainCount = SlimController.getInstance().getRemainCount();
        this.mActionDescription.setText(getResources().getQuantityString(R.plurals.slim_remain_photo_count, remainCount, new Object[]{Integer.valueOf(remainCount)}));
        this.mProgressBar.pause();
    }

    private void showFinishState() {
        if (getActivity() != null) {
            int count = this.mSlimController.getSlimCount();
            this.mActionDescription.setText(getResources().getQuantityString(R.plurals.slim_complete_photo_count, count, new Object[]{Integer.valueOf(count)}));
            this.mActionTitle.setText(R.string.slim_complete_action_title);
            this.mActionButton.setText(R.string.slim_complete);
            this.mActionButton.setBackgroundResource(R.drawable.btn_bg_slim_light);
            this.mActionButton.setTextColor(this.mActivity.getResources().getColorStateList(R.color.button_text_color_dark));
        }
    }

    private String remainTime(int time) {
        int second = time % 60;
        if (time / 60 > 0 && second > 0) {
            return getResources().getString(R.string.slim_cost_time_minute_and_second, new Object[]{Integer.valueOf(minute), Integer.valueOf(second)});
        } else if (second > 0) {
            return getResources().getString(R.string.slim_cost_time_second, new Object[]{Integer.valueOf(second)});
        } else {
            return getResources().getString(R.string.slim_cost_time_minute, new Object[]{Integer.valueOf(minute)});
        }
    }

    public String getPageName() {
        return "photo_slim";
    }

    public boolean onBackPressed() {
        if (this.mSlimController.isSlimming()) {
            this.mSlimController.pause();
            showExitConfirmDialog();
            HashMap<String, String> params = new HashMap();
            params.put("durationBeforeExit", BaseSamplingStatHelper.formatValueStage((float) ((int) ((System.currentTimeMillis() - this.mSlimController.getStartTime()) / 1000)), SlimController.TIME_COST_STAGE));
            BaseSamplingStatHelper.recordCountEvent("cleaner", "slim_exit", params);
        } else {
            onExit();
        }
        return true;
    }

    private void showExitConfirmDialog() {
        if (this.mExitConfirmDialog == null || !this.mExitConfirmDialog.isShowing()) {
            SlimController slimController = this.mSlimController;
            int remainCount = SlimController.getInstance().getRemainCount();
            if (this.mExitConfirmDialog == null) {
                this.mExitConfirmDialog = new Builder(this.mActivity).setPositiveButton(R.string.slim_exit_dialog_positive, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        PhotoSlimFragment.this.onExit();
                        BaseSamplingStatHelper.recordCountEvent("cleaner", "slim_exit_confirm");
                    }
                }).setNegativeButton(17039360, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        PhotoSlimFragment.this.onExitCancel();
                    }
                }).setTitle(R.string.slim_exit_dialog_title).setOnCancelListener(new OnCancelListener() {
                    public void onCancel(DialogInterface dialog) {
                        PhotoSlimFragment.this.onExitCancel();
                    }
                }).create();
            }
            this.mExitConfirmDialog.setMessage(getResources().getQuantityString(R.plurals.slim_exit_dialog_message, remainCount, new Object[]{Integer.valueOf(remainCount)}));
            this.mExitConfirmDialog.show();
        }
    }

    private void onExitCancel() {
        SlimController.getInstance().resume();
        BaseSamplingStatHelper.recordCountEvent("cleaner", "slim_exit_cancel");
    }

    private void onExit() {
        SlimController.getInstance().stop();
        this.mActivity.finish();
    }

    protected int getThemeRes() {
        return R.style.f23GalleryTheme.NoActionBar.DarkStatusBar;
    }
}
