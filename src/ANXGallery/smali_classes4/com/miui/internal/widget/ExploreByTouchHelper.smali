.class public abstract Lcom/miui/internal/widget/ExploreByTouchHelper;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
    }
.end annotation


# static fields
.field private static final CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field private static final CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final uc:Ljava/lang/String;

.field private static final ud:Landroid/graphics/Rect;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mView:Landroid/view/View;

.field private ue:Landroid/graphics/Rect;

.field private uf:Landroid/graphics/Rect;

.field private ug:[I

.field private uh:Landroid/graphics/Rect;

.field private ui:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final uj:Landroid/view/accessibility/AccessibilityManager;

.field private uk:Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

.field private ul:I

.field private um:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uc:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ud:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 89
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ul:I

    .line 92
    iput v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->um:I

    .line 100
    if-eqz p1, :cond_0

    .line 104
    iput-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    .line 106
    iget-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uj:Landroid/view/accessibility/AccessibilityManager;

    .line 107
    return-void

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->u(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method private a(IILandroid/os/Bundle;)Z
    .locals 1

    .line 524
    const/16 v0, 0x40

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 529
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 527
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;->f(II)Z

    move-result p1

    return p1
.end method

.method private a(ILandroid/os/Bundle;)Z
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private a(Landroid/graphics/Rect;)Z
    .locals 4

    .line 554
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    return v0

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 565
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    .line 566
    check-cast v1, Landroid/view/View;

    .line 567
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 570
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 571
    goto :goto_0

    .line 568
    :cond_3
    :goto_1
    return v0

    .line 574
    :cond_4
    if-nez v1, :cond_5

    .line 575
    return v0

    .line 579
    :cond_5
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uh:Landroid/graphics/Rect;

    if-nez v1, :cond_6

    .line 580
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uh:Landroid/graphics/Rect;

    .line 582
    :cond_6
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uh:Landroid/graphics/Rect;

    .line 583
    iget-object v2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 584
    return v0

    .line 588
    :cond_7
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 555
    :cond_8
    :goto_2
    return v0
.end method

.method static synthetic a(Lcom/miui/internal/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private bJ()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    .line 380
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 382
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    .line 385
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 388
    iget-object v2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ui:Ljava/util/List;

    if-nez v2, :cond_0

    .line 389
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ui:Ljava/util/List;

    goto :goto_0

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ui:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 393
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ui:Ljava/util/List;

    .line 394
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 395
    if-lez v1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    .line 396
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 400
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 401
    iget-object v4, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 400
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 404
    :cond_3
    return-object v0
.end method

.method private bK()V
    .locals 1

    .line 505
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ug:[I

    .line 506
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uf:Landroid/graphics/Rect;

    .line 507
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ue:Landroid/graphics/Rect;

    .line 508
    return-void
.end method

.method private d(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 298
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;->e(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1

    .line 300
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;->t(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method private e(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 334
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 336
    sget-object v0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uc:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 342
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 351
    return-object p2
.end method

.method private f(II)Z
    .locals 1

    .line 534
    const/16 v0, 0x40

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 540
    const/4 p1, 0x0

    return p1

    .line 538
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->y(I)Z

    move-result p1

    return p1

    .line 536
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->x(I)Z

    move-result p1

    return p1
.end method

.method private performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 511
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 515
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/widget/ExploreByTouchHelper;->a(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 513
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/miui/internal/widget/ExploreByTouchHelper;->a(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private s(I)V
    .locals 2

    .line 274
    iget v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->um:I

    if-ne v0, p1, :cond_0

    .line 275
    return-void

    .line 278
    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->um:I

    .line 279
    iput p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->um:I

    .line 283
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 284
    const/16 p1, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 285
    return-void
.end method

.method private t(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 314
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 315
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 320
    return-object p1
.end method

.method private u(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 365
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 369
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->v(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->bJ()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method private v(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    .line 436
    invoke-direct {p0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->bK()V

    .line 437
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uf:Landroid/graphics/Rect;

    .line 438
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ug:[I

    .line 439
    iget-object v2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ue:Landroid/graphics/Rect;

    .line 441
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 444
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 445
    sget-object v5, Lcom/miui/internal/widget/ExploreByTouchHelper;->uc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 446
    sget-object v5, Lcom/miui/internal/widget/ExploreByTouchHelper;->ud:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 449
    invoke-virtual {p0, p1, v3}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 452
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_1
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 458
    sget-object v5, Lcom/miui/internal/widget/ExploreByTouchHelper;->ud:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 463
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v5

    .line 464
    and-int/lit8 v6, v5, 0x40

    if-nez v6, :cond_5

    .line 468
    const/16 v6, 0x80

    and-int/2addr v5, v6

    if-nez v5, :cond_4

    .line 474
    iget-object v5, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v5, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 476
    iget-object v5, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 479
    iget v5, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ul:I

    const/4 v7, 0x0

    if-ne v5, p1, :cond_2

    .line 480
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 481
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1

    .line 483
    :cond_2
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 484
    const/16 p1, 0x40

    invoke-virtual {v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 488
    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->a(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 489
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 490
    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 494
    :cond_3
    iget-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 495
    aget p1, v1, v7

    iget-object v5, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr p1, v5

    .line 496
    aget v1, v1, v4

    iget-object v4, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v1, v4

    .line 497
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 498
    invoke-virtual {v2, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 499
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 501
    return-object v3

    .line 469
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 465
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 459
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private w(I)Z
    .locals 1

    .line 597
    iget v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ul:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private x(I)Z
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 614
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 616
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uj:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 617
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->w(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 623
    iget v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ul:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 624
    iget v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ul:I

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 629
    :cond_1
    iput p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ul:I

    .line 632
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 633
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 635
    const/4 p1, 0x1

    return p1

    .line 637
    :cond_2
    return v2

    .line 618
    :cond_3
    :goto_0
    return v2
.end method

.method private y(I)Z
    .locals 1

    .line 648
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->w(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ul:I

    .line 650
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 651
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 653
    const/4 p1, 0x1

    return p1

    .line 655
    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uj:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uj:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 160
    return v1

    .line 154
    :pswitch_0
    iget p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ul:I

    if-eq p1, v4, :cond_1

    .line 155
    invoke-direct {p0, v4}, Lcom/miui/internal/widget/ExploreByTouchHelper;->s(I)V

    .line 156
    return v3

    .line 158
    :cond_1
    return v1

    .line 150
    :cond_2
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result p1

    .line 151
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->s(I)V

    .line 152
    if-eq p1, v4, :cond_3

    move v1, v3

    nop

    :cond_3
    return v1

    .line 144
    :cond_4
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uk:Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    if-nez p1, :cond_0

    .line 118
    new-instance p1, Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/miui/internal/widget/ExploreByTouchHelper;Lcom/miui/internal/widget/ExploreByTouchHelper$1;)V

    iput-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uk:Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uk:Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    return-object p1
.end method

.method public getFocusedVirtualView()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->ul:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public invalidateRoot()V
    .locals 2

    .line 204
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 205
    return-void
.end method

.method public invalidateVirtualView(I)V
    .locals 1

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 221
    return-void
.end method

.method public invalidateVirtualView(II)V
    .locals 2

    .line 242
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uj:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->d(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 248
    invoke-static {}, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class;

    move-result-object v1

    .line 249
    invoke-virtual {v1, p1, p2}, Lcom/miui/internal/variable/Android_View_Accessibility_AccessibilityEvent_class;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 250
    iget-object p2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v0, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 253
    :cond_0
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 721
    return-void
.end method

.method protected abstract onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 791
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method public sendEventForVirtualView(II)Z
    .locals 2

    .line 182
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->uj:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 187
    if-nez v1, :cond_1

    .line 188
    return v0

    .line 191
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;->d(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/miui/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v1, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 183
    :cond_2
    :goto_0
    return v0
.end method
