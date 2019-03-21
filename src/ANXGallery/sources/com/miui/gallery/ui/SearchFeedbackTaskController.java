package com.miui.gallery.ui;

import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.search.feedback.SearchFeedbackHelper;
import com.miui.gallery.search.utils.SearchLog;
import miui.app.Fragment;

public class SearchFeedbackTaskController {
    private Fragment mFragment;
    private View mIndicator;
    private TextView mProgress;
    private boolean mResumed;
    private int mTaskStatus = -1;

    private class FeedbackInfoQueryTask extends AsyncTask<Void, Void, Bundle> {
        private FeedbackInfoQueryTask() {
        }

        /* synthetic */ FeedbackInfoQueryTask(SearchFeedbackTaskController x0, AnonymousClass1 x1) {
            this();
        }

        protected Bundle doInBackground(Void... params) {
            try {
                Bundle bundle = SearchFeedbackHelper.getFeedbackTaskInfo();
                if (bundle == null || bundle == Bundle.EMPTY) {
                    return null;
                }
                bundle.putInt("task_status", SearchFeedbackTaskController.this.getFeedbackTaskStatus(bundle.getInt("need_handle_image_num", 0), bundle.getInt("finish_image_num", 0)));
                return bundle;
            } catch (Exception e) {
                SearchLog.e("SearchFeedbackTaskController", "getFeedbackTaskInfo failed");
                return null;
            }
        }

        protected void onPostExecute(Bundle bundle) {
            SearchLog.e("SearchFeedbackTaskController", "On get bundle %s, resumed %s", bundle, String.valueOf(SearchFeedbackTaskController.this.mResumed));
            if (SearchFeedbackTaskController.this.mResumed && bundle != null) {
                int taskNum = bundle.getInt("need_handle_image_num", 0);
                int finishNum = bundle.getInt("finish_image_num", 0);
                SearchFeedbackTaskController.this.mTaskStatus = bundle.getInt("task_status", -1);
                SearchFeedbackTaskController.this.updateIndicatorUI(taskNum, finishNum);
            } else if (bundle == null) {
                SearchFeedbackTaskController.this.hideIndicator();
            }
        }
    }

    public SearchFeedbackTaskController(Fragment fragment, View indicator) {
        this.mFragment = fragment;
        this.mIndicator = indicator;
        this.mProgress = (TextView) this.mIndicator.findViewById(R.id.feedback_task_progress);
        this.mIndicator.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
            }
        });
        hideIndicator();
    }

    public void onResume() {
        this.mResumed = true;
        new FeedbackInfoQueryTask(this, null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public void onPause() {
        this.mResumed = false;
    }

    private void hideIndicator() {
        this.mIndicator.setVisibility(8);
    }

    private void updateIndicatorUI(int taskNum, int finishNum) {
        if (this.mTaskStatus < 0) {
            hideIndicator();
            return;
        }
        this.mIndicator.setVisibility(0);
        switch (this.mTaskStatus) {
            case 0:
                this.mProgress.setText(String.format(this.mFragment.getString(R.string.search_feedback_task_progress), new Object[]{Integer.valueOf(finishNum), Integer.valueOf(taskNum)}));
                return;
            case 1:
                this.mProgress.setText(R.string.search_feedback_task_complete);
                return;
            default:
                hideIndicator();
                return;
        }
    }

    private int getFeedbackTaskStatus(int taskNum, int finishNum) {
        if (taskNum > 0) {
            return finishNum >= taskNum ? 1 : 0;
        } else {
            SearchLog.w("SearchFeedbackTaskController", "Something wrong may happened, invalid feedback task num");
            return -1;
        }
    }
}
