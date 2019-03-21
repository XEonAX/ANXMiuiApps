package com.miui.gallery.people.mark;

import android.content.Context;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.people.mark.MarkPeopleSuggestionContract.LoadMarkSuggestionCallback;
import com.miui.gallery.people.mark.MarkPeopleSuggestionContract.MarkPeopleCallback;
import com.miui.gallery.people.mark.MarkPeopleSuggestionContract.Model;
import com.miui.gallery.people.mark.MarkPeopleSuggestionContract.View;
import com.miui.gallery.people.model.People;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class MarkPeopleSuggestionPresenter {
    private Context mContext;
    private Bundle mMarkInfo;
    private Model mModel;
    private ArrayList<People> mPeopleSuggestion;
    private boolean mStopped = false;
    private View mView;

    public MarkPeopleSuggestionPresenter(Context context, View view, Model model, Bundle markInfo) {
        this.mContext = context;
        this.mView = view;
        this.mModel = model;
        this.mMarkInfo = markInfo;
    }

    public void start() {
        this.mStopped = false;
        if ((this.mModel.needMark(this.mMarkInfo) && !this.mView.isSuggestionDialogVisible()) || this.mView.isSuggestionDialogVisible()) {
            this.mModel.loadMarkSuggestion(this.mContext, this.mMarkInfo, new LoadMarkSuggestionCallback() {
                public void onNoNeedMark() {
                    MarkPeopleSuggestionPresenter.this.mModel.onMarkSuggestionTriggered(MarkPeopleSuggestionPresenter.this.mMarkInfo);
                    MarkPeopleSuggestionPresenter.this.setMarkResult(true, false);
                }

                public void onPeopleSuggestionLoaded(ArrayList<People> peopleSuggestions) {
                    if (!MarkPeopleSuggestionPresenter.this.mStopped && peopleSuggestions != null && !peopleSuggestions.isEmpty()) {
                        MarkPeopleSuggestionPresenter.this.mPeopleSuggestion = peopleSuggestions;
                        MarkPeopleSuggestionPresenter.this.mView.showSuggestionDialog(MarkPeopleSuggestionPresenter.this.mContext.getString(R.string.mark_myself_suggestion_title), MarkPeopleSuggestionPresenter.this.mContext.getString(R.string.mark_myself_suggestion_load_more), peopleSuggestions);
                        MarkPeopleSuggestionPresenter.this.mModel.onMarkSuggestionTriggered(MarkPeopleSuggestionPresenter.this.mMarkInfo);
                    }
                }

                public void onPeopleSuggestionLoadFailed() {
                }
            });
        }
    }

    public void markPeople(People people) {
        this.mView.dismissSuggestionDialog();
        this.mModel.markPeople(this.mContext, people, this.mMarkInfo, new MarkPeopleCallback() {
            public void onMarkPeopleSucceeded() {
                if (!MarkPeopleSuggestionPresenter.this.mStopped) {
                    MarkPeopleSuggestionPresenter.this.mView.showMarkResult(true, MarkPeopleSuggestionPresenter.this.mContext.getString(R.string.mark_operation_succeeded));
                }
                MarkPeopleSuggestionPresenter.this.setMarkResult(true, false);
            }

            public void onMarkPeopleFailed(String errorMsg) {
                if (!MarkPeopleSuggestionPresenter.this.mStopped) {
                    MarkPeopleSuggestionPresenter.this.mView.showMarkResult(false, errorMsg);
                }
                MarkPeopleSuggestionPresenter.this.setMarkResult(false, false);
            }
        });
    }

    public void loadMore() {
        if (this.mView.isSuggestionDialogVisible()) {
            this.mView.dismissSuggestionDialog();
        }
        if (this.mPeopleSuggestion == null || this.mPeopleSuggestion.size() >= this.mMarkInfo.getInt("option_suggestion_limit")) {
            this.mView.goToActivity(MarkPeopleSuggestionContract.buildMarkUriForMarkInfo(this.mMarkInfo));
            BaseSamplingStatHelper.recordCountEvent("people_mark", "mark_myself_dialog_load_more");
            return;
        }
        BaseSamplingStatHelper.recordCountEvent("people_mark", "mark_myself_dialog_close");
    }

    public void ignoreSuggestion() {
        if (this.mView.isSuggestionDialogVisible()) {
            this.mView.dismissSuggestionDialog();
        }
        this.mView.showInfoDialog(this.mContext.getString(R.string.set_group), this.mContext.getString(R.string.mark_people_ignore_info_message));
        setMarkResult(false, false);
        BaseSamplingStatHelper.recordCountEvent("people_mark", "mark_myself_dialog_close");
    }

    public void stop() {
        this.mStopped = true;
    }

    public void setLoadMoreMarkResult(boolean succeeded) {
        setMarkResult(succeeded, true);
    }

    private void setMarkResult(boolean succeeded, boolean fromLoadMore) {
        this.mModel.setMarkResult(this.mMarkInfo, succeeded);
        String event = fromLoadMore ? succeeded ? "mark_myself_load_more_mark" : "mark_myself_load_more_close" : succeeded ? "mark_myself_dialog_mark" : "mark_myself_dialog_close";
        Map<String, String> params = null;
        if (!(fromLoadMore || this.mPeopleSuggestion == null)) {
            String faceDistribution;
            params = new HashMap(2);
            params.put("PeopleCount", String.valueOf(this.mPeopleSuggestion.size()));
            int faceCount = getMaxFaceCount(this.mPeopleSuggestion);
            if (faceCount <= 5) {
                faceDistribution = "1-5";
            } else if (faceCount <= 10) {
                faceDistribution = "6-10";
            } else if (faceCount <= 50) {
                faceDistribution = "11-50";
            } else if (faceCount <= 100) {
                faceDistribution = "51-100";
            } else {
                faceDistribution = ">100";
            }
            params.put("MaxFaceCount", faceDistribution);
        }
        BaseSamplingStatHelper.recordCountEvent("people_mark", event, params);
    }

    private int getMaxFaceCount(ArrayList<People> peopleList) {
        int maxFaceCount = 0;
        if (peopleList != null && peopleList.size() > 0) {
            Iterator it = peopleList.iterator();
            while (it.hasNext()) {
                maxFaceCount = Math.max(((People) it.next()).getFaceCount(), maxFaceCount);
            }
        }
        return maxFaceCount;
    }
}
