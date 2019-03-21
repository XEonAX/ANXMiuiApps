package com.miui.gallery.widget.menu;

import android.content.Context;
import java.util.ArrayList;

public class ImmersionMenu {
    private Context mContext;
    private ArrayList<ImmersionMenuItem> mItems = new ArrayList();

    public ImmersionMenu(Context context) {
        this.mContext = context;
    }

    public ImmersionMenuItem add(int id, CharSequence title) {
        return add(id, title, -1);
    }

    public ImmersionMenuItem add(int id, CharSequence title, int pos) {
        ImmersionMenuItem menuItem = new ImmersionMenuItem(this.mContext, id, title);
        if (pos < 0 || pos > this.mItems.size()) {
            this.mItems.add(menuItem);
        } else {
            this.mItems.add(pos, menuItem);
        }
        return menuItem;
    }

    public int size() {
        return this.mItems.size();
    }

    public ImmersionMenuItem getItem(int index) {
        return (ImmersionMenuItem) this.mItems.get(index);
    }

    public ImmersionMenuItem findItem(int id) {
        int size = size();
        for (int i = 0; i < size; i++) {
            ImmersionMenuItem item = (ImmersionMenuItem) this.mItems.get(i);
            if (item.getItemId() == id) {
                return item;
            }
            if (item.hasSubMenu()) {
                ImmersionMenuItem possibleItem = item.getSubMenu().findItem(id);
                if (possibleItem != null) {
                    return possibleItem;
                }
            }
        }
        return null;
    }
}
