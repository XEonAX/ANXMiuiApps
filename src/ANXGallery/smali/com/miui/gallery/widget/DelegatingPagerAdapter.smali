.class public Lcom/miui/gallery/widget/DelegatingPagerAdapter;
.super Lcom/miui/gallery/widget/PagerAdapter;
.source "DelegatingPagerAdapter.java"


# instance fields
.field private final mDelegate:Lcom/miui/gallery/widget/PagerAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/PagerAdapter;)V
    .locals 0
    .param p1, "delegate"    # Lcom/miui/gallery/widget/PagerAdapter;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/widget/PagerAdapter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    .line 14
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 38
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 48
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDelegate()Lcom/miui/gallery/widget/PagerAdapter;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getPageWidth(I)F
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/PagerAdapter;->getPageWidth(I)F

    move-result v0

    return v0
.end method

.method public getSlipWidth(II)I
    .locals 1
    .param p1, "slipHeight"    # I
    .param p2, "position"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/widget/PagerAdapter;->getSlipWidth(II)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public refreshItem(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/widget/PagerAdapter;->refreshItem(Ljava/lang/Object;I)V

    .line 88
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 68
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 98
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 43
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 28
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/widget/DelegatingPagerAdapter;->mDelegate:Lcom/miui/gallery/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 73
    return-void
.end method
