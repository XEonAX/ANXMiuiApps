.class public Lcom/miui/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;,
        Lcom/miui/internal/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field public static final CATEGORY_MASK:I = -0x10000

.field public static final CATEGORY_SHIFT:I = 0x10

.field public static final USER_MASK:I = 0xffff

.field private static final nU:Ljava/lang/String; = "android:menu:presenters"

.field private static final nV:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final nW:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final nX:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final nY:Landroid/content/res/Resources;

.field private nZ:Z

.field private nt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private oa:Z

.field private ob:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

.field private oc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private od:Z

.field private oe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private of:Z

.field private og:I

.field private oh:Landroid/view/ContextMenu$ContextMenuInfo;

.field oi:Ljava/lang/CharSequence;

.field oj:Landroid/graphics/drawable/Drawable;

.field ok:Landroid/view/View;

.field private ol:Z

.field private om:Z

.field private on:Z

.field private oo:Z

.field private op:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private oq:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private or:Lcom/miui/internal/view/menu/MenuItemImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/internal/view/menu/MenuBuilder;->nX:[I

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
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:I

    .line 158
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ol:Z

    .line 160
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->om:Z

    .line 162
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->on:Z

    .line 164
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oo:Z

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->op:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 209
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Landroid/content/res/Resources;

    .line 212
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    .line 214
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nt:Ljava/util/ArrayList;

    .line 215
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->od:Z

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oe:Ljava/util/ArrayList;

    .line 219
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->of:Z

    .line 221
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->i(Z)V

    .line 222
    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .line 795
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 796
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 797
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 798
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 795
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 802
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 10

    .line 416
    invoke-static {p3}, Lcom/miui/internal/view/menu/MenuBuilder;->l(I)I

    move-result v8

    .line 418
    new-instance v9, Lcom/miui/internal/view/menu/MenuItemImpl;

    iget v7, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:I

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, v8

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/internal/view/menu/MenuItemImpl;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 421
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oh:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p1, :cond_0

    .line 423
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oh:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v9, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->a(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 426
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-static {p2, v8}, Lcom/miui/internal/view/menu/MenuBuilder;->a(Ljava/util/ArrayList;I)I

    move-result p2

    invoke-virtual {p1, p2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 427
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 429
    return-object v9
.end method

.method private a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .line 1151
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1153
    const/4 v1, 0x0

    if-eqz p5, :cond_0

    .line 1154
    iput-object p5, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ok:Landroid/view/View;

    .line 1157
    iput-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oi:Ljava/lang/CharSequence;

    .line 1158
    iput-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oj:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 1160
    :cond_0
    if-lez p1, :cond_1

    .line 1161
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oi:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1162
    :cond_1
    if-eqz p2, :cond_2

    .line 1163
    iput-object p2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oi:Ljava/lang/CharSequence;

    .line 1166
    :cond_2
    :goto_0
    if-lez p3, :cond_3

    .line 1167
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oj:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1168
    :cond_3
    if-eqz p4, :cond_4

    .line 1169
    iput-object p4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oj:Landroid/graphics/drawable/Drawable;

    .line 1173
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ok:Landroid/view/View;

    .line 1177
    :goto_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 1178
    return-void
.end method

.method private a(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    return v1

    .line 278
    :cond_0
    nop

    .line 280
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 281
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 282
    if-nez v3, :cond_1

    .line 283
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    :cond_1
    if-nez v1, :cond_2

    .line 285
    invoke-interface {v3, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    move-result v1

    .line 287
    :cond_2
    :goto_1
    goto :goto_0

    .line 288
    :cond_3
    return v1
.end method

.method private c(IZ)V
    .locals 1

    .line 537
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 543
    if-eqz p2, :cond_1

    .line 544
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 546
    :cond_1
    return-void

    .line 538
    :cond_2
    :goto_0
    return-void
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 317
    const-string v0, "android:menu:presenters"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    .line 319
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 324
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 325
    if-nez v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 328
    :cond_1
    invoke-interface {v2}, Lcom/miui/internal/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 329
    if-lez v1, :cond_2

    .line 330
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 331
    if-eqz v1, :cond_2

    .line 332
    invoke-interface {v2, v1}, Lcom/miui/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 336
    :cond_2
    :goto_1
    goto :goto_0

    .line 337
    :cond_3
    return-void

    .line 320
    :cond_4
    :goto_2
    return-void
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    return-void

    .line 296
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 299
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 300
    if-nez v3, :cond_1

    .line 301
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    :cond_1
    invoke-interface {v3}, Lcom/miui/internal/view/menu/MenuPresenter;->getId()I

    move-result v2

    .line 304
    if-lez v2, :cond_2

    .line 305
    invoke-interface {v3}, Lcom/miui/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 306
    if-eqz v3, :cond_2

    .line 307
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 311
    :cond_2
    :goto_1
    goto :goto_0

    .line 313
    :cond_3
    const-string v1, "android:menu:presenters"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 314
    return-void
.end method

.method private h(Z)V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 262
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 263
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 264
    if-nez v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    :cond_1
    invoke-interface {v2, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    .line 269
    :goto_1
    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 271
    return-void
.end method

.method private i(Z)V
    .locals 2

    .line 761
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Landroid/content/res/Resources;

    .line 762
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Landroid/content/res/Resources;

    sget v1, Lcom/miui/internal/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 763
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oa:Z

    .line 764
    return-void
.end method

.method private static l(I)I
    .locals 2

    .line 728
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    .line 730
    if-ltz v0, :cond_0

    sget-object v1, Lcom/miui/internal/view/menu/MenuBuilder;->nX:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 734
    sget-object v1, Lcom/miui/internal/view/menu/MenuBuilder;->nX:[I

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 731
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "order does not contain a valid category."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a(ILandroid/view/KeyEvent;)Lcom/miui/internal/view/menu/MenuItemImpl;
    .locals 9

    .line 874
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->op:Ljava/util/ArrayList;

    .line 875
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 876
    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 878
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 879
    return-object v2

    .line 882
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 883
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 885
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 888
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 889
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_1

    .line 890
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object p1

    .line 893
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result p2

    .line 896
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 897
    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lcom/miui/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    goto :goto_1

    .line 898
    :cond_2
    invoke-virtual {v4}, Lcom/miui/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    .line 899
    :goto_1
    iget-object v7, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v7, v7, v5

    if-ne v6, v7, :cond_3

    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_5

    :cond_3
    iget-object v7, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x2

    aget-char v7, v7, v8

    if-ne v6, v7, :cond_4

    and-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_5

    :cond_4
    if-eqz p2, :cond_6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    const/16 v6, 0x43

    if-ne p1, v6, :cond_6

    .line 905
    :cond_5
    return-object v4

    .line 907
    :cond_6
    goto :goto_0

    .line 908
    :cond_7
    return-object v2
.end method

.method a(Lcom/miui/internal/view/menu/MenuItemImpl;)V
    .locals 0

    .line 1035
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->od:Z

    .line 1036
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 1037
    return-void
.end method

.method a(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 830
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    .line 831
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 832
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 834
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    .line 836
    const/16 v4, 0x43

    if-nez v3, :cond_0

    if-eq p2, v4, :cond_0

    .line 837
    return-void

    .line 841
    :cond_0
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 842
    invoke-virtual {v5}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 843
    invoke-virtual {v5}, Lcom/miui/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/view/menu/MenuBuilder;

    .line 844
    invoke-virtual {v6, p1, p2, p3}, Lcom/miui/internal/view/menu/MenuBuilder;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 846
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v5}, Lcom/miui/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    goto :goto_1

    .line 847
    :cond_2
    invoke-virtual {v5}, Lcom/miui/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    .line 848
    :goto_1
    and-int/lit8 v7, v1, 0x5

    if-nez v7, :cond_4

    if-eqz v6, :cond_4

    iget-object v7, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x0

    aget-char v7, v7, v8

    if-eq v6, v7, :cond_3

    iget-object v7, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x2

    aget-char v7, v7, v8

    if-eq v6, v7, :cond_3

    if-eqz v0, :cond_4

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    if-ne p2, v4, :cond_4

    .line 854
    :cond_3
    invoke-virtual {v5}, Lcom/miui/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 855
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_4
    goto :goto_0

    .line 858
    :cond_5
    return-void
.end method

.method aR()Z
    .locals 1

    .line 1277
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->on:Z

    return v0
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 444
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    .line 479
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 480
    nop

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    .line 482
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 484
    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    .line 485
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 488
    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    .line 489
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 490
    new-instance v3, Landroid/content/Intent;

    .line 491
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 492
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 495
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/miui/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 496
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 497
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    .line 498
    if-eqz p8, :cond_3

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v4, :cond_3

    .line 499
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v3, p8, p7

    .line 488
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 503
    :cond_4
    return v2
.end method

.method public addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/miui/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 238
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->of:Z

    .line 239
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 464
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 465
    new-instance p2, Lcom/miui/internal/view/menu/SubMenuBuilder;

    iget-object p3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)V

    .line 466
    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->b(Lcom/miui/internal/view/menu/SubMenuBuilder;)V

    .line 468
    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method b(Landroid/view/MenuItem;)V
    .locals 4

    .line 572
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 574
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 575
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 576
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 577
    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 580
    goto :goto_0

    .line 584
    :cond_1
    if-ne v2, p1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/MenuItemImpl;->m(Z)V

    .line 586
    :cond_3
    goto :goto_0

    .line 587
    :cond_4
    return-void
.end method

.method b(Lcom/miui/internal/view/menu/MenuItemImpl;)V
    .locals 0

    .line 1046
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->of:Z

    .line 1047
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 1048
    return-void
.end method

.method public changeMenuMode()V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ob:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ob:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 792
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->or:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->or:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 568
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 569
    return-void
.end method

.method public clearAll()V
    .locals 2

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ol:Z

    .line 554
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->clear()V

    .line 555
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 556
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ol:Z

    .line 557
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->om:Z

    .line 558
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 559
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .line 1142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oj:Landroid/graphics/drawable/Drawable;

    .line 1143
    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oi:Ljava/lang/CharSequence;

    .line 1144
    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ok:Landroid/view/View;

    .line 1146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 1147
    return-void
.end method

.method public close()V
    .locals 1

    .line 984
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    .line 985
    return-void
.end method

.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 4

    .line 1305
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->or:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_0

    goto :goto_3

    .line 1309
    :cond_0
    nop

    .line 1311
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1312
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1313
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 1314
    if-nez v3, :cond_1

    .line 1315
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1316
    :cond_1
    invoke-interface {v3, p0, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1317
    goto :goto_2

    .line 1319
    :cond_2
    :goto_1
    goto :goto_0

    .line 1320
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1322
    if-eqz v1, :cond_4

    .line 1323
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->or:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 1325
    :cond_4
    return v1

    .line 1306
    :cond_5
    :goto_3
    return v1
.end method

.method dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ob:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ob:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 4

    .line 1281
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1282
    return v1

    .line 1285
    :cond_0
    nop

    .line 1287
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1288
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1289
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 1290
    if-nez v3, :cond_1

    .line 1291
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1292
    :cond_1
    invoke-interface {v3, p0, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->expandItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1293
    goto :goto_2

    .line 1295
    :cond_2
    :goto_1
    goto :goto_0

    .line 1296
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1298
    if-eqz v1, :cond_4

    .line 1299
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->or:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 1301
    :cond_4
    return v1
.end method

.method public findGroupIndex(I)I
    .locals 1

    .line 674
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result p1

    return p1
.end method

.method public findGroupIndex(II)I
    .locals 2

    .line 678
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 680
    if-gez p2, :cond_0

    .line 681
    const/4 p2, 0x0

    .line 684
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    .line 685
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 687
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 688
    return p2

    .line 684
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 692
    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    .line 643
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 644
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 645
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 646
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 647
    return-object v2

    .line 648
    :cond_0
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 649
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 651
    if-eqz v2, :cond_1

    .line 652
    return-object v2

    .line 644
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findItemIndex(I)I
    .locals 3

    .line 661
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 663
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 664
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 665
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 666
    return v1

    .line 663
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public flagActionItems()V
    .locals 5

    .line 1095
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->of:Z

    if-nez v0, :cond_0

    .line 1096
    return-void

    .line 1100
    :cond_0
    nop

    .line 1101
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1102
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 1103
    if-nez v4, :cond_1

    .line 1104
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1106
    :cond_1
    invoke-interface {v4}, Lcom/miui/internal/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v3

    or-int/2addr v2, v3

    .line 1108
    :goto_1
    goto :goto_0

    .line 1110
    :cond_2
    if-eqz v2, :cond_5

    .line 1111
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1112
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oe:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1113
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1114
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 1115
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1116
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1118
    :cond_3
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oe:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    :goto_3
    goto :goto_2

    .line 1121
    :cond_4
    goto :goto_4

    .line 1124
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1125
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oe:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1126
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oe:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1128
    :goto_4
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->of:Z

    .line 1129
    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1132
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1133
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .line 405
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/miui/internal/view/menu/MenuItemImpl;
    .locals 1

    .line 1329
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->or:Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oj:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oi:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ok:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1137
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1138
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oe:Ljava/util/ArrayList;

    return-object v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    .line 1258
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1051
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->od:Z

    if-nez v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nt:Ljava/util/ArrayList;

    return-object v0

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1058
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 1059
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1060
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nt:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    :cond_1
    goto :goto_0

    .line 1064
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->od:Z

    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->of:Z

    .line 1067
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nt:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .line 629
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 631
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 632
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 633
    invoke-virtual {v3}, Lcom/miui/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    const/4 v0, 0x1

    return v0

    .line 631
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    :cond_1
    return v1
.end method

.method isQwertyMode()Z
    .locals 1

    .line 741
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nZ:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 707
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILandroid/view/KeyEvent;)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .line 770
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oa:Z

    return v0
.end method

.method final j(Z)V
    .locals 3

    .line 966
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oo:Z

    if-eqz v0, :cond_0

    .line 967
    return-void

    .line 970
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oo:Z

    .line 971
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 972
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 973
    if-nez v2, :cond_1

    .line 974
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 976
    :cond_1
    invoke-interface {v2, p0, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 978
    :goto_1
    goto :goto_0

    .line 979
    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oo:Z

    .line 980
    return-void
.end method

.method k(Z)V
    .locals 2

    .line 995
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ol:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 996
    if-eqz p1, :cond_0

    .line 997
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->od:Z

    .line 998
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->of:Z

    .line 1001
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->h(Z)V

    goto :goto_0

    .line 1003
    :cond_1
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->om:Z

    .line 1005
    :goto_0
    return-void
.end method

.method l(Z)V
    .locals 0

    .line 1273
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->on:Z

    .line 1274
    return-void
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    .line 914
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 6

    .line 918
    check-cast p1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 920
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 924
    :cond_0
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v1

    .line 926
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    .line 927
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 928
    move v4, v3

    goto :goto_0

    .line 927
    :cond_1
    nop

    .line 928
    move v4, v0

    :goto_0
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 929
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    .line 930
    if-eqz v1, :cond_8

    .line 931
    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    goto :goto_2

    .line 933
    :cond_2
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 949
    :cond_3
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_8

    .line 950
    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    goto :goto_2

    .line 934
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    .line 936
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p2

    if-nez p2, :cond_5

    .line 937
    new-instance p2, Lcom/miui/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0, p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->b(Lcom/miui/internal/view/menu/SubMenuBuilder;)V

    .line 940
    :cond_5
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/SubMenuBuilder;

    .line 941
    if-eqz v4, :cond_6

    .line 942
    invoke-virtual {v2, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 944
    :cond_6
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->a(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    move-result p1

    or-int/2addr v1, p1

    .line 945
    if-nez v1, :cond_7

    .line 946
    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    .line 948
    :cond_7
    nop

    .line 954
    :cond_8
    :goto_2
    return v1

    .line 921
    :cond_9
    :goto_3
    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 807
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILandroid/view/KeyEvent;)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p1

    .line 809
    nop

    .line 811
    if-eqz p1, :cond_0

    .line 812
    invoke-virtual {p0, p1, p3}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_0

    .line 815
    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    .line 816
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    .line 819
    :cond_1
    return p1
.end method

.method public removeGroup(I)V
    .locals 5

    .line 513
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 515
    if-ltz v0, :cond_1

    .line 516
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 517
    nop

    .line 518
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v1, :cond_0

    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 520
    invoke-direct {p0, v0, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->c(IZ)V

    .line 518
    move v3, v4

    goto :goto_0

    .line 524
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 526
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 508
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->c(IZ)V

    .line 509
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1

    .line 549
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->c(IZ)V

    .line 550
    return-void
.end method

.method public removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 249
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 250
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_1

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oq:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    :cond_1
    goto :goto_0

    .line 254
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 7

    .line 375
    if-nez p1, :cond_0

    .line 376
    return-void

    .line 379
    :cond_0
    nop

    .line 380
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 382
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 383
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 384
    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 385
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 386
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 387
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 389
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 390
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/SubMenuBuilder;

    .line 391
    invoke-virtual {v3, p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 383
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    :cond_3
    const-string v0, "android:menu:expandedactionview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 396
    if-lez p1, :cond_4

    .line 397
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 398
    if-eqz p1, :cond_4

    .line 399
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 402
    :cond_4
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 345
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 7

    .line 348
    nop

    .line 350
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 351
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 352
    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 353
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 354
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 355
    if-nez v1, :cond_0

    .line 356
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 358
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 359
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    const-string v4, "android:menu:expandedactionview"

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 364
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/SubMenuBuilder;

    .line 365
    invoke-virtual {v3, p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 351
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    :cond_3
    if-eqz v1, :cond_4

    .line 370
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 372
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    return-void
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ob:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    .line 410
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oh:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1270
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    .line 225
    iput p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:I

    .line 226
    return-object p0
.end method

.method public setGroupCheckable(IZZ)V
    .locals 3

    .line 591
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 592
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 593
    invoke-virtual {v1, p3}, Lcom/miui/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 594
    invoke-virtual {v1, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 596
    :cond_0
    goto :goto_0

    .line 597
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 621
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 622
    invoke-virtual {v1, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 624
    :cond_0
    goto :goto_0

    .line 625
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5

    .line 604
    nop

    .line 605
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 606
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 607
    invoke-virtual {v2, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->n(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    nop

    .line 611
    move v1, v3

    :cond_0
    goto :goto_0

    .line 613
    :cond_1
    if-eqz v1, :cond_2

    .line 614
    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 616
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 6

    .line 1224
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1225
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 6

    .line 1212
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1213
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 6

    .line 1200
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1201
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 6

    .line 1188
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1189
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 6

    .line 1236
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1237
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 712
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nZ:Z

    .line 714
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 715
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1

    .line 752
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oa:Z

    if-ne v0, p1, :cond_0

    .line 753
    return-void

    .line 756
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->i(Z)V

    .line 757
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 758
    return-void
.end method

.method public size()I
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .line 1020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ol:Z

    .line 1022
    iget-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->om:Z

    if-eqz v1, :cond_0

    .line 1023
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->om:Z

    .line 1024
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 1026
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .line 1013
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ol:Z

    if-nez v0, :cond_0

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ol:Z

    .line 1015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->om:Z

    .line 1017
    :cond_0
    return-void
.end method
