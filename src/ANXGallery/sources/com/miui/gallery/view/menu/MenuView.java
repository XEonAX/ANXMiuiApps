package com.miui.gallery.view.menu;

import com.miui.gallery.view.menu.MenuBuilder.ItemInvoker;

public interface MenuView {

    public interface ItemView {
        MenuItemImpl getItemData();

        void initialize(MenuItemImpl menuItemImpl, int i);

        boolean prefersCondensedTitle();

        void setItemInvoker(ItemInvoker itemInvoker);
    }

    boolean filterLeftoverView(int i);

    boolean hasBackgroundView();

    void initialize(MenuBuilder menuBuilder);
}
