package com.miui.internal.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import com.miui.internal.R;
import miui.util.AttributeResolver;

public class ActionBarPolicy {
    private Context mContext;

    public static ActionBarPolicy get(Context context) {
        return new ActionBarPolicy(context);
    }

    private ActionBarPolicy(Context context) {
        this.mContext = context;
    }

    public int getMaxActionButtons() {
        return this.mContext.getResources().getInteger(R.integer.abc_max_action_buttons);
    }

    public boolean showsOverflowMenuButton() {
        return VERSION.SDK_INT >= 11;
    }

    public int getEmbeddedMenuWidthLimit() {
        return this.mContext.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public boolean hasEmbeddedTabs() {
        return AttributeResolver.resolveBoolean(this.mContext, miui.R.attr.actionBarEmbedTabs, false);
    }

    public boolean isTightTitle() {
        return AttributeResolver.resolveBoolean(this.mContext, R.attr.actionBarTightTitle, false);
    }

    public int getTabContainerHeight() {
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(null, miui.R.styleable.ActionBar, 16843508, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(miui.R.styleable.ActionBar_android_height, 0);
        obtainStyledAttributes.recycle();
        if (layoutDimension > 0) {
            return layoutDimension;
        }
        obtainStyledAttributes = this.mContext.obtainStyledAttributes(null, miui.R.styleable.ActionBar, 16843470, 0);
        layoutDimension = obtainStyledAttributes.getLayoutDimension(miui.R.styleable.ActionBar_android_height, 0);
        obtainStyledAttributes.recycle();
        return layoutDimension;
    }

    public boolean enableHomeButtonByDefault() {
        return this.mContext.getApplicationInfo().targetSdkVersion < 14;
    }

    public int getStackedTabMaxWidth() {
        return this.mContext.getResources().getDimensionPixelSize(R.dimen.action_bar_stacked_tab_max_width);
    }
}
