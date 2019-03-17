.class public final Lcom/miui/gallery/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcom/miui/gallery/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/miui/gallery/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "showAsAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIconResId:I

    .line 64
    const/16 v0, 0x10

    iput v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    .line 72
    iput v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 77
    iput-boolean v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 122
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 123
    iput p3, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mId:I

    .line 124
    iput p2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mGroup:I

    .line 125
    iput p4, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 126
    iput p5, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mOrdering:I

    .line 127
    iput-object p6, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 128
    iput p7, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 129
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 659
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 660
    invoke-virtual {v0, p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->collapseItemActionView(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 652
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 653
    invoke-virtual {v0, p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->expandItemActionView(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 613
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use getSupportActionProvider!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 601
    :goto_0
    return-object v0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 599
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    goto :goto_0

    .line 601
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 223
    iget-char v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 385
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 396
    :goto_0
    return-object v0

    .line 389
    :cond_0
    iget v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 391
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIconResId:I

    .line 392
    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 396
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 189
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 241
    iget-char v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .prologue
    .line 272
    iget-char v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    .line 283
    .local v1, "shortcut":C
    if-nez v1, :cond_0

    .line 284
    const-string v2, ""

    .line 307
    :goto_0
    return-object v2

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/gallery/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "sb":Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_0

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 291
    :sswitch_0
    sget-object v2, Lcom/miui/gallery/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :sswitch_1
    sget-object v2, Lcom/miui/gallery/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 299
    :sswitch_2
    sget-object v2, Lcom/miui/gallery/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mSubMenu:Lcom/miui/gallery/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getTitleForItemView(Lcom/miui/gallery/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "itemView"    # Lcom/miui/gallery/view/menu/MenuView$ItemView;

    .prologue
    .line 348
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCollapsibleActionView()Z
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mSubMenu:Lcom/miui/gallery/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 137
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 138
    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/miui/gallery/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/gallery/view/menu/MenuBuilder;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/miui/gallery/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 2

    .prologue
    .line 533
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 421
    iget v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 445
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 471
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    iget v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 472
    goto :goto_0

    .line 474
    :cond_2
    iget v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public requestsActionButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 537
    iget v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresActionButton()Z
    .locals 2

    .prologue
    .line 541
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 607
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use setSupportActionProvider!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 587
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/miui/gallery/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 588
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 589
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 590
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 578
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 579
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/miui/gallery/view/menu/MenuItemImpl;)V

    .line 582
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "alphaChar"    # C

    .prologue
    .line 228
    iget-char v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    .line 236
    :goto_0
    return-object p0

    .line 232
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4
    .param p1, "checkable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 426
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    .line 427
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    .line 428
    iget v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 432
    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    .line 427
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 450
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 458
    :goto_0
    return-object p0

    .line 455
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 462
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    .line 463
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    .line 464
    iget v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 467
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 463
    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 178
    return-object p0

    .line 173
    :cond_0
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .param p1, "exclusive"    # Z

    .prologue
    .line 436
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    .line 437
    return-void

    .line 436
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 411
    iput p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIconResId:I

    .line 414
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 416
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 401
    iput v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIconResId:I

    .line 402
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 403
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 405
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 209
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 1
    .param p1, "isActionButton"    # Z

    .prologue
    .line 545
    if-eqz p1, :cond_0

    .line 546
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 514
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C

    .prologue
    .line 246
    iget-char v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    .line 254
    :goto_0
    return-object p0

    .line 250
    :cond_0
    iput-char p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 252
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 684
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use setSupportOnActionExpandListener!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "clickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 504
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 259
    iput-char p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 260
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 264
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "actionEnum"    # I

    .prologue
    .line 558
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :pswitch_0
    iput p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 571
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/miui/gallery/view/menu/MenuItemImpl;)V

    .line 572
    return-void

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    .prologue
    .line 645
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 646
    return-object p0
.end method

.method setSubMenu(Lcom/miui/gallery/view/menu/SubMenuBuilder;)V
    .locals 1
    .param p1, "subMenu"    # Lcom/miui/gallery/view/menu/SubMenuBuilder;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mSubMenu:Lcom/miui/gallery/view/menu/SubMenuBuilder;

    .line 332
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 333
    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 357
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 359
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mSubMenu:Lcom/miui/gallery/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mSubMenu:Lcom/miui/gallery/view/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 363
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 379
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 380
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/miui/gallery/view/menu/MenuItemImpl;)V

    .line 498
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 486
    iget v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    .line 487
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    .line 488
    iget v1, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 487
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public shouldShowIcon()Z
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
