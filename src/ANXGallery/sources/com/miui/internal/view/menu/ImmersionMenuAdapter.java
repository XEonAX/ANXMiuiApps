package com.miui.internal.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.internal.R;
import java.util.ArrayList;

public class ImmersionMenuAdapter extends BaseAdapter {
    private LayoutInflater mInflater;
    private ArrayList<MenuItem> nt = new ArrayList();

    private static class ViewHolder {
        ImageView nu;
        TextView nv;

        private ViewHolder() {
        }
    }

    ImmersionMenuAdapter(Context context, Menu menu) {
        this.mInflater = LayoutInflater.from(context);
        a(menu, this.nt);
    }

    private void a(Menu menu, ArrayList<MenuItem> arrayList) {
        arrayList.clear();
        if (menu != null) {
            int size = menu.size();
            for (int i = 0; i < size; i++) {
                MenuItem item = menu.getItem(i);
                if (item.isVisible()) {
                    arrayList.add(item);
                }
            }
        }
    }

    public int getCount() {
        return this.nt.size();
    }

    public MenuItem getItem(int i) {
        return (MenuItem) this.nt.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = this.mInflater.inflate(R.layout.immersion_popup_menu_item, viewGroup, false);
            viewHolder = new ViewHolder();
            viewHolder.nu = (ImageView) view.findViewById(16908294);
            viewHolder.nv = (TextView) view.findViewById(16908308);
            view.setTag(viewHolder);
        }
        Object tag = view.getTag();
        if (tag != null) {
            viewHolder = (ViewHolder) tag;
            MenuItem item = getItem(i);
            if (item.getIcon() != null) {
                viewHolder.nu.setImageDrawable(item.getIcon());
                viewHolder.nu.setVisibility(0);
            } else {
                viewHolder.nu.setVisibility(8);
            }
            viewHolder.nv.setText(item.getTitle());
        }
        return view;
    }

    public void update(Menu menu) {
        a(menu, this.nt);
        notifyDataSetChanged();
    }
}
