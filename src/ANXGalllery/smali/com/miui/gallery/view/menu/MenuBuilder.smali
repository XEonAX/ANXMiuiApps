.class public Lcom/miui/gallery/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/view/menu/MenuBuilder$ItemInvoker;,
        Lcom/miui/gallery/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/miui/gallery/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 160
    iput-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 162
    iput-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 164
    iput-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 166
    iput-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsClosing:Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 211
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 217
    iput-boolean v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 221
    iput-boolean v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 223
    invoke-direct {p0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 224
    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 418
    invoke-static {p3}, Lcom/miui/gallery/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v5

    .line 420
    .local v5, "ordering":I
    new-instance v0, Lcom/miui/gallery/view/menu/MenuItemImpl;

    iget v7, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/view/menu/MenuItemImpl;-><init>(Lcom/miui/gallery/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 423
    .local v0, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/miui/gallery/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 429
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 431
    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    .prologue
    .line 259
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 264
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 265
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuPresenter;

    .line 266
    .local v0, "presenter":Lcom/miui/gallery/view/menu/MenuPresenter;
    if-nez v0, :cond_1

    .line 267
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 269
    :cond_1
    invoke-interface {v0, p1}, Lcom/miui/gallery/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 272
    .end local v0    # "presenter":Lcom/miui/gallery/view/menu/MenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Lcom/miui/gallery/view/menu/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/miui/gallery/view/menu/SubMenuBuilder;

    .prologue
    .line 276
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    const/4 v2, 0x0

    .line 290
    :cond_0
    return v2

    .line 280
    :cond_1
    const/4 v2, 0x0

    .line 282
    .local v2, "result":Z
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 283
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuPresenter;

    .line 284
    .local v0, "presenter":Lcom/miui/gallery/view/menu/MenuPresenter;
    if-nez v0, :cond_3

    .line 285
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_3
    if-nez v2, :cond_2

    .line 287
    invoke-interface {v0, p1}, Lcom/miui/gallery/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/miui/gallery/view/menu/SubMenuBuilder;)Z

    move-result v2

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 798
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 799
    .local v1, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 800
    add-int/lit8 v2, v0, 0x1

    .line 804
    .end local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :goto_1
    return v2

    .line 797
    .restart local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 804
    .end local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .prologue
    .line 730
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 732
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/miui/gallery/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 733
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 736
    :cond_1
    sget-object v1, Lcom/miui/gallery/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .prologue
    .line 539
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 545
    if-eqz p2, :cond_0

    .line 546
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1153
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1155
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1156
    iput-object p5, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1159
    iput-object v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1160
    iput-object v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1179
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1180
    return-void

    .line 1162
    :cond_0
    if-lez p1, :cond_3

    .line 1163
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1168
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1169
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1175
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1164
    :cond_3
    if-eqz p2, :cond_1

    .line 1165
    iput-object p2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1170
    :cond_4
    if-eqz p4, :cond_2

    .line 1171
    iput-object p4, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .param p1, "shortcutsVisible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 763
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 764
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f0002

    .line 765
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 766
    return-void

    .line 765
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 446
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 436
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 481
    iget-object v10, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 482
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 483
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 484
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 486
    .local v3, "N":I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 487
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->removeGroup(I)V

    .line 490
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 491
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 492
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 494
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 497
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/miui/gallery/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    .line 498
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    .line 499
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 500
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    .line 501
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 490
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 484
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 492
    .restart local v3    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .line 505
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method public addMenuPresenter(Lcom/miui/gallery/view/menu/MenuPresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/miui/gallery/view/menu/MenuPresenter;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/miui/gallery/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 241
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 466
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 467
    .local v0, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    new-instance v1, Lcom/miui/gallery/view/menu/SubMenuBuilder;

    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/miui/gallery/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)V

    .line 468
    .local v1, "subMenu":Lcom/miui/gallery/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setSubMenu(Lcom/miui/gallery/view/menu/SubMenuBuilder;)V

    .line 470
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mCallback:Lcom/miui/gallery/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mCallback:Lcom/miui/gallery/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/miui/gallery/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/miui/gallery/view/menu/MenuBuilder;)V

    .line 794
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mExpandedItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mExpandedItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->collapseItemActionView(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 570
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 571
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1144
    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1145
    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1146
    iput-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1149
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->close(Z)V

    .line 987
    return-void
.end method

.method final close(Z)V
    .locals 4
    .param p1, "allMenusAreClosing"    # Z

    .prologue
    .line 968
    iget-boolean v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v2, :cond_0

    .line 982
    :goto_0
    return-void

    .line 972
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsClosing:Z

    .line 973
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 974
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuPresenter;

    .line 975
    .local v0, "presenter":Lcom/miui/gallery/view/menu/MenuPresenter;
    if-nez v0, :cond_1

    .line 976
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 978
    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/miui/gallery/view/menu/MenuPresenter;->onCloseMenu(Lcom/miui/gallery/view/menu/MenuBuilder;Z)V

    goto :goto_1

    .line 981
    .end local v0    # "presenter":Lcom/miui/gallery/view/menu/MenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsClosing:Z

    goto :goto_0
.end method

.method public collapseItemActionView(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 1307
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mExpandedItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    if-eq v3, p1, :cond_2

    .line 1308
    :cond_0
    const/4 v0, 0x0

    .line 1327
    :cond_1
    :goto_0
    return v0

    .line 1311
    :cond_2
    const/4 v0, 0x0

    .line 1313
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1314
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1315
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/view/menu/MenuPresenter;

    .line 1316
    .local v1, "presenter":Lcom/miui/gallery/view/menu/MenuPresenter;
    if-nez v1, :cond_4

    .line 1317
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1318
    :cond_4
    invoke-interface {v1, p0, p1}, Lcom/miui/gallery/view/menu/MenuPresenter;->collapseItemActionView(Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1322
    .end local v1    # "presenter":Lcom/miui/gallery/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1324
    if-eqz v0, :cond_1

    .line 1325
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mExpandedItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mCallback:Lcom/miui/gallery/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mCallback:Lcom/miui/gallery/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/miui/gallery/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/miui/gallery/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    .line 1283
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1284
    const/4 v0, 0x0

    .line 1303
    :cond_0
    :goto_0
    return v0

    .line 1287
    :cond_1
    const/4 v0, 0x0

    .line 1289
    .local v0, "expanded":Z
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1290
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1291
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/view/menu/MenuPresenter;

    .line 1292
    .local v1, "presenter":Lcom/miui/gallery/view/menu/MenuPresenter;
    if-nez v1, :cond_3

    .line 1293
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1294
    :cond_3
    invoke-interface {v1, p0, p1}, Lcom/miui/gallery/view/menu/MenuPresenter;->expandItemActionView(Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1298
    .end local v1    # "presenter":Lcom/miui/gallery/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1300
    if-eqz v0, :cond_0

    .line 1301
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mExpandedItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 682
    .local v2, "size":I
    if-gez p2, :cond_0

    .line 683
    const/4 p2, 0x0

    .line 686
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 687
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 689
    .local v1, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 694
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 686
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    .end local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 646
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 647
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 648
    .local v1, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 659
    .end local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :goto_1
    return-object v1

    .line 650
    .restart local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 651
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 653
    .local v2, "possibleItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 654
    goto :goto_1

    .line 646
    .end local v2    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    .end local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 665
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 666
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 667
    .local v1, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 672
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 665
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    .end local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/miui/gallery/view/menu/MenuItemImpl;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 876
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 877
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 878
    invoke-virtual {p0, v1, p1, p2}, Lcom/miui/gallery/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 880
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-object v7

    .line 884
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    .line 885
    .local v2, "metaState":I
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 887
    .local v3, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 890
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 891
    .local v6, "size":I
    const/4 v8, 0x1

    if-ne v6, v8, :cond_2

    .line 892
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/view/menu/MenuItemImpl;

    goto :goto_0

    .line 895
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v4

    .line 898
    .local v4, "qwerty":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 899
    .local v0, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v5

    .line 901
    .local v5, "shortcutChar":C
    :goto_1
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v5, v9, :cond_4

    and-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_6

    :cond_4
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v5, v9, :cond_5

    and-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_6

    :cond_5
    if-eqz v4, :cond_3

    const/16 v9, 0x8

    if-ne v5, v9, :cond_3

    const/16 v9, 0x43

    if-ne p1, v9, :cond_3

    :cond_6
    move-object v7, v0

    .line 907
    goto :goto_0

    .line 900
    .end local v5    # "shortcutChar":C
    :cond_7
    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v5

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 10
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    const/16 v9, 0x43

    .line 832
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v4

    .line 833
    .local v4, "qwerty":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    .line 834
    .local v2, "metaState":I
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 836
    .local v3, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    .line 838
    .local v0, "isKeyCodeMapped":Z
    if-nez v0, :cond_1

    if-eq p2, v9, :cond_1

    .line 860
    :cond_0
    return-void

    .line 843
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 844
    .local v1, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 845
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 846
    invoke-virtual {v6, p1, p2, p3}, Lcom/miui/gallery/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 848
    :cond_3
    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v5

    .line 850
    .local v5, "shortcutChar":C
    :goto_1
    and-int/lit8 v6, v2, 0x5

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x0

    aget-char v6, v6, v8

    if-eq v5, v6, :cond_4

    iget-object v6, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x2

    aget-char v6, v6, v8

    if-eq v5, v6, :cond_4

    if-eqz v4, :cond_2

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    if-ne p2, v9, :cond_2

    .line 856
    :cond_4
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 857
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 849
    .end local v5    # "shortcutChar":C
    :cond_5
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v5

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 7

    .prologue
    .line 1097
    iget-boolean v5, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v5, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 1102
    :cond_0
    const/4 v0, 0x0

    .line 1103
    .local v0, "flagged":Z
    iget-object v5, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1104
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/view/menu/MenuPresenter;

    .line 1105
    .local v2, "presenter":Lcom/miui/gallery/view/menu/MenuPresenter;
    if-nez v2, :cond_1

    .line 1106
    iget-object v6, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1108
    :cond_1
    invoke-interface {v2}, Lcom/miui/gallery/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v6

    or-int/2addr v0, v6

    goto :goto_1

    .line 1112
    .end local v2    # "presenter":Lcom/miui/gallery/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 1113
    iget-object v5, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1114
    iget-object v5, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1115
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 1116
    .local v4, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 1117
    .local v1, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1118
    iget-object v6, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1120
    :cond_3
    iget-object v6, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1126
    .end local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    .end local v4    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/view/menu/MenuItemImpl;>;"
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1127
    iget-object v5, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1128
    iget-object v5, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1130
    :cond_5
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/miui/gallery/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mExpandedItem:Lcom/miui/gallery/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->flagActionItems()V

    .line 1140
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1279
    iget-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/miui/gallery/view/menu/MenuBuilder;
    .locals 0

    .prologue
    .line 1260
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1053
    iget-boolean v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1069
    :goto_0
    return-object v1

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1060
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 1061
    .local v0, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1062
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1066
    .end local v0    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1067
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1069
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 633
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 634
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 635
    .local v1, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 636
    const/4 v3, 0x1

    .line 640
    .end local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :goto_1
    return v3

    .line 633
    .restart local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    .end local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 709
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/miui/gallery/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/miui/gallery/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 1048
    iput-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1049
    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1050
    return-void
.end method

.method onItemVisibleChanged(Lcom/miui/gallery/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 1037
    iput-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1038
    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1039
    return-void
.end method

.method onItemsChanged(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    .prologue
    const/4 v1, 0x1

    .line 997
    iget-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 998
    if-eqz p1, :cond_0

    .line 999
    iput-boolean v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1000
    iput-boolean v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1003
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 1007
    :goto_0
    return-void

    .line 1005
    :cond_1
    iput-boolean v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 916
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/miui/gallery/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 920
    move-object v1, p1

    check-cast v1, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 922
    .local v1, "itemImpl":Lcom/miui/gallery/view/menu/MenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v0, v6

    .line 956
    :cond_1
    :goto_0
    return v0

    .line 926
    :cond_2
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->invoke()Z

    move-result v0

    .line 928
    .local v0, "invoked":Z
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    .line 929
    .local v2, "provider":Landroid/view/ActionProvider;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 930
    .local v3, "providerHasSubMenu":Z
    :goto_1
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 931
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v6

    or-int/2addr v0, v6

    .line 932
    if-eqz v0, :cond_1

    .line 933
    invoke-virtual {p0, v5}, Lcom/miui/gallery/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .end local v3    # "providerHasSubMenu":Z
    :cond_3
    move v3, v6

    .line 929
    goto :goto_1

    .line 935
    .restart local v3    # "providerHasSubMenu":Z
    :cond_4
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v3, :cond_8

    .line 936
    :cond_5
    invoke-virtual {p0, v6}, Lcom/miui/gallery/view/menu/MenuBuilder;->close(Z)V

    .line 938
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-nez v6, :cond_6

    .line 939
    new-instance v6, Lcom/miui/gallery/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0, v1}, Lcom/miui/gallery/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;Lcom/miui/gallery/view/menu/MenuItemImpl;)V

    invoke-virtual {v1, v6}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setSubMenu(Lcom/miui/gallery/view/menu/SubMenuBuilder;)V

    .line 942
    :cond_6
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/view/menu/SubMenuBuilder;

    .line 943
    .local v4, "subMenu":Lcom/miui/gallery/view/menu/SubMenuBuilder;
    if-eqz v3, :cond_7

    .line 944
    invoke-virtual {v2, v4}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 946
    :cond_7
    invoke-direct {p0, v4}, Lcom/miui/gallery/view/menu/MenuBuilder;->dispatchSubMenuSelected(Lcom/miui/gallery/view/menu/SubMenuBuilder;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 947
    if-nez v0, :cond_1

    .line 948
    invoke-virtual {p0, v5}, Lcom/miui/gallery/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 951
    .end local v4    # "subMenu":Lcom/miui/gallery/view/menu/SubMenuBuilder;
    :cond_8
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_1

    .line 952
    invoke-virtual {p0, v5}, Lcom/miui/gallery/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .prologue
    .line 809
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/miui/gallery/view/menu/MenuItemImpl;

    move-result-object v1

    .line 811
    .local v1, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 813
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {p0, v1, p3}, Lcom/miui/gallery/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 817
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 818
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/gallery/view/menu/MenuBuilder;->close(Z)V

    .line 821
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .param p1, "group"    # I

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 517
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 518
    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 519
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .local v2, "numRemoved":I
    move v3, v2

    .line 520
    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 522
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/miui/gallery/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2    # "numRemoved":I
    .restart local v3    # "numRemoved":I
    goto :goto_0

    .line 526
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 528
    .end local v1    # "maxRemovable":I
    .end local v2    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 511
    return-void
.end method

.method public removeMenuPresenter(Lcom/miui/gallery/view/menu/MenuPresenter;)V
    .locals 4
    .param p1, "presenter"    # Lcom/miui/gallery/view/menu/MenuPresenter;

    .prologue
    .line 250
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 251
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuPresenter;

    .line 252
    .local v0, "item":Lcom/miui/gallery/view/menu/MenuPresenter;
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    .end local v0    # "item":Lcom/miui/gallery/view/menu/MenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/gallery/view/menu/MenuPresenter;>;"
    :cond_2
    return-void
.end method

.method public setCallback(Lcom/miui/gallery/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/miui/gallery/view/menu/MenuBuilder$Callback;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mCallback:Lcom/miui/gallery/view/menu/MenuBuilder$Callback;

    .line 412
    return-void
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 574
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    .line 576
    .local v1, "group":I
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 577
    .local v0, "curItem":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 578
    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    if-ne v0, p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 589
    .end local v0    # "curItem":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_2
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 3
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 593
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 594
    .local v0, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 595
    invoke-virtual {v0, p3}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 596
    invoke-virtual {v0, p2}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 599
    .end local v0    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 3
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 622
    iget-object v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 623
    .local v0, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 624
    invoke-virtual {v0, p2}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 627
    .end local v0    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, "changedAtLeastOneItem":Z
    iget-object v2, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/view/menu/MenuItemImpl;

    .line 608
    .local v1, "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 609
    invoke-virtual {v1, p2}, Lcom/miui/gallery/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    const/4 v0, 0x1

    goto :goto_0

    .line 615
    .end local v1    # "item":Lcom/miui/gallery/view/menu/MenuItemImpl;
    :cond_1
    if-eqz v0, :cond_2

    .line 616
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 618
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/gallery/view/menu/MenuBuilder;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1214
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1215
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/gallery/view/menu/MenuBuilder;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1190
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1191
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/miui/gallery/view/menu/MenuBuilder;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1238
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1239
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 714
    iput-boolean p1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 716
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 717
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1022
    iput-boolean v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1024
    iget-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 1025
    iput-boolean v1, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1026
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1028
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 1016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1019
    :cond_0
    return-void
.end method
