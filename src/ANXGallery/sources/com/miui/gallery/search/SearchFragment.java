package com.miui.gallery.search;

import android.app.FragmentTransaction;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.SharedElementCallback;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.miui.gallery.R;
import com.miui.gallery.search.navigationpage.NavigationFragment;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.search.suggestionpage.SuggestionFragment;
import com.miui.gallery.search.transitions.SearchTransitionHelper;
import com.miui.gallery.search.transitions.SearchTransitionHelper.SearchTransitionListener;
import com.miui.gallery.search.transitions.SearchTransitionHelperImp;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.search.widget.SearchView;
import com.miui.gallery.search.widget.SearchView.SearchViewListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.ui.BaseFragment;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.StringUtils;
import com.miui.gallery.util.ToastUtils;
import java.util.HashMap;
import java.util.Map;

public class SearchFragment extends BaseFragment implements SearchFragmentCallback, SearchTransitionListener {
    private SearchFragmentBase[] mFragments = new SearchFragmentBase[2];
    private SearchView mSearchView;
    private SearchViewListener mSearchViewListener = new SearchViewListener() {
        public void onCancelSearch(View view) {
            SearchFragment.this.mSearchView.selectAll(false);
            SearchFragment.this.mSearchView.hideInputMethod();
            SearchFragment.this.finish();
        }

        public void onFocusChanged(View view, boolean hasFocus) {
        }

        public void onQueryTextSubmit(View view, String query) {
            SearchFragment.this.mSearchView.clearFocus();
            if (TextUtils.isEmpty(SearchFragment.this.getQueryText())) {
                SearchFragment.this.setTopFragment(0);
                SearchFragment.this.mSearchView.showInputMethod();
                ToastUtils.makeText(SearchFragment.this.mActivity, (int) R.string.empty_query_text_msg);
                return;
            }
            SearchFragment.this.setTopFragment(1);
            if (SearchFragment.this.mTopVisibleFragment instanceof SuggestionFragment) {
                SearchFragment.this.mTopVisibleFragment.setQueryText(SearchFragment.this.getQueryText(), true, false);
            }
        }

        public void onQueryTextChanged(View view, String newQueryText) {
            if (TextUtils.isEmpty(SearchFragment.this.getQueryText())) {
                SearchFragment.this.setTopFragment(0);
                SearchFragment.this.mSearchView.showInputMethod();
                return;
            }
            SearchFragment.this.setTopFragment(1);
            SearchFragment.this.mTopVisibleFragment.setQueryText(SearchFragment.this.getQueryText(), false, false);
        }

        public void onStartVoiceAssistant(View view) {
            IntentUtil.startSpeechInput(SearchFragment.this.mActivity, 43, true, SearchConfig.get().getVoiceAssistantSuggestion(SearchFragment.this.mActivity));
            SearchStatUtils.reportEvent("from_search", "start_voice_assistant");
        }
    };
    private SearchFragmentBase mTopVisibleFragment;
    private SearchTransitionHelper mTransitionHelper = new SearchTransitionHelperImp(this, this);
    private boolean mUseTransition;

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.search_fragment, container, false);
        initTopBar();
        return view;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        boolean firstCreation;
        super.onActivityCreated(savedInstanceState);
        Intent intent = this.mActivity.getIntent();
        String queryContent = null;
        String queryHint = null;
        boolean enableShortcut = false;
        if (intent.getData() != null) {
            Uri uri = intent.getData();
            queryContent = uri.getQueryParameter("query");
            queryHint = uri.getQueryParameter("queryHint");
            enableShortcut = uri.getBooleanQueryParameter("enableShortcut", false);
        }
        if (TextUtils.isEmpty(queryContent)) {
            if (!TextUtils.isEmpty(queryHint)) {
                this.mSearchView.setQueryText(queryHint);
            }
            setTopFragment(0);
        } else {
            updateQueryFromIntent(queryContent, enableShortcut);
        }
        this.mSearchView.setVoiceButtonEnabled(IntentUtil.isSpeechInputSupported());
        if (savedInstanceState == null || savedInstanceState.getBoolean("state_first_creation", true)) {
            firstCreation = true;
        } else {
            firstCreation = false;
        }
        boolean usingSpecialAnimation = intent.getBooleanExtra("usingSpecialAnimation", false);
        if (firstCreation && usingSpecialAnimation && SearchTransitionHelperImp.supportSharedElementTransition()) {
            this.mUseTransition = true;
            ViewCompat.setTransitionName(this.mSearchView.findViewById(R.id.search_view_input), getString(R.string.search_transition_element_input));
            ViewCompat.setTransitionName(this.mSearchView.findViewById(R.id.search_btn_cancel), getString(R.string.search_transition_element_icon));
            ViewCompat.setTransitionName(this.mSearchView.findViewById(R.id.search_btn_voice), getString(R.string.search_transition_element_voice));
            this.mTransitionHelper.configTransition();
            ActivityCompat.startPostponedEnterTransition(getActivity());
        } else {
            configSearchView();
        }
        recordQueryArrivedFromIntent(queryContent, getFromFromIntent(intent));
    }

    public void onDestroy() {
        super.onDestroy();
        SearchStatUtils.onCompleteSerial("from_search");
    }

    public void onTransitionStart() {
        this.mSearchView.setSearchViewListener(null);
        this.mSearchView.setCursorVisible(false);
    }

    public void onTransitionEnd() {
        this.mUseTransition = false;
        configSearchView();
    }

    public void onNewIntent(Intent intent) {
        if (intent.getData() != null) {
            Uri uri = intent.getData();
            String queryContent = uri.getQueryParameter("query");
            boolean enableShortcut = uri.getBooleanQueryParameter("enableShortcut", false);
            if (!TextUtils.isEmpty(queryContent)) {
                updateQueryFromIntent(queryContent, enableShortcut);
                recordQueryArrivedFromIntent(queryContent, getFromFromIntent(intent));
            }
        }
    }

    public SharedElementCallback getSharedElementCallback(boolean enter) {
        return this.mTransitionHelper.getSharedElementCallback();
    }

    private void initTopBar() {
        this.mSearchView = new SearchView(this.mActivity);
        this.mActivity.getActionBar().setDisplayShowCustomEnabled(true);
        this.mActivity.getActionBar().setCustomView(this.mSearchView);
        this.mActivity.getActionBar().setDisplayShowTitleEnabled(false);
    }

    private void configSearchView() {
        ThreadManager.getMainHandler().postDelayed(new Runnable() {
            public void run() {
                SearchFragment.this.mSearchView.requestFocus();
                SearchFragment.this.mSearchView.selectAll(true);
                SearchFragment.this.mSearchView.setCursorVisible(true);
                SearchFragment.this.mSearchView.setSearchViewListener(SearchFragment.this.mSearchViewListener);
                SearchFragment.this.mSearchView.showInputMethod();
            }
        }, 100);
    }

    public void onSaveInstanceState(Bundle outState) {
        outState.putBoolean("state_first_creation", false);
    }

    public void onResume() {
        super.onResume();
        if (!this.mUseTransition) {
            ThreadManager.getMainHandler().postDelayed(new Runnable() {
                public void run() {
                    SearchFragment.this.mSearchView.requestFocus();
                    SearchFragment.this.mSearchView.selectAll(true);
                    SearchFragment.this.mSearchView.showInputMethod();
                    SearchFragment.this.mSearchView.setSearchViewListener(SearchFragment.this.mSearchViewListener);
                }
            }, 100);
        }
    }

    public void onPause() {
        super.onPause();
        this.mSearchView.setSearchViewListener(null);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 41 && resultCode == -1 && data != null) {
            String peopleServerID = data.getExtras().getString("server_id_of_album");
            String originName = data.getExtras().getString("origin_album_name");
            String markName = data.getExtras().getString("mark_album_name");
            String newName = data.getExtras().getString("album_name");
            if (TextUtils.isEmpty(newName)) {
                newName = markName;
            }
            String markRelation = data.getExtras().getString("mark_relation");
            String queryText = getQueryText();
            if (!(TextUtils.isEmpty(markName) || TextUtils.isEmpty(newName) || TextUtils.isEmpty(queryText))) {
                String newQueryText = queryText.replaceFirst(markName, newName);
                SearchConfig.get().getSuggestionConfig().addQueryExtra(newName, originName, peopleServerID);
                this.mSearchView.setQueryText(newQueryText);
                this.mSearchViewListener.onQueryTextSubmit(this.mSearchView, newQueryText);
            }
            Map<String, String> param = new HashMap();
            param.put("peopleServerID", StringUtils.nullToEmpty(peopleServerID));
            param.put("originName", StringUtils.nullToEmpty(originName));
            param.put("newName", StringUtils.nullToEmpty(newName));
            param.put("markName", StringUtils.nullToEmpty(markName));
            param.put("queryText", StringUtils.nullToEmpty(queryText));
            param.put("markRelation", StringUtils.nullToEmpty(markRelation));
            SearchStatUtils.reportEvent("from_guide", "suggestion_mark_people", param);
        } else if (requestCode == 43 && resultCode == -1) {
            String query = extractQueryFromVoiceAssistantResult(data);
            if (!TextUtils.isEmpty(query)) {
                updateQueryFromIntent(query, false);
                SearchStatUtils.reportEvent("from_search", "receive_voice_assistant_result", "query", query);
            }
        }
    }

    public boolean onBackPressed() {
        return false;
    }

    private String getQueryText() {
        return this.mSearchView.getQueryText() == null ? null : this.mSearchView.getQueryText().trim();
    }

    private void updateQueryFromIntent(final String queryContent, final boolean enableShortcut) {
        this.mSearchView.setQueryText(queryContent);
        setTopFragment(1);
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                if (SearchFragment.this.mTopVisibleFragment instanceof SuggestionFragment) {
                    SearchFragment.this.mTopVisibleFragment.setQueryText(queryContent, true, enableShortcut);
                }
            }
        });
    }

    private void recordQueryArrivedFromIntent(String queryContent, String from) {
        SearchStatUtils.createNewSerial("from_search");
        HashMap params = new HashMap();
        params.put("queryText", queryContent);
        params.put("srcPage", from);
        SearchStatUtils.cacheEvent(null, "client_enter_search_page", params);
    }

    private String getFromFromIntent(Intent intent) {
        String from = intent.getStringExtra("from");
        if (!TextUtils.isEmpty(from) || intent.getData() == null) {
            return from;
        }
        return intent.getData().getQueryParameter("from");
    }

    private String extractQueryFromVoiceAssistantResult(Intent data) {
        try {
            Bundle nlpResults = data.getBundleExtra("android.speech.extra.RESULTS");
            if (nlpResults == null) {
                return (String) data.getStringArrayListExtra("android.speech.extra.RESULTS").get(0);
            }
            JsonObject jsonObject = (JsonObject) new Gson().fromJson(nlpResults.getString("nlpIntention"), JsonObject.class);
            JsonElement element = jsonObject.get("search_query");
            if (element == null || TextUtils.isEmpty(element.getAsString())) {
                return jsonObject.get("query").getAsString();
            }
            return element.getAsString();
        } catch (Exception e) {
            SearchLog.w("SearchFragment", "Error occurred while extracting query from voice assistant result, %s", e);
            return null;
        }
    }

    public void requestIME(final boolean show) {
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                if (show) {
                    SearchFragment.this.mSearchView.showInputMethod();
                } else {
                    SearchFragment.this.mSearchView.hideInputMethod();
                }
            }
        });
    }

    public String getPageName() {
        return "search";
    }

    private boolean isTopFragment(int fragmentId) {
        return this.mTopVisibleFragment != null && this.mTopVisibleFragment == getFragment(fragmentId);
    }

    private void setTopFragment(int fragmentId) {
        if (!isTopFragment(fragmentId)) {
            FragmentTransaction transaction = getChildFragmentManager().beginTransaction();
            SearchFragmentBase fragment = getFragment(fragmentId);
            if (fragment == null) {
                fragment = ensureFragment(fragmentId);
            }
            transaction.replace(R.id.search_fragments, fragment, String.valueOf(fragmentId));
            transaction.commitAllowingStateLoss();
            this.mTopVisibleFragment = fragment;
        }
    }

    private SearchFragmentBase getFragment(int fragmentId) {
        return this.mFragments[fragmentId];
    }

    private SearchFragmentBase ensureFragment(int fragmentId) {
        switch (fragmentId) {
            case 0:
                if (this.mFragments[fragmentId] == null) {
                    this.mFragments[fragmentId] = new NavigationFragment();
                    break;
                }
                break;
            case 1:
                if (this.mFragments[fragmentId] == null) {
                    this.mFragments[fragmentId] = new SuggestionFragment();
                    break;
                }
                break;
        }
        this.mFragments[fragmentId].setSearchFragmentCallback(this);
        return getFragment(fragmentId);
    }
}
