package com.miui.gallery.editor.photo.core.imports.text.editdialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;

abstract class DialogSubMenu<T, E> {
    protected T mListener;
    private View mNavigationButton;
    private int mNavigationDrawableRes;
    private int mNavigationStringRes;
    private TextView mRadioButton;
    private ViewGroup mSubMenuView;

    abstract ViewGroup initSubMenuView(Context context, ViewGroup viewGroup);

    public abstract void initializeData(E e);

    DialogSubMenu(Context context, ViewGroup parent, int navigationStringRes, int navigationDrawableRes) {
        this.mNavigationStringRes = navigationStringRes;
        this.mNavigationDrawableRes = navigationDrawableRes;
        this.mNavigationButton = initNavigationRadioButton(context);
        this.mSubMenuView = initSubMenuView(context, parent);
    }

    private View initNavigationRadioButton(Context context) {
        View view = LayoutInflater.from(context).inflate(R.layout.text_edit_dialog_navigation_button, null);
        this.mRadioButton = (TextView) view.findViewById(R.id.text_edit_dialog_navigation_button);
        this.mRadioButton.setCompoundDrawablesWithIntrinsicBounds(context.getResources().getDrawable(this.mNavigationDrawableRes), null, null, null);
        this.mRadioButton.setText(context.getString(this.mNavigationStringRes));
        return view;
    }

    View getNavigationButton() {
        return this.mNavigationButton;
    }

    ViewGroup getSubMenuView() {
        return this.mSubMenuView;
    }

    public void setChecked(boolean checked) {
        this.mRadioButton.setSelected(checked);
    }

    public void release() {
    }
}
