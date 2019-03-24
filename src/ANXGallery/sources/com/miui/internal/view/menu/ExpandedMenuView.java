package com.miui.internal.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.miui.internal.view.menu.MenuBuilder.ItemInvoker;

public final class ExpandedMenuView extends ListView implements OnItemClickListener, ItemInvoker, MenuView {
    private MenuBuilder mMenu;
    private int ns;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
    }

    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.mMenu.performItemAction(menuItemImpl, 0);
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        invokeItem((MenuItemImpl) getAdapter().getItem(i));
    }

    public int getWindowAnimations() {
        return this.ns;
    }

    public boolean filterLeftoverView(int i) {
        return false;
    }

    public boolean hasBackgroundView() {
        return false;
    }
}
