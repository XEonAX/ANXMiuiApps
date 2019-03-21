package com.miui.gallery.view;

import android.app.ActionBar.LayoutParams;
import android.app.ActionBar.OnMenuVisibilityListener;
import android.app.ActionBar.OnNavigationListener;
import android.app.ActionBar.Tab;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.SpinnerAdapter;
import com.miui.gallery.util.BaseMiscUtil;
import miui.app.ActionBar;
import miui.app.ActionBar.FragmentViewPagerChangeListener;

public class ActionBarWrapper extends ActionBar {
    protected ActionBar mWrapped;

    public ActionBarWrapper(ActionBar wrapped) {
        this.mWrapped = wrapped;
    }

    public ActionBar getWrapped() {
        return this.mWrapped;
    }

    public void showSplitActionBar(boolean show, boolean animate) {
        this.mWrapped.showSplitActionBar(show, animate);
    }

    public void showActionBarShadow(boolean show) {
        this.mWrapped.showActionBarShadow(show);
    }

    public void setTabsMode(boolean embedded) {
        this.mWrapped.setTabsMode(embedded);
    }

    public void setTabBadgeVisibility(int position, boolean isVisible) {
        this.mWrapped.setTabBadgeVisibility(position, isVisible);
    }

    public boolean isFragmentViewPagerMode() {
        return this.mWrapped.isFragmentViewPagerMode();
    }

    public void setFragmentViewPagerMode(Context context, FragmentManager fragmentManager) {
        this.mWrapped.setFragmentViewPagerMode(context, fragmentManager);
    }

    public void setFragmentViewPagerMode(Context context, FragmentManager fragmentManager, boolean allowListAnimation) {
        this.mWrapped.setFragmentViewPagerMode(context, fragmentManager, allowListAnimation);
    }

    public int getFragmentTabCount() {
        return this.mWrapped.getFragmentTabCount();
    }

    public Fragment getFragmentAt(int position) {
        return this.mWrapped.getFragmentAt(position);
    }

    public int addFragmentTab(String tag, Tab tab, Class<? extends Fragment> fragment, Bundle args, boolean hasActionMenu) {
        return this.mWrapped.addFragmentTab(tag, tab, fragment, args, hasActionMenu);
    }

    public int addFragmentTab(String tag, Tab tab, int index, Class<? extends Fragment> fragment, Bundle args, boolean hasActionMenu) {
        return this.mWrapped.addFragmentTab(tag, tab, index, fragment, args, hasActionMenu);
    }

    public void removeFragmentTabAt(int position) {
        this.mWrapped.removeFragmentTabAt(position);
    }

    public void removeFragmentTab(String tag) {
        this.mWrapped.removeFragmentTab(tag);
    }

    public void removeFragmentTab(Tab tab) {
        this.mWrapped.removeFragmentTab(tab);
    }

    public void removeFragmentTab(Fragment fragment) {
        this.mWrapped.removeFragmentTab(fragment);
    }

    public void removeAllFragmentTab() {
        this.mWrapped.removeAllFragmentTab();
    }

    public void addOnFragmentViewPagerChangeListener(FragmentViewPagerChangeListener listener) {
        this.mWrapped.addOnFragmentViewPagerChangeListener(listener);
    }

    public void removeOnFragmentViewPagerChangeListener(FragmentViewPagerChangeListener listener) {
        this.mWrapped.removeOnFragmentViewPagerChangeListener(listener);
    }

    public int getViewPagerOffscreenPageLimit() {
        return this.mWrapped.getViewPagerOffscreenPageLimit();
    }

    public void setViewPagerOffscreenPageLimit(int limit) {
        this.mWrapped.setViewPagerOffscreenPageLimit(limit);
    }

    public void setFragmentActionMenuAt(int position, boolean hasActionMenu) {
        this.mWrapped.setFragmentActionMenuAt(position, hasActionMenu);
    }

    public void setProgressBarVisibility(boolean visible) {
        this.mWrapped.setProgressBarVisibility(visible);
    }

    public void setProgressBarIndeterminateVisibility(boolean visible) {
        this.mWrapped.setProgressBarIndeterminateVisibility(visible);
    }

    public void setProgressBarIndeterminate(boolean indeterminate) {
        this.mWrapped.setProgressBarIndeterminate(indeterminate);
    }

    public void setProgress(int progress) {
        this.mWrapped.setProgress(progress);
    }

    public void setStartView(View startView) {
        this.mWrapped.setStartView(startView);
    }

    public void setEndView(View endView) {
        this.mWrapped.setEndView(endView);
    }

    public void setViewPagerDecor(View view) {
        this.mWrapped.setViewPagerDecor(view);
    }

    public void setCustomView(View view) {
        this.mWrapped.setCustomView(view);
    }

    public void setCustomView(View view, LayoutParams layoutParams) {
        this.mWrapped.setCustomView(view, layoutParams);
    }

    public void setCustomView(int resId) {
        this.mWrapped.setCustomView(resId);
    }

