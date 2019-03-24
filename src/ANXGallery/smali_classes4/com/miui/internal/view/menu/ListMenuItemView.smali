.class public Lcom/miui/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuView$ItemView;


# instance fields
.field private cx:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mG:Lcom/miui/internal/view/menu/MenuItemImpl;

.field private mInflater:Landroid/view/LayoutInflater;

.field private nD:Landroid/widget/ImageView;

.field private nE:Landroid/widget/RadioButton;

.field private nF:Landroid/widget/CheckBox;

.field private nG:Landroid/widget/TextView;

.field private nH:Landroid/view/View;

.field private nI:Landroid/graphics/drawable/Drawable;

.field private nJ:I

.field private nK:Landroid/content/Context;

.field private nL:Z

.field private nM:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    .line 53
    sget-object v0, Lmiui/R$styleable;->MenuView:[I

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 57
    sget p3, Lmiui/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nI:Landroid/graphics/drawable/Drawable;

    .line 58
    sget p3, Lmiui/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nJ:I

    .line 60
    sget p3, Lcom/miui/internal/R$styleable;->MenuView_preserveIconSpacing:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nL:Z

    .line 62
    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nK:Landroid/content/Context;

    .line 64
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method

.method private aL()V
    .locals 3

    .line 254
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->aO()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 255
    sget v1, Lcom/miui/internal/R$layout;->list_menu_item_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nD:Landroid/widget/ImageView;

    .line 257
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nD:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/miui/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 258
    return-void
.end method

.method private aM()V
    .locals 3

    .line 261
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->aO()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 262
    sget v1, Lcom/miui/internal/R$layout;->list_menu_item_radio:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nE:Landroid/widget/RadioButton;

    .line 264
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nE:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0, v2}, Lcom/miui/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 265
    return-void
.end method

.method private aN()V
    .locals 3

    .line 268
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->aO()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 269
    sget v1, Lcom/miui/internal/R$layout;->list_menu_item_checkbox:I

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nF:Landroid/widget/CheckBox;

    .line 272
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nF:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 273
    return-void
.end method

.method private aO()Landroid/view/LayoutInflater;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public getItemData()Lcom/miui/internal/view/menu/MenuItemImpl;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mG:Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/miui/internal/view/menu/MenuItemImpl;I)V
    .locals 1

    .line 88
    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mG:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 90
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 92
    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuItemImpl;->a(Lcom/miui/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 94
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->aU()Z

    move-result p2

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->aS()C

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/miui/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 95
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 97
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 75
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ListMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    sget v0, Lcom/miui/internal/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->cx:Landroid/widget/TextView;

    .line 78
    iget v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nJ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->cx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nK:Landroid/content/Context;

    iget v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nJ:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 83
    :cond_0
    sget v0, Lcom/miui/internal/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nG:Landroid/widget/TextView;

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ListMenuItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nH:Landroid/view/View;

    .line 85
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nD:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nL:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nD:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 246
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 247
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 250
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 251
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 5

    .line 122
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nE:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nF:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mG:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nE:Landroid/widget/RadioButton;

    if-nez v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->aM()V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nE:Landroid/widget/RadioButton;

    .line 136
    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nF:Landroid/widget/CheckBox;

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nF:Landroid/widget/CheckBox;

    if-nez v0, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->aN()V

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nF:Landroid/widget/CheckBox;

    .line 142
    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nE:Landroid/widget/RadioButton;

    .line 145
    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_5

    .line 146
    iget-object v4, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mG:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/miui/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 148
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 149
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 153
    :cond_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 154
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_1

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nF:Landroid/widget/CheckBox;

    if-eqz v0, :cond_6

    .line 158
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nF:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nE:Landroid/widget/RadioButton;

    if-eqz v0, :cond_7

    .line 161
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nE:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 166
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nH:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 167
    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mG:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    .line 169
    :cond_8
    goto :goto_3

    .line 168
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x10103a3

    invoke-static {p1, v1}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    .line 170
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 171
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nH:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mG:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ListMenuItemView;->setActivated(Z)V

    .line 175
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mG:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nE:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->aM()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nE:Landroid/widget/RadioButton;

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nF:Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    .line 187
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->aN()V

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nF:Landroid/widget/CheckBox;

    .line 192
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ListMenuItemView;->setActivated(Z)V

    .line 195
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nM:Z

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nL:Z

    .line 101
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mG:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nM:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    move v0, v1

    goto :goto_1

    .line 216
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 217
    :goto_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nL:Z

    if-nez v2, :cond_2

    .line 218
    return-void

    .line 221
    :cond_2
    iget-object v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nD:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nL:Z

    if-nez v2, :cond_3

    .line 222
    return-void

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nD:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    .line 226
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->aL()V

    .line 229
    :cond_4
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nL:Z

    if-eqz v2, :cond_5

    goto :goto_2

    .line 236
    :cond_5
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nD:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 230
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nD:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nD:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 233
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nD:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    :cond_8
    :goto_4
    return-void
.end method

.method public setItemInvoker(Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0

    .line 199
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setShortcut(ZC)V
    .locals 1

    .line 203
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mG:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->aU()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 206
    :goto_0
    if-nez p1, :cond_1

    .line 207
    iget-object p2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nG:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mG:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->aT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_1
    iget-object p2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nG:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq p2, p1, :cond_2

    .line 211
    iget-object p2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nG:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->cx:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->cx:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->cx:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->cx:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 112
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->cx:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_1
    :goto_0
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->nM:Z

    return v0
.end method
