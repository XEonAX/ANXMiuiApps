.class public Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private bJ:Landroid/view/View;

.field private nD:Landroid/widget/ImageView;

.field private vA:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private vx:Landroid/app/ActionBar$Tab;

.field private vy:Landroid/widget/TextView;

.field private vz:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 514
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 515
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/ImageView;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vz:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vy:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method b(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vA:Lcom/miui/internal/widget/ScrollingTabContainerView;

    .line 519
    iput-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vx:Landroid/app/ActionBar$Tab;

    .line 521
    if-eqz p3, :cond_0

    .line 522
    const p1, 0x800013

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 526
    return-void
.end method

.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vx:Landroid/app/ActionBar$Tab;

    .line 530
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 531
    return-void
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vx:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vy:Landroid/widget/TextView;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 1

    .line 535
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 537
    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vA:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vA:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget p1, p1, Lcom/miui/internal/widget/ScrollingTabContainerView;->vj:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 540
    :goto_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 541
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 544
    :cond_1
    return-void
.end method

.method public update()V
    .locals 11

    .line 547
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vx:Landroid/app/ActionBar$Tab;

    .line 548
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 549
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_4

    .line 550
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 551
    if-eq v0, p0, :cond_1

    .line 552
    if-eqz v0, :cond_0

    .line 553
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 555
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 557
    :cond_1
    iput-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->bJ:Landroid/view/View;

    .line 558
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vy:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vy:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->nD:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 562
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->nD:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->nD:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    :cond_3
    goto/16 :goto_2

    .line 566
    :cond_4
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->bJ:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 567
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->bJ:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 568
    iput-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->bJ:Landroid/view/View;

    .line 571
    :cond_5
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 572
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 573
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 575
    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v4, :cond_7

    .line 576
    iget-object v9, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->nD:Landroid/widget/ImageView;

    if-nez v9, :cond_6

    .line 577
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 578
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 580
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 581
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    invoke-virtual {p0, v9, v7}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 583
    iput-object v9, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->nD:Landroid/widget/ImageView;

    .line 585
    :cond_6
    iget-object v9, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->nD:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->nD:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 587
    :cond_7
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->nD:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    .line 588
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->nD:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->nD:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
    :cond_8
    :goto_0
    if-eqz v5, :cond_b

    .line 593
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vy:Landroid/widget/TextView;

    if-nez v4, :cond_9

    .line 594
    new-instance v4, Lcom/miui/internal/widget/ScrollingTabTextView;

    const v9, 0x10102f5

    invoke-direct {v4, v1, v2, v9}, Lcom/miui/internal/widget/ScrollingTabTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 596
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 597
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 599
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 600
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    invoke-virtual {p0, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 602
    iput-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vy:Landroid/widget/TextView;

    .line 604
    :cond_9
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vy:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vy:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vz:Landroid/widget/ImageView;

    if-nez v2, :cond_c

    .line 608
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 609
    sget v4, Lcom/miui/internal/R$attr;->actionBarTabBadgeIcon:I

    invoke-static {v1, v4}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 615
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 616
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 617
    if-eqz v3, :cond_a

    .line 618
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 619
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vy:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    .line 620
    if-le v3, v4, :cond_a

    .line 621
    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 625
    :cond_a
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 627
    iput-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vz:Landroid/widget/ImageView;

    .line 628
    goto :goto_1

    .line 629
    :cond_b
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vy:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    .line 630
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vy:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->vy:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    :cond_c
    :goto_1
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->nD:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 635
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->nD:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 638
    :cond_d
    :goto_2
    return-void
.end method
