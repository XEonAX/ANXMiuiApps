package com.miui.gallery.picker.helper;

import android.database.Cursor;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListAdapter;
import com.miui.gallery.R;
import com.miui.gallery.adapter.CheckableAdapter;
import com.miui.gallery.util.ScalableTouchDelegate;

public class PickerItemHolder implements OnClickListener {
    private ListAdapter mAdapter;
    private PickerItemCheckedListener mCheckListener;
    private int mPosition;

    public PickerItemHolder(View itemView, ListAdapter adapter, PickerItemCheckedListener checkListener) {
        this.mAdapter = adapter;
        this.mCheckListener = checkListener;
        if (adapter instanceof CheckableAdapter) {
            View checkableView = ((CheckableAdapter) adapter).getCheckableView(itemView);
            if (checkableView != null) {
                checkableView.setOnClickListener(this);
                itemView.setTouchDelegate(new ScalableTouchDelegate(1.8f, itemView, checkableView));
            }
        }
    }

    public void setPosition(int position) {
        this.mPosition = position;
    }

    public void onClick(View view) {
        if (this.mCheckListener != null) {
            this.mCheckListener.onItemChecked((Cursor) this.mAdapter.getItem(this.mPosition), view);
        }
    }

    public static void bindView(int position, View view, ListAdapter adapter, PickerItemCheckedListener checkListener) {
        PickerItemHolder checkedHolder = (PickerItemHolder) view.getTag(R.id.tag_picker_item_holder);
        if (checkedHolder == null) {
            checkedHolder = new PickerItemHolder(view, adapter, checkListener);
            view.setTag(R.id.tag_picker_item_holder, checkedHolder);
        }
        checkedHolder.setPosition(position);
    }
}
