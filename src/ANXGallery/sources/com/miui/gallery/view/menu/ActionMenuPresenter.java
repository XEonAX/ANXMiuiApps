package com.miui.gallery.view.menu;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.Button;
import com.miui.gallery.R;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.view.ActionBarPolicy;
import com.miui.gallery.view.menu.MenuBuilder.ItemInvoker;
import com.miui.gallery.view.menu.MenuPresenter.Callback;
import com.miui.gallery.view.menu.MenuView.ItemView;
import java.util.ArrayList;

public class ActionMenuPresenter extends BaseMenuPresenter {
    private final SparseBooleanArray mActionButtonGroups = new SparseBooleanArray();
    private ActionButtonSubMenu mActionButtonPopup;
    private int mActionItemWidthLimit;
    private boolean mExpandedActionViewsExclusive;
    private int mListItemLayoutRes;
    private int mListLayoutRes;
    private OverflowMenu mListOverflowMenu;
    private int mMaxItems;
    private boolean mMaxItemsSet;
    int mOpenSubMenuId;
    private View mOverflowButton;
    private OverflowMenu mOverflowMenu;
    private int mOverflowMenuAttrs = 16843510;
    private MenuItemImpl mOverflowMenuItem;
    final PopupPresenterCallback mPopupPresenterCallback = new PopupPresenterCallback();
    private OpenOverflowRunnable mPostedOpenRunnable;
    private boolean mReserveOverflow;
    private boolean mReserveOverflowSet;
    private View mScrapActionButtonView;
    private boolean mStrictWidthLimit;
    private int mWidthLimit;
    private boolean mWidthLimitSet;

    private class ActionButtonSubMenu extends MenuDialogHelper {
        public ActionButtonSubMenu(SubMenuBuilder subMenu) {
            super(subMenu);
            ActionMenuPresenter.this.setCallback(ActionMenuPresenter.this.mPopupPresenterCallback);
        }

        public void onDismiss(DialogInterface dialog) {
            super.onDismiss(dialog);
            ActionMenuPresenter.this.mActionButtonPopup = null;
            ActionMenuPresenter.this.mOpenSubMenuId = 0;
        }
    }

    private interface OverflowMenu {
        void dismiss(boolean z);

        boolean isShowing();

        boolean tryShow();

        void update(MenuBuilder menuBuilder);
    }

    private class ListOverflowMenu implements OverflowMenu {
        private ListMenuPresenter mListMenuPresenter;

        private ListOverflowMenu() {
        }

        private ListMenuPresenter getListMenuPresenter(MenuBuilder menu) {
            if (this.mListMenuPresenter == null) {
                this.mListMenuPresenter = new ListMenuPresenter(ActionMenuPresenter.this.mContext, ActionMenuPresenter.this.mListLayoutRes, ActionMenuPresenter.this.mListItemLayoutRes);
            }
            menu.addMenuPresenter(this.mListMenuPresenter);
            return this.mListMenuPresenter;
        }

        public View getOverflowMenuView(MenuBuilder menu) {
            return (menu == null || menu.getNonActionItems().size() <= 0) ? null : (View) getListMenuPresenter(menu).getMenuView((ViewGroup) ActionMenuPresenter.this.mMenuView);
        }

        public boolean tryShow() {
            return ((PhoneActionMenuView) ActionMenuPresenter.this.mMenuView).showOverflowMenu();
        }

        public boolean isShowing() {
            return ((PhoneActionMenuView) ActionMenuPresenter.this.mMenuView).isOverflowMenuShowing();
        }

        public void dismiss(boolean withAnimation) {
            ((PhoneActionMenuView) ActionMenuPresenter.this.mMenuView).hideOverflowMenu();
        }

        public void update(MenuBuilder menu) {
            ((PhoneActionMenuView) ActionMenuPresenter.this.mMenuView).setOverflowMenuView(getOverflowMenuView(menu));
        }
    }

    private class OpenOverflowRunnable implements Runnable {
        private OverflowMenu mPopup;

        public OpenOverflowRunnable(OverflowMenu popup) {
            this.mPopup = popup;
        }

