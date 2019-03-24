package com.miui.internal.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.internal.view.menu.MenuPresenter.Callback;
import com.miui.internal.view.menu.MenuView.ItemView;
import java.util.Iterator;

public abstract class BaseMenuPresenter implements MenuPresenter {
    protected Context mContext;
    protected LayoutInflater mInflater;
    protected MenuBuilder mMenu;
    protected MenuView mMenuView;
    protected Context mSystemContext;
    protected LayoutInflater mSystemInflater;
    private int mr;
    private Callback np;
    private int nq;
    private int nr;

    public abstract void bindItemView(MenuItemImpl menuItemImpl, ItemView itemView);

    public BaseMenuPresenter(Context context, int i, int i2) {
        this.mSystemContext = context;
        this.mSystemInflater = LayoutInflater.from(context);
        this.nq = i;
        this.nr = i2;
    }

    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        this.mContext = context;
        this.mInflater = LayoutInflater.from(this.mContext);
        this.mMenu = menuBuilder;
    }

    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.mMenuView == null) {
            this.mMenuView = (MenuView) this.mSystemInflater.inflate(this.nq, viewGroup, false);
            this.mMenuView.initialize(this.mMenu);
            updateMenuView(true);
        }
        return this.mMenuView;
    }

    public void updateMenuView(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        if (viewGroup != null) {
            int i = this.mMenuView.hasBackgroundView() ? 1 : false;
            if (this.mMenu != null) {
                this.mMenu.flagActionItems();
                Iterator it = this.mMenu.getVisibleItems().iterator();
                while (it.hasNext()) {
                    MenuItemImpl menuItemImpl = (MenuItemImpl) it.next();
                    if (shouldIncludeItem(i, menuItemImpl)) {
                        View childAt = viewGroup.getChildAt(i);
                        MenuItemImpl itemData = childAt instanceof ItemView ? ((ItemView) childAt).getItemData() : null;
                        View itemView = getItemView(menuItemImpl, childAt, viewGroup);
                        if (menuItemImpl != itemData) {
                            itemView.setPressed(false);
                        }
                        if (itemView != childAt) {
                            addItemView(itemView, i);
                        }
                        i++;
                    }
                }
            }
            while (i < viewGroup.getChildCount()) {
                if (!this.mMenuView.filterLeftoverView(i)) {
                    i++;
                }
            }
        }
    }

    protected void addItemView(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.mMenuView).addView(view, i);
    }

    public void setCallback(Callback callback) {
        this.np = callback;
    }

    public ItemView createItemView(ViewGroup viewGroup) {
        return (ItemView) this.mSystemInflater.inflate(this.nr, viewGroup, false);
    }

    public View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        ItemView itemView;
        if (view instanceof ItemView) {
            itemView = (ItemView) view;
        } else {
            itemView = createItemView(viewGroup);
        }
        bindItemView(menuItemImpl, itemView);
        return (View) itemView;
    }

    public boolean shouldIncludeItem(int i, MenuItemImpl menuItemImpl) {
        return true;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (this.np != null) {
            this.np.onCloseMenu(menuBuilder, z);
        }
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return this.np != null && this.np.onOpenSubMenu(subMenuBuilder);
    }

    public boolean flagActionItems() {
        return false;
    }

    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public int getId() {
        return this.mr;
    }

    public void setId(int i) {
        this.mr = i;
    }
}