    public void setIcon(int resId) {
        this.mWrapped.setIcon(resId);
    }

    public void setIcon(Drawable icon) {
        this.mWrapped.setIcon(icon);
    }

    public void setLogo(int resId) {
        this.mWrapped.setLogo(resId);
    }

    public void setLogo(Drawable logo) {
        this.mWrapped.setLogo(logo);
    }

    public void setListNavigationCallbacks(SpinnerAdapter adapter, OnNavigationListener callback) {
        this.mWrapped.setListNavigationCallbacks(adapter, callback);
    }

    public void setSelectedNavigationItem(int position) {
        this.mWrapped.setSelectedNavigationItem(position);
    }

    public int getSelectedNavigationIndex() {
        return this.mWrapped.getSelectedNavigationIndex();
    }

    public int getNavigationItemCount() {
        return this.mWrapped.getNavigationItemCount();
    }

    public void setTitle(CharSequence title) {
        this.mWrapped.setTitle(title);
    }

    public void setTitle(int resId) {
        this.mWrapped.setTitle(resId);
    }

    public void setSubtitle(CharSequence subtitle) {
        this.mWrapped.setSubtitle(subtitle);
    }

    public void setSubtitle(int resId) {
        this.mWrapped.setSubtitle(resId);
    }

    public void setDisplayOptions(int options) {
        this.mWrapped.setDisplayOptions(options);
    }

    public void setDisplayOptions(int options, int mask) {
        this.mWrapped.setDisplayOptions(options, mask);
    }

    public void setDisplayUseLogoEnabled(boolean useLogo) {
        this.mWrapped.setDisplayUseLogoEnabled(useLogo);
    }

    public void setDisplayShowHomeEnabled(boolean showHome) {
        this.mWrapped.setDisplayShowHomeEnabled(showHome);
    }

    public void setDisplayHomeAsUpEnabled(boolean showHomeAsUp) {
        this.mWrapped.setDisplayHomeAsUpEnabled(showHomeAsUp);
    }

    public void setDisplayShowTitleEnabled(boolean showTitle) {
        this.mWrapped.setDisplayShowTitleEnabled(showTitle);
    }

    public void setDisplayShowCustomEnabled(boolean showCustom) {
        this.mWrapped.setDisplayShowCustomEnabled(showCustom);
    }

    public void setBackgroundDrawable(Drawable d) {
        this.mWrapped.setBackgroundDrawable(d);
    }

    public View getCustomView() {
        return this.mWrapped.getCustomView();
    }

    public CharSequence getTitle() {
        return this.mWrapped.getTitle();
    }

    public CharSequence getSubtitle() {
        return this.mWrapped.getSubtitle();
    }

    public int getNavigationMode() {
        return this.mWrapped.getNavigationMode();
    }

    public void setNavigationMode(int mode) {
        this.mWrapped.setNavigationMode(mode);
    }

    public int getDisplayOptions() {
        return this.mWrapped.getDisplayOptions();
    }

    public Tab newTab() {
        return this.mWrapped.newTab();
    }

    public void addTab(Tab tab) {
        this.mWrapped.addTab(tab);
    }

    public void addTab(Tab tab, boolean setSelected) {
        this.mWrapped.addTab(tab, setSelected);
    }

    public void addTab(Tab tab, int position) {
        this.mWrapped.addTab(tab, position);
    }

    public void addTab(Tab tab, int position, boolean setSelected) {
        this.mWrapped.addTab(tab, position, setSelected);
    }

    public void removeTab(Tab tab) {
        this.mWrapped.removeTab(tab);
    }

    public void removeTabAt(int position) {
        this.mWrapped.removeTabAt(position);
    }

    public void removeAllTabs() {
        this.mWrapped.removeAllTabs();
    }

    public void selectTab(Tab tab) {
        this.mWrapped.selectTab(tab);
    }

    public Tab getSelectedTab() {
        return this.mWrapped.getSelectedTab();
    }

    public Tab getTabAt(int index) {
        return this.mWrapped.getTabAt(index);
    }

    public int getTabCount() {
        return this.mWrapped.getTabCount();
    }

    public int getHeight() {
        return this.mWrapped.getHeight();
    }

    public void show() {
        this.mWrapped.show();
    }

    public void hide() {
        this.mWrapped.hide();
    }

    public boolean isShowing() {
        return this.mWrapped.isShowing();
    }

    public void addOnMenuVisibilityListener(OnMenuVisibilityListener listener) {
        this.mWrapped.addOnMenuVisibilityListener(listener);
    }

    public void removeOnMenuVisibilityListener(OnMenuVisibilityListener listener) {
        this.mWrapped.removeOnMenuVisibilityListener(listener);
    }

    public void setShowHideAnimationEnabled(boolean enable) {
        BaseMiscUtil.invokeSafely(this.mWrapped, "setShowHideAnimationEnabled", new Class[]{Boolean.TYPE}, Boolean.valueOf(enable));
    }
}
