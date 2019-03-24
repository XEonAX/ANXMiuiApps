.class public Lcom/miui/internal/view/menu/ActionMenuPresenter;
.super Lcom/miui/internal/view/menu/BaseMenuPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field private mJ:Landroid/view/View;

.field private mK:Z

.field private mL:Z

.field private mM:I

.field private mN:I

.field private mO:I

.field private mP:I

.field private mQ:I

.field private mR:Z

.field private mS:Z

.field private mT:Z

.field private mU:Z

.field private mV:I

.field private final mW:Landroid/util/SparseBooleanArray;

.field private mX:Landroid/view/View;

.field private mY:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

.field private mZ:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

.field private na:Lcom/miui/internal/view/menu/MenuItemImpl;

.field private nb:Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

.field private nc:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field final nd:Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

.field ne:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6

    .line 68
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 47
    const p1, 0x10102f6

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mV:I

    .line 50
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mW:Landroid/util/SparseBooleanArray;

    .line 64
    new-instance p1, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nd:Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 74
    iput p4, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mQ:I

    .line 75
    iput p5, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mP:I

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mV:I

    return p0
.end method

.method private a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .line 262
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 263
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 264
    return-object v1

    .line 267
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 268
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 269
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 270
    instance-of v5, v4, Lcom/miui/internal/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/miui/internal/view/menu/MenuView$ItemView;

    .line 271
    invoke-interface {v5}, Lcom/miui/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 272
    return-object v4

    .line 268
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nb:Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nc:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mY:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    return-object p1
.end method

.method private aJ()Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;
    .locals 7

    .line 303
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    return-object v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mZ:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    if-nez v0, :cond_1

    .line 307
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ListOverflowMenu;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mZ:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mZ:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    return-object v0
.end method

.method private aK()Lcom/miui/internal/view/menu/MenuItemImpl;
    .locals 9

    .line 314
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->na:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/miui/internal/view/menu/MenuItemImpl;

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v3, 0x0

    sget v4, Lcom/miui/internal/R$id;->more:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    sget v7, Lcom/miui/internal/R$string;->more:I

    .line 316
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/miui/internal/view/menu/MenuItemImpl;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->na:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->na:Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Lcom/miui/internal/view/menu/MenuItemImpl;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->aK()Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mQ:I

    return p0
.end method

