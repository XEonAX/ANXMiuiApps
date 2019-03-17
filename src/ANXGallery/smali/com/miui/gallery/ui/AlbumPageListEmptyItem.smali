.class public Lcom/miui/gallery/ui/AlbumPageListEmptyItem;
.super Landroid/widget/RelativeLayout;
.source "AlbumPageListEmptyItem.java"


# instance fields
.field private mIsFirstLayout:Z

.field private mTextContainer:Landroid/view/ViewGroup;

.field private mTextVerticalPercent:F

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mIsFirstLayout:Z

    .line 21
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextVerticalPercent:F

    .line 22
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 27
    const v0, 0x7f12002b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextView:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "textView shouldn\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextContainer:Landroid/view/ViewGroup;

    .line 35
    :cond_1
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getScreenWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->setMinimumHeight(I)V

    .line 36
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 41
    iget-boolean v2, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mIsFirstLayout:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_4

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 47
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, p3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 48
    .local v1, "totalHeight":I
    int-to-float v2, v1

    iget v3, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextVerticalPercent:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 49
    .local v0, "textViewTop":I
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 50
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 52
    :cond_2
    add-int v2, p3, v1

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->setBottom(I)V

    .line 54
    .end local v0    # "textViewTop":I
    .end local v1    # "totalHeight":I
    :cond_3
    iput-boolean v6, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mIsFirstLayout:Z

    .line 56
    :cond_4
    return-void
.end method

.method public setTextContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "textContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageListEmptyItem;->mTextContainer:Landroid/view/ViewGroup;

    .line 63
    return-void
.end method
