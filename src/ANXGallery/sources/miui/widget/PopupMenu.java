package miui.widget;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuBuilder.Callback;
import com.miui.internal.view.menu.MenuPopupHelper;
import com.miui.internal.view.menu.MenuPresenter;
import com.miui.internal.view.menu.SubMenuBuilder;

public class PopupMenu {
    private MenuPopupHelper XP;
    private OnMenuItemClickListener XQ;
    private OnDismissListener XR;
    private Context mContext;
    private MenuBuilder mMenu;
    private View sN;

    public interface OnDismissListener {
        void onDismiss(PopupMenu popupMenu);
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public PopupMenu(Context context, View view) {
        this.mContext = context;
        this.mMenu = new MenuBuilder(context);
        this.mMenu.setCallback(new Callback() {
            public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                return PopupMenu.this.onMenuItemSelected(menuBuilder, menuItem);
            }

            public void onMenuModeChange(MenuBuilder menuBuilder) {
                PopupMenu.this.onMenuModeChange(menuBuilder);
            }
        });
        this.sN = view;
        this.XP = new MenuPopupHelper(context, this.mMenu, view);
        this.XP.setCallback(new MenuPresenter.Callback() {
            public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
                PopupMenu.this.onCloseMenu(menuBuilder, z);
            }

            public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
                return PopupMenu.this.onOpenSubMenu(menuBuilder);
            }
        });
    }

    public Menu getMenu() {
        return this.mMenu;
    }

    public MenuInflater getMenuInflater() {
        return new MenuInflater(this.mContext);
    }

    public void inflate(int i) {
        getMenuInflater().inflate(i, this.mMenu);
    }

    public void show() {
        this.XP.show();
    }

    public void dismiss() {
        this.XP.dismiss(false);
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.XQ = onMenuItemClickListener;
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.XR = onDismissListener;
    }

    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        if (this.XQ != null) {
            return this.XQ.onMenuItemClick(menuItem);
        }
        return false;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (this.XR != null) {
            this.XR.onDismiss(this);
        }
    }

    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        if (menuBuilder == null) {
            return false;
        }
        if (!menuBuilder.hasVisibleItems()) {
            return true;
        }
        new MenuPopupHelper(this.mContext, menuBuilder, this.sN).show();
        return true;
    }

    public void onCloseSubMenu(SubMenuBuilder subMenuBuilder) {
    }

    public void onMenuModeChange(MenuBuilder menuBuilder) {
    }
}
