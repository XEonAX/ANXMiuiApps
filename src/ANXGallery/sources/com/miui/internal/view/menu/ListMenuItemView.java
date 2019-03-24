package com.miui.internal.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import com.miui.internal.view.menu.MenuBuilder.ItemInvoker;
import com.miui.internal.view.menu.MenuView.ItemView;
import miui.R;
import miui.util.AttributeResolver;

public class ListMenuItemView extends LinearLayout implements ItemView {
    private TextView cx;
    private Context mContext;
    private MenuItemImpl mG;
    private LayoutInflater mInflater;
    private ImageView nD;
    private RadioButton nE;
    private CheckBox nF;
    private TextView nG;
    private View nH;
    private Drawable nI;
    private int nJ;
    private Context nK;
    private boolean nL;
    private boolean nM;

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MenuView, i, 0);
        this.nI = obtainStyledAttributes.getDrawable(R.styleable.MenuView_android_itemBackground);
        this.nJ = obtainStyledAttributes.getResourceId(R.styleable.MenuView_android_itemTextAppearance, -1);
        this.nL = obtainStyledAttributes.getBoolean(com.miui.internal.R.styleable.MenuView_preserveIconSpacing, false);
        this.nK = context;
        obtainStyledAttributes.recycle();
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.nI);
        this.cx = (TextView) findViewById(com.miui.internal.R.id.title);
        if (this.nJ != -1) {
            this.cx.setTextAppearance(this.nK, this.nJ);
        }
        this.nG = (TextView) findViewById(com.miui.internal.R.id.shortcut);
        this.nH = getChildAt(0);
    }

    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.mG = menuItemImpl;
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        setTitle(menuItemImpl.a((ItemView) this));
        setCheckable(menuItemImpl.isCheckable());
        setShortcut(menuItemImpl.aU(), menuItemImpl.aS());
        setIcon(menuItemImpl.getIcon());
        setEnabled(menuItemImpl.isEnabled());
    }

    public void setForceShowIcon(boolean z) {
        this.nM = z;
        this.nL = z;
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.cx.setText(charSequence);
            if (this.cx.getVisibility() != 0) {
                this.cx.setVisibility(0);
            }
        } else if (this.cx.getVisibility() != 8) {
            this.cx.setVisibility(8);
        }
    }

    public MenuItemImpl getItemData() {
        return this.mG;
    }

    public void setCheckable(boolean z) {
        if (z || this.nE != null || this.nF != null) {
            CompoundButton compoundButton;
            CompoundButton compoundButton2;
            if (this.mG.isExclusiveCheckable()) {
                if (this.nE == null) {
                    aM();
                }
                compoundButton = this.nE;
                compoundButton2 = this.nF;
            } else {
                if (this.nF == null) {
                    aN();
                }
                compoundButton = this.nF;
                compoundButton2 = this.nE;
            }
            int i = 0;
            if (z) {
                compoundButton.setChecked(this.mG.isChecked());
                if (compoundButton.getVisibility() != 0) {
                    compoundButton.setVisibility(0);
                }
                if (!(compoundButton2 == null || compoundButton2.getVisibility() == 8)) {
                    compoundButton2.setVisibility(8);
                }
            } else {
                if (this.nF != null) {
                    this.nF.setVisibility(8);
                }
                if (this.nE != null) {
                    this.nE.setVisibility(8);
                }
            }
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.nH.getLayoutParams();
            if (!(z && this.mG.isExclusiveCheckable())) {
                i = AttributeResolver.resolveDimensionPixelSize(getContext(), 16843683);
            }
            marginLayoutParams.setMarginStart(i);
            this.nH.setLayoutParams(marginLayoutParams);
            setActivated(this.mG.isChecked());
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.mG.isExclusiveCheckable()) {
            if (this.nE == null) {
                aM();
            }
            compoundButton = this.nE;
        } else {
            if (this.nF == null) {
                aN();
            }
            compoundButton = this.nF;
        }
        compoundButton.setChecked(z);
        setActivated(z);
    }

    public void setItemInvoker(ItemInvoker itemInvoker) {
        throw new UnsupportedOperationException();
    }

    public void setShortcut(boolean z, char c) {
        int i = (z && this.mG.aU()) ? 0 : 8;
        if (i == 0) {
            this.nG.setText(this.mG.aT());
        }
        if (this.nG.getVisibility() != i) {
            this.nG.setVisibility(i);
        }
    }

    public void setIcon(Drawable drawable) {
        int i;
        if (this.mG.shouldShowIcon() || this.nM) {
            i = 1;
        } else {
            i = 0;
        }
        if (i == 0 && !this.nL) {
            return;
        }
        if (this.nD != null || drawable != null || this.nL) {
            if (this.nD == null) {
                aL();
            }
            if (drawable != null || this.nL) {
                ImageView imageView = this.nD;
                if (i == 0) {
                    drawable = null;
                }
                imageView.setImageDrawable(drawable);
                if (this.nD.getVisibility() != 0) {
                    this.nD.setVisibility(0);
                }
            } else {
                this.nD.setVisibility(8);
            }
        }
    }

    protected void onMeasure(int i, int i2) {
        if (this.nD != null && this.nL) {
            LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.nD.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    private void aL() {
        this.nD = (ImageView) aO().inflate(com.miui.internal.R.layout.list_menu_item_icon, this, false);
        addView(this.nD, 0);
    }

    private void aM() {
        this.nE = (RadioButton) aO().inflate(com.miui.internal.R.layout.list_menu_item_radio, this, false);
        addView(this.nE, 0);
    }

    private void aN() {
        this.nF = (CheckBox) aO().inflate(com.miui.internal.R.layout.list_menu_item_checkbox, this, false);
        addView(this.nF);
    }

    public boolean prefersCondensedTitle() {
        return false;
    }

    public boolean showsIcon() {
        return this.nM;
    }

    private LayoutInflater aO() {
        if (this.mInflater == null) {
            this.mInflater = LayoutInflater.from(this.mContext);
        }
        return this.mInflater;
    }
}
