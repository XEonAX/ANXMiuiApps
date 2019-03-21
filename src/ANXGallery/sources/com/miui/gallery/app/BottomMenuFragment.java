package com.miui.gallery.app;

import android.os.Bundle;
import android.view.View;
import miui.app.ActionBar;
import miui.app.Fragment;

public abstract class BottomMenuFragment extends Fragment implements IBottomMenu {
    private BottomMenuFragmentDelegate mDelegate;
    private boolean mHasMenu = true;
    private boolean mMenuVisible = true;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        super.setHasOptionsMenu(false);
        super.setMenuVisibility(false);
        this.mDelegate = new BottomMenuFragmentDelegate(this);
        this.mDelegate.onCreate(savedInstanceState);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mDelegate.onViewCreated(view, savedInstanceState);
    }

    public ActionBar getActionBar() {
        return this.mDelegate.wrapActionBar(super.getActionBar());
    }

    public void setHasBottomMenu(boolean hasMenu) {
        if (this.mHasMenu != hasMenu) {
            this.mHasMenu = hasMenu;
            if (this.mHasMenu && this.mDelegate != null && !isHidden() && isAdded()) {
                this.mDelegate.invalidateBottomMenu();
            }
        }
    }

    public void setHasOptionsMenu(boolean hasMenu) {
        setHasBottomMenu(hasMenu);
    }

    public void setMenuVisibility(boolean menuVisible) {
        if (this.mMenuVisible != menuVisible) {
            this.mMenuVisible = menuVisible;
            if (!isHidden() && isAdded() && this.mDelegate != null) {
                this.mDelegate.invalidateBottomMenu();
            }
        }
    }

    public void invalidateOptionsMenu() {
        super.invalidateOptionsMenu();
        if (this.mDelegate != null) {
            this.mDelegate.updateOptionsMenu(1);
            if (!isHidden() && this.mHasMenu && this.mMenuVisible && isAdded()) {
                this.mDelegate.invalidateBottomMenu();
            }
        }
    }

    public void setThemeRes(int res) {
        super.setThemeRes(res);
        this.mDelegate.setExtraThemeRes(res);
    }

    public boolean isMenuVisible() {
        return this.mHasMenu && this.mMenuVisible && !isHidden() && isAdded();
    }

    public int getMenuCollapsedHeight() {
        return this.mDelegate.getMenuCollapsedHeight();
    }

    public void showBottomMenu() {
        if (this.mDelegate != null) {
            this.mDelegate.setVisible(true);
        }
    }

    public void hideBottomMenu() {
        if (this.mDelegate != null) {
            this.mDelegate.setVisible(false);
        }
    }
}
