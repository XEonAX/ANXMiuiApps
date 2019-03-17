.class public Lcom/miui/gallery/view/menu/ActionMenuItemView;
.super Landroid/widget/Button;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/miui/gallery/view/menu/MenuView$ItemView;


# instance fields
.field private mIsCheckable:Z

.field private mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;

.field private final mWithText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/view/menu/ActionMenuItemView;->mWithText:Z

    .line 36
    return-void
.end method

.method private tagById(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->setTag(Ljava/lang/Object;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/miui/gallery/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/miui/gallery/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/miui/gallery/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->setSelected(Z)V

    .line 44
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->setCheckable(Z)V

    .line 47
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->setChecked(Z)V

    .line 48
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->setClickable(Z)V

    .line 51
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->tagById(I)V

    .line 53
    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    :goto_0
    return v0

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;

    iget-object v3, p0, Lcom/miui/gallery/view/menu/ActionMenuItemView;->mItemData:Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-interface {v2, v3}, Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {p0, v1}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->playSoundEffect(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/miui/gallery/view/menu/ActionMenuItemView;->mIsCheckable:Z

    .line 72
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/miui/gallery/view/menu/ActionMenuItemView;->mIsCheckable:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->setSelected(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 88
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :cond_0

    .line 89
    invoke-virtual {p0, v3, p1, v3, v3}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_0
    return-void
.end method

.method public setItemInvoker(Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "itemInvoker"    # Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;

    .line 119
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/miui/gallery/view/menu/ActionMenuItemView;->mWithText:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
