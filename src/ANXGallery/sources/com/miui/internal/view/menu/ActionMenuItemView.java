package com.miui.internal.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import com.miui.internal.view.menu.MenuBuilder.ItemInvoker;
import com.miui.internal.view.menu.MenuView.ItemView;

public class ActionMenuItemView extends Button implements ItemView {
    private MenuItemImpl mG;
    private ItemInvoker mH;
    private boolean mI;

    public ActionMenuItemView(Context context) {
        this(context, null, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.mG = menuItemImpl;
        setSelected(false);
        setTitle(menuItemImpl.getTitle());
        setIcon(menuItemImpl.getIcon());
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setClickable(true);
    }

    public MenuItemImpl getItemData() {
        return this.mG;
    }

    public void setTitle(CharSequence charSequence) {
        setText(charSequence);
    }

    public void setCheckable(boolean z) {
        this.mI = z;
    }

    public void setChecked(boolean z) {
        if (this.mI) {
            setSelected(z);
        }
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setIcon(Drawable drawable) {
        if (getCompoundDrawables()[1] != drawable) {
            setCompoundDrawablesWithIntrinsicBounds(null, drawable, null, null);
        }
    }

    public boolean prefersCondensedTitle() {
        return false;
    }

    public boolean showsIcon() {
        return true;
    }

    public boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        if (this.mH == null || !this.mH.invokeItem(this.mG)) {
            return false;
        }
        playSoundEffect(0);
        return true;
    }

    public void setItemInvoker(ItemInvoker itemInvoker) {
        this.mH = itemInvoker;
    }
}
