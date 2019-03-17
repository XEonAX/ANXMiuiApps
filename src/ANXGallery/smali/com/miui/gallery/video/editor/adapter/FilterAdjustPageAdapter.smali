.class public Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FilterAdjustPageAdapter.java"


# instance fields
.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;->mViewList:Ljava/util/List;

    .line 12
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;->mViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 19
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterAdjustPageAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 24
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
