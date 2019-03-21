package com.miui.gallery.widget.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;

public class ImmersionMenuItem {
    private Context mContext;
    private int mFlags = 16;
    private Drawable mIcon;
    private int mId;
    private CharSequence mInfomation;
    private boolean mIsRedDotDisplayed;
    private boolean mIsRemainWhenClick;
    private ImmersionSubMenu mSubMenu;
    private CharSequence mSummary;
    private CharSequence mTitle;

    public ImmersionMenuItem(Context context, int id, CharSequence title) {
        this.mContext = context;
        this.mId = id;
        this.mTitle = title;
    }

    public ImmersionSubMenu getSubMenu() {
        return this.mSubMenu;
    }

    public boolean hasSubMenu() {
        return this.mSubMenu != null;
    }

    public Drawable getIcon() {
        return this.mIcon;
    }

    public ImmersionMenuItem setIconResource(int resId) {
        this.mIcon = this.mContext.getResources().getDrawable(resId);
        return this;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public CharSequence getSummary() {
        return this.mSummary;
    }

    public int getItemId() {
        return this.mId;
    }

    public boolean isVisible() {
        return (this.mFlags & 8) == 0;
    }

    public ImmersionMenuItem setVisible(boolean shown) {
        this.mFlags = (shown ? 0 : 8) | (this.mFlags & -9);
        return this;
    }

    public boolean isCheckable() {
        return (this.mFlags & 1) == 1;
    }

    public boolean isChecked() {
        return (this.mFlags & 2) == 2;
    }

    public ImmersionMenuItem setInformation(CharSequence info) {
        this.mInfomation = info;
        return this;
    }

    public ImmersionMenuItem setInformation(int infoRes) {
        return setInformation(this.mContext.getString(infoRes));
    }

    public CharSequence getInformation() {
        return this.mInfomation;
    }

    public void setRemainWhenClick(boolean isRemain) {
        this.mIsRemainWhenClick = isRemain;
    }

    public boolean isRemainWhenClick() {
        return this.mIsRemainWhenClick;
    }

    public void setIsRedDotDisplayed(boolean isDisplay) {
        this.mIsRedDotDisplayed = isDisplay;
    }

    public boolean isRedDotDisplayed() {
        return this.mIsRedDotDisplayed;
    }
}
