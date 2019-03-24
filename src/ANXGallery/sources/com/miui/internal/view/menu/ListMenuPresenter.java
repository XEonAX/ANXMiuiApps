package com.miui.internal.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import com.miui.internal.R;
import com.miui.internal.view.menu.MenuPresenter.Callback;
import com.miui.internal.view.menu.MenuView.ItemView;
import java.util.ArrayList;

public class ListMenuPresenter implements OnItemClickListener, MenuPresenter {
    public static final String VIEWS_TAG = "android:menu:list";
    Context mContext;
    LayoutInflater mInflater;
    MenuBuilder mMenu;
    private int mr;
    ExpandedMenuView nN;
    private int nO;
    int nP;
    int nQ;
    MenuAdapter nR;
    private Callback np;
    int nr;

    private class MenuAdapter extends BaseAdapter {
        private int nS = -1;

        public MenuAdapter() {
            aQ();
        }

        public int getCount() {
            int size = ListMenuPresenter.this.mMenu.getNonActionItems().size() - ListMenuPresenter.this.nO;
            if (this.nS < 0) {
                return size;
            }
            return size - 1;
        }

        /* renamed from: k */
        public MenuItemImpl getItem(int i) {
            ArrayList nonActionItems = ListMenuPresenter.this.mMenu.getNonActionItems();
            i += ListMenuPresenter.this.nO;
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
                view = ListMenuPresenter.this.mInflater.inflate(ListMenuPresenter.this.nr, viewGroup, false);
            }
            ((ItemView) view).initialize(getItem(i), 0);
            return view;
        }

        void aQ() {
            MenuItemImpl expandedItem = ListMenuPresenter.this.mMenu.getExpandedItem();
            if (expandedItem != null) {
                ArrayList nonActionItems = ListMenuPresenter.this.mMenu.getNonActionItems();
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

    public ListMenuPresenter(Context context, int i, int i2) {
        this(i, i2, 0);
        this.mContext = context;
        this.mInflater = LayoutInflater.from(this.mContext);
    }

    public ListMenuPresenter(int i, int i2) {
        this(R.layout.expanded_menu_layout, i, i2);
    }

    public ListMenuPresenter(int i, int i2, int i3) {
        this.nr = i2;
        this.nQ = i;
        this.nP = i3;
    }

    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        if (this.nP != 0) {
            this.mContext = new ContextThemeWrapper(context, this.nP);
            this.mInflater = LayoutInflater.from(this.mContext);
        } else if (this.mContext != null) {
            this.mContext = context;
            if (this.mInflater == null) {
                this.mInflater = LayoutInflater.from(this.mContext);
            }
        }
        if (this.mMenu != null) {
            this.mMenu.removeMenuPresenter(this);
        }
        this.mMenu = menuBuilder;
        if (this.nR != null) {
            this.nR.notifyDataSetChanged();
        }
    }

    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.nR == null) {
            this.nR = new MenuAdapter();
        }
        if (this.nR.isEmpty()) {
            return null;
        }
        if (this.nN == null) {
            this.nN = (ExpandedMenuView) this.mInflater.inflate(this.nQ, viewGroup, false);
            this.nN.setAdapter(this.nR);
            this.nN.setOnItemClickListener(this);
        }
        return this.nN;
    }

    public ListAdapter getAdapter() {
        if (this.nR == null) {
            this.nR = new MenuAdapter();
        }
        return this.nR;
    }

    public void updateMenuView(boolean z) {
        if (this.nR != null) {
            this.nR.notifyDataSetChanged();
        }
    }

    public void setCallback(Callback callback) {
        this.np = callback;
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        new MenuDialogHelper(subMenuBuilder).show(null);
        if (this.np != null) {
            this.np.onOpenSubMenu(subMenuBuilder);
        }
        return true;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (this.np != null) {
            this.np.onCloseMenu(menuBuilder, z);
        }
    }

    int aP() {
        return this.nO;
    }

    public void setItemIndexOffset(int i) {
        this.nO = i;
        if (this.nN != null) {
            updateMenuView(false);
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.mMenu.performItemAction(this.nR.getItem(i), 0);
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

    public void saveHierarchyState(Bundle bundle) {
        SparseArray sparseArray = new SparseArray();
        if (this.nN != null) {
            this.nN.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray(VIEWS_TAG, sparseArray);
    }

    public void restoreHierarchyState(Bundle bundle) {
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(VIEWS_TAG);
        if (sparseParcelableArray != null) {
            this.nN.restoreHierarchyState(sparseParcelableArray);
        }
    }

    public void setId(int i) {
        this.mr = i;
    }

    public int getId() {
        return this.mr;
    }

    public Parcelable onSaveInstanceState() {
        if (this.nN == null) {
            return null;
        }
        Parcelable bundle = new Bundle();
        saveHierarchyState(bundle);
        return bundle;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        restoreHierarchyState((Bundle) parcelable);
    }
}
