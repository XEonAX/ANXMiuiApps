package com.miui.gallery.widget.menu;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import java.util.ArrayList;

public class ImmersionMenuAdapter extends BaseAdapter {
    private LayoutInflater mInflater;
    private OnItemCheckChangeListener mOnItemCheckChangeListener;
    private ArrayList<ImmersionMenuItem> mVisibleItems = new ArrayList();

    class TextHolder {
        ImageView iconView;
        TextView informationText;
        View redDotView;
        TextView summaryText;
        TextView textView;

        TextHolder() {
        }
    }

    class CheckableHolder extends TextHolder implements OnCheckedChangeListener {
        CheckBox checkBox;
        ImmersionMenuItem data;

        CheckableHolder() {
            super();
        }

        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (ImmersionMenuAdapter.this.mOnItemCheckChangeListener != null && (this.data.isChecked() ^ isChecked) != 0) {
                ImmersionMenuAdapter.this.mOnItemCheckChangeListener.onItemCheckChanged(this.data, isChecked);
            }
        }
    }

    public interface OnItemCheckChangeListener {
        void onItemCheckChanged(ImmersionMenuItem immersionMenuItem, boolean z);
    }

    ImmersionMenuAdapter(Context context, ImmersionMenu menu) {
        this.mInflater = LayoutInflater.from(context);
        buildVisibleItems(menu, this.mVisibleItems);
    }

    private void buildVisibleItems(ImmersionMenu menu, ArrayList<ImmersionMenuItem> items) {
        items.clear();
        if (menu != null) {
            int N = menu.size();
            for (int i = 0; i < N; i++) {
                ImmersionMenuItem item = menu.getItem(i);
                if (item.isVisible()) {
                    items.add(item);
                }
            }
        }
    }

    public void setOnItemCheckChangeListener(OnItemCheckChangeListener listener) {
        this.mOnItemCheckChangeListener = listener;
    }

    public void toggleCheckableItem(View view) {
        if (view != null) {
            CheckableHolder tag = view.getTag();
            if (tag instanceof CheckableHolder) {
                tag.checkBox.performClick();
            }
        }
    }

    public int getViewTypeCount() {
        return 2;
    }

    public int getItemViewType(int position) {
        return ((ImmersionMenuItem) this.mVisibleItems.get(position)).isCheckable() ? 1 : 0;
    }

    public int getCount() {
        return this.mVisibleItems.size();
    }

    public ImmersionMenuItem getItem(int position) {
        return (ImmersionMenuItem) this.mVisibleItems.get(position);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        TextHolder holder;
        ImmersionMenuItem item;
        int type = getItemViewType(position);
        if (type == 0) {
            if (convertView == null) {
                convertView = this.mInflater.inflate(R.layout.immersion_popup_menu_item, parent, false);
                holder = new TextHolder();
                holder.iconView = (ImageView) convertView.findViewById(R.id.icon);
                holder.textView = (TextView) convertView.findViewById(R.id.text);
                holder.summaryText = (TextView) convertView.findViewById(R.id.summary);
                holder.informationText = (TextView) convertView.findViewById(R.id.information);
                holder.redDotView = convertView.findViewById(R.id.red_dot);
                convertView.setTag(holder);
            }
        } else if (type == 1) {
            CheckableHolder checkHolder;
            if (convertView == null) {
                convertView = this.mInflater.inflate(R.layout.immersion_popup_menu_checkable_item, parent, false);
                holder = new CheckableHolder();
                checkHolder = (CheckableHolder) holder;
                holder.textView = (TextView) convertView.findViewById(R.id.text);
                holder.summaryText = (TextView) convertView.findViewById(R.id.summary);
                checkHolder.checkBox = (CheckBox) convertView.findViewById(R.id.check_box);
                checkHolder.checkBox.setOnCheckedChangeListener(checkHolder);
                convertView.setTag(holder);
            }
            checkHolder = (CheckableHolder) convertView.getTag();
            item = getItem(position);
            checkHolder.data = item;
            checkHolder.checkBox.setChecked(item.isChecked());
        }
        TextHolder tag = convertView.getTag();
        if (tag != null) {
            holder = tag;
            item = getItem(position);
            holder.textView.setText(item.getTitle());
            if (TextUtils.isEmpty(item.getSummary())) {
                holder.summaryText.setVisibility(8);
            } else {
                holder.summaryText.setVisibility(0);
                holder.summaryText.setText(item.getSummary());
            }
            if (holder.iconView != null) {
                if (item.getIcon() != null) {
                    holder.iconView.setVisibility(0);
                    holder.iconView.setImageDrawable(item.getIcon());
                } else {
                    holder.iconView.setVisibility(8);
                }
            }
            if (holder.informationText != null) {
                if (TextUtils.isEmpty(item.getInformation())) {
                    holder.informationText.setVisibility(8);
                } else {
                    holder.informationText.setVisibility(0);
                    holder.informationText.setText(item.getInformation());
                }
            }
            if (holder.redDotView != null) {
                holder.redDotView.setVisibility(item.isRedDotDisplayed() ? 0 : 4);
            }
        }
        return convertView;
    }

    public void update(ImmersionMenu menu) {
        buildVisibleItems(menu, this.mVisibleItems);
        notifyDataSetChanged();
    }
}