        public void run() {
            ActionMenuPresenter.this.mMenu.changeMenuMode();
            View menuView = ActionMenuPresenter.this.mMenuView;
            if (!(menuView == null || menuView.getWindowToken() == null || !this.mPopup.tryShow())) {
                ActionMenuPresenter.this.mOverflowMenu = this.mPopup;
            }
            ActionMenuPresenter.this.mPostedOpenRunnable = null;
        }
    }

    private class OverflowMenuButton extends Button {
        final /* synthetic */ ActionMenuPresenter this$0;

        public OverflowMenuButton(ActionMenuPresenter actionMenuPresenter, Context context) {
            CharSequence charSequence = null;
            this.this$0 = actionMenuPresenter;
            super(context, null, actionMenuPresenter.mOverflowMenuAttrs);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            CharSequence title = actionMenuPresenter.getOverflowMenuItem().getTitle();
            if (getResources().getBoolean(R.bool.bottomMenu_config_withText)) {
                charSequence = title;
            }
            setText(charSequence);
            setContentDescription(title);
        }

        private boolean isVisible() {
            View view = this;
            while (view != null && view.getVisibility() == 0) {
                ViewParent parent = view.getParent();
                view = null;
                if (parent instanceof ViewGroup) {
                    view = (ViewGroup) parent;
                }
            }
            return view == null;
        }

        public boolean performClick() {
            if (!super.performClick() && isVisible()) {
                if (this.this$0.mMenu != null) {
                    this.this$0.mMenu.dispatchMenuItemSelected(this.this$0.mMenu.getRootMenu(), this.this$0.getOverflowMenuItem());
                }
                playSoundEffect(0);
                if (isSelected()) {
                    this.this$0.hideOverflowMenu(true);
                } else {
                    this.this$0.showOverflowMenu();
                }
            }
            return true;
        }
    }

    private class PopupOverflowMenu extends MenuPopupHelper implements OverflowMenu {
        public PopupOverflowMenu(Context context, MenuBuilder menu, View anchorView, boolean overflowOnly) {
            super(context, menu, anchorView, overflowOnly);
            setCallback(ActionMenuPresenter.this.mPopupPresenterCallback);
            setMenuItemLayout(R.layout.overflow_popup_menu_item_layout);
        }

        public void onDismiss() {
            super.onDismiss();
            ActionMenuPresenter.this.mMenu.close();
            ActionMenuPresenter.this.mOverflowMenu = null;
        }

        public void update(MenuBuilder menu) {
        }

        public void dismiss(boolean withAnimation) {
            super.dismiss(withAnimation);
            if (ActionMenuPresenter.this.mOverflowButton != null) {
                ActionMenuPresenter.this.mOverflowButton.setSelected(false);
            }
        }
    }

    private class PopupPresenterCallback implements Callback {
        private PopupPresenterCallback() {
        }

        public boolean onOpenSubMenu(MenuBuilder subMenu) {
            if (subMenu != null) {
                ActionMenuPresenter.this.mOpenSubMenuId = ((SubMenuBuilder) subMenu).getItem().getItemId();
            }
            return false;
        }

        public void onCloseMenu(MenuBuilder menu, boolean allMenusAreClosing) {
            if (menu instanceof SubMenuBuilder) {
                menu.getRootMenu().close(false);
            }
        }
    }

    public ActionMenuPresenter(Context context, int menuLayoutRes, int itemLayoutRes, int listLayoutRes, int listItemLayoutRes) {
        super(context, menuLayoutRes, itemLayoutRes);
        this.mListLayoutRes = listLayoutRes;
        this.mListItemLayoutRes = listItemLayoutRes;
    }

