.class Lcom/miui/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# instance fields
.field private nD:Landroid/widget/ImageView;

.field private sI:Landroid/widget/ImageView;

.field private sJ:I

.field private sK:I

.field private sL:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1452
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1453
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1456
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1457
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sL:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1469
    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sK:I

    .line 1470
    return-void
.end method

.method public bx()I
    .locals 1

    .line 1503
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1488
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1489
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1490
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1479
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1480
    iget p1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sK:I

    if-eqz p1, :cond_0

    .line 1482
    iget p1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sK:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->q(I)V

    .line 1484
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1497
    sget v0, Lcom/miui/internal/R$id;->up:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    .line 1498
    sget v0, Lcom/miui/internal/R$id;->home:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->nD:Landroid/widget/ImageView;

    .line 1499
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sL:Landroid/graphics/drawable/Drawable;

    .line 1500
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 1551
    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    .line 1552
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    .line 1553
    nop

    .line 1554
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    .line 1555
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1556
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 1557
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 1558
    div-int/lit8 v2, v0, 0x2

    sub-int v5, p5, v2

    .line 1559
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    const/4 v4, 0x0

    add-int v7, v5, v0

    move-object v2, p0

    move v6, v1

    invoke-static/range {v2 .. v7}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 1560
    iget v0, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, p3

    .line 1561
    if-eqz p1, :cond_0

    .line 1562
    sub-int/2addr p4, v0

    goto :goto_0

    .line 1564
    :cond_0
    add-int/2addr p2, v0

    goto :goto_0

    .line 1568
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->nD:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1569
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->nD:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    .line 1570
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->nD:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 1571
    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    .line 1572
    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result p2

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p4, v2

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int v4, v0, p2

    .line 1573
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 p2, p3, 0x2

    sub-int/2addr p5, p2

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1574
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->nD:Landroid/widget/ImageView;

    add-int v6, v4, v1

    add-int v7, v5, p3

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 1575
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1508
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1509
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1510
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sJ:I

    .line 1511
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sJ:I

    .line 1512
    :goto_0
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 1513
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->nD:Landroid/widget/ImageView;

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v5, v1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/miui/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1514
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->nD:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1515
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->nD:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1516
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->nD:Landroid/widget/ImageView;

    .line 1517
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    .line 1516
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1519
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1520
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1521
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1522
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1524
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_1

    .line 1529
    :cond_1
    nop

    .line 1530
    nop

    .line 1535
    move v1, p1

    goto :goto_1

    .line 1526
    :cond_2
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1527
    nop

    .line 1535
    :goto_1
    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_3

    goto :goto_2

    .line 1540
    :cond_3
    nop

    .line 1541
    nop

    .line 1546
    move v0, p2

    goto :goto_2

    .line 1537
    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1538
    nop

    .line 1546
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1547
    return-void
.end method

.method public q(I)V
    .locals 2

    .line 1473
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sK:I

    .line 1474
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1475
    return-void
.end method

.method public q(Z)V
    .locals 1

    .line 1460
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->sI:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1461
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->nD:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1465
    return-void
.end method
