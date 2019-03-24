package com.miui.internal.view.menu;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.Button;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.ActionBarPolicy;
import com.miui.internal.view.menu.ActionMenuView.ActionMenuChildView;
import com.miui.internal.view.menu.MenuBuilder.ItemInvoker;
import com.miui.internal.view.menu.MenuPresenter.Callback;
import com.miui.internal.view.menu.MenuView.ItemView;
import java.util.ArrayList;

public class ActionMenuPresenter extends BaseMenuPresenter {
    private View mJ;
    private boolean mK;
    private boolean mL;
    private int mM;
    private int mN;
    private int mO;
    private int mP;
    private int mQ;
    private boolean mR;
    private boolean mS;
    private boolean mT;
    private boolean mU;
    private int mV;
    private final SparseBooleanArray mW;
    private View mX;
    private OverflowMenu mY;
    private OverflowMenu mZ;
    private MenuItemImpl na;
    private ActionButtonSubMenu nb;
    private OpenOverflowRunnable nc;
    final PopupPresenterCallback nd;
    int ne;

    private class ActionButtonSubMenu extends MenuDialogHelper {
        public ActionButtonSubMenu(SubMenuBuilder subMenuBuilder) {
            super(subMenuBuilder);
            ActionMenuPresenter.this.setCallback(ActionMenuPresenter.this.nd);
        }

        public void onDismiss(DialogInterface dialogInterface) {
            super.onDismiss(dialogInterface);
            ActionMenuPresenter.this.nb = null;
            ActionMenuPresenter.this.ne = 0;
        }
    }

    private interface OverflowMenu {
        void dismiss(boolean z);

        void e(MenuBuilder menuBuilder);

        boolean isShowing();

        boolean tryShow();
    }

    private class ListOverflowMenu implements OverflowMenu {
        private ListMenuPresenter ng;

        private ListOverflowMenu() {
        }

        private ListMenuPresenter c(MenuBuilder menuBuilder) {
            if (this.ng == null) {
                this.ng = new ListMenuPresenter(ActionMenuPresenter.this.mContext, ActionMenuPresenter.this.mQ, ActionMenuPresenter.this.mP);
            }
            menuBuilder.addMenuPresenter(this.ng);
            return this.ng;
        }

        public View d(MenuBuilder menuBuilder) {
            return (menuBuilder == null || menuBuilder.getNonActionItems().size() <= 0) ? null : (View) c(menuBuilder).getMenuView((ViewGroup) ActionMenuPresenter.this.mMenuView);
        }

        public boolean tryShow() {
            return ((PhoneActionMenuView) ActionMenuPresenter.this.mMenuView).showOverflowMenu();
        }

        public boolean isShowing() {
            return ((PhoneActionMenuView) ActionMenuPresenter.this.mMenuView).isOverflowMenuShowing();
        }

        public void dismiss(boolean z) {
            ((PhoneActionMenuView) ActionMenuPresenter.this.mMenuView).hideOverflowMenu();
        }

        public void e(MenuBuilder menuBuilder) {
            ((PhoneActionMenuView) ActionMenuPresenter.this.mMenuView).setOverflowMenuView(d(menuBuilder));
        }
    }

    private class OpenOverflowRunnable implements Runnable {
        private OverflowMenu nh;

        public OpenOverflowRunnable(OverflowMenu overflowMenu) {
            this.nh = overflowMenu;
        }

        public void run() {
            ActionMenuPresenter.this.mMenu.changeMenuMode();
            View view = (View) ActionMenuPresenter.this.mMenuView;
            if (!(view == null || view.getWindowToken() == null || !this.nh.tryShow())) {
                ActionMenuPresenter.this.mY = this.nh;
            }
            ActionMenuPresenter.this.nc = null;
        }
    }

    private class OverflowMenuButton extends Button implements ActionMenuChildView {
        public OverflowMenuButton(Context context) {
            super(context, null, ActionMenuPresenter.this.mV);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
        }

        private boolean isVisible() {
            View view = this;
            while (view != null && view.getVisibility() == 0) {
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    view = (ViewGroup) parent;
                } else {
                    view = null;
                }
            }
            return view == null;
        }

        public boolean performClick() {
            if (super.performClick() || !isVisible()) {
                return true;
            }
            if (ActionMenuPresenter.this.mMenu != null) {
                ActionMenuPresenter.this.mMenu.dispatchMenuItemSelected(ActionMenuPresenter.this.mMenu.getRootMenu(), ActionMenuPresenter.this.aK());
            }
            playSoundEffect(0);
            if (isSelected()) {
                ActionMenuPresenter.this.hideOverflowMenu(true);
            } else {
                ActionMenuPresenter.this.showOverflowMenu();
            }
            return true;
        }

