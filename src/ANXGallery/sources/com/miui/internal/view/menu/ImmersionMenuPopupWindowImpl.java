package com.miui.internal.view.menu;

import android.content.Context;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow.OnDismissListener;
import com.miui.internal.app.ActionBarDelegateImpl;
import miui.widget.ImmersionListPopupWindow;

public class ImmersionMenuPopupWindowImpl extends ImmersionListPopupWindow implements ImmersionMenuPopupWindow {
    private ActionBarDelegateImpl nw;
    private ImmersionMenuAdapter nx;
    private View ny;
    private ViewGroup nz;

    public ImmersionMenuPopupWindowImpl(ActionBarDelegateImpl actionBarDelegateImpl, Menu menu) {
        super(actionBarDelegateImpl.getThemedContext());
        Context themedContext = actionBarDelegateImpl.getThemedContext();
        this.nw = actionBarDelegateImpl;
        this.nx = new ImmersionMenuAdapter(themedContext, menu);
        setAdapter(this.nx);
        setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                MenuItem item = ImmersionMenuPopupWindowImpl.this.nx.getItem(i);
                if (item.hasSubMenu()) {
                    final SubMenu subMenu = item.getSubMenu();
                    ImmersionMenuPopupWindowImpl.this.setOnDismissListener(new OnDismissListener() {
                        public void onDismiss() {
                            ImmersionMenuPopupWindowImpl.this.setOnDismissListener(null);
                            ImmersionMenuPopupWindowImpl.this.update(subMenu);
                            ImmersionMenuPopupWindowImpl.this.fastShow(ImmersionMenuPopupWindowImpl.this.ny, ImmersionMenuPopupWindowImpl.this.nz);
                        }
                    });
                } else {
                    ImmersionMenuPopupWindowImpl.this.nw.onMenuItemSelected(0, item);
                }
                ImmersionMenuPopupWindowImpl.this.dismiss(true);
            }
        });
    }

    public void update(Menu menu) {
        this.nx.update(menu);
    }

    public void show(View view, ViewGroup viewGroup) {
        this.ny = view;
        this.nz = viewGroup;
        super.show(view, viewGroup);
    }
}
