package com.miui.internal.view.menu;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;

public class ActionMenuItem implements MenuItem {
    private static final int ENABLED = 16;
    private static final int mC = 1;
    private static final int mD = 2;
    private static final int mE = 4;
    private static final int mF = 8;
    private OnMenuItemClickListener mA;
    private int mB = 16;
    private Context mContext;
    private CharSequence mTitle;
    private final int mr;
    private final int ms;
    private final int mt;
    private final int mu;
    private CharSequence mv;
    private Intent mw;
    private char mx;
    private char my;
    private Drawable mz;

    public ActionMenuItem(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.mContext = context;
        this.mr = i2;
        this.ms = i;
        this.mt = i3;
        this.mu = i4;
        this.mTitle = charSequence;
    }

    public char getAlphabeticShortcut() {
        return this.my;
    }

    public int getGroupId() {
        return this.ms;
    }

    public Drawable getIcon() {
        return this.mz;
    }

    public Intent getIntent() {
        return this.mw;
    }

    public int getItemId() {
        return this.mr;
    }

    public ContextMenuInfo getMenuInfo() {
        return null;
    }

    public char getNumericShortcut() {
        return this.mx;
    }

    public int getOrder() {
        return this.mu;
    }

    public SubMenu getSubMenu() {
        return null;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public CharSequence getTitleCondensed() {
        return this.mv;
    }

    public boolean hasSubMenu() {
        return false;
    }

    public boolean isCheckable() {
        return (this.mB & 1) != 0;
    }

    public boolean isChecked() {
        return (this.mB & 2) != 0;
    }

    public boolean isEnabled() {
        return (this.mB & 16) != 0;
    }

    public boolean isVisible() {
        return (this.mB & 8) == 0;
    }

    public MenuItem setAlphabeticShortcut(char c) {
        this.my = c;
        return this;
    }

    public MenuItem setCheckable(boolean z) {
        this.mB = z | (this.mB & -2);
        return this;
    }

    public ActionMenuItem setExclusiveCheckable(boolean z) {
        this.mB = (z ? 4 : 0) | (this.mB & -5);
        return this;
    }

    public MenuItem setChecked(boolean z) {
        this.mB = (z ? 2 : 0) | (this.mB & -3);
        return this;
    }

    public MenuItem setEnabled(boolean z) {
        this.mB = (z ? 16 : 0) | (this.mB & -17);
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.mz = drawable;
        return this;
    }

    public MenuItem setIcon(int i) {
        this.mz = this.mContext.getResources().getDrawable(i);
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        this.mw = intent;
        return this;
    }

    public MenuItem setNumericShortcut(char c) {
        this.mx = c;
        return this;
    }

    public MenuItem setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mA = onMenuItemClickListener;
        return this;
    }

    public MenuItem setShortcut(char c, char c2) {
        this.mx = c;
        this.my = c2;
        return this;
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        return this;
    }

    public MenuItem setTitle(int i) {
        this.mTitle = this.mContext.getResources().getString(i);
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.mv = charSequence;
        return this;
    }

    public MenuItem setVisible(boolean z) {
        int i = 8;
        int i2 = this.mB & 8;
        if (z) {
            i = 0;
        }
        this.mB = i2 | i;
        return this;
    }

    public boolean invoke() {
        if (this.mA != null && this.mA.onMenuItemClick(this)) {
            return true;
        }
        if (this.mw == null) {
            return false;
        }
        this.mContext.startActivity(this.mw);
        return true;
    }

    public void setShowAsAction(int i) {
    }

    public MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    public View getActionView() {
        return null;
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    public MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    public ActionProvider getSupportActionProvider() {
        return null;
    }

    public MenuItem setSupportActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    public boolean expandActionView() {
        return false;
    }

    public boolean collapseActionView() {
        return false;
    }

    public boolean isActionViewExpanded() {
        return false;
    }

    public MenuItem setOnActionExpandListener(OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setSupportOnActionExpandListener(OnActionExpandListener onActionExpandListener) {
        return this;
    }
}
