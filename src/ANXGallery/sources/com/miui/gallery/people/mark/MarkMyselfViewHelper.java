package com.miui.gallery.people.mark;

import android.app.Fragment;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.people.mark.MarkPeopleDialogFragment.OnPeopleSelectListener;
import com.miui.gallery.people.mark.MarkPeopleSuggestionContract.View;
import com.miui.gallery.people.model.People;
import com.miui.gallery.util.ActionURIHandler;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.ToastUtils;
import java.util.ArrayList;

public class MarkMyselfViewHelper implements View {
    private OnCancelListener mCancelListener = new OnCancelListener() {
        public void onCancel(DialogInterface dialogInterface) {
            MarkMyselfViewHelper.this.mMarkMyselfPresenter.ignoreSuggestion();
        }
    };
    private Fragment mFragment;
    private OnClickListener mLoadMoreClickListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            MarkMyselfViewHelper.this.mMarkMyselfPresenter.loadMore();
        }
    };
    private MarkPeopleDialogFragment mMarkDialogFragment = null;
    private MarkMyselfSuggestionModel mMarkMyselfModel = null;
    private Bundle mMarkMyselfOptions = null;
    private MarkPeopleSuggestionPresenter mMarkMyselfPresenter = null;
    private OnPeopleSelectListener mPeopleSelectListener = new OnPeopleSelectListener() {
        public void onPeopleSelected(int index, People people) {
            MarkMyselfViewHelper.this.mMarkMyselfPresenter.markPeople(people);
        }
    };

    public MarkMyselfViewHelper(Fragment fragment) {
        this.mFragment = fragment;
    }

    public boolean onStart() {
        if (this.mFragment.getActivity() == null) {
            return false;
        }
        this.mMarkDialogFragment = (MarkPeopleDialogFragment) this.mFragment.getFragmentManager().findFragmentByTag("MarkMyself");
        if (this.mMarkMyselfOptions == null) {
            this.mMarkMyselfOptions = MarkPeopleSuggestionContract.buildMarkInfoForMarkMyself(this.mFragment.getActivity());
        }
        if (this.mMarkMyselfModel == null) {
            this.mMarkMyselfModel = new MarkMyselfSuggestionModel();
        }
        if (this.mMarkMyselfModel.needMark(this.mMarkMyselfOptions)) {
            this.mMarkMyselfPresenter = new MarkPeopleSuggestionPresenter(this.mFragment.getActivity(), this, this.mMarkMyselfModel, this.mMarkMyselfOptions);
            this.mMarkMyselfPresenter.start();
            return true;
        }
        if (isSuggestionDialogVisible()) {
            this.mMarkMyselfPresenter = new MarkPeopleSuggestionPresenter(this.mFragment.getActivity(), this, this.mMarkMyselfModel, this.mMarkMyselfOptions);
            this.mMarkMyselfPresenter.start();
        }
        return false;
    }

    public void onStop() {
        if (this.mMarkMyselfPresenter != null) {
            this.mMarkMyselfPresenter.stop();
        }
    }

    public void showSuggestionDialog(String title, String loadMoreTitle, ArrayList<People> peopleSuggestions) {
        if (this.mFragment.getFragmentManager() != null) {
            if (this.mMarkDialogFragment == null) {
                this.mMarkDialogFragment = new MarkPeopleDialogFragment();
            }
            this.mMarkDialogFragment.setTitle(title);
            this.mMarkDialogFragment.setLoadMoreButton(loadMoreTitle, this.mLoadMoreClickListener);
            this.mMarkDialogFragment.setCancelButton(true, this.mCancelListener);
            this.mMarkDialogFragment.setPeopleList(peopleSuggestions, this.mPeopleSelectListener);
            if (!this.mMarkDialogFragment.isAdded()) {
                this.mMarkDialogFragment.showAllowingStateLoss(this.mFragment.getFragmentManager(), "MarkMyself");
            }
        }
    }

    public void dismissSuggestionDialog() {
        if (this.mMarkDialogFragment != null) {
            this.mMarkDialogFragment.dismissAllowingStateLoss();
            this.mMarkDialogFragment = null;
        }
    }

    public boolean isSuggestionDialogVisible() {
        return this.mMarkDialogFragment != null && this.mMarkDialogFragment.isAdded();
    }

    public void goToActivity(Uri uri) {
        if (this.mFragment.getActivity() != null) {
            ActionURIHandler.handleUri(this.mFragment.getActivity(), uri);
        }
    }

    public void showMarkResult(boolean succeeded, String message) {
        if (this.mFragment.getActivity() != null && !TextUtils.isEmpty(message)) {
            ToastUtils.makeText(this.mFragment.getActivity(), (CharSequence) message);
        }
    }

    public void showInfoDialog(String title, String message) {
        if (this.mFragment.getActivity() != null) {
            DialogUtil.showInfoDialog(this.mFragment.getActivity(), message, title);
        }
    }

    public void setLoadMoreMarkResult(boolean succeeded) {
        this.mMarkMyselfPresenter.setLoadMoreMarkResult(succeeded);
    }
}
