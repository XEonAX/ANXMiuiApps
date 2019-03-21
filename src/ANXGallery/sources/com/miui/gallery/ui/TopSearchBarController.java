package com.miui.gallery.ui;

import android.app.Activity;
import android.app.LoaderManager;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.Intent;
import android.content.Loader;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.util.Pair;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.provider.GalleryContract.Search;
import com.miui.gallery.search.SearchActivity;
import com.miui.gallery.search.SearchConstants.SearchType;
import com.miui.gallery.search.core.QueryInfo.Builder;
import com.miui.gallery.search.core.query.QueryLoader;
import com.miui.gallery.search.core.result.SuggestionResult;
import com.miui.gallery.search.core.resultprocessor.LinearResultProcessor;
import com.miui.gallery.search.core.suggestion.SuggestionCursor;
import com.miui.gallery.search.hint.SearchBarHintAdapter;
import com.miui.gallery.search.hint.SearchBarHintItem;
import com.miui.gallery.search.transitions.SearchSharedElementCallback;
import com.miui.gallery.search.transitions.SearchTransitionHelperImp;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.utils.SearchUtils;
import com.miui.gallery.search.widget.BannerSearchBar;
import com.miui.gallery.search.widget.BannerSearchBar.OnHintClickListener;
import com.miui.gallery.search.widget.bannerView.BaseBannerAdapter.OnUpdateTextListener;
import com.miui.gallery.search.widget.bannerView.BaseBannerItemData;
import com.miui.gallery.util.ActionURIHandler;
import miui.app.Fragment;

public class TopSearchBarController implements LoaderCallbacks<SuggestionResult>, OnHintClickListener, OnUpdateTextListener {
    private Bundle mActionBundle = null;
    private SearchBarHintItem[] mDefaultHints = null;
    private Fragment mFragment;
    private SearchBarHintAdapter mHintAdapter;
    private boolean mNeedReloadHint = false;
    private BannerSearchBar mSearchBar;
    private TextView mSearchTextView;

    public TopSearchBarController(Fragment fragment, BannerSearchBar bannerSearchBar, String from) {
        this.mFragment = fragment;
        this.mSearchBar = bannerSearchBar;
        this.mSearchTextView = (TextView) this.mSearchBar.findViewById(R.id.banner_search_view);
        this.mHintAdapter = new SearchBarHintAdapter(getLocalDefaultHints());
        this.mHintAdapter.setOnUpdateTextListener(this);
        this.mSearchBar.setHintAdapter(this.mHintAdapter);
        this.mSearchBar.setOnHintClickListener(this);
        if (from != null) {
            this.mActionBundle = new Bundle(1);
            this.mActionBundle.putString("from", from);
        }
        this.mNeedReloadHint = true;
    }

    public Loader<SuggestionResult> onCreateLoader(int id, Bundle args) {
        return new QueryLoader(getActivity(), new Builder(SearchType.SEARCH_TYPE_HINT).build(), new LinearResultProcessor());
    }

    public void onLoadFinished(Loader<SuggestionResult> loader, SuggestionResult data) {
        updateHintData(data != null ? formatHintResult(data) : null);
        boolean z = data == null || SearchUtils.isErrorResult(data);
        this.mNeedReloadHint = z;
        try {
            getLoaderManager().destroyLoader(loader.getId());
        } catch (Exception e) {
            SearchLog.e("TopSearchBarController", "Failed when destroying loader [%s]", e);
        }
    }

    public void onLoaderReset(Loader loader) {
    }

    protected LoaderManager getLoaderManager() {
        return this.mFragment.getLoaderManager();
    }

    protected Activity getActivity() {
        return this.mFragment.getActivity();
    }

    public void setEnable(boolean enable) {
        this.mSearchBar.setClickable(enable);
        this.mSearchBar.setEnabled(enable);
    }

    public void onResume() {
        this.mSearchBar.getLooperController().startLoop();
        this.mSearchBar.findViewById(R.id.banner_view).setVisibility(0);
        this.mSearchTextView.setTextColor(0);
        this.mSearchTextView.setHintTextColor(0);
        if (this.mNeedReloadHint) {
            getLoaderManager().restartLoader(11, null, this);
            this.mNeedReloadHint = false;
        }
    }

