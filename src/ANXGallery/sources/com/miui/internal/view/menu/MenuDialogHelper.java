package com.miui.internal.view.menu;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.miui.internal.R;
import com.miui.internal.view.menu.MenuPresenter.Callback;
import com.nexstreaming.nexeditorsdk.nexEngine;
import miui.util.AttributeResolver;

public class MenuDialogHelper implements OnClickListener, OnDismissListener, OnKeyListener, Callback {
    private MenuBuilder mMenu;
    private AlertDialog os;
    ListMenuPresenter ot;
    private Callback ou;

    public MenuDialogHelper(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    public void show(IBinder iBinder) {
        MenuBuilder menuBuilder = this.mMenu;
        Builder builder = new Builder(menuBuilder.getContext());
        int resolve = AttributeResolver.resolve(menuBuilder.getContext(), R.attr.menuDialogTheme);
        if (resolve == -1) {
            resolve = R.style.Theme_MenuDialog_Light;
        }
        this.ot = new ListMenuPresenter(R.layout.list_menu_item_layout, resolve);
        this.ot.setCallback(this);
        this.mMenu.addMenuPresenter(this.ot);
        builder.setAdapter(this.ot.getAdapter(), this);
        View headerView = menuBuilder.getHeaderView();
        if (headerView != null) {
            builder.setCustomTitle(headerView);
        } else {
            builder.setIcon(menuBuilder.getHeaderIcon()).setTitle(menuBuilder.getHeaderTitle());
        }
        builder.setOnKeyListener(this);
        this.os = builder.create();
        this.os.setOnDismissListener(this);
        LayoutParams attributes = this.os.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= nexEngine.ExportHEVCHighTierLevel51;
        this.os.show();
    }

    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window = this.os.getWindow();
                if (window != null) {
                    View decorView = window.getDecorView();
                    if (decorView != null) {
                        DispatcherState keyDispatcherState = decorView.getKeyDispatcherState();
                        if (keyDispatcherState != null) {
                            keyDispatcherState.startTracking(keyEvent, this);
                            return true;
                        }
                    }
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled()) {
                Window window2 = this.os.getWindow();
                if (window2 != null) {
                    View decorView2 = window2.getDecorView();
                    if (decorView2 != null) {
                        DispatcherState keyDispatcherState2 = decorView2.getKeyDispatcherState();
                        if (keyDispatcherState2 != null && keyDispatcherState2.isTracking(keyEvent)) {
                            this.mMenu.j(true);
                            dialogInterface.dismiss();
                            return true;
                        }
                    }
                }
            }
        }
        return this.mMenu.performShortcut(i, keyEvent, 0);
    }

    public void setPresenterCallback(Callback callback) {
        this.ou = callback;
    }

    public void dismiss() {
        if (this.os != null) {
            this.os.dismiss();
        }
    }

    public void onDismiss(DialogInterface dialogInterface) {
        this.ot.onCloseMenu(this.mMenu, true);
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (z || menuBuilder == this.mMenu) {
            dismiss();
        }
        if (this.ou != null) {
            this.ou.onCloseMenu(menuBuilder, z);
        }
    }

    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        return this.ou != null && this.ou.onOpenSubMenu(menuBuilder);
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.mMenu.performItemAction((MenuItemImpl) this.ot.getAdapter().getItem(i), 0);
    }
}
