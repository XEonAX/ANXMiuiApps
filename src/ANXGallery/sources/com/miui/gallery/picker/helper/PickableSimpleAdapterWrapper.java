package com.miui.gallery.picker.helper;

import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import com.miui.gallery.picker.helper.Picker.Mode;
import com.miui.gallery.ui.Checkable;
import com.miui.gallery.ui.MicroThumbGridItem;

public class PickableSimpleAdapterWrapper extends AbsAdapterWrapper {
    private Picker mPicker;
    private PickerItemCheckedListener mPickerItemCheckedListener = new PickerItemCheckedListener(this.mPicker);
    private CursorAdapter mWrapped;

    public PickableSimpleAdapterWrapper(Picker picker, CursorAdapter adapter) {
        super(adapter);
        this.mPicker = picker;
        this.mWrapped = adapter;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        View view = this.mWrapped.getView(position, convertView, parent);
        if (this.mPicker.getMode() == Mode.SINGLE) {
            if (view instanceof MicroThumbGridItem) {
                ((MicroThumbGridItem) view).setSimilarMarkEnable(true);
            }
        } else if (view instanceof Checkable) {
            Checkable checkable = (Checkable) view;
            checkable.setCheckable(true);
            Cursor cursor = this.mWrapped.getCursor();
            cursor.moveToPosition(position);
            checkable.setChecked(this.mPicker.contains(CursorUtils.getSha1(cursor)));
        }
        PickerItemHolder.bindView(position, view, this.mWrapped, this.mPickerItemCheckedListener);
        return view;
    }
}
