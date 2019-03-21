package com.miui.gallery.search.resultpage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewStub;
import com.miui.gallery.R;
import com.miui.gallery.preference.GalleryPreferences.Search;
import com.miui.gallery.search.StatusHandleHelper.AbstractErrorViewAdapter;
import com.miui.gallery.search.StatusHandleHelper.InfoViewPosition;
import com.miui.gallery.search.core.QueryInfo.Builder;
import com.miui.gallery.search.feedback.FeedbackPolicyNoticeFragment;
import com.miui.gallery.ui.SearchFeedbackTaskController;

public class TagListFragment extends SearchResultFragment {
    private FeedbackPolicyNoticeFragment mPolicyNoticeFragment = null;
    private SearchFeedbackTaskController mSearchFeedbackTaskController;
    private View mSearchFeedbackTaskIndicator;
    private boolean mUserAgreedPolicy = false;

    private class TagListErrorViewAdapter extends ErrorViewAdapter {
        public TagListErrorViewAdapter(Context context) {
            super(context);
        }

        protected int getIconResForStatus(int status, InfoViewPosition position) {
            if (position == InfoViewPosition.FULL_SCREEN) {
                return R.drawable.empty_page_things;
            }
            if (position == InfoViewPosition.FOOTER) {
                return R.drawable.search_connection_error_icon;
            }
            return 0;
        }

        protected String getInfoTitleForStatus(int status, InfoViewPosition position) {
            int resId = R.string.things_album_empty_title;
            boolean fullScreen = position == InfoViewPosition.FULL_SCREEN;
            switch (status) {
                case 1:
                    if (!fullScreen) {
                        resId = R.string.search_connection_error_and_set;
                        break;
                    }
                    break;
                case 3:
                    if (!fullScreen) {
                        resId = R.string.search_login_title;
                        break;
                    }
                    break;
                case 4:
                    if (!fullScreen) {
                        resId = R.string.search_backup_title;
                        break;
                    }
                    break;
                case 10:
                    resId = R.string.search_syncing;
                    break;
                case 13:
                    resId = R.string.ai_album_requesting_title;
                    break;
                default:
                    if (!fullScreen) {
                        resId = R.string.search_error_and_retry;
                        break;
                    }
                    break;
            }
            return this.mContext.getString(resId);
        }
    }

    protected void onInflateView(View view, Bundle savedInstanceState, Uri intentUri) {
        super.onInflateView(view, savedInstanceState, intentUri);
        if (this.mInFeedbackTaskMode) {
            if (this.mSearchFeedbackTaskIndicator == null) {
                this.mSearchFeedbackTaskIndicator = ((ViewStub) view.findViewById(R.id.search_feedback_task_indicator)).inflate();
            }
            if (this.mSearchFeedbackTaskController == null) {
                this.mSearchFeedbackTaskController = new SearchFeedbackTaskController(this, this.mSearchFeedbackTaskIndicator);
            }
            if (isResumed()) {
                this.mSearchFeedbackTaskController.onResume();
            }
        }
    }

    public void onResume() {
        super.onResume();
        if (this.mSearchFeedbackTaskController != null) {
            this.mSearchFeedbackTaskController.onResume();
        }
        if (!this.mInFeedbackTaskMode || !Search.shouldShowFeedbackPolicy() || this.mUserAgreedPolicy) {
            return;
        }
        if (this.mPolicyNoticeFragment == null || !this.mPolicyNoticeFragment.isAdded()) {
            if (this.mPolicyNoticeFragment == null) {
                this.mPolicyNoticeFragment = (FeedbackPolicyNoticeFragment) getFragmentManager().findFragmentByTag("PolicyNoticeFragment");
                if (this.mPolicyNoticeFragment == null) {
                    this.mPolicyNoticeFragment = new FeedbackPolicyNoticeFragment();
                    this.mPolicyNoticeFragment.setOnPositiveButtonClickListener(new OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            TagListFragment.this.mUserAgreedPolicy = true;
                        }
                    });
                }
            }
            if (!this.mPolicyNoticeFragment.isAdded()) {
                this.mPolicyNoticeFragment.showAllowingStateLoss(getFragmentManager(), "PolicyNoticeFragment");
            }
        }
    }

    public void onPause() {
        super.onPause();
        if (this.mSearchFeedbackTaskController != null) {
            this.mSearchFeedbackTaskController.onPause();
        }
    }

    protected Builder getSectionDataQueryInfoBuilder() {
        Builder queryInfoBuilder = super.getSectionDataQueryInfoBuilder();
        if (this.mInFeedbackTaskMode) {
            queryInfoBuilder.addParam("filterMode", "feedback");
        }
        return queryInfoBuilder;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        if (savedInstanceState != null) {
            this.mUserAgreedPolicy = savedInstanceState.getBoolean("UserAgreedPolicy", false);
        }
    }

    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putBoolean("UserAgreedPolicy", this.mUserAgreedPolicy);
    }

    protected int getLayoutResource() {
        return R.layout.search_tag_list_fragment;
    }

    protected AbstractErrorViewAdapter getErrorViewAdapter() {
        if (this.mErrorViewAdapter == null) {
            this.mErrorViewAdapter = new TagListErrorViewAdapter(this.mActivity);
        }
        return this.mErrorViewAdapter;
    }
}
