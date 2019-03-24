package com.miui.internal.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.util.EventLog;
import android.view.ContextMenu;
import android.view.View;

public class ContextMenuBuilder extends MenuBuilder implements ContextMenu {
    public ContextMenuBuilder(Context context) {
        super(context);
    }

    public ContextMenu setHeaderIcon(Drawable drawable) {
        return (ContextMenu) super.setHeaderIconInt(drawable);
    }

    public ContextMenu setHeaderIcon(int i) {
        return (ContextMenu) super.setHeaderIconInt(i);
    }

    public ContextMenu setHeaderTitle(CharSequence charSequence) {
        return (ContextMenu) super.setHeaderTitleInt(charSequence);
    }

    public ContextMenu setHeaderTitle(int i) {
        return (ContextMenu) super.setHeaderTitleInt(i);
    }

    public ContextMenu setHeaderView(View view) {
        return (ContextMenu) super.setHeaderViewInt(view);
    }

    public MenuDialogHelper show(View view, IBinder iBinder) {
        if (view != null) {
            view.createContextMenu(this);
        }
        if (getVisibleItems().size() <= 0) {
            return null;
        }
        EventLog.writeEvent(50001, 1);
        MenuDialogHelper menuDialogHelper = new MenuDialogHelper(this);
        menuDialogHelper.show(iBinder);
        return menuDialogHelper;
    }
}
