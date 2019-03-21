package com.miui.gallery.widget.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow.OnDismissListener;
import com.miui.gallery.R;
import com.miui.gallery.widget.menu.ImmersionMenuAdapter.OnItemCheckChangeListener;
import miui.widget.ImmersionListPopupWindow;

public class PhoneImmersionMenu extends ImmersionListPopupWindow {
    private ImmersionMenuAdapter mAdapter;
    private ImmersionMenuListener mImmersionMenuListener;
    private View mLastAnchor;
    private ViewGroup mLastParent;
    private ImmersionMenu mMenu;

    public PhoneImmersionMenu(Context context, ImmersionMenuListener listener) {
        super(context);
        this.mImmersionMenuListener = listener;
        if (listener != null) {
            this.mMenu = new ImmersionMenu(context);
            listener.onCreateImmersionMenu(this.mMenu);
        }
        this.mAdapter = new ImmersionMenuAdapter(context, this.mMenu);
        setAdapter(this.mAdapter);
        setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                ImmersionMenuItem menu = PhoneImmersionMenu.this.mAdapter.getItem(position);
                if (menu.isCheckable()) {
                    PhoneImmersionMenu.this.mAdapter.toggleCheckableItem(view);
                    return;
                }
                if (menu.hasSubMenu()) {
                    final ImmersionSubMenu subMenu = menu.getSubMenu();
                    PhoneImmersionMenu.this.setOnDismissListener(new OnDismissListener() {
                        public void onDismiss() {
                            PhoneImmersionMenu.this.setOnDismissListener(null);
                            PhoneImmersionMenu.this.update(subMenu);
                            PhoneImmersionMenu.this.fastShow(PhoneImmersionMenu.this.mLastAnchor, PhoneImmersionMenu.this.mLastParent);
                        }
                    });
                } else {
                    PhoneImmersionMenu.this.mImmersionMenuListener.onImmersionMenuSelected(PhoneImmersionMenu.this.mMenu, menu);
                }
                if (!menu.isRemainWhenClick()) {
                    PhoneImmersionMenu.this.dismiss(false);
                }
            }
        });
        this.mAdapter.setOnItemCheckChangeListener(new OnItemCheckChangeListener() {
            public void onItemCheckChanged(ImmersionMenuItem item, boolean checked) {
                PhoneImmersionMenu.this.mImmersionMenuListener.onImmersionMenuSelected(PhoneImmersionMenu.this.mMenu, item);
            }
        });
    }

    public void update(ImmersionMenu menu) {
        this.mAdapter.update(menu);
    }

    public void show(View anchor, ViewGroup parent) {
        this.mLastAnchor = anchor;
        this.mLastParent = parent;
        if (this.mImmersionMenuListener != null && this.mImmersionMenuListener.onPrepareImmersionMenu(this.mMenu)) {
            update(this.mMenu);
        }
        super.show(anchor, parent);
    }

    protected Drawable getBlurBackground(Context context, View anchor) {
        Drawable background = context.getResources().getDrawable(R.color.immersion_menu_popup_window_bg);
        return background != null ? background : super.getBlurBackground(context, anchor);
    }

    public ImmersionMenu getImmersionMenu() {
        return this.mMenu;
    }
}
