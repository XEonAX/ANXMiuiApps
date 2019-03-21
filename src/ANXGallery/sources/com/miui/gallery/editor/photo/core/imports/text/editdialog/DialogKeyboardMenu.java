package com.miui.gallery.editor.photo.core.imports.text.editdialog;

import android.content.Context;
import android.view.ViewGroup;
import com.miui.gallery.R;

public class DialogKeyboardMenu extends DialogSubMenu {
    public DialogKeyboardMenu(Context context) {
        super(context, null, R.string.text_edit_dialog_keyboard, R.drawable.text_edit_dialog_tab_icon_keyboard);
    }

    protected ViewGroup initSubMenuView(Context context, ViewGroup parent) {
        return null;
    }

    public void initializeData(Object initializeData) {
    }
}
