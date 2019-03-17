.class public Lcom/miui/gallery/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/miui/gallery/view/menu/MenuView$ItemView;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mRelativeLayout:Landroid/view/View;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    .line 55
    sget-object v1, Lmiui/R$styleable;->MenuView:[I

    .line 56
    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lmiui/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 60
    sget v1, Lmiui/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 62
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 64
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 271
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0400a4

    const/4 v2, 0x0

    .line 272
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 274
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 275
    return-void
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 257
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0400a5

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 259
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 260
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 264
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0400a7

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 266
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 267
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/miui/gallery/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/miui/gallery/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/miui/gallery/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 90
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 92
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 94
    invoke-virtual {p1, p0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/miui/gallery/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 96
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 97
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 99
    return-void

    .line 92
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    const v0, 0x7f12002d

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 80
    iget v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 85
    :cond_0
    const v0, 0x7f120083

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRelativeLayout:Landroid/view/View;

    .line 87
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 244
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 247
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    .local v0, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 249
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 252
    .end local v0    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 253
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 6
    .param p1, "checkable"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 124
    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_0

    .line 177
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 134
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 138
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 147
    .local v2, "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_1
    if-eqz p1, :cond_8

    .line 148
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 150
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 155
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 156
    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 168
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRelativeLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 169
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_5

    .line 170
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10103a3

    invoke-static {v4, v5}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v3

    .line 172
    .local v3, "startMargin":I
    :cond_5
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 173
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRelativeLayout:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/gallery/view/menu/ListMenuItemView;->setActivated(Z)V

    goto :goto_0

    .line 140
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    .end local v3    # "startMargin":I
    :cond_6
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_7

    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 144
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .restart local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_1

    .line 159
    :cond_8
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_9

    .line 160
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 162
    :cond_9
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_3

    .line 163
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 182
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 194
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/ListMenuItemView;->setActivated(Z)V

    .line 197
    return-void

    .line 188
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 103
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/miui/gallery/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 219
    .local v0, "showIcon":Z
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    .line 240
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-void

    .end local v0    # "showIcon":Z
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    move v0, v1

    .line 218
    goto :goto_0

    .line 223
    .restart local v0    # "showIcon":Z
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_1

    .line 227
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    .line 228
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/ListMenuItemView;->insertIconView()V

    .line 231
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_8

    .line 232
    :cond_6
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 232
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    .line 238
    :cond_8
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setItemInvoker(Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 1
    .param p1, "invoker"    # Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setShortcut(ZC)V
    .locals 3
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 205
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 208
    .local v0, "newVisibility":I
    :goto_0
    if-nez v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 213
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :cond_1
    return-void

    .line 205
    .end local v0    # "newVisibility":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 106
    if-eqz p1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
