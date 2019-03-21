package com.miui.gallery.picker.helper;

import android.database.Cursor;
import android.view.View;
import android.widget.Checkable;
import com.miui.gallery.R;
import com.miui.gallery.util.ToastUtils;

public class PickerItemCheckedListener {
    private Picker mPicker;

    public PickerItemCheckedListener(Picker picker) {
        this.mPicker = picker;
    }

    public void onItemChecked(Cursor cursor, View view) {
        String sha1 = CursorUtils.getSha1(cursor);
        if (this.mPicker.contains(sha1)) {
            this.mPicker.remove(sha1);
        } else if (this.mPicker.isFull()) {
            ToastUtils.makeText(view.getContext(), view.getContext().getString(R.string.picker_full_format, new Object[]{Integer.valueOf(this.mPicker.capacity())}));
        } else {
            this.mPicker.pick(sha1);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mPicker.contains(sha1));
        }
    }
}
