package com.miui.internal.view;

import android.content.Context;
import android.view.ActionMode.Callback;
import android.view.View;
import com.miui.internal.widget.ActionBarContextView;
import com.miui.internal.widget.ActionModeView;
import miui.view.ActionModeAnimationListener;
import miui.view.EditActionMode;

public class EditActionModeImpl extends ActionModeImpl implements EditActionMode {
    public EditActionModeImpl(Context context, Callback callback) {
        super(context, callback);
    }

    public void setTitle(CharSequence charSequence) {
        ((ActionBarContextView) this.mActionModeView.get()).setTitle(charSequence);
    }

    public void setTitle(int i) {
        setTitle(this.mContext.getResources().getString(i));
    }

    public CharSequence getTitle() {
        return ((ActionBarContextView) this.mActionModeView.get()).getTitle();
    }

    public void setButton(int i, CharSequence charSequence) {
        ((ActionBarContextView) this.mActionModeView.get()).setButton(i, charSequence);
    }

    public void setButton(int i, int i2) {
        setButton(i, this.mContext.getResources().getString(i2));
    }

    public void setButton(int i, CharSequence charSequence, int i2) {
        ((ActionBarContextView) this.mActionModeView.get()).setButton(i, charSequence, i2);
    }

    public void setButton(int i, int i2, int i3) {
        setButton(i, this.mContext.getResources().getString(i2), i3);
    }

    public void setSubtitle(CharSequence charSequence) {
    }

    public void setSubtitle(int i) {
    }

    public void setCustomView(View view) {
    }

    public void addAnimationListener(ActionModeAnimationListener actionModeAnimationListener) {
        ((ActionModeView) this.mActionModeView.get()).addAnimationListener(actionModeAnimationListener);
    }

    public void removeAnimationListener(ActionModeAnimationListener actionModeAnimationListener) {
        ((ActionModeView) this.mActionModeView.get()).removeAnimationListener(actionModeAnimationListener);
    }
}
