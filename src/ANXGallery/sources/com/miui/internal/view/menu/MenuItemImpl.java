package com.miui.internal.view.menu;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ActionProvider.VisibilityListener;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug.CapturedViewProperty;
import android.widget.LinearLayout;
import com.miui.internal.view.menu.MenuView.ItemView;

public final class MenuItemImpl implements MenuItem {
    private static final int ENABLED = 16;
    private static final String TAG = "MenuItemImpl";
    private static final int mC = 1;
    private static final int mD = 2;
    private static final int mE = 4;
    private static final int mF = 8;
    static final int oF = 0;
    private static String oH = null;
    private static String oI = null;
    private static String oJ = null;
    private static String oK = null;
    private static final int ov = 3;
    private static final int oz = 32;
    private OnMenuItemClickListener mA;
    private int mB = 16;
    private MenuBuilder mMenu;
    private CharSequence mTitle;
    private final int mr;
    private final int ms;
    private final int mt;
    private final int mu;
    private CharSequence mv;
    private Intent mw;
    private char mx;
    private char my;
    private Drawable mz;
    private int oA = 0;
    private View oB;
    private ActionProvider oC;
    private OnActionExpandListener oD;
    private boolean oE = false;
    private ContextMenuInfo oG;
    private int ow = 0;
    private SubMenuBuilder ox;
    private Runnable oy;

    MenuItemImpl(MenuBuilder menuBuilder, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.mMenu = menuBuilder;
        this.mr = i2;
        this.ms = i;
        this.mt = i3;
        this.mu = i4;
        this.mTitle = charSequence;
        this.oA = i5;
    }

    public boolean invoke() {
        boolean z = true;
        if ((this.mA != null && this.mA.onMenuItemClick(this)) || this.mMenu.dispatchMenuItemSelected(this.mMenu.getRootMenu(), this)) {
            return true;
        }
        if (this.oy != null) {
            this.oy.run();
            return true;
        }
        if (this.mw != null) {
            try {
                this.mMenu.getContext().startActivity(this.mw);
                return true;
            } catch (Throwable e) {
                Log.e(TAG, "Can't find activity to handle intent; ignoring", e);
            }
        }
        if (this.oC == null || !this.oC.onPerformDefaultAction()) {
            z = false;
        }
        return z;
    }

