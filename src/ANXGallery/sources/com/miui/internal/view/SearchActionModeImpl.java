package com.miui.internal.view;

import android.content.Context;
import android.view.ActionMode.Callback;
import android.view.View;
import android.widget.EditText;
import com.miui.internal.widget.ActionModeView;
import com.miui.internal.widget.SearchActionModeView;
import miui.view.ActionModeAnimationListener;
import miui.view.SearchActionMode;

public class SearchActionModeImpl extends ActionModeImpl implements SearchActionMode {
    public SearchActionModeImpl(Context context, Callback callback) {
        super(context, callback);
    }

    public void setAnchorView(View view) {
        ((SearchActionModeView) this.mActionModeView.get()).setAnchorView(view);
    }

    public void setAnimateView(View view) {
        ((SearchActionModeView) this.mActionModeView.get()).setAnimateView(view);
    }

    public void setResultView(View view) {
        ((SearchActionModeView) this.mActionModeView.get()).setResultView(view);
    }

    public EditText getSearchInput() {
        return ((SearchActionModeView) this.mActionModeView.get()).getSearchInput();
    }

    public void addAnimationListener(ActionModeAnimationListener actionModeAnimationListener) {
        ((ActionModeView) this.mActionModeView.get()).addAnimationListener(actionModeAnimationListener);
    }

    public void removeAnimationListener(ActionModeAnimationListener actionModeAnimationListener) {
        ((ActionModeView) this.mActionModeView.get()).removeAnimationListener(actionModeAnimationListener);
    }
}
