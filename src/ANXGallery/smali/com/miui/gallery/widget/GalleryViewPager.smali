.class public Lcom/miui/gallery/widget/GalleryViewPager;
.super Lcom/miui/gallery/widget/ViewPager;
.source "GalleryViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;,
        Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;,
        Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;
    }
.end annotation


# instance fields
.field private mLayoutDirection:I

.field private mReversingOnPageChangeListener:Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;

.field private mReversingOnPageSettledListener:Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;-><init>(Lcom/miui/gallery/widget/GalleryViewPager;Lcom/miui/gallery/widget/GalleryViewPager$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mReversingOnPageChangeListener:Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;

    .line 24
    new-instance v0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;-><init>(Lcom/miui/gallery/widget/GalleryViewPager;Lcom/miui/gallery/widget/GalleryViewPager$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mReversingOnPageSettledListener:Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;

    .line 10
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/GalleryViewPager;->init(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;-><init>(Lcom/miui/gallery/widget/GalleryViewPager;Lcom/miui/gallery/widget/GalleryViewPager$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mReversingOnPageChangeListener:Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;

    .line 24
    new-instance v0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;-><init>(Lcom/miui/gallery/widget/GalleryViewPager;Lcom/miui/gallery/widget/GalleryViewPager$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mReversingOnPageSettledListener:Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;

    .line 15
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/GalleryViewPager;->init(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;-><init>(Lcom/miui/gallery/widget/GalleryViewPager;Lcom/miui/gallery/widget/GalleryViewPager$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mReversingOnPageChangeListener:Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;

    .line 24
    new-instance v0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;-><init>(Lcom/miui/gallery/widget/GalleryViewPager;Lcom/miui/gallery/widget/GalleryViewPager$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mReversingOnPageSettledListener:Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;

    .line 20
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/GalleryViewPager;->init(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method static synthetic access$201(Lcom/miui/gallery/widget/GalleryViewPager;)Lcom/miui/gallery/widget/PagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryViewPager;

    .prologue
    .line 7
    invoke-super {p0}, Lcom/miui/gallery/widget/ViewPager;->getAdapter()Lcom/miui/gallery/widget/PagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/widget/GalleryViewPager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryViewPager;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryViewPager;->isRtl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(IIZ)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 7
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/widget/GalleryViewPager;->processingIndex(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$501(Lcom/miui/gallery/widget/GalleryViewPager;)Lcom/miui/gallery/widget/PagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/GalleryViewPager;

    .prologue
    .line 7
    invoke-super {p0}, Lcom/miui/gallery/widget/ViewPager;->getAdapter()Lcom/miui/gallery/widget/PagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mReversingOnPageChangeListener:Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;

    invoke-super {p0, v0}, Lcom/miui/gallery/widget/ViewPager;->setOnPageChangeListener(Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;)V

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mReversingOnPageSettledListener:Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;

    invoke-super {p0, v0}, Lcom/miui/gallery/widget/ViewPager;->setOnPageSettledListener(Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mLayoutDirection:I

    .line 31
    return-void
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 63
    iget v1, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mLayoutDirection:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static processingIndex(IIZ)I
    .locals 1
    .param p0, "index"    # I
    .param p1, "count"    # I
    .param p2, "reverse"    # Z

    .prologue
    .line 207
    if-eqz p2, :cond_0

    .line 208
    sub-int v0, p1, p0

    add-int/lit8 p0, v0, -0x1

    .line 210
    .end local p0    # "index":I
    :cond_0
    return p0
.end method


# virtual methods
.method public getAdapter()Lcom/miui/gallery/widget/PagerAdapter;
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/miui/gallery/widget/ViewPager;->getAdapter()Lcom/miui/gallery/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;

    .line 59
    .local v0, "adapter":Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;->getDelegate()Lcom/miui/gallery/widget/PagerAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 4

    .prologue
    .line 77
    invoke-super {p0}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    .line 78
    .local v1, "item":I
    invoke-super {p0}, Lcom/miui/gallery/widget/ViewPager;->getAdapter()Lcom/miui/gallery/widget/PagerAdapter;

    move-result-object v0

    .line 79
    .local v0, "adapter":Lcom/miui/gallery/widget/PagerAdapter;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v2

    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryViewPager;->isRtl()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/widget/GalleryViewPager;->processingIndex(IIZ)I

    move-result v1

    .line 82
    :cond_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 68
    invoke-super {p0}, Lcom/miui/gallery/widget/ViewPager;->getAdapter()Lcom/miui/gallery/widget/PagerAdapter;

    move-result-object v0

    .line 69
    .local v0, "adapter":Lcom/miui/gallery/widget/PagerAdapter;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v1

    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryViewPager;->isRtl()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/miui/gallery/widget/GalleryViewPager;->processingIndex(IIZ)I

    move-result p1

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/ViewPager;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/ViewPager;->onRtlPropertiesChanged(I)V

    .line 36
    iget v2, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mLayoutDirection:I

    if-eq v2, p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryViewPager;->getCurrentItem()I

    move-result v0

    .line 38
    .local v0, "currentItem":I
    iput p1, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mLayoutDirection:I

    .line 39
    invoke-virtual {p0}, Lcom/miui/gallery/widget/GalleryViewPager;->getAdapter()Lcom/miui/gallery/widget/PagerAdapter;

    move-result-object v1

    .line 40
    .local v1, "pagerAdapter":Lcom/miui/gallery/widget/PagerAdapter;
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Lcom/miui/gallery/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 42
    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/GalleryViewPager;->setCurrentItem(I)V

    .line 45
    .end local v0    # "currentItem":I
    .end local v1    # "pagerAdapter":Lcom/miui/gallery/widget/PagerAdapter;
    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/miui/gallery/widget/PagerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/miui/gallery/widget/PagerAdapter;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    new-instance v0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/widget/GalleryViewPager$ReversingAdapter;-><init>(Lcom/miui/gallery/widget/GalleryViewPager;Lcom/miui/gallery/widget/PagerAdapter;)V

    .end local p1    # "adapter":Lcom/miui/gallery/widget/PagerAdapter;
    .local v0, "adapter":Lcom/miui/gallery/widget/PagerAdapter;
    move-object p1, v0

    .line 52
    .end local v0    # "adapter":Lcom/miui/gallery/widget/PagerAdapter;
    .restart local p1    # "adapter":Lcom/miui/gallery/widget/PagerAdapter;
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/ViewPager;->setAdapter(Lcom/miui/gallery/widget/PagerAdapter;)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/GalleryViewPager;->setCurrentItem(I)V

    .line 54
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 96
    invoke-super {p0}, Lcom/miui/gallery/widget/ViewPager;->getAdapter()Lcom/miui/gallery/widget/PagerAdapter;

    move-result-object v0

    .line 97
    .local v0, "adapter":Lcom/miui/gallery/widget/PagerAdapter;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v1

    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryViewPager;->isRtl()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/miui/gallery/widget/GalleryViewPager;->processingIndex(IIZ)I

    move-result p1

    .line 100
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItem(I)V

    .line 101
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 87
    invoke-super {p0}, Lcom/miui/gallery/widget/ViewPager;->getAdapter()Lcom/miui/gallery/widget/PagerAdapter;

    move-result-object v0

    .line 88
    .local v0, "adapter":Lcom/miui/gallery/widget/PagerAdapter;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerAdapter;->getCount()I

    move-result v1

    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryViewPager;->isRtl()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/miui/gallery/widget/GalleryViewPager;->processingIndex(IIZ)I

    move-result p1

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItem(IZ)V

    .line 92
    return-void
.end method

.method public setOnPageChangeListener(Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mReversingOnPageChangeListener:Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;

    iput-object p1, v0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageChangeListener;->mListener:Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;

    .line 106
    return-void
.end method

.method public setOnPageSettledListener(Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryViewPager;->mReversingOnPageSettledListener:Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;

    iput-object p1, v0, Lcom/miui/gallery/widget/GalleryViewPager$ReversingOnPageSettledListener;->mListener:Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;

    .line 111
    return-void
.end method
