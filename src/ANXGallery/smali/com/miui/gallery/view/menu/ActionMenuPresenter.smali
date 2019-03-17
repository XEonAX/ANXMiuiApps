.class public Lcom/miui/gallery/view/menu/ActionMenuPresenter;
.super Lcom/miui/gallery/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;,
        Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupOverflowMenu;,
        Lcom/miui/gallery/view/menu/ActionMenuPresenter$ListOverflowMenu;,
        Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;,
        Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;
    }
.end annotation


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mListItemLayoutRes:I

.field private mListLayoutRes:I

.field private mListOverflowMenu:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowMenu:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

.field private mOverflowMenuAttrs:I

.field private mOverflowMenuItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

.field final mPopupPresenterCallback:Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I
    .param p4, "listLayoutRes"    # I
    .param p5, "listItemLayoutRes"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 48
    const v0, 0x10102f6

    iput v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowMenuAttrs:I

    .line 51
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 65
    new-instance v0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 75
    iput p4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mListLayoutRes:I

    .line 76
    iput p5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mListItemLayoutRes:I

    .line 77
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowMenuAttrs:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)Lcom/miui/gallery/view/menu/MenuItemImpl;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->getOverflowMenuItem()Lcom/miui/gallery/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mListLayoutRes:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mListItemLayoutRes:I

    return v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;)Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;)Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    return-object p1
.end method

