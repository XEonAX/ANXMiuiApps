.class public Lcom/miui/internal/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final wD:Landroid/view/animation/Interpolator;

.field private static final wi:I = 0x14

.field private static final wj:I = 0x100

.field private static final wk:I = 0x258


# instance fields
.field private fO:I

.field private qO:I

.field private rc:Landroid/view/VelocityTracker;

.field private wA:Landroid/view/View;

.field private wB:Z

.field private final wC:Landroid/view/ViewGroup;

.field private final wE:Ljava/lang/Runnable;

.field private wl:I

.field private wm:[F

.field private wn:[F

.field private wo:[F

.field private wp:[F

.field private wq:[I

.field private wr:[I

.field private ws:[I

.field private wt:I

.field private wu:F

.field private wv:F

.field private ww:I

.field private wx:I

.field private wy:Landroid/widget/Scroller;

.field private final wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 325
    new-instance v0, Lcom/miui/internal/widget/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/miui/internal/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/miui/internal/widget/ViewDragHelper;->wD:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/miui/internal/widget/ViewDragHelper$Callback;)V
    .locals 1

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    .line 332
    new-instance v0, Lcom/miui/internal/widget/ViewDragHelper$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ViewDragHelper$2;-><init>(Lcom/miui/internal/widget/ViewDragHelper;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wE:Ljava/lang/Runnable;

    .line 373
    if-eqz p2, :cond_1

    .line 376
    if-eqz p3, :cond_0

    .line 380
    iput-object p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wC:Landroid/view/ViewGroup;

    .line 381
    iput-object p3, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    .line 383
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 385
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v0, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr v0, p3

    float-to-int p3, v0

    iput p3, p0, Lcom/miui/internal/widget/ViewDragHelper;->ww:I

    .line 387
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    .line 388
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/miui/internal/widget/ViewDragHelper;->wu:F

    .line 389
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wv:F

    .line 390
    new-instance p2, Landroid/widget/Scroller;

    sget-object p3, Lcom/miui/internal/widget/ViewDragHelper;->wD:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    .line 391
    return-void

    .line 377
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A(I)V
    .locals 9

    .line 797
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    array-length v0, v0

    if-gt v0, p1, :cond_2

    .line 798
    :cond_0
    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [F

    .line 799
    new-array v1, p1, [F

    .line 800
    new-array v2, p1, [F

    .line 801
    new-array v3, p1, [F

    .line 802
    new-array v4, p1, [I

    .line 803
    new-array v5, p1, [I

    .line 804
    new-array p1, p1, [I

    .line 806
    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    if-eqz v6, :cond_1

    .line 807
    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    const/4 v8, 0x0

    array-length v7, v7

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->wn:[F

    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->wn:[F

    array-length v7, v7

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->wo:[F

    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->wo:[F

    array-length v7, v7

    invoke-static {v6, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->wp:[F

    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->wp:[F

    array-length v7, v7

    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    array-length v7, v7

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->wr:[I

    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->wr:[I

    array-length v7, v7

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->ws:[I

    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->ws:[I

    array-length v7, v7

    invoke-static {v6, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    :cond_1
    iput-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    .line 817
    iput-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wn:[F

    .line 818
    iput-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wo:[F

    .line 819
    iput-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->wp:[F

    .line 820
    iput-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    .line 821
    iput-object v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->wr:[I

    .line 822
    iput-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->ws:[I

    .line 824
    :cond_2
    return-void
.end method

.method private C(I)Z
    .locals 3

    .line 1461
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1462
    const-string v0, "ViewDragHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 p1, 0x0

    return p1

    .line 1467
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(F)F
    .locals 4

    .line 673
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 674
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 675
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private a(FFF)F
    .locals 2

    .line 666
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 667
    cmpg-float p2, v0, p2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    return v1

    .line 668
    :cond_0
    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-float p3, p3

    :goto_0
    return p3

    .line 669
    :cond_2
    return p1
.end method

.method private a(III)I
    .locals 3

    .line 617
    if-nez p1, :cond_0

    .line 618
    const/4 p1, 0x0

    return p1

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wC:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 622
    div-int/lit8 v1, v0, 0x2

    .line 623
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 624
    int-to-float v1, v1

    .line 625
    invoke-direct {p0, v2}, Lcom/miui/internal/widget/ViewDragHelper;->a(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    .line 628
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 629
    if-lez p2, :cond_1

    .line 630
    const/4 p1, 0x4

    const/high16 p3, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/2addr p1, p2

    goto :goto_0

    .line 632
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 633
    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 635
    :goto_0
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private a(Landroid/view/View;IIII)I
    .locals 6

    .line 596
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wv:F

    float-to-int v0, v0

    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wu:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->b(III)I

    move-result p4

    .line 597
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wv:F

    float-to-int v0, v0

    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wu:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->b(III)I

    move-result p5

    .line 598
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 599
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 600
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 601
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 602
    add-int v4, v2, v3

    .line 603
    add-int v5, v0, v1

    .line 605
    if-eqz p4, :cond_0

    int-to-float v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    goto :goto_0

    .line 606
    :cond_0
    int-to-float v0, v0

    int-to-float v2, v5

    div-float/2addr v0, v2

    .line 607
    :goto_0
    if-eqz p5, :cond_1

    int-to-float v1, v3

    int-to-float v2, v4

    div-float/2addr v1, v2

    goto :goto_1

    .line 608
    :cond_1
    int-to-float v1, v1

    int-to-float v2, v5

    div-float/2addr v1, v2

    .line 610
    :goto_1
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, p1}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p2, p4, v2}, Lcom/miui/internal/widget/ViewDragHelper;->a(III)I

    move-result p2

    .line 611
    iget-object p4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {p4, p1}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Lcom/miui/internal/widget/ViewDragHelper;->a(III)I

    move-result p1

    .line 613
    int-to-float p2, p2

    mul-float/2addr p2, v0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private a(FF)V
    .locals 3

    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wB:Z

    .line 759
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 760
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wB:Z

    .line 762
    iget p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-ne p2, v0, :cond_0

    .line 764
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->B(I)V

    .line 766
    :cond_0
    return-void
.end method

.method private a(FFI)V
    .locals 2

    .line 827
    invoke-direct {p0, p3}, Lcom/miui/internal/widget/ViewDragHelper;->A(I)V

    .line 828
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wo:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 829
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wn:[F

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wp:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 830
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper;->g(II)I

    move-result p1

    aput p1, v0, p3

    .line 831
    iget p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wt:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wt:I

    .line 832
    return-void
.end method

.method private a(FFII)Z
    .locals 2

    .line 1234
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1235
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 1237
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_3

    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wx:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->ws:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wr:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_3

    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1243
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    iget-object p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {p2, p4}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1244
    iget-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->ws:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    .line 1245
    return v1

    .line 1247
    :cond_1
    iget-object p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wr:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 1241
    :cond_3
    :goto_0
    return v1
.end method

.method private a(Landroid/view/View;FF)Z
    .locals 4

    .line 1261
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1262
    return v0

    .line 1264
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 1265
    move v1, v2

    goto :goto_0

    .line 1264
    :cond_1
    nop

    .line 1265
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_2

    .line 1267
    move p1, v2

    goto :goto_1

    .line 1265
    :cond_2
    nop

    .line 1267
    move p1, v0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 1268
    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    iget p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    iget p3, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    mul-int/2addr p1, p3

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    move v0, v2

    nop

    :cond_3
    return v0

    .line 1269
    :cond_4
    if-eqz v1, :cond_6

    .line 1270
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p3, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    int-to-float p3, p3

    cmpg-float p1, p1, p3

    if-gez p1, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    move v0, v2

    nop

    :cond_5
    return v0

    .line 1271
    :cond_6
    if-eqz p1, :cond_8

    .line 1272
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    move v0, v2

    nop

    :cond_7
    return v0

    .line 1274
    :cond_8
    return v0
.end method

.method private b(III)I
    .locals 1

    .line 649
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 650
    if-ge v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 651
    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p3, p3

    :goto_0
    return p3

    .line 652
    :cond_2
    return p1
.end method

.method private b(FFI)V
    .locals 2

    .line 1213
    nop

    .line 1214
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/internal/widget/ViewDragHelper;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    goto :goto_0

    .line 1217
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/miui/internal/widget/ViewDragHelper;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1218
    or-int/lit8 v0, v0, 0x4

    .line 1220
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/miui/internal/widget/ViewDragHelper;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1221
    or-int/lit8 v0, v0, 0x2

    .line 1223
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/miui/internal/widget/ViewDragHelper;->a(FFII)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1224
    or-int/lit8 v0, v0, 0x8

    .line 1227
    :cond_3
    if-eqz v0, :cond_4

    .line 1228
    iget-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wr:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 1229
    iget-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {p1, v0, p3}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1231
    :cond_4
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 6

    .line 835
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 836
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 837
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 839
    invoke-direct {p0, v2}, Lcom/miui/internal/widget/ViewDragHelper;->C(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 840
    goto :goto_1

    .line 842
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 843
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 844
    iget-object v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->wo:[F

    aput v3, v5, v2

    .line 845
    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->wp:[F

    aput v4, v3, v2

    .line 836
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    :cond_1
    return-void
.end method

.method private b(IIII)Z
    .locals 10

    .line 576
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 577
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 578
    sub-int/2addr p1, v2

    .line 579
    sub-int/2addr p2, v3

    .line 581
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 583
    iget-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 584
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->B(I)V

    .line 585
    return p1

    .line 588
    :cond_0
    iget-object v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/miui/internal/widget/ViewDragHelper;->a(Landroid/view/View;IIII)I

    move-result v6

    .line 589
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 591
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->B(I)V

    .line 592
    const/4 p1, 0x1

    return p1
.end method

.method private bW()V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    if-nez v0, :cond_0

    .line 770
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 773
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wn:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 774
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wo:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 775
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wp:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 776
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 777
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wr:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 778
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->ws:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 779
    iput v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wt:I

    .line 780
    return-void
.end method

.method private bX()V
    .locals 4

    .line 1371
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wu:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1372
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    .line 1373
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wv:F

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wu:F

    .line 1372
    invoke-direct {p0, v0, v1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->a(FFF)F

    move-result v0

    .line 1375
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    .line 1376
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wv:F

    iget v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->wu:F

    .line 1375
    invoke-direct {p0, v1, v2, v3}, Lcom/miui/internal/widget/ViewDragHelper;->a(FFF)F

    move-result v1

    .line 1378
    invoke-direct {p0, v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->a(FF)V

    .line 1379
    return-void
.end method

.method private c(IIII)V
    .locals 10

    .line 1382
    nop

    .line 1383
    nop

    .line 1384
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1385
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1386
    if-eqz p3, :cond_0

    .line 1387
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result p1

    .line 1388
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1390
    :cond_0
    move v6, p1

    if-eqz p4, :cond_1

    .line 1391
    iget-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {p1, v2, p2, p4}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result p2

    .line 1392
    iget-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    sub-int v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1395
    :cond_1
    move v7, p2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1396
    :cond_2
    sub-int v8, v6, v0

    .line 1397
    sub-int v9, v7, v1

    .line 1398
    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget-object v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1401
    :cond_3
    return-void
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/miui/internal/widget/ViewDragHelper$Callback;)Lcom/miui/internal/widget/ViewDragHelper;
    .locals 1

    .line 359
    invoke-static {p0, p2}, Lcom/miui/internal/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/miui/internal/widget/ViewDragHelper$Callback;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object p0

    .line 360
    iget p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    mul-float/2addr p2, v0

    float-to-int p1, p2

    iput p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    .line 361
    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/miui/internal/widget/ViewDragHelper$Callback;)Lcom/miui/internal/widget/ViewDragHelper;
    .locals 2

    .line 346
    new-instance v0, Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/miui/internal/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private g(II)I
    .locals 3

    .line 1450
    nop

    .line 1452
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wC:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->ww:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1453
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wC:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->ww:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1454
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wC:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->ww:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1455
    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wC:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->ww:I

    sub-int/2addr p1, v1

    if-le p2, p1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 1457
    :cond_3
    return v0
.end method

.method private z(I)V
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 787
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wn:[F

    aput v1, v0, p1

    .line 788
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wo:[F

    aput v1, v0, p1

    .line 789
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wp:[F

    aput v1, v0, p1

    .line 790
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 791
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wr:[I

    aput v1, v0, p1

    .line 792
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->ws:[I

    aput v1, v0, p1

    .line 793
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wt:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wt:I

    .line 794
    return-void

    .line 784
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method B(I)V
    .locals 1

    .line 867
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-eq v0, p1, :cond_0

    .line 868
    iput p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    .line 869
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 870
    if-nez p1, :cond_0

    .line 871
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    .line 874
    :cond_0
    return-void
.end method

.method public abort()V
    .locals 9

    .line 511
    invoke-virtual {p0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    .line 512
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 514
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 515
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 516
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 517
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 518
    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    sub-int v7, v5, v0

    sub-int v8, v6, v1

    invoke-virtual/range {v3 .. v8}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 520
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ViewDragHelper;->B(I)V

    .line 521
    return-void
.end method

.method b(Landroid/view/View;I)Z
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    if-ne v0, p2, :cond_0

    .line 888
    return v1

    .line 890
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    iput p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    .line 892
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 893
    return v1

    .line 895
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 14

    move-object v0, p1

    .line 911
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 912
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 913
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 914
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 915
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 917
    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 920
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 921
    add-int v6, p5, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p6, v4

    .line 922
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 923
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v11, v6, v10

    .line 924
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v12, v8, v6

    .line 923
    move-object v6, p0

    move v8, v9

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v6 .. v12}, Lcom/miui/internal/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 925
    return v2

    .line 917
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 930
    :cond_1
    if-eqz p2, :cond_3

    move/from16 v1, p3

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_2

    move/from16 v1, p4

    neg-int v1, v1

    .line 931
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 930
    :goto_1
    return v2
.end method

.method public cancel()V
    .locals 1

    .line 497
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    .line 498
    invoke-direct {p0}, Lcom/miui/internal/widget/ViewDragHelper;->bW()V

    .line 500
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    .line 504
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 2

    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wC:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 464
    iput-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    .line 465
    iput p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    .line 466
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 467
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->B(I)V

    .line 468
    return-void

    .line 460
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wC:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkTouchSlop(I)Z
    .locals 4

    .line 1292
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    const/4 v1, 0x0

    array-length v0, v0

    .line 1293
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1294
    invoke-virtual {p0, p1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1295
    const/4 p1, 0x1

    return p1

    .line 1293
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1298
    :cond_1
    return v1
.end method

.method public checkTouchSlop(II)Z
    .locals 6

    .line 1317
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1318
    return v1

    .line 1321
    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1322
    move v0, v2

    goto :goto_0

    .line 1321
    :cond_1
    nop

    .line 1322
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    .line 1324
    move p1, v2

    goto :goto_1

    .line 1322
    :cond_2
    nop

    .line 1324
    move p1, v1

    :goto_1
    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->wo:[F

    aget v3, v3, p2

    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    .line 1325
    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wp:[F

    aget v4, v4, p2

    iget-object v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->wn:[F

    aget p2, v5, p2

    sub-float/2addr v4, p2

    .line 1327
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1328
    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    iget p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    iget p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    mul-int/2addr p1, p2

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    .line 1329
    :cond_4
    if-eqz v0, :cond_6

    .line 1330
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    move v1, v2

    nop

    :cond_5
    return v1

    .line 1331
    :cond_6
    if-eqz p1, :cond_8

    .line 1332
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    move v1, v2

    nop

    :cond_7
    return v1

    .line 1334
    :cond_8
    return v1
.end method

.method public continueSettling(Z)Z
    .locals 11

    .line 714
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 715
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 716
    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 717
    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v10

    .line 718
    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    .line 719
    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    .line 721
    if-eqz v8, :cond_0

    .line 722
    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 724
    :cond_0
    if-eqz v9, :cond_1

    .line 725
    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 728
    :cond_1
    if-nez v8, :cond_2

    if-eqz v9, :cond_3

    .line 729
    :cond_2
    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget-object v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 732
    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_4

    .line 735
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 736
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    .line 739
    :cond_4
    if-nez v0, :cond_6

    .line 740
    if-eqz p1, :cond_5

    .line 741
    iget-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wC:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wE:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 743
    :cond_5
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->B(I)V

    .line 748
    :cond_6
    :goto_0
    iget p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-ne p1, v2, :cond_7

    const/4 v1, 0x1

    nop

    :cond_7
    return v1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 3

    .line 1438
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wC:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1439
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1440
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wC:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1441
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1442
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1443
    return-object v1

    .line 1439
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1446
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public flingCapturedView(IIII)V
    .locals 10

    .line 689
    iget-boolean v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wB:Z

    if-eqz v0, :cond_0

    .line 694
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wy:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    .line 695
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    .line 696
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v5, v0

    .line 694
    move v6, p1

    move v7, p3

    move v8, p2

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 699
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->B(I)V

    .line 700
    return-void

    .line 690
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getActivePointerId()I
    .locals 1

    .line 482
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->ww:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .line 411
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wv:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .line 489
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->fO:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .line 420
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public isEdgeTouched(I)Z
    .locals 4

    .line 1347
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    const/4 v1, 0x0

    array-length v0, v0

    .line 1348
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1349
    invoke-virtual {p0, p1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1350
    const/4 p1, 0x1

    return p1

    .line 1348
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1353
    :cond_1
    return v1
.end method

.method public isEdgeTouched(II)Z
    .locals 1

    .line 1367
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    aget p2, v0, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPointerDown(I)Z
    .locals 2

    .line 863
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wt:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 1

    .line 1426
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1053
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1054
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1056
    if-nez v0, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    .line 1062
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1063
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    .line 1065
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1067
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 1164
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1165
    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    if-ne v0, v1, :cond_5

    .line 1167
    nop

    .line 1168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1169
    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_4

    .line 1170
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1171
    iget v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    if-ne v4, v5, :cond_2

    .line 1173
    goto :goto_1

    .line 1176
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1177
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1178
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    .line 1179
    invoke-virtual {p0, v5, v4}, Lcom/miui/internal/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1180
    iget p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    .line 1181
    goto :goto_2

    .line 1169
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1185
    :cond_4
    move p1, v3

    :goto_2
    if-ne p1, v3, :cond_5

    .line 1187
    invoke-direct {p0}, Lcom/miui/internal/widget/ViewDragHelper;->bX()V

    .line 1190
    :cond_5
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ViewDragHelper;->z(I)V

    .line 1191
    goto/16 :goto_6

    .line 1089
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1090
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1091
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1093
    invoke-direct {p0, v2, p1, v0}, Lcom/miui/internal/widget/ViewDragHelper;->a(FFI)V

    .line 1096
    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-nez v1, :cond_7

    .line 1099
    float-to-int v1, v2

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    .line 1100
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    .line 1102
    iget-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    aget p1, p1, v0

    .line 1103
    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wx:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_6

    .line 1104
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wx:I

    and-int/2addr p1, v2

    invoke-virtual {v1, p1, v0}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1106
    :cond_6
    goto/16 :goto_6

    :cond_7
    float-to-int v1, v2

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/miui/internal/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1111
    iget-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    goto/16 :goto_6

    .line 1203
    :pswitch_3
    iget p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-ne p1, v3, :cond_8

    .line 1204
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/miui/internal/widget/ViewDragHelper;->a(FF)V

    .line 1206
    :cond_8
    invoke-virtual {p0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_6

    .line 1117
    :pswitch_4
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-ne v0, v3, :cond_b

    .line 1119
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ViewDragHelper;->C(I)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_6

    .line 1121
    :cond_9
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1122
    if-ltz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 1123
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1124
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1125
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wo:[F

    iget v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1126
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wp:[F

    iget v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1128
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/miui/internal/widget/ViewDragHelper;->c(IIII)V

    .line 1130
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->b(Landroid/view/MotionEvent;)V

    .line 1132
    :cond_a
    goto/16 :goto_6

    .line 1134
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1135
    :goto_3
    if-ge v2, v0, :cond_f

    .line 1136
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1139
    invoke-direct {p0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->C(I)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    .line 1141
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1142
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1143
    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    .line 1144
    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->wn:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    .line 1146
    invoke-direct {p0, v6, v7, v1}, Lcom/miui/internal/widget/ViewDragHelper;->b(FFI)V

    .line 1147
    iget v8, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-ne v8, v3, :cond_d

    .line 1149
    goto :goto_5

    .line 1152
    :cond_d
    float-to-int v4, v4

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    .line 1153
    invoke-direct {p0, v4, v6, v7}, Lcom/miui/internal/widget/ViewDragHelper;->a(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1154
    invoke-virtual {p0, v4, v1}, Lcom/miui/internal/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1155
    goto :goto_5

    .line 1135
    :cond_e
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1158
    :cond_f
    :goto_5
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->b(Landroid/view/MotionEvent;)V

    .line 1160
    goto :goto_6

    .line 1195
    :pswitch_5
    iget p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-ne p1, v3, :cond_10

    .line 1196
    invoke-direct {p0}, Lcom/miui/internal/widget/ViewDragHelper;->bX()V

    .line 1198
    :cond_10
    invoke-virtual {p0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    .line 1199
    goto :goto_6

    .line 1069
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1070
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1071
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1072
    float-to-int v2, v0

    float-to-int v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 1074
    invoke-direct {p0, v0, v1, p1}, Lcom/miui/internal/widget/ViewDragHelper;->a(FFI)V

    .line 1079
    invoke-virtual {p0, v2, p1}, Lcom/miui/internal/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    .line 1081
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    aget v0, v0, p1

    .line 1082
    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wx:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    .line 1083
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wx:I

    and-int/2addr v0, v2

    invoke-virtual {v1, v0, p1}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1210
    :cond_11
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0

    .line 436
    iput p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wx:I

    .line 437
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0

    .line 400
    iput p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wv:F

    .line 401
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3

    .line 556
    iget-boolean v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wB:Z

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    .line 562
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    .line 563
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 561
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->b(IIII)Z

    move-result p1

    return p1

    .line 557
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 942
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 943
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 945
    if-nez v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    .line 951
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 952
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    .line 954
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 956
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1031
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1032
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->z(I)V

    .line 1033
    goto/16 :goto_3

    .line 978
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 979
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 980
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 982
    invoke-direct {p0, v5, p1, v0}, Lcom/miui/internal/widget/ViewDragHelper;->a(FFI)V

    .line 985
    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-nez v1, :cond_3

    .line 986
    iget-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    aget p1, p1, v0

    .line 987
    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wx:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 988
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wx:I

    and-int/2addr p1, v2

    invoke-virtual {v1, p1, v0}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 990
    :cond_2
    goto/16 :goto_3

    :cond_3
    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-ne v1, v2, :cond_a

    .line 992
    float-to-int v1, v5

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    .line 993
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    if-ne p1, v1, :cond_4

    .line 994
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    .line 996
    :cond_4
    goto/16 :goto_3

    .line 1002
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1003
    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_8

    .line 1004
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1007
    invoke-direct {p0, v2}, Lcom/miui/internal/widget/ViewDragHelper;->C(I)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    .line 1009
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1010
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1011
    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->wm:[F

    aget v7, v7, v2

    sub-float v7, v5, v7

    .line 1012
    iget-object v8, p0, Lcom/miui/internal/widget/ViewDragHelper;->wn:[F

    aget v8, v8, v2

    sub-float v8, v6, v8

    .line 1014
    invoke-direct {p0, v7, v8, v2}, Lcom/miui/internal/widget/ViewDragHelper;->b(FFI)V

    .line 1015
    iget v9, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-ne v9, v4, :cond_6

    .line 1017
    goto :goto_2

    .line 1020
    :cond_6
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 1021
    if-eqz v5, :cond_7

    invoke-direct {p0, v5, v7, v8}, Lcom/miui/internal/widget/ViewDragHelper;->a(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1022
    invoke-virtual {p0, v5, v2}, Lcom/miui/internal/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1023
    goto :goto_2

    .line 1003
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1026
    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->b(Landroid/view/MotionEvent;)V

    .line 1027
    goto :goto_3

    .line 1038
    :pswitch_4
    invoke-virtual {p0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    goto :goto_3

    .line 958
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 959
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 960
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 961
    invoke-direct {p0, v0, v1, p1}, Lcom/miui/internal/widget/ViewDragHelper;->a(FFI)V

    .line 963
    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v0

    .line 966
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    if-ne v0, v1, :cond_9

    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-ne v1, v2, :cond_9

    .line 967
    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->b(Landroid/view/View;I)Z

    .line 970
    :cond_9
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->wq:[I

    aget v0, v0, p1

    .line 971
    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wx:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    .line 972
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wz:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->wx:I

    and-int/2addr v0, v2

    invoke-virtual {v1, v0, p1}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1043
    :cond_a
    :goto_3
    iget p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wl:I

    if-ne p1, v4, :cond_b

    move v3, v4

    nop

    :cond_b
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->wA:Landroid/view/View;

    .line 539
    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->qO:I

    .line 541
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1, p1}, Lcom/miui/internal/widget/ViewDragHelper;->b(IIII)Z

    move-result p1

    return p1
.end method
