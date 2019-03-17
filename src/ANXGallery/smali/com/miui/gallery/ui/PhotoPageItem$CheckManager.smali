.class public Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CheckManager"
.end annotation


# instance fields
.field protected mCheckOriginLayout:Landroid/view/View;

.field protected mCheckRenderLayout:Landroid/view/View;

.field protected mCheckRoot:Landroid/view/View;

.field protected mOriginCheckBox:Landroid/widget/CheckBox;

.field protected mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

.field protected mOriginText:Landroid/widget/TextView;

.field protected mSelectCheckBox:Landroid/widget/CheckBox;

.field protected mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

.field protected mSelectLayout:Landroid/view/View;

.field private mVisiblePending:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageItem;


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1567
    return-void
.end method

.method static synthetic access$2300(Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 1548
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->relayout(Landroid/graphics/RectF;)V

    return-void
.end method

.method private formatContentDescriptionWithCheckState(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 4
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;
    .param p2, "checked"    # Z

    .prologue
    .line 1706
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_0

    const v0, 0x7f0c00d9

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1707
    :goto_1
    return-object v0

    .line 1706
    :cond_0
    const v0, 0x7f0c0505

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    .line 1707
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_2

    const v0, 0x7f0c00da

    :goto_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v0, 0x7f0c0506

    goto :goto_2
.end method

.method private originChecked()Z
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isGif()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private relayout(Landroid/graphics/RectF;)V
    .locals 11
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 1587
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1588
    const/4 v1, 0x0

    .line 1589
    .local v1, "l":I
    const/4 v3, 0x0

    .line 1590
    .local v3, "t":I
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageItem;->getWidth()I

    move-result v2

    .line 1591
    .local v2, "r":I
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageItem;->getHeight()I

    move-result v0

    .line 1592
    .local v0, "b":I
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getMinSlideWidth()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getMinSlideHeight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 1593
    iget v4, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v1, v4

    .line 1594
    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v3, v4

    .line 1595
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageItem;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v2, v4

    .line 1596
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageItem;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v0, v4

    .line 1598
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->ensureInflated()V

    .line 1599
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isLaidOut()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1600
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 1602
    :cond_1
    const-string v4, "PhotoPageItem"

    const-string v5, "relayout l[%d], t[%d], r[%d], b[%d]  isLaidOut %s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isLaidOut()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1603
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mVisiblePending:Z

    if-eqz v4, :cond_2

    .line 1604
    iput-boolean v9, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mVisiblePending:Z

    .line 1605
    invoke-direct {p0, v10}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->setCheckRootVisible(Z)V

    .line 1608
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :cond_2
    return-void
.end method

.method private setCheckRootVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1637
    if-eqz p1, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1642
    :goto_0
    return-void

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs dispatchInterfaces([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V
    .locals 3
    .param p1, "interfaces"    # [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1715
    if-eqz p1, :cond_2

    .line 1716
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :goto_0
    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .line 1717
    array-length v0, p1

    if-le v0, v2, :cond_0

    aget-object v1, p1, v2

    :cond_0
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .line 1722
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 1716
    goto :goto_0

    .line 1719
    :cond_2
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .line 1720
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    goto :goto_1
.end method

.method public endCheck()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1645
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->ensureInflated()V

    .line 1647
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckOriginLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1648
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1649
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRenderLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1651
    new-array v0, v2, [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->dispatchInterfaces([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 1652
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mVisiblePending:Z

    .line 1653
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1654
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->onAlphaChanged(F)V

    .line 1655
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->setCheckRootVisible(Z)V

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1659
    return-void
.end method

.method protected ensureInflated()V
    .locals 3

    .prologue
    .line 1570
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1571
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    const v2, 0x7f12023f

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1572
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    .line 1573
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    const v2, 0x7f120207

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectLayout:Landroid/view/View;

    .line 1574
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    const v2, 0x7f120208

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectCheckBox:Landroid/widget/CheckBox;

    .line 1575
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    const v2, 0x7f120201

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckOriginLayout:Landroid/view/View;

    .line 1576
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    const v2, 0x7f120203

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mOriginText:Landroid/widget/TextView;

    .line 1577
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    const v2, 0x7f120202

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mOriginCheckBox:Landroid/widget/CheckBox;

    .line 1578
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    const v2, 0x7f120204

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRenderLayout:Landroid/view/View;

    .line 1580
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_0
    return-void
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1700
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;->isChecked(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c00da

    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    .line 1702
    invoke-virtual {v5}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/model/BaseDataItem;->getContentDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1700
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0c0506

    goto :goto_1
.end method

.method protected inAction()Z
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mVisiblePending:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAlphaChanged(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->ensureInflated()V

    .line 1633
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1634
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1747
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1756
    :goto_0
    return-void

    .line 1749
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mOriginCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->toggleCheckBox(Landroid/widget/CheckBox;Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    goto :goto_0

    .line 1753
    :sswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->toggleCheckBox(Landroid/widget/CheckBox;Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    goto :goto_0

    .line 1747
    :sswitch_data_0
    .sparse-switch
        0x7f120200 -> :sswitch_1
        0x7f120201 -> :sswitch_0
        0x7f120207 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onMatrixChanged(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 1583
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->relayout(Landroid/graphics/RectF;)V

    .line 1584
    return-void
.end method

.method public varargs refreshCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V
    .locals 10
    .param p1, "interfaces"    # [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1725
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->ensureInflated()V

    .line 1726
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->dispatchInterfaces([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 1727
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageItem;->getContentDescriptionForTalkBack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1730
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;->isChecked(J)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->setCheckBoxState(Landroid/widget/CheckBox;Z)V

    .line 1731
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mOriginCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;->isChecked(J)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->setCheckBoxState(Landroid/widget/CheckBox;Z)V

    .line 1732
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mOriginText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0478

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v5}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/miui/gallery/util/FormatUtil;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1734
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->originChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1735
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckOriginLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1736
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckOriginLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1737
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    const v2, 0x7f120022

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3, v9}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;->setChecked(IJZ)V

    .line 1743
    :cond_0
    :goto_0
    return-void

    .line 1739
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckOriginLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1740
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckOriginLayout:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setCheckBoxState(Landroid/widget/CheckBox;Z)V
    .locals 4
    .param p1, "checkBox"    # Landroid/widget/CheckBox;
    .param p2, "checked"    # Z

    .prologue
    .line 1678
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1680
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1695
    :goto_0
    return-void

    .line 1682
    :sswitch_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRenderLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    .line 1683
    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->formatContentDescriptionWithCheckState(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v2

    .line 1682
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1686
    :sswitch_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckOriginLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mOriginText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->formatContentDescriptionWithCheckState(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1689
    :sswitch_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    .line 1690
    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/model/BaseDataItem;->getContentDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1689
    invoke-direct {p0, v1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->formatContentDescriptionWithCheckState(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 1691
    .local v0, "contentDesc":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1692
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1680
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120202 -> :sswitch_1
        0x7f120205 -> :sswitch_0
        0x7f120208 -> :sswitch_2
    .end sparse-switch
.end method

.method public varargs startCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V
    .locals 2
    .param p1, "interfaces"    # [Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .prologue
    const/4 v1, 0x1

    .line 1611
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->ensureInflated()V

    .line 1612
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1613
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mSelectLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1614
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckOriginLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1616
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mCheckRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1618
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->mVisiblePending:Z

    .line 1624
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->refreshCheck([Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V

    .line 1625
    return-void

    .line 1620
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->setCheckRootVisible(Z)V

    .line 1621
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->relayout(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method protected toggleCheckBox(Landroid/widget/CheckBox;Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;)V
    .locals 8
    .param p1, "checkbox"    # Landroid/widget/CheckBox;
    .param p2, "modeInterface"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1662
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-nez v1, :cond_0

    .line 1675
    :goto_0
    return-void

    .line 1665
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 1666
    .local v0, "checked":Z
    if-eqz p2, :cond_1

    .line 1667
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    const v4, 0x7f120022

    invoke-virtual {v1, v4}, Lcom/miui/gallery/ui/PhotoPageItem;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v6

    if-nez v0, :cond_2

    move v1, v2

    :goto_1
    invoke-interface {p2, v4, v6, v7, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;->onItemCheckedChanged(IJZ)V

    .line 1670
    :cond_1
    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {p0, p1, v2}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->setCheckBoxState(Landroid/widget/CheckBox;Z)V

    .line 1672
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    .line 1674
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v0, :cond_4

    const v1, 0x7f0c00d9

    :goto_3
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1672
    invoke-static {p1, v1}, Lcom/miui/gallery/util/TalkBackUtil;->requestAnnouncementEvent(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1667
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1670
    goto :goto_2

    .line 1674
    :cond_4
    const v1, 0x7f0c0505

    goto :goto_3
.end method
