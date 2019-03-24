package com.miui.internal.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.miui.internal.view.menu.MenuBuilder.Callback;

public class SubMenuBuilder extends MenuBuilder implements SubMenu {
    private MenuBuilder pv;
    private MenuItemImpl pw;

    public SubMenuBuilder(Context context, MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        super(context);
        this.pv = menuBuilder;
        this.pw = menuItemImpl;
    }

    public void setQwertyMode(boolean z) {
        this.pv.setQwertyMode(z);
    }

    public boolean isQwertyMode() {
        return this.pv.isQwertyMode();
    }

    public void setShortcutsVisible(boolean z) {
        this.pv.setShortcutsVisible(z);
    }

    public boolean isShortcutsVisible() {
        return this.pv.isShortcutsVisible();
    }

    public Menu getParentMenu() {
        return this.pv;
    }

    public MenuItem getItem() {
        return this.pw;
    }

    public void setCallback(Callback callback) {
        this.pv.setCallback(callback);
    }

    public MenuBuilder getRootMenu() {
        return this.pv;
    }

    public boolean dispatchMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return super.dispatchMenuItemSelected(menuBuilder, menuItem) || this.pv.dispatchMenuItemSelected(menuBuilder, menuItem);
    }

    public SubMenu setIcon(Drawable drawable) {
        this.pw.setIcon(drawable);
        return this;
    }

    public SubMenu setIcon(int i) {
        this.pw.setIcon(i);
        return this;
    }

    public SubMenu setHeaderIcon(Drawable drawable) {
        super.setHeaderIconInt(drawable);
        return this;
    }

    public SubMenu setHeaderIcon(int i) {
        super.setHeaderIconInt(getContext().getResources().getDrawable(i));
        return this;
    }

    public SubMenu setHeaderTitle(CharSequence charSequence) {
        super.setHeaderTitleInt(charSequence);
        return this;
    }

    public SubMenu setHeaderTitle(int i) {
        super.setHeaderTitleInt(getContext().getResources().getString(i));
        return this;
    }

    public SubMenu setHeaderView(View view) {
        super.setHeaderViewInt(view);
        return this;
    }

    public void clearHeader() {
    }

    public boolean expandItemActionView(MenuItemImpl menuItemImpl) {
        return this.pv.expandItemActionView(menuItemImpl);
    }

    public boolean collapseItemActionView(MenuItemImpl menuItemImpl) {
        return this.pv.collapseItemActionView(menuItemImpl);
    }

    public String getActionViewStatesKey() {
        int itemId = this.pw != null ? this.pw.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.getActionViewStatesKey());
        stringBuilder.append(":");
        stringBuilder.append(itemId);
        return stringBuilder.toString();
    }
}
