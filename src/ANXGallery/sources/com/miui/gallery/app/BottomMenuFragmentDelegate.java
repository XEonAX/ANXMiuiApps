package com.miui.gallery.app;

import android.content.Context;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.view.menu.MenuBuilder;
import com.miui.gallery.widget.BottomMenu;
import miui.app.Fragment;

public class BottomMenuFragmentDelegate extends BottomMenuDelegateImpl {
    private int mExtraThemeRes;
    private Fragment mFragment;
    private byte mInvalidateMenuFlags;
    private final Runnable mInvalidateMenuRunnable = new Runnable() {
        public void run() {
            boolean show = true;
            if ((BottomMenuFragmentDelegate.this.mInvalidateMenuFlags & 1) == 1) {
                BottomMenuFragmentDelegate.this.mMenu = null;
            }
            if (BottomMenuFragmentDelegate.this.mMenu == null) {
                BottomMenuFragmentDelegate.this.mMenu = BottomMenuFragmentDelegate.this.createMenu();
                show = BottomMenuFragmentDelegate.this.onCreatePanelMenu(0, BottomMenuFragmentDelegate.this.mMenu);
            }
            if (show) {
                show = BottomMenuFragmentDelegate.this.onPreparePanel(0, null, BottomMenuFragmentDelegate.this.mMenu);
            }
            if (show) {
                BottomMenuFragmentDelegate.this.setMenu(BottomMenuFragmentDelegate.this.mMenu);
            } else {
                BottomMenuFragmentDelegate.this.setMenu(null);
                BottomMenuFragmentDelegate.this.mMenu = null;
            }
            BottomMenuFragmentDelegate.this.mInvalidateMenuFlags = (byte) (BottomMenuFragmentDelegate.this.mInvalidateMenuFlags & -18);
        }
    };
    private MenuBuilder mMenu;
    private Context mThemedContext;

    public BottomMenuFragmentDelegate(Fragment fragment) {
        super(fragment.getActivity());
        this.mFragment = fragment;
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        installBottomMenu();
    }

    final void installBottomMenu() {
        if (!this.mIsBottomMenuInstalled) {
            View root = this.mFragment.getView();
            if (root != null && (root instanceof ViewGroup)) {
                this.mBottomMenu = (BottomMenu) LayoutInflater.from(getThemedContext()).inflate(R.layout.screen_bottom_menu, (ViewGroup) root, false);
                ((ViewGroup) root).addView(this.mBottomMenu);
                this.mBottomMenu.bringToFront();
                updateOptionsMenu(1);
                invalidateBottomMenu();
                this.mIsBottomMenuInstalled = true;
            }
        } else if (this.mBottomMenu.getParent() != null && (this.mBottomMenu.getParent() instanceof ViewGroup)) {
            ViewGroup parent = (ViewGroup) this.mBottomMenu.getParent();
            if (parent.getChildCount() == 0) {
                parent.endViewTransition(this.mBottomMenu);
            }
        }
    }

    public boolean onCreatePanelMenu(int featureId, Menu menu) {
        if (featureId != 0) {
            return false;
        }
        if (((IBottomMenu) this.mFragment).isMenuVisible() && this.mFragment.onCreateOptionsMenu(menu)) {
            return true;
        }
        return false;
    }

    public boolean onMenuItemSelected(int featureId, MenuItem item) {
        if (featureId == 0) {
            return this.mFragment.onOptionsItemSelected(item);
        }
        return false;
    }

    public boolean onPreparePanel(int featureId, View view, Menu menu) {
        if (featureId != 0) {
            return false;
        }
        if (((IBottomMenu) this.mFragment).isMenuVisible()) {
            this.mFragment.onPrepareOptionsMenu(menu);
        }
        return true;
    }

    public boolean onMenuItemSelected(MenuBuilder menu, MenuItem item) {
        return onMenuItemSelected(0, item);
    }

    public void invalidateBottomMenu() {
        if ((this.mInvalidateMenuFlags & 16) == 0) {
            this.mInvalidateMenuFlags = (byte) (this.mInvalidateMenuFlags | 16);
            this.mFragment.getActivity().getWindow().getDecorView().post(this.mInvalidateMenuRunnable);
        }
    }

    public void updateOptionsMenu(int flags) {
        this.mInvalidateMenuFlags = (byte) (this.mInvalidateMenuFlags | (flags & 1));
    }

    public void setExtraThemeRes(int extraThemeRes) {
        this.mExtraThemeRes = extraThemeRes;
    }

    public Context getThemedContext() {
        if (this.mThemedContext == null) {
            this.mThemedContext = this.mActivity;
            if (this.mExtraThemeRes != 0) {
                this.mThemedContext = new ContextThemeWrapper(this.mThemedContext, this.mExtraThemeRes);
            }
        }
        return this.mThemedContext;
    }
}