    public void initForMenu(Context context, MenuBuilder menu) {
        super.initForMenu(context, menu);
        Resources res = context.getResources();
        ActionBarPolicy abp = ActionBarPolicy.get(context);
        if (!this.mReserveOverflowSet) {
            this.mReserveOverflow = abp.showsOverflowMenuButton();
        }
        if (!this.mWidthLimitSet) {
            this.mWidthLimit = abp.getEmbeddedMenuWidthLimit();
        }
        if (!this.mMaxItemsSet) {
            this.mMaxItems = abp.getMaxActionButtons();
        }
        int width = this.mWidthLimit;
        if (this.mReserveOverflow) {
            if (this.mOverflowButton == null) {
                this.mOverflowButton = createOverflowMenuButton(this.mSystemContext);
                int spec = MeasureSpec.makeMeasureSpec(0, 0);
                this.mOverflowButton.measure(spec, spec);
            }
            width -= this.mOverflowButton.getMeasuredWidth();
        } else {
            this.mOverflowButton = null;
        }
        this.mActionItemWidthLimit = width;
        this.mScrapActionButtonView = null;
    }

    public void setWidthLimit(int width, boolean strict) {
        this.mWidthLimit = width;
        this.mStrictWidthLimit = strict;
        this.mWidthLimitSet = true;
    }

    public void setExpandedActionViewsExclusive(boolean isExclusive) {
        this.mExpandedActionViewsExclusive = isExclusive;
    }

    public MenuView getMenuView(ViewGroup root) {
        MenuView result = super.getMenuView(root);
        ((ActionMenuView) result).setPresenter(this);
        return result;
    }

    public View getItemView(MenuItemImpl item, View convertView, ViewGroup parent) {
        View actionView = item.getActionView();
        if (actionView == null || item.hasCollapsibleActionView()) {
            if (!(convertView instanceof ActionMenuItemView)) {
                convertView = null;
            }
            actionView = super.getItemView(item, convertView, parent);
        }
        actionView.setVisibility(item.isActionViewExpanded() ? 8 : 0);
        ActionMenuView menuParent = (ActionMenuView) parent;
        LayoutParams lp = actionView.getLayoutParams();
        if (!menuParent.checkLayoutParams(lp)) {
            actionView.setLayoutParams(menuParent.generateLayoutParams(lp));
        }
        return actionView;
    }

    public void bindItemView(MenuItemImpl item, ItemView itemView) {
        itemView.initialize(item, 0);
        itemView.setItemInvoker((ItemInvoker) this.mMenuView);
    }

    public boolean shouldIncludeItem(int childIndex, MenuItemImpl item) {
        return item.isActionButton();
    }