    public void onPause() {
        this.mSearchBar.getLooperController().stopLoop();
        this.mSearchBar.findViewById(R.id.banner_view).setVisibility(8);
    }

    public void onHintClicked(BannerSearchBar searchBar, int position) {
        Uri.Builder builder = Search.URI_SEARCH_PAGE.buildUpon();
        String queryText = getHintText(position, true);
        if (!TextUtils.isEmpty(queryText)) {
            builder.appendQueryParameter("queryHint", queryText);
        }
        goToSearchPage(builder.build());
    }

    public void onUpdateText(String text, String hint) {
        this.mSearchTextView.setText(text);
        this.mSearchTextView.setHint(hint);
    }

    private void updateHintData(SearchBarHintItem[] hintData) {
        SearchBarHintAdapter searchBarHintAdapter = this.mHintAdapter;
        if (hintData == null) {
            hintData = getLocalDefaultHints();
        }
        searchBarHintAdapter.setData((BaseBannerItemData[]) hintData);
    }

    private void goToSearchPage(Uri uri) {
        if (SearchTransitionHelperImp.supportSharedElementTransition()) {
            ActivityCompat.setExitSharedElementCallback(getActivity(), new SearchSharedElementCallback());
            this.mSearchTextView.setTextColor(getActivity().getResources().getColor(R.color.search_bar_text_color));
            this.mSearchTextView.setHintTextColor(getActivity().getResources().getColor(R.color.search_bar_text_color_hint));
            Intent intent = new Intent(getActivity(), SearchActivity.class);
            intent.setData(uri);
            intent.putExtra("from", this.mActionBundle.getString("from"));
            intent.putExtra("usingSpecialAnimation", true);
            View searchIcon = this.mSearchBar.findViewById(R.id.search_btn);
            View voiceIcon = this.mSearchBar.findViewById(R.id.search_btn_voice);
            ContextCompat.startActivity(getActivity(), intent, ActivityOptionsCompat.makeSceneTransitionAnimation(getActivity(), Pair.create(this.mSearchTextView, getActivity().getString(R.string.search_transition_element_input)), Pair.create(searchIcon, getActivity().getString(R.string.search_transition_element_icon)), Pair.create(voiceIcon, getActivity().getString(R.string.search_transition_element_voice))).toBundle());
            return;
        }
        ActionURIHandler.handleUri(getActivity(), uri, this.mActionBundle);
        getActivity().overridePendingTransition(R.anim.appear, R.anim.disappear);
    }

    private String getHintText(int position, boolean queryText) {
        if (position < 0 || position >= this.mHintAdapter.getCount()) {
            return null;
        }
        SearchBarHintItem item = (SearchBarHintItem) this.mHintAdapter.getItem(position);
        return queryText ? item.getQueryText() : item.getHintText();
    }

    private SearchBarHintItem[] getLocalDefaultHints() {
        if (this.mDefaultHints == null) {
            this.mDefaultHints = new SearchBarHintItem[]{new SearchBarHintItem(getActivity().getString(R.string.search_hint), null)};
        }
        return this.mDefaultHints;
    }

    private SearchBarHintItem[] formatHintResult(SuggestionResult hintResult) {
        if (hintResult == null || hintResult.isEmpty()) {
            return null;
        }
        SuggestionCursor suggestionCursor = hintResult.getData();
        SearchBarHintItem[] searchBarHintItemArr = new SearchBarHintItem[suggestionCursor.getCount()];
        for (int i = 0; i < suggestionCursor.getCount(); i++) {
            suggestionCursor.moveToPosition(i);
            int duration = 4000;
            String durationString = getString(suggestionCursor, "display_duration");
            if (!TextUtils.isEmpty(durationString)) {
                try {
                    duration = Math.max(duration, Integer.valueOf(durationString).intValue());
                } catch (NumberFormatException e) {
                    SearchLog.w("TopSearchBarController", "error occurred when formatting hint display duration, %s", e);
                }
            }
            searchBarHintItemArr[i] = new SearchBarHintItem(getString(suggestionCursor, "hint_text"), getString(suggestionCursor, "query_text"), duration);
        }
        return searchBarHintItemArr;
    }

    private static String getString(SuggestionCursor suggestionCursor, String columnName) {
        int index = suggestionCursor.getColumnIndex(columnName);
        if (index >= 0) {
            return suggestionCursor.getString(index);
        }
        return null;
    }
}
