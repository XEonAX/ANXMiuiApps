.class Lcom/miui/internal/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# instance fields
.field bL:Lmiui/view/ViewPager;

.field bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

.field dl:Landroid/graphics/Rect;

.field dm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field dn:I

.field do:Z

.field dp:I

.field dq:I

.field dr:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lmiui/view/ViewPager;Lcom/miui/internal/app/DynamicFragmentPagerAdapter;)V
    .locals 2

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/b;->dl:Landroid/graphics/Rect;

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/b;->dm:Ljava/util/ArrayList;

    .line 588
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/b;->dn:I

    .line 589
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/app/b;->do:Z

    .line 593
    iput v0, p0, Lcom/miui/internal/app/b;->dp:I

    .line 596
    iput v0, p0, Lcom/miui/internal/app/b;->dq:I

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    .line 606
    iput-object p1, p0, Lcom/miui/internal/app/b;->bL:Lmiui/view/ViewPager;

    .line 607
    iput-object p2, p0, Lcom/miui/internal/app/b;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    .line 608
    return-void
.end method


# virtual methods
.method a(IIIF)I
    .locals 1

    .line 739
    nop

    .line 741
    if-ge p1, p3, :cond_0

    mul-int/2addr p1, p2

    div-int/2addr p1, p3

    goto :goto_0

    .line 742
    :cond_0
    move p1, p2

    :goto_0
    mul-float/2addr p4, p4

    .line 743
    int-to-float p1, p1

    const p3, 0x3dcccccd    # 0.1f

    const v0, 0x3f666666    # 0.9f

    div-float/2addr p4, v0

    sub-float/2addr p3, p4

    int-to-float p2, p2

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    .line 744
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1

    float-to-int p1, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method a(Landroid/view/ViewGroup;IIFZ)V
    .locals 6

    .line 721
    iget-object v0, p0, Lcom/miui/internal/app/b;->dm:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/b;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 722
    iget-object p1, p0, Lcom/miui/internal/app/b;->dm:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 723
    iget-object p1, p0, Lcom/miui/internal/app/b;->dm:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 724
    const v1, 0x7fffffff

    .line 725
    nop

    .line 726
    iget-object v2, p0, Lcom/miui/internal/app/b;->dm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 727
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 728
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    .line 729
    sub-int v1, v0, p1

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/miui/internal/app/b;->a(IIIF)I

    move-result v1

    .line 730
    if-eqz p5, :cond_0

    goto :goto_1

    :cond_0
    neg-int v1, v1

    .line 733
    :goto_1
    move v5, v1

    move v1, v0

    move v0, v5

    :cond_1
    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 734
    goto :goto_0

    .line 736
    :cond_2
    return-void
.end method

.method a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 684
    invoke-virtual {p0, p2, p1}, Lcom/miui/internal/app/b;->a(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    .line 685
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 687
    iget-object v0, p0, Lcom/miui/internal/app/b;->dl:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lmiui/util/ViewUtils;->getContentRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 688
    iget-object v0, p0, Lcom/miui/internal/app/b;->dl:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    return-void

    .line 692
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 693
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 694
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 695
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_2

    .line 696
    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    :cond_3
    return-void
.end method

.method a(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 702
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 703
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 704
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 708
    :cond_0
    goto :goto_0

    .line 709
    :cond_1
    return-void
.end method

.method d(Landroid/view/ViewGroup;)V
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/miui/internal/app/b;->dm:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/b;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 713
    iget-object p1, p0, Lcom/miui/internal/app/b;->dm:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 714
    iget-object p1, p0, Lcom/miui/internal/app/b;->dm:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 715
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 716
    goto :goto_0

    .line 718
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 672
    if-nez p1, :cond_0

    .line 673
    iget-object p1, p0, Lcom/miui/internal/app/b;->bL:Lmiui/view/ViewPager;

    invoke-virtual {p1}, Lmiui/view/ViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/app/b;->dn:I

    .line 674
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/app/b;->do:Z

    .line 676
    iget-object p1, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 677
    iget-object p1, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/b;->d(Landroid/view/ViewGroup;)V

    .line 680
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 7

    .line 613
    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    const/4 p4, 0x1

    if-nez p3, :cond_0

    .line 614
    iput p1, p0, Lcom/miui/internal/app/b;->dn:I

    .line 615
    iput-boolean p4, p0, Lcom/miui/internal/app/b;->do:Z

    .line 617
    iget-object v0, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/b;->d(Landroid/view/ViewGroup;)V

    .line 622
    :cond_0
    iget v0, p0, Lcom/miui/internal/app/b;->dp:I

    if-eq v0, p1, :cond_3

    .line 623
    iget v0, p0, Lcom/miui/internal/app/b;->dn:I

    if-ge v0, p1, :cond_1

    .line 624
    iput p1, p0, Lcom/miui/internal/app/b;->dn:I

    goto :goto_0

    .line 625
    :cond_1
    iget v0, p0, Lcom/miui/internal/app/b;->dn:I

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_2

    .line 626
    iput v1, p0, Lcom/miui/internal/app/b;->dn:I

    .line 628
    :cond_2
    :goto_0
    iput p1, p0, Lcom/miui/internal/app/b;->dp:I

    .line 629
    iput-boolean p4, p0, Lcom/miui/internal/app/b;->do:Z

    .line 631
    iget-object v0, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 632
    iget-object v0, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/b;->d(Landroid/view/ViewGroup;)V

    .line 636
    :cond_3
    if-lez p3, :cond_8

    .line 637
    nop

    .line 638
    iget-boolean p3, p0, Lcom/miui/internal/app/b;->do:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 639
    iput-boolean v0, p0, Lcom/miui/internal/app/b;->do:Z

    .line 640
    iget p3, p0, Lcom/miui/internal/app/b;->dn:I

    if-ne p3, p1, :cond_4

    iget-object p3, p0, Lcom/miui/internal/app/b;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-virtual {p3}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result p3

    sub-int/2addr p3, p4

    if-ge p1, p3, :cond_4

    .line 641
    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Lcom/miui/internal/app/b;->dq:I

    goto :goto_1

    .line 643
    :cond_4
    iput p1, p0, Lcom/miui/internal/app/b;->dq:I

    .line 645
    :goto_1
    iget-object p3, p0, Lcom/miui/internal/app/b;->bN:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    iget v1, p0, Lcom/miui/internal/app/b;->dq:I

    invoke-virtual {p3, v1, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->b(IZ)Landroid/app/Fragment;

    move-result-object p3

    .line 646
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    .line 647
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 648
    invoke-virtual {p3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p3

    const v1, 0x102000a

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 649
    instance-of v1, p3, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 650
    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    .line 655
    :cond_5
    iget p3, p0, Lcom/miui/internal/app/b;->dq:I

    if-ne p3, p1, :cond_6

    .line 656
    const/high16 p3, 0x3f800000    # 1.0f

    sub-float p2, p3, p2

    .line 659
    :cond_6
    move v5, p2

    iget-object p2, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    if-eqz p2, :cond_8

    .line 660
    iget-object v2, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    .line 661
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object p2, p0, Lcom/miui/internal/app/b;->dr:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget p2, p0, Lcom/miui/internal/app/b;->dq:I

    if-eq p2, p1, :cond_7

    .line 660
    move v6, p4

    goto :goto_2

    .line 661
    :cond_7
    nop

    .line 660
    move v6, v0

    :goto_2
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/internal/app/b;->a(Landroid/view/ViewGroup;IIFZ)V

    .line 664
    :cond_8
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 668
    return-void
.end method