    public boolean isEnabled() {
        return (this.mB & 16) != 0;
    }

    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.mB |= 16;
        } else {
            this.mB &= -17;
        }
        this.mMenu.k(false);
        return this;
    }

    public int getGroupId() {
        return this.ms;
    }

    @CapturedViewProperty
    public int getItemId() {
        return this.mr;
    }

    public int getOrder() {
        return this.mt;
    }

    public int getOrdering() {
        return this.mu;
    }

    public Intent getIntent() {
        return this.mw;
    }

    public MenuItem setIntent(Intent intent) {
        this.mw = intent;
        return this;
    }

    Runnable getCallback() {
        return this.oy;
    }

    public MenuItem setCallback(Runnable runnable) {
        this.oy = runnable;
        return this;
    }

    public char getAlphabeticShortcut() {
        return this.my;
    }

    public MenuItem setAlphabeticShortcut(char c) {
        if (this.my == c) {
            return this;
        }
        this.my = Character.toLowerCase(c);
        this.mMenu.k(false);
        return this;
    }

    public char getNumericShortcut() {
        return this.mx;
    }

    public MenuItem setNumericShortcut(char c) {
        if (this.mx == c) {
            return this;
        }
        this.mx = c;
        this.mMenu.k(false);
        return this;
    }

    public MenuItem setShortcut(char c, char c2) {
        this.mx = c;
        this.my = Character.toLowerCase(c2);
        this.mMenu.k(false);
        return this;
    }

    char aS() {
        return this.my;
    }

    String aT() {
        char aS = aS();
        if (aS == 0) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder(oH);
        if (aS == 8) {
            stringBuilder.append(oJ);
        } else if (aS == 10) {
            stringBuilder.append(oI);
        } else if (aS != ' ') {
            stringBuilder.append(aS);
        } else {
            stringBuilder.append(oK);
        }
        return stringBuilder.toString();
    }

    boolean aU() {
        return this.mMenu.isShortcutsVisible() && aS() != 0;
    }

    public SubMenu getSubMenu() {
        return this.ox;
    }

    public boolean hasSubMenu() {
        return this.ox != null;
    }

    void b(SubMenuBuilder subMenuBuilder) {
        this.ox = subMenuBuilder;
        subMenuBuilder.setHeaderTitle(getTitle());
    }

    @CapturedViewProperty
    public CharSequence getTitle() {
        return this.mTitle;
    }

    CharSequence a(ItemView itemView) {
        if (itemView == null || !itemView.prefersCondensedTitle()) {
            return getTitle();
        }
        return getTitleCondensed();
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        this.mMenu.k(false);
        if (this.ox != null) {
            this.ox.setHeaderTitle(charSequence);
        }
        return this;
    }

    public MenuItem setTitle(int i) {
        return setTitle(this.mMenu.getContext().getString(i));
    }

    public CharSequence getTitleCondensed() {
        return this.mv != null ? this.mv : this.mTitle;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.mv = charSequence;
        this.mMenu.k(false);
        return this;
    }

    public Drawable getIcon() {
        if (this.mz != null) {
            return this.mz;
        }
        if (this.ow == 0) {
            return null;
        }
        Drawable drawable = this.mMenu.getResources().getDrawable(this.ow);
        this.ow = 0;
        this.mz = drawable;
        return drawable;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.ow = 0;
        this.mz = drawable;
        this.mMenu.k(false);
        return this;
    }

    public MenuItem setIcon(int i) {
        this.mz = null;
        this.ow = i;
        this.mMenu.k(false);
        return this;
    }

    public boolean isCheckable() {
        return (this.mB & 1) == 1;
    }

    public MenuItem setCheckable(boolean z) {
        int i = this.mB;
        this.mB = z | (this.mB & -2);
        if (i != this.mB) {
            this.mMenu.k(false);
        }
        return this;
    }

    public void setExclusiveCheckable(boolean z) {
        this.mB = (z ? 4 : 0) | (this.mB & -5);
    }

    public boolean isExclusiveCheckable() {
        return (this.mB & 4) != 0;
    }

    public boolean isChecked() {
        return (this.mB & 2) == 2;
    }

    public MenuItem setChecked(boolean z) {
        if ((this.mB & 4) != 0) {
            this.mMenu.b((MenuItem) this);
        } else {
            m(z);
        }
        return this;
    }

    void m(boolean z) {
        int i = this.mB;
        this.mB = (z ? 2 : 0) | (this.mB & -3);
        if (i != this.mB) {
            this.mMenu.k(false);
        }
    }

    public boolean isVisible() {
        boolean z = false;
        if (this.oC == null || !this.oC.overridesItemVisibility()) {
            if ((this.mB & 8) == 0) {
                z = true;
            }
            return z;
        }
        if ((this.mB & 8) == 0 && this.oC.isVisible()) {
            z = true;
        }
        return z;
    }

    boolean n(boolean z) {
        int i = this.mB;
        this.mB = (z ? 0 : 8) | (this.mB & -9);
        if (i != this.mB) {
            return true;
        }
        return false;
    }

    public MenuItem setVisible(boolean z) {
        if (n(z)) {
            this.mMenu.a(this);
        }
        return this;
    }

    public MenuItem setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mA = onMenuItemClickListener;
        return this;
    }

    public String toString() {
        return this.mTitle.toString();
    }

    void a(ContextMenuInfo contextMenuInfo) {
        this.oG = contextMenuInfo;
    }

    public ContextMenuInfo getMenuInfo() {
        return this.oG;
    }

    public void actionFormatChanged() {
        this.mMenu.b(this);
    }

    public boolean shouldShowIcon() {
        return this.mMenu.aR();
    }

    public boolean isActionButton() {
        return (this.mB & 32) == 32;
    }

    public boolean requestsActionButton() {
        return (this.oA & 1) == 1;
    }

    public boolean requiresActionButton() {
        return (this.oA & 2) == 2;
    }

    public void setIsActionButton(boolean z) {
        if (z) {
            this.mB |= 32;
        } else {
            this.mB &= -33;
        }
    }

    public boolean showsTextAsAction() {
        return (this.oA & 4) == 4;
    }

    public void setShowAsAction(int i) {
        switch (i & 3) {
            case 0:
            case 1:
            case 2:
                this.oA = i;
                this.mMenu.b(this);
                return;
            default:
                throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
    }

    public MenuItem setActionView(View view) {
        this.oB = view;
        this.oC = null;
        if (view != null && view.getId() == -1 && this.mr > 0) {
            view.setId(this.mr);
        }
        this.mMenu.b(this);
        return this;
    }

    public MenuItem setActionView(int i) {
        Context context = this.mMenu.getContext();
        setActionView(LayoutInflater.from(context).inflate(i, new LinearLayout(context), false));
        return this;
    }

    public View getActionView() {
        if (this.oB != null) {
            return this.oB;
        }
        if (this.oC == null) {
            return null;
        }
        this.oB = this.oC.onCreateActionView(this);
        return this.oB;
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("Implementation should use setSupportActionProvider!");
    }

    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("Implementation should use getSupportActionProvider!");
    }

    public ActionProvider getSupportActionProvider() {
        return this.oC;
    }

    public MenuItem setSupportActionProvider(ActionProvider actionProvider) {
        if (this.oC == actionProvider) {
            return this;
        }
        this.oB = null;
        if (this.oC != null) {
            this.oC.setVisibilityListener(null);
        }
        this.oC = actionProvider;
        this.mMenu.k(true);
        if (actionProvider != null) {
            actionProvider.setVisibilityListener(new VisibilityListener() {
                public void onActionProviderVisibilityChanged(boolean z) {
                    MenuItemImpl.this.mMenu.a(MenuItemImpl.this);
                }
            });
        }
        return this;
    }

    public MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    public boolean expandActionView() {
        return ((this.oA & 8) == 0 || this.oB == null || ((this.oD != null && !this.oD.onMenuItemActionExpand(this)) || !this.mMenu.expandItemActionView(this))) ? false : true;
    }

    public boolean collapseActionView() {
        return (this.oA & 8) != 0 && (this.oB == null || ((this.oD == null || this.oD.onMenuItemActionCollapse(this)) && this.mMenu.collapseItemActionView(this)));
    }

    public MenuItem setSupportOnActionExpandListener(OnActionExpandListener onActionExpandListener) {
        this.oD = onActionExpandListener;
        return this;
    }

    public boolean hasCollapsibleActionView() {
        return ((this.oA & 8) == 0 || this.oB == null) ? false : true;
    }

    public void setActionViewExpanded(boolean z) {
        this.oE = z;
        this.mMenu.k(false);
    }

    public boolean isActionViewExpanded() {
        return this.oE;
    }

    public MenuItem setOnActionExpandListener(OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException("Implementation should use setSupportOnActionExpandListener!");
    }
}