.method static synthetic access$902(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 262
    iget-object v3, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 263
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 267
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 268
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 269
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/miui/gallery/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/miui/gallery/view/menu/MenuView$ItemView;

    .line 271
    invoke-interface {v4}, Lcom/miui/gallery/view/menu/MenuView$ItemView;->getItemData()Lcom/miui/gallery/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 268
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 275
    goto :goto_0
.end method

.method private getOverflowMenu()Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;
    .locals 6

    .prologue
    .line 303
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupOverflowMenu;

    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$PopupOverflowMenu;-><init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 309
    :goto_0
    return-object v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mListOverflowMenu:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    if-nez v0, :cond_1

    .line 307
    new-instance v0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$ListOverflowMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$ListOverflowMenu;-><init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mListOverflowMenu:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mListOverflowMenu:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    goto :goto_0
.end method

.method private getOverflowMenuItem()Lcom/miui/gallery/view/menu/MenuItemImpl;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowMenuItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/miui/gallery/view/menu/MenuItemImpl;

    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    const v3, 0x7f120015

    iget-object v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c02ae

    .line 316
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/view/menu/MenuItemImpl;-><init>(Lcom/miui/gallery/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowMenuItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowMenuItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    return-object v0
.end method


# virtual methods
.method public bindItemView(Lcom/miui/gallery/view/menu/MenuItemImpl;Lcom/miui/gallery/view/menu/MenuView$ItemView;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/miui/gallery/view/menu/MenuView$ItemView;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/miui/gallery/view/menu/MenuView$ItemView;->initialize(Lcom/miui/gallery/view/menu/MenuItemImpl;I)V

    .line 181
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    check-cast v0, Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;

    invoke-interface {p2, v0}, Lcom/miui/gallery/view/menu/MenuView$ItemView;->setItemInvoker(Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;)V

    .line 182
    return-void
.end method

.method protected createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    new-instance v0, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    return-object v0
.end method

.method public dismissPopupMenus(Z)Z
    .locals 1
    .param p1, "withAnimation"    # Z

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    return v0
.end method

.method public flagActionItems()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 382
    iget-object v8, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/miui/gallery/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 383
    .local v5, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 385
    .local v4, "itemsSize":I
    iget v8, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMaxItems:I

    if-ge v8, v4, :cond_2

    iget v8, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMaxItems:I

    add-int/lit8 v0, v8, -0x1

    .line 386
    .local v0, "availableActionItems":I
    :goto_0
    const/4 v1, 0x0

    .line 387
    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    if-lez v0, :cond_4

    .line 388
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 389
    .local v3, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/miui/gallery/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Lcom/miui/gallery/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    move v2, v7

    .line 390
    .local v2, "isActionButton":Z
    :goto_2
    invoke-virtual {v3, v2}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 391
    if-eqz v2, :cond_1

    .line 392
    add-int/lit8 v0, v0, -0x1

    .line 394
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 395
    goto :goto_1

    .line 385
    .end local v0    # "availableActionItems":I
    .end local v1    # "i":I
    .end local v2    # "isActionButton":Z
    .end local v3    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_2
    iget v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMaxItems:I

    goto :goto_0

    .restart local v0    # "availableActionItems":I
    .restart local v1    # "i":I
    .restart local v3    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_3
    move v2, v6

    .line 389
    goto :goto_2

    .line 397
    .end local v3    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_4
    :goto_3
    if-ge v1, v4, :cond_5

    .line 398
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 399
    .restart local v3    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v3, v6}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 400
    add-int/lit8 v1, v1, 0x1

    .line 401
    goto :goto_3

    .line 402
    .end local v3    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_5
    return v7
.end method

.method public getItemView(Lcom/miui/gallery/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    :cond_0
    instance-of v3, p2, Lcom/miui/gallery/view/menu/ActionMenuItemView;

    if-nez v3, :cond_1

    .line 164
    const/4 p2, 0x0

    .line 166
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->getItemView(Lcom/miui/gallery/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 168
    :cond_2
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 170
    check-cast v2, Lcom/miui/gallery/view/menu/ActionMenuView;

    .line 171
    .local v2, "menuParent":Lcom/miui/gallery/view/menu/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 172
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Lcom/miui/gallery/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 173
    invoke-virtual {v2, v1}, Lcom/miui/gallery/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    :cond_3
    return-object v0

    .line 168
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Lcom/miui/gallery/view/menu/ActionMenuView;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/gallery/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/gallery/view/menu/MenuView;

    move-result-object v0

    .local v0, "result":Lcom/miui/gallery/view/menu/MenuView;
    move-object v1, v0

    .line 155
    check-cast v1, Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/view/menu/ActionMenuView;->setPresenter(Lcom/miui/gallery/view/menu/ActionMenuPresenter;)V

    .line 156
    return-object v0
.end method

.method public hideOverflowMenu(Z)Z
    .locals 3
    .param p1, "withAnimation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 329
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 330
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 331
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    if-eqz v2, :cond_2

    .line 335
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v2}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    move-result v0

    .line 336
    .local v0, "isShowing":Z
    if-eqz v0, :cond_1

    .line 337
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v1, p1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;->dismiss(Z)V

    goto :goto_0

    .end local v0    # "isShowing":Z
    :cond_2
    move v0, v1

    .line 342
    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 85
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/miui/gallery/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/gallery/view/ActionBarPolicy;

    move-result-object v0

    .line 86
    .local v0, "abp":Lcom/miui/gallery/view/ActionBarPolicy;
    iget-boolean v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/miui/gallery/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 90
    :cond_0
    iget-boolean v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/miui/gallery/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 95
    :cond_1
    iget-boolean v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_2

    .line 96
    invoke-virtual {v0}, Lcom/miui/gallery/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 99
    :cond_2
    iget v3, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 100
    .local v3, "width":I
    iget-boolean v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_4

    .line 101
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_3

    .line 102
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 103
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 104
    .local v2, "spec":I
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 106
    .end local v2    # "spec":I
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 111
    :goto_0
    iput v3, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 114
    iput-object v6, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 115
    return-void

    .line 108
    :cond_4
    iput-object v6, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 408
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V

    .line 409
    return-void
.end method

.method public onSubMenuSelected(Lcom/miui/gallery/view/menu/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/miui/gallery/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v2

    .line 242
    :cond_1
    move-object v1, p1

    .line 243
    .local v1, "topSubMenu":Lcom/miui/gallery/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_2

    .line 244
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1    # "topSubMenu":Lcom/miui/gallery/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/miui/gallery/view/menu/SubMenuBuilder;

    .restart local v1    # "topSubMenu":Lcom/miui/gallery/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 246
    :cond_2
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3

    .line 248
    iget-object v3, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 251
    iget-object v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 254
    :cond_3
    invoke-virtual {p1}, Lcom/miui/gallery/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 255
    new-instance v2, Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;-><init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    .line 256
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->show(Landroid/os/IBinder;)V

    .line 257
    invoke-super {p0, p1}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/miui/gallery/view/menu/SubMenuBuilder;)Z

    .line 258
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 144
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 127
    iput p1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 128
    iput-boolean p2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 130
    return-void
.end method

.method public shouldIncludeItem(ILcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 186
    invoke-virtual {p2}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 284
    iget-boolean v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->getOverflowMenu()Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    move-result-object v0

    .line 287
    .local v0, "popup":Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;
    new-instance v1, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/miui/gallery/view/menu/ActionMenuPresenter;Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;)V

    iput-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 289
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/miui/gallery/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 293
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/miui/gallery/view/menu/SubMenuBuilder;)Z

    .line 295
    iget-object v1, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    move v1, v2

    .line 299
    .end local v0    # "popup":Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 8
    .param p1, "cleared"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 191
    invoke-super {p0, p1}, Lcom/miui/gallery/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 193
    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    if-nez v5, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 198
    invoke-virtual {v5}, Lcom/miui/gallery/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 200
    .local v3, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v1, 0x0

    .line 201
    .local v1, "hasOverflow":Z
    iget-boolean v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 202
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 203
    .local v0, "count":I
    if-ne v0, v6, :cond_7

    .line 204
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v5

    if-nez v5, :cond_6

    move v1, v6

    .line 210
    .end local v0    # "count":I
    :cond_2
    :goto_2
    if-eqz v1, :cond_a

    .line 211
    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v5, :cond_9

    .line 212
    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 217
    :goto_3
    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 218
    .local v4, "parent":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    if-eq v4, v5, :cond_4

    .line 219
    if-eqz v4, :cond_3

    .line 220
    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    check-cast v2, Lcom/miui/gallery/view/menu/ActionMenuView;

    .line 223
    .local v2, "menuView":Lcom/miui/gallery/view/menu/ActionMenuView;
    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2}, Lcom/miui/gallery/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/miui/gallery/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .end local v2    # "menuView":Lcom/miui/gallery/view/menu/ActionMenuView;
    .end local v4    # "parent":Landroid/view/ViewGroup;
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    check-cast v5, Lcom/miui/gallery/view/menu/ActionMenuView;

    iget-boolean v6, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v5, v6}, Lcom/miui/gallery/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    .line 232
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isTablet()Z

    move-result v5

    if-nez v5, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->getOverflowMenu()Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    invoke-interface {v5, v6}, Lcom/miui/gallery/view/menu/ActionMenuPresenter$OverflowMenu;->update(Lcom/miui/gallery/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 198
    .end local v1    # "hasOverflow":Z
    .end local v3    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .restart local v0    # "count":I
    .restart local v1    # "hasOverflow":Z
    .restart local v3    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :cond_6
    move v1, v7

    .line 204
    goto :goto_2

    .line 206
    :cond_7
    if-lez v0, :cond_8

    move v1, v6

    :goto_5
    goto :goto_2

    :cond_8
    move v1, v7

    goto :goto_5

    .line 215
    .end local v0    # "count":I
    :cond_9
    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    .line 225
    :cond_a
    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    if-ne v5, v6, :cond_4

    .line 226
    iget-object v5, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/gallery/view/menu/MenuView;

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method
