package com.miui.gallery.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import com.miui.gallery.R;
import com.miui.gallery.view.menu.MenuBuilder.ItemInvoker;
import com.miui.gallery.view.menu.MenuView.ItemView;

public class ActionMenuItemView extends Button implements ItemView {
    private boolean mIsCheckable;
    private MenuItemImpl mItemData;
    private ItemInvoker mItemInvoker;
    private final boolean mWithText;

    public ActionMenuItemView(Context context) {
        this(context, null, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mWithText = getResources().getBoolean(R.bool.bottomMenu_config_withText);
    }

    public void initialize(MenuItemImpl itemData, int menuType) {
        this.mItemData = itemData;
        setSelected(false);
        setTitle(itemData.getTitle());
        setIcon(itemData.getIcon());
        setCheckable(itemData.isCheckable());
        setChecked(itemData.isChecked());
        setEnabled(itemData.isEnabled());
        setClickable(true);
        tagById(itemData.getItemId());
    }

    public MenuItemImpl getItemData() {
        return this.mItemData;
    }

    public void setTitle(CharSequence title) {
        setText(this.mWithText ? title : null);
        setContentDescription(title);
    }

    public void setCheckable(boolean checkable) {
        this.mIsCheckable = checkable;
    }

    public void setChecked(boolean checked) {
        if (this.mIsCheckable) {
            setSelected(checked);
        }
    }

    public void setIcon(Drawable icon) {
        if (getCompoundDrawables()[1] != icon) {
            setCompoundDrawablesWithIntrinsicBounds(null, icon, null, null);
        }
    }

    public boolean prefersCondensedTitle() {
        return false;
    }

    public boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        if (this.mItemInvoker == null || !this.mItemInvoker.invokeItem(this.mItemData)) {
            return false;
        }
        playSoundEffect(0);
        return true;
    }

    public void setItemInvoker(ItemInvoker itemInvoker) {
        this.mItemInvoker = itemInvoker;
    }

    private void tagById(int id) {
        setTag(Integer.valueOf(id));
    }
}
