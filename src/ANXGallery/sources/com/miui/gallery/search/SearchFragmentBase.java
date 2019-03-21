package com.miui.gallery.search;

import com.miui.gallery.ui.BaseFragment;

public abstract class SearchFragmentBase extends BaseFragment {
    private SearchFragmentCallback mCallback;

    public void setQueryText(String queryText, boolean forceSearch, boolean enableShortcut) {
    }

    public void setSearchFragmentCallback(SearchFragmentCallback callback) {
        this.mCallback = callback;
    }

    public SearchFragmentCallback getCallback() {
        return this.mCallback;
    }
}
