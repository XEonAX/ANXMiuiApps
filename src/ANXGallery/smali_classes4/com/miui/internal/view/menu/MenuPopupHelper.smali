.class public Lcom/miui/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/miui/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field private static final oM:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field nM:Z

.field private oN:Lmiui/widget/ListPopupWindow;

.field private oO:I

.field private oP:Landroid/view/View;

.field private oQ:Z

.field private oR:Landroid/view/ViewTreeObserver;

.field private oS:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private oT:Landroid/view/ViewGroup;

.field private oU:I

.field private oV:I

.field private ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget v0, Lcom/miui/internal/R$layout;->popup_menu_item_layout:I

    sput v0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 2

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 1

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget v0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oM:I

    iput v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oV:I

    .line 76
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    iput-object p2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 79
    iput-boolean p4, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oQ:Z

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p4, p4, 0x2

    sget v0, Lcom/miui/internal/R$dimen;->config_prefDialogWidth:I

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 82
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oO:I

    .line 85
    iput-object p3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oP:Landroid/view/View;

    .line 87
    invoke-virtual {p2, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 88
    return-void
.end method

.method private a(Landroid/widget/ListAdapter;)I
    .locals 10

    .line 179
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    iget v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oO:I

    .line 183
    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 184
    iget v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oO:I

    .line 185
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 186
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 187
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_2

    .line 188
    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 189
    if-eq v8, v5, :cond_0

    .line 190
    nop

    .line 191
    nop

    .line 193
    move-object v7, v3

    move v5, v8

    :cond_0
    iget-object v8, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oT:Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    .line 194
    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oT:Landroid/view/ViewGroup;

    .line 196
    :cond_1
    iget-object v8, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oT:Landroid/view/ViewGroup;

    invoke-interface {p1, v4, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 197
    invoke-virtual {v7, v0, v1}, Landroid/view/View;->measure(II)V

    .line 198
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 200
    :cond_2
    return v6
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/MenuPopupHelper;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oQ:Z

    return p0
.end method

.method static synthetic b(Lcom/miui/internal/view/menu/MenuPopupHelper;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oV:I

    return p0
.end method

.method static synthetic c(Lcom/miui/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/view/menu/MenuPopupHelper;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 289
    const/4 p1, 0x0

    return p1
.end method

.method public dismiss(Z)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 285
    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;
    .locals 1

    .line 224
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MenuPopupHelpers manage their own views"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 220
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    .line 270
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 274
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 277
    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    .line 149
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuBuilder;->close()V

    .line 150
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oR:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oR:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oP:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oR:Landroid/view/ViewTreeObserver;

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oR:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 155
    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oR:Landroid/view/ViewTreeObserver;

    .line 157
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oP:Landroid/view/View;

    .line 207
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oS:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->a(Landroid/widget/ListAdapter;)I

    move-result v1

    iget v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oO:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/ListPopupWindow;->setContentWidth(I)V

    .line 212
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->show()V

    goto :goto_1

    .line 208
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 215
    :cond_2
    :goto_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 165
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oS:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 166
    invoke-static {p1}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->a(Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p2

    invoke-virtual {p1, p3}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->k(I)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 167
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 170
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 171
    invoke-virtual {p0, p3}, Lcom/miui/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 172
    return v0

    .line 174
    :cond_0
    return p3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 304
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .locals 7

    .line 241
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 242
    new-instance v0, Lcom/miui/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oP:Landroid/view/View;

    invoke-direct {v0, v2, p1, v3, v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 243
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 245
    nop

    .line 246
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->size()I

    move-result v2

    .line 247
    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_1

    .line 248
    invoke-virtual {p1, v3}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 249
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 250
    nop

    .line 251
    nop

    .line 254
    move v2, v4

    goto :goto_1

    .line 247
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 256
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    .line 260
    :cond_2
    return v4

    .line 263
    :cond_3
    return v1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oP:Landroid/view/View;

    .line 92
    return-void
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->ou:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    .line 237
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->nM:Z

    .line 96
    return-void
.end method

.method public setMenuItemLayout(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oV:I

    .line 104
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oU:I

    .line 100
    return-void
.end method

.method public show()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryShow()Z
    .locals 4

    .line 113
    new-instance v0, Lmiui/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x1010300

    invoke-direct {v0, v1, v2, v3}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    .line 114
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Lmiui/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 115
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Lmiui/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    iget v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oU:I

    invoke-virtual {v0, v1}, Lmiui/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 118
    new-instance v0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/miui/internal/view/menu/MenuPopupHelper;Lcom/miui/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oS:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 119
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oS:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ListPopupWindow;->setModal(Z)V

    .line 122
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oP:Landroid/view/View;

    .line 123
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 124
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oR:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_0

    .line 125
    move v2, v1

    goto :goto_0

    .line 124
    :cond_0
    nop

    .line 125
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oR:Landroid/view/ViewTreeObserver;

    .line 126
    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oR:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Lmiui/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 130
    nop

    .line 134
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oS:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v2}, Lcom/miui/internal/view/menu/MenuPopupHelper;->a(Landroid/widget/ListAdapter;)I

    move-result v2

    iget v3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oO:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/ListPopupWindow;->setContentWidth(I)V

    .line 135
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lmiui/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 136
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 137
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oN:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 138
    return v1

    .line 131
    :cond_2
    return v2
.end method

.method public updateMenuView(Z)V
    .locals 0

    .line 229
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oS:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->oS:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 232
    :cond_0
    return-void
.end method