.method static synthetic d(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mP:I

    return p0
.end method

.method static synthetic e(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public bindItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Lcom/miui/internal/view/menu/MenuView$ItemView;)V
    .locals 1

    .line 180
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/miui/internal/view/menu/MenuView$ItemView;->initialize(Lcom/miui/internal/view/menu/MenuItemImpl;I)V

    .line 181
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast p1, Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;

    invoke-interface {p2, p1}, Lcom/miui/internal/view/menu/MenuView$ItemView;->setItemInvoker(Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 182
    return-void
.end method

.method protected createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 659
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    return-object v0
.end method

.method public dismissPopupMenus(Z)Z
    .locals 0

    .line 351
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result p1

    return p1
.end method

.method public flagActionItems()Z
    .locals 8

    .line 382
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 385
    iget v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mO:I

    const/4 v3, 0x1

    if-ge v2, v1, :cond_0

    iget v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mO:I

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mO:I

    .line 386
    :goto_0
    nop

    .line 387
    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_4

    if-lez v5, :cond_4

    .line 388
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 389
    invoke-virtual {v6}, Lcom/miui/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lcom/miui/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .line 390
    :cond_1
    move v7, v4

    goto :goto_3

    .line 389
    :cond_2
    :goto_2
    nop

    .line 390
    move v7, v3

    :goto_3
    invoke-virtual {v6, v7}, Lcom/miui/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 391
    if-eqz v7, :cond_3

    .line 392
    add-int/lit8 v5, v5, -0x1

    .line 394
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 395
    goto :goto_1

    .line 397
    :cond_4
    :goto_4
    if-ge v2, v1, :cond_5

    .line 398
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 399
    invoke-virtual {v5, v4}, Lcom/miui/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 400
    add-int/lit8 v2, v2, 0x1

    .line 401
    goto :goto_4

    .line 402
    :cond_5
    return v3
.end method

.method public getItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 161
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    :cond_0
    instance-of v0, p2, Lcom/miui/internal/view/menu/ActionMenuItemView;

    if-nez v0, :cond_1

    .line 164
    const/4 p2, 0x0

    .line 166
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 168
    :cond_2
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x8

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    check-cast p3, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 171
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 172
    invoke-virtual {p3, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 173
    invoke-virtual {p3, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    :cond_4
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;
    .locals 1

    .line 154
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p1

    .line 155
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/ActionMenuView;->setPresenter(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V

    .line 156
    return-object p1
.end method

.method public hideOverflowMenu(Z)Z
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nc:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 328
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 329
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nc:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 330
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nc:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 331
    const/4 p1, 0x1

    return p1

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mY:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mY:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    move-result v0

    .line 336
    if-eqz v0, :cond_1

    .line 337
    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mY:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v1, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;->dismiss(Z)V

    .line 340
    return v0

    .line 342
    :cond_2
    return v1
.end method

.method public hideSubMenus()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nb:Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nb:Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->dismiss()V

    .line 362
    const/4 v0, 0x1

    return v0

    .line 364
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 2

    .line 80
    invoke-super {p0, p1, p2}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    invoke-static {p1}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object p1

    .line 85
    iget-boolean p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mL:Z

    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/miui/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mK:Z

    .line 89
    :cond_0
    iget-boolean p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mT:Z

    if-nez p2, :cond_1

    .line 90
    invoke-virtual {p1}, Lcom/miui/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result p2

    iput p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mM:I

    .line 94
    :cond_1
    iget-boolean p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mR:Z

    if-nez p2, :cond_2

    .line 95
    invoke-virtual {p1}, Lcom/miui/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mO:I

    .line 98
    :cond_2
    iget p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mM:I

    .line 99
    iget-boolean p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mK:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 100
    iget-object p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    if-nez p2, :cond_3

    .line 101
    iget-object p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    .line 102
    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 103
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    invoke-virtual {v1, p2, p2}, Landroid/view/View;->measure(II)V

    .line 105
    :cond_3
    iget-object p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_0

    .line 107
    :cond_4
    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    .line 110
    :goto_0
    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mN:I

    .line 113
    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mX:Landroid/view/View;

    .line 114
    return-void
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mY:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mY:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mK:Z

    return v0
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 408
    invoke-super {p0, p1, p2}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 409
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 117
    iget-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mR:Z

    if-nez p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/internal/R$integer;->abc_max_action_buttons:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mO:I

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 124
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 420
    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    .line 421
    iget v0, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;->ni:I

    if-lez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget p1, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;->ni:I

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 423
    if-eqz p1, :cond_0

    .line 424
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/SubMenuBuilder;

    .line 425
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    .line 428
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 413
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;-><init>()V

    .line 414
    iget v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ne:I

    iput v1, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;->ni:I

    .line 415
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .locals 4

    .line 238
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 239
    return v1

    .line 242
    :cond_0
    nop

    .line 243
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    .line 244
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/SubMenuBuilder;

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 247
    if-nez v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    if-nez v0, :cond_2

    .line 249
    return v1

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    .line 254
    :cond_3
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ne:I

    .line 255
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/SubMenuBuilder;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nb:Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    .line 256
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nb:Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->show(Landroid/os/IBinder;)V

    .line 257
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    .line 258
    const/4 p1, 0x1

    return p1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 1

    .line 431
    if-eqz p1, :cond_0

    .line 433
    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    goto :goto_0

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    .line 437
    :goto_0
    return-void
.end method

.method public setActionEditMode(Z)V
    .locals 0

    .line 147
    if-eqz p1, :cond_0

    .line 148
    sget p1, Lcom/miui/internal/R$attr;->actionModeOverflowButtonStyle:I

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mV:I

    .line 150
    :cond_0
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mU:Z

    .line 144
    return-void
.end method

.method public setItemLimit(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mO:I

    .line 139
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mR:Z

    .line 140
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mK:Z

    .line 134
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mL:Z

    .line 135
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mM:I

    .line 128
    iput-boolean p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mS:Z

    .line 129
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mT:Z

    .line 130
    return-void
.end method

.method public shouldIncludeItem(ILcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 186
    invoke-virtual {p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p1

    return p1
.end method

.method public showOverflowMenu()Z
    .locals 2

    .line 284
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mK:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nc:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->aJ()Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)V

    iput-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nc:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 289
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->nc:Lcom/miui/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 293
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    .line 295
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 297
    return v1

    .line 299
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 3

    .line 191
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 193
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-nez p1, :cond_0

    .line 194
    return-void

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 200
    :goto_0
    nop

    .line 201
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 202
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 203
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 204
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    .line 210
    xor-int/lit8 v1, p1, 0x1

    goto :goto_1

    .line 206
    :cond_2
    if-lez v0, :cond_3

    .line 210
    move v1, v2

    goto :goto_1

    .line 206
    :cond_3
    nop

    .line 210
    :cond_4
    :goto_1
    if-eqz v1, :cond_8

    .line 211
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    if-nez p1, :cond_5

    .line 212
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    goto :goto_2

    .line 215
    :cond_5
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 217
    :goto_2
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 218
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-eq p1, v0, :cond_7

    .line 219
    if-eqz p1, :cond_6

    .line 220
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 222
    :cond_6
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 223
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    :cond_7
    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-ne p1, v0, :cond_9

    .line 226
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mJ:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 229
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mK:Z

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    .line 232
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-nez p1, :cond_a

    .line 233
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->aJ()Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-interface {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;->e(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 235
    :cond_a
    return-void
.end method