    public void updateMenuView(boolean cleared) {
        super.updateMenuView(cleared);
        if (this.mMenuView != null) {
            ArrayList<MenuItemImpl> nonActionItems = this.mMenu != null ? this.mMenu.getNonActionItems() : null;
            boolean hasOverflow = false;
            if (this.mReserveOverflow && nonActionItems != null) {
                int count = nonActionItems.size();
                hasOverflow = count == 1 ? !((MenuItemImpl) nonActionItems.get(0)).isActionViewExpanded() : count > 0;
            }
            if (hasOverflow) {
                if (this.mOverflowButton == null) {
                    this.mOverflowButton = createOverflowMenuButton(this.mSystemContext);
                } else {
                    this.mOverflowButton.setTranslationY(0.0f);
                }
                ViewGroup parent = (ViewGroup) this.mOverflowButton.getParent();
                if (parent != this.mMenuView) {
                    if (parent != null) {
                        parent.removeView(this.mOverflowButton);
                    }
                    ActionMenuView menuView = this.mMenuView;
                    menuView.addView(this.mOverflowButton, menuView.generateOverflowButtonLayoutParams());
                }
            } else if (this.mOverflowButton != null && this.mOverflowButton.getParent() == this.mMenuView) {
                ((ViewGroup) this.mMenuView).removeView(this.mOverflowButton);
            }
            ((ActionMenuView) this.mMenuView).setOverflowReserved(this.mReserveOverflow);
            if (!BuildUtil.isTablet()) {
                getOverflowMenu().update(this.mMenu);
            }
        }
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenu) {
        if (!subMenu.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder topSubMenu = subMenu;
        while (topSubMenu.getParentMenu() != this.mMenu) {
            topSubMenu = (SubMenuBuilder) topSubMenu.getParentMenu();
        }
        if (findViewForItem(topSubMenu.getItem()) == null) {
            if (this.mOverflowButton == null) {
                return false;
            }
            View anchor = this.mOverflowButton;
        }
        this.mOpenSubMenuId = subMenu.getItem().getItemId();
        this.mActionButtonPopup = new ActionButtonSubMenu(subMenu);
        this.mActionButtonPopup.show(null);
        super.onSubMenuSelected(subMenu);
        return true;
    }

    private View findViewForItem(MenuItem item) {
        ViewGroup parent = this.mMenuView;
        if (parent == null) {
            return null;
        }
        int count = parent.getChildCount();
        for (int i = 0; i < count; i++) {
            View child = parent.getChildAt(i);
            if ((child instanceof ItemView) && ((ItemView) child).getItemData() == item) {
                return child;
            }
        }
        return null;
    }

    public boolean showOverflowMenu() {
        if (!this.mReserveOverflow || isOverflowMenuShowing() || this.mMenu == null || this.mMenuView == null || this.mPostedOpenRunnable != null) {
            return false;
        }
        this.mPostedOpenRunnable = new OpenOverflowRunnable(getOverflowMenu());
        ((View) this.mMenuView).post(this.mPostedOpenRunnable);
        super.onSubMenuSelected(null);
        this.mOverflowButton.setSelected(true);
        return true;
    }

    private OverflowMenu getOverflowMenu() {
        if (BuildUtil.isTablet()) {
            return new PopupOverflowMenu(this.mContext, this.mMenu, this.mOverflowButton, true);
        }
        if (this.mListOverflowMenu == null) {
            this.mListOverflowMenu = new ListOverflowMenu();
        }
        return this.mListOverflowMenu;
    }

    private MenuItemImpl getOverflowMenuItem() {
        if (this.mOverflowMenuItem == null) {
            this.mOverflowMenuItem = new MenuItemImpl(this.mMenu, 0, R.id.more, 0, 0, this.mContext.getString(R.string.more), 0);
        }
        return this.mOverflowMenuItem;
    }

    public boolean hideOverflowMenu(boolean withAnimation) {
        if (this.mPostedOpenRunnable != null && this.mMenuView != null) {
            this.mOverflowButton.setSelected(false);
            ((View) this.mMenuView).removeCallbacks(this.mPostedOpenRunnable);
            this.mPostedOpenRunnable = null;
            return true;
        } else if (this.mOverflowMenu == null) {
            return false;
        } else {
            boolean isShowing = this.mOverflowMenu.isShowing();
            if (isShowing) {
                this.mOverflowButton.setSelected(false);
            }
            this.mOverflowMenu.dismiss(withAnimation);
            return isShowing;
        }
    }

    public boolean dismissPopupMenus(boolean withAnimation) {
        return hideOverflowMenu(withAnimation);
    }

    public boolean isOverflowMenuShowing() {
        return this.mOverflowMenu != null && this.mOverflowMenu.isShowing();
    }

    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    public boolean flagActionItems() {
        ArrayList<MenuItemImpl> visibleItems = this.mMenu.getVisibleItems();
        int itemsSize = visibleItems.size();
        int availableActionItems = this.mMaxItems < itemsSize ? this.mMaxItems - 1 : this.mMaxItems;
        int i = 0;
        while (i < itemsSize && availableActionItems > 0) {
            boolean isActionButton;
            MenuItemImpl item = (MenuItemImpl) visibleItems.get(i);
            if (item.requestsActionButton() || item.requiresActionButton()) {
                isActionButton = true;
            } else {
                isActionButton = false;
            }
            item.setIsActionButton(isActionButton);
            if (isActionButton) {
                availableActionItems--;
            }
            i++;
        }
        while (i < itemsSize) {
            ((MenuItemImpl) visibleItems.get(i)).setIsActionButton(false);
            i++;
        }
        return true;
    }

    public void onCloseMenu(MenuBuilder menu, boolean allMenusAreClosing) {
        dismissPopupMenus(true);
        super.onCloseMenu(menu, allMenusAreClosing);
    }

    protected View createOverflowMenuButton(Context context) {
        return new OverflowMenuButton(this, context);
    }
}
