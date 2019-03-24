package com.miui.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow.OnDismissListener;
import com.miui.internal.R;
import com.miui.internal.view.menu.MenuPresenter.Callback;
import com.miui.internal.view.menu.MenuView.ItemView;
import java.util.ArrayList;
import miui.widget.ListPopupWindow;

public class MenuPopupHelper implements OnKeyListener, OnGlobalLayoutListener, OnItemClickListener, OnDismissListener, MenuPresenter {
    private static final int oM = R.layout.popup_menu_item_layout;
    private Context mContext;
    private LayoutInflater mInflater;
    private MenuBuilder mMenu;
    boolean nM;
    private ListPopupWindow oN;
    private int oO;
    private View oP;
    private boolean oQ;
    private ViewTreeObserver oR;
    private MenuAdapter oS;
    private ViewGroup oT;
    private int oU;
    private int oV;
    private Callback ou;

    private class MenuAdapter extends BaseAdapter {
        private int nS = -1;
        private MenuBuilder oW;

        public MenuAdapter(MenuBuilder menuBuilder) {
            this.oW = menuBuilder;
            aQ();
        }

        public int getCount() {
            ArrayList nonActionItems = MenuPopupHelper.this.oQ ? this.oW.getNonActionItems() : this.oW.getVisibleItems();
            if (this.nS < 0) {
                return nonActionItems.size();
            }
            return nonActionItems.size() - 1;
        }

        /* renamed from: k */
        public MenuItemImpl getItem(int i) {
            ArrayList nonActionItems = MenuPopupHelper.this.oQ ? this.oW.getNonActionItems() : this.oW.getVisibleItems();
            if (this.nS >= 0 && i >= this.nS) {
                i++;
            }
            return (MenuItemImpl) nonActionItems.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = MenuPopupHelper.this.mInflater.inflate(MenuPopupHelper.this.oV, viewGroup, false);
            }
            ItemView itemView = (ItemView) view;
            if (MenuPopupHelper.this.nM) {
                ((ListMenuItemView) view).setForceShowIcon(true);
            }
            itemView.initialize(getItem(i), 0);
            return view;
        }

        void aQ() {
            MenuItemImpl expandedItem = MenuPopupHelper.this.mMenu.getExpandedItem();
            if (expandedItem != null) {
                ArrayList nonActionItems = MenuPopupHelper.this.mMenu.getNonActionItems();
                int size = nonActionItems.size();
                for (int i = 0; i < size; i++) {
                    if (((MenuItemImpl) nonActionItems.get(i)) == expandedItem) {
                        this.nS = i;
                        return;
                    }
                }
            }
            this.nS = -1;
        }

        public void notifyDataSetChanged() {
            aQ();
            super.notifyDataSetChanged();
        }
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder) {
        this(context, menuBuilder, null, false);
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view) {
        this(context, menuBuilder, view, false);
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view, boolean z) {
        this.oV = oM;
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
        this.mMenu = menuBuilder;
        this.oQ = z;
        Resources resources = context.getResources();
        this.oO = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.config_prefDialogWidth));
        this.oP = view;
        menuBuilder.addMenuPresenter(this);
    }

    public void setAnchorView(View view) {
        this.oP = view;
    }

    public void setForceShowIcon(boolean z) {
        this.nM = z;
    }

    public void setVerticalOffset(int i) {
        this.oU = i;
    }

    public void setMenuItemLayout(int i) {
        this.oV = i;
    }

    public void show() {
        if (!tryShow()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean tryShow() {
        this.oN = new ListPopupWindow(this.mContext, null, 16843520);
        this.oN.setOnDismissListener(this);
        this.oN.setOnItemClickListener(this);
        this.oN.setVerticalOffset(this.oU);
        this.oS = new MenuAdapter(this.mMenu);
        this.oN.setAdapter(this.oS);
        this.oN.setModal(true);
        View view = this.oP;
        boolean z = false;
        if (view == null) {
            return false;
        }
        if (this.oR == null) {
            z = true;
        }
        this.oR = view.getViewTreeObserver();
        if (z) {
            this.oR.addOnGlobalLayoutListener(this);
        }
        this.oN.setAnchorView(view);
        this.oN.setContentWidth(Math.min(a(this.oS), this.oO));
        this.oN.setInputMethodMode(2);
        this.oN.show();
        this.oN.getListView().setOnKeyListener(this);
        return true;
    }

    public void dismiss(boolean z) {
        if (isShowing()) {
            this.oN.dismiss(z);
        }
    }

    public void onDismiss() {
        this.oN = null;
        this.mMenu.close();
        if (this.oR != null) {
            if (!this.oR.isAlive()) {
                this.oR = this.oP.getViewTreeObserver();
            }
            this.oR.removeOnGlobalLayoutListener(this);
            this.oR = null;
        }
    }

    public boolean isShowing() {
        return this.oN != null && this.oN.isShowing();
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        MenuAdapter menuAdapter = this.oS;
        menuAdapter.oW.performItemAction(menuAdapter.getItem(i), 0);
    }

    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss(false);
        return true;
    }

    private int a(ListAdapter listAdapter) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(this.oO, Integer.MIN_VALUE);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(this.oO, Integer.MIN_VALUE);
        int count = listAdapter.getCount();
        int i = 0;
        View view = null;
        int i2 = 0;
        int i3 = i2;
        while (i < count) {
            int itemViewType = listAdapter.getItemViewType(i);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            if (this.oT == null) {
                this.oT = new FrameLayout(this.mContext);
            }
            view = listAdapter.getView(i, view, this.oT);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i3 = Math.max(i3, view.getMeasuredWidth());
            i++;
        }
        return i3;
    }

    public void onGlobalLayout() {
        if (isShowing()) {
            View view = this.oP;
            if (view == null || !view.isShown()) {
                dismiss(false);
            } else if (isShowing()) {
                this.oN.setContentWidth(Math.min(a(this.oS), this.oO));
                this.oN.show();
            }
        }
    }

    public void initForMenu(Context context, MenuBuilder menuBuilder) {
    }

    public MenuView getMenuView(ViewGroup viewGroup) {
        throw new UnsupportedOperationException("MenuPopupHelpers manage their own views");
    }

    public void updateMenuView(boolean z) {
        if (this.oS != null) {
            this.oS.notifyDataSetChanged();
        }
    }

    public void setCallback(Callback callback) {
        this.ou = callback;
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (subMenuBuilder.hasVisibleItems()) {
            boolean z;
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.mContext, subMenuBuilder, this.oP, false);
            menuPopupHelper.setCallback(this.ou);
            int size = subMenuBuilder.size();
            for (int i = 0; i < size; i++) {
                MenuItem item = subMenuBuilder.getItem(i);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
            }
            z = false;
            menuPopupHelper.setForceShowIcon(z);
            if (menuPopupHelper.tryShow()) {
                if (this.ou != null) {
                    this.ou.onOpenSubMenu(subMenuBuilder);
                }
                return true;
            }
        }
        return false;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder == this.mMenu) {
            dismiss(true);
            if (this.ou != null) {
                this.ou.onCloseMenu(menuBuilder, z);
            }
        }
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
        return 0;
    }

    public Parcelable onSaveInstanceState() {
        return null;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
    }
}
