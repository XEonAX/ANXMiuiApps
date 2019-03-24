package com.miui.internal.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuBuilder.Callback;
import com.miui.internal.widget.ActionModeView;
import java.lang.ref.WeakReference;
import miui.view.ActionModeAnimationListener;

public class ActionModeImpl extends ActionMode implements Callback, ActionModeAnimationListener {
    public static final int TYPE_FLOATING = 1;
    public static final int TYPE_PRIMARY = 0;
    private ActionModeCallback bA;
    protected WeakReference<ActionModeView> mActionModeView;
    protected Context mContext;
    private MenuBuilder mMenu;
    private ActionMode.Callback mp;
    boolean mq = false;

    public interface ActionModeCallback {
        void onActionModeFinish(ActionMode actionMode);
    }

    public ActionModeImpl(Context context, ActionMode.Callback callback) {
        this.mContext = context;
        this.mp = callback;
        this.mMenu = new MenuBuilder(context).setDefaultShowAsAction(1);
        this.mMenu.setCallback(this);
    }

    public void setActionModeCallback(ActionModeCallback actionModeCallback) {
        this.bA = actionModeCallback;
    }

    public void setActionModeView(ActionModeView actionModeView) {
        actionModeView.addAnimationListener(this);
        this.mActionModeView = new WeakReference(actionModeView);
    }

    public boolean dispatchOnCreate() {
        this.mMenu.stopDispatchingItemsChanged();
        try {
            boolean onCreateActionMode = this.mp.onCreateActionMode(this, this.mMenu);
            return onCreateActionMode;
        } finally {
            this.mMenu.startDispatchingItemsChanged();
        }
    }

    public void setTitle(CharSequence charSequence) {
        throw new UnsupportedOperationException("setTitle not supported");
    }

    public void setSubtitle(CharSequence charSequence) {
        throw new UnsupportedOperationException("setSubTitle not supported");
    }

    public void invalidate() {
        this.mMenu.stopDispatchingItemsChanged();
        try {
            this.mp.onPrepareActionMode(this, this.mMenu);
        } finally {
            this.mMenu.startDispatchingItemsChanged();
        }
    }

    public void finish() {
        if (!this.mq) {
            this.mq = true;
            ((ActionModeView) this.mActionModeView.get()).closeMode();
            if (this.bA != null) {
                this.bA.onActionModeFinish(this);
            }
        }
    }

    public Menu getMenu() {
        return this.mMenu;
    }

    public CharSequence getTitle() {
        throw new UnsupportedOperationException("getTitle not supported");
    }

    public void setTitle(int i) {
        throw new UnsupportedOperationException("setTitle not supported");
    }

    public CharSequence getSubtitle() {
        throw new UnsupportedOperationException("getSubtitle not supported");
    }

    public void setSubtitle(int i) {
        throw new UnsupportedOperationException("setSubTitle not supported");
    }

    public View getCustomView() {
        throw new UnsupportedOperationException("getCustomView not supported");
    }

    public void setCustomView(View view) {
        throw new UnsupportedOperationException("setCustomView not supported");
    }

    public MenuInflater getMenuInflater() {
        return new MenuInflater(this.mContext);
    }

    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return this.mp != null && this.mp.onActionItemClicked(this, menuItem);
    }

    public void onMenuModeChange(MenuBuilder menuBuilder) {
        if (this.mp != null) {
            invalidate();
        }
    }

    public void onStart(boolean z) {
    }

    public void onUpdate(boolean z, float f) {
    }

    public void onStop(boolean z) {
        if (!z) {
            this.mp.onDestroyActionMode(this);
            this.mp = null;
        }
    }
}
