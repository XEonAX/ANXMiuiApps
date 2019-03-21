package com.miui.gallery.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.miui.gallery.view.ActionBarWrapper;
import com.miui.gallery.view.menu.MenuBuilder;
import com.miui.gallery.view.menu.MenuBuilder.Callback;
import com.miui.gallery.view.menu.MenuPresenter;
import com.miui.gallery.widget.BottomMenu;

public abstract class BottomMenuDelegateImpl implements Callback, MenuPresenter.Callback {
    private ActionBarWrapper mActionBarWrapper;
    final Activity mActivity;
    BottomMenu mBottomMenu;
    protected boolean mIsBottomMenuInstalled;
    protected MenuBuilder mMenu;
    private boolean mShowHideAnimationEnabled = true;

    BottomMenuDelegateImpl(Activity activity) {
        this.mActivity = activity;
    }

    public void onCreate(Bundle savedInstanceState) {
    }

    protected final Context getActionBarThemedContext() {
        Context context = this.mActivity;
        ActionBar ab = this.mActivity.getActionBar();
        if (ab != null) {
            return ab.getThemedContext();
        }
        return context;
    }

    protected void reopenMenu(MenuBuilder menu, boolean toggleMenuMode) {
        if (this.mBottomMenu == null || !this.mBottomMenu.isOverflowReserved()) {
            menu.close();
        } else if (this.mBottomMenu.isOverflowMenuShowing() && toggleMenuMode) {
            this.mBottomMenu.hideOverflowMenu();
        } else if (this.mBottomMenu.getVisibility() == 0) {
            this.mBottomMenu.showOverflowMenu();
        }
    }

    protected void setMenu(MenuBuilder menu) {
        if (menu != this.mMenu) {
            this.mMenu = menu;
            if (this.mIsBottomMenuInstalled && this.mBottomMenu != null) {
                this.mBottomMenu.setMenu(menu, this);
            }
        }
    }

    protected MenuBuilder createMenu() {
        MenuBuilder menu = new MenuBuilder(getActionBarThemedContext());
        menu.setCallback(this);
        return menu;
    }

    public void onCloseMenu(MenuBuilder menu, boolean allMenusAreClosing) {
        this.mActivity.closeOptionsMenu();
    }

    public boolean onOpenSubMenu(MenuBuilder subMenu) {
        return false;
    }

    public void onMenuModeChange(MenuBuilder menu) {
        reopenMenu(menu, true);
    }

    public int getMenuCollapsedHeight() {
        return this.mBottomMenu != null ? this.mBottomMenu.getCollapsedHeight() : -1;
    }

    protected miui.app.ActionBar wrapActionBar(miui.app.ActionBar actionBar) {
        if (actionBar == null) {
            return null;
        }
        if (this.mActionBarWrapper == null || this.mActionBarWrapper.getWrapped() != actionBar) {
            this.mActionBarWrapper = new ActionBarWrapper(actionBar) {
                public void show() {
                    super.show();
                    BottomMenuDelegateImpl.this.onShowActionBar();
                }

                public void hide() {
                    super.hide();
                    BottomMenuDelegateImpl.this.onHideActionBar();
                }

                public void setShowHideAnimationEnabled(boolean enable) {
                    super.setShowHideAnimationEnabled(enable);
                    BottomMenuDelegateImpl.this.onSetShowHideAnimationEnabled(enable);
                }
            };
        }
        return this.mActionBarWrapper;
    }

    private void onShowActionBar() {
        if (this.mBottomMenu != null) {
            this.mBottomMenu.show(this.mShowHideAnimationEnabled);
        }
    }

    private void onHideActionBar() {
        if (this.mBottomMenu != null) {
            this.mBottomMenu.hide(this.mShowHideAnimationEnabled);
        }
    }

    private void onSetShowHideAnimationEnabled(boolean enable) {
        this.mShowHideAnimationEnabled = enable;
    }

    public void setVisible(boolean visible) {
        if (this.mBottomMenu == null) {
            return;
        }
        if (visible) {
            this.mBottomMenu.show(false);
        } else {
            this.mBottomMenu.hide(false);
        }
    }
}