        public boolean needsDividerBefore() {
            return false;
        }

        public boolean needsDividerAfter() {
            return false;
        }
    }

    private class PopupOverflowMenu extends MenuPopupHelper implements OverflowMenu {
        public PopupOverflowMenu(Context context, MenuBuilder menuBuilder, View view, boolean z) {
            super(context, menuBuilder, view, z);
            setCallback(ActionMenuPresenter.this.nd);
            setMenuItemLayout(R.layout.overflow_popup_menu_item_layout);
        }

        public void onDismiss() {
            super.onDismiss();
            ActionMenuPresenter.this.mMenu.close();
            ActionMenuPresenter.this.mY = null;
        }

        public void e(MenuBuilder menuBuilder) {
        }

        public void dismiss(boolean z) {
            super.dismiss(z);
            if (ActionMenuPresenter.this.mJ != null) {
                ActionMenuPresenter.this.mJ.setSelected(false);
            }
        }
    }

    private class PopupPresenterCallback implements Callback {
        private PopupPresenterCallback() {
        }

        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == null) {
                return false;
            }
            ActionMenuPresenter.this.ne = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
            return false;
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder instanceof SubMenuBuilder) {
                menuBuilder.getRootMenu().j(false);
            }
        }
    }

    private static class SavedState implements Parcelable {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: j */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public int ni;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.ni = parcel.readInt();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.ni);
        }
    }

    public ActionMenuPresenter(Context context, int i, int i2) {
        this(context, i, i2, 0, 0);
    }

    public ActionMenuPresenter(Context context, int i, int i2, int i3, int i4) {
        super(context, i, i2);
        this.mV = 16843510;
        this.mW = new SparseBooleanArray();
        this.nd = new PopupPresenterCallback();
        this.mQ = i3;
        this.mP = i4;
    }

    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        super.initForMenu(context, menuBuilder);
        context.getResources();
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        if (!this.mL) {
            this.mK = actionBarPolicy.showsOverflowMenuButton();
        }
        if (!this.mT) {
            this.mM = actionBarPolicy.getEmbeddedMenuWidthLimit();
        }
        if (!this.mR) {
            this.mO = actionBarPolicy.getMaxActionButtons();
        }
        int i = this.mM;
        if (this.mK) {
            if (this.mJ == null) {
                this.mJ = createOverflowMenuButton(this.mSystemContext);
                int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
                this.mJ.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.mJ.getMeasuredWidth();
        } else {
            this.mJ = null;
        }
        this.mN = i;
        this.mX = null;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.mR) {
            this.mO = this.mContext.getResources().getInteger(R.integer.abc_max_action_buttons);
        }
        if (this.mMenu != null) {
            this.mMenu.k(true);
        }
    }

    public void setWidthLimit(int i, boolean z) {
        this.mM = i;
        this.mS = z;
        this.mT = true;
    }

    public void setReserveOverflow(boolean z) {
        this.mK = z;
        this.mL = true;
    }

    public void setItemLimit(int i) {
        this.mO = i;
        this.mR = true;
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.mU = z;
    }

    public void setActionEditMode(boolean z) {
        if (z) {
            this.mV = R.attr.actionModeOverflowButtonStyle;
        }
    }

    public MenuView getMenuView(ViewGroup viewGroup) {
        MenuView menuView = super.getMenuView(viewGroup);
        ((ActionMenuView) menuView).setPresenter(this);
        return menuView;
    }

    public View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.hasCollapsibleActionView()) {
            if (!(view instanceof ActionMenuItemView)) {
                view = null;
            }
            actionView = super.getItemView(menuItemImpl, view, viewGroup);
        }
        actionView.setVisibility(menuItemImpl.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    public void bindItemView(MenuItemImpl menuItemImpl, ItemView itemView) {
        itemView.initialize(menuItemImpl, 0);
        itemView.setItemInvoker((ItemInvoker) this.mMenuView);
    }

    public boolean shouldIncludeItem(int i, MenuItemImpl menuItemImpl) {
        return menuItemImpl.isActionButton();
    }

    public void updateMenuView(boolean z) {
        super.updateMenuView(z);
        if (this.mMenuView != null) {
            ArrayList nonActionItems = this.mMenu != null ? this.mMenu.getNonActionItems() : null;
            int i = 0;
            if (this.mK && nonActionItems != null) {
                int size = nonActionItems.size();
                if (size == 1) {
                    i = ((MenuItemImpl) nonActionItems.get(0)).isActionViewExpanded() ^ 1;
                } else if (size > 0) {
                    i = 1;
                }
            }
            if (i != 0) {
                if (this.mJ == null) {
                    this.mJ = createOverflowMenuButton(this.mSystemContext);
                } else {
                    this.mJ.setTranslationY(0.0f);
                }
                ViewGroup viewGroup = (ViewGroup) this.mJ.getParent();
                if (viewGroup != this.mMenuView) {
                    if (viewGroup != null) {
                        viewGroup.removeView(this.mJ);
                    }
                    ActionMenuView actionMenuView = (ActionMenuView) this.mMenuView;
                    actionMenuView.addView(this.mJ, actionMenuView.generateOverflowButtonLayoutParams());
                }
            } else if (this.mJ != null && this.mJ.getParent() == this.mMenuView) {
                ((ViewGroup) this.mMenuView).removeView(this.mJ);
            }
            ((ActionMenuView) this.mMenuView).setOverflowReserved(this.mK);
            if (!DeviceHelper.IS_TABLET) {
                aJ().e(this.mMenu);
            }
        }
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        while (subMenuBuilder2.getParentMenu() != this.mMenu) {
            subMenuBuilder2 = (SubMenuBuilder) subMenuBuilder2.getParentMenu();
        }
        if (a(subMenuBuilder2.getItem()) == null) {
            if (this.mJ == null) {
                return false;
            }
            View view = this.mJ;
        }
        this.ne = subMenuBuilder.getItem().getItemId();
        this.nb = new ActionButtonSubMenu(subMenuBuilder);
        this.nb.show(null);
        super.onSubMenuSelected(subMenuBuilder);
        return true;
    }

    private View a(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof ItemView) && ((ItemView) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public boolean showOverflowMenu() {
        if (!this.mK || isOverflowMenuShowing() || this.mMenu == null || this.mMenuView == null || this.nc != null) {
            return false;
        }
        this.nc = new OpenOverflowRunnable(aJ());
        ((View) this.mMenuView).post(this.nc);
        super.onSubMenuSelected(null);
        this.mJ.setSelected(true);
        return true;
    }

    private OverflowMenu aJ() {
        if (DeviceHelper.IS_TABLET) {
            return new PopupOverflowMenu(this.mContext, this.mMenu, this.mJ, true);
        }
        if (this.mZ == null) {
            this.mZ = new ListOverflowMenu();
        }
        return this.mZ;
    }

    private MenuItemImpl aK() {
        if (this.na == null) {
            this.na = new MenuItemImpl(this.mMenu, 0, R.id.more, 0, 0, this.mContext.getString(R.string.more), 0);
        }
        return this.na;
    }

    public boolean hideOverflowMenu(boolean z) {
        if (this.nc != null && this.mMenuView != null) {
            this.mJ.setSelected(false);
            ((View) this.mMenuView).removeCallbacks(this.nc);
            this.nc = null;
            return true;
        } else if (this.mY == null) {
            return false;
        } else {
            boolean isShowing = this.mY.isShowing();
            if (isShowing) {
                this.mJ.setSelected(false);
            }
            this.mY.dismiss(z);
            return isShowing;
        }
    }

    public boolean dismissPopupMenus(boolean z) {
        return hideOverflowMenu(z);
    }

    public boolean hideSubMenus() {
        if (this.nb == null) {
            return false;
        }
        this.nb.dismiss();
        return true;
    }

    public boolean isOverflowMenuShowing() {
        return this.mY != null && this.mY.isShowing();
    }

    public boolean isOverflowReserved() {
        return this.mK;
    }

    public boolean flagActionItems() {
        ArrayList visibleItems = this.mMenu.getVisibleItems();
        int size = visibleItems.size();
        int i = this.mO < size ? this.mO - 1 : this.mO;
        int i2 = 0;
        while (i2 < size && i > 0) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) visibleItems.get(i2);
            boolean z = menuItemImpl.requestsActionButton() || menuItemImpl.requiresActionButton();
            menuItemImpl.setIsActionButton(z);
            if (z) {
                i--;
            }
            i2++;
        }
        while (i2 < size) {
            ((MenuItemImpl) visibleItems.get(i2)).setIsActionButton(false);
            i2++;
        }
        return true;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        dismissPopupMenus(true);
        super.onCloseMenu(menuBuilder, z);
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState();
        savedState.ni = this.ne;
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        if (savedState.ni > 0) {
            MenuItem findItem = this.mMenu.findItem(savedState.ni);
            if (findItem != null) {
                onSubMenuSelected((SubMenuBuilder) findItem.getSubMenu());
            }
        }
    }

    public void onSubUiVisibilityChanged(boolean z) {
        if (z) {
            super.onSubMenuSelected(null);
        } else {
            this.mMenu.j(false);
        }
    }

    protected View createOverflowMenuButton(Context context) {
        return new OverflowMenuButton(context);
    }
}
