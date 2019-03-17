.class public Lcom/miui/gallery/share/GridPreference;
.super Lcom/miui/gallery/share/GridPreferenceBase;
.source "GridPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/share/GridPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/share/GridPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/share/GridPreferenceBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f040144

    return v0
.end method

.method protected updateGrid(Landroid/view/View;)V
    .locals 9
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 31
    const v6, 0x102000a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridLayout;

    .line 32
    .local v2, "grid":Landroid/widget/GridLayout;
    iget v6, p0, Lcom/miui/gallery/share/GridPreference;->mColumnCount:I

    invoke-virtual {v2, v6}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 34
    iget-object v6, p0, Lcom/miui/gallery/share/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 35
    :cond_0
    invoke-virtual {v2}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 68
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/share/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 40
    .local v0, "adapterCount":I
    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v1

    .line 41
    .local v1, "childCount":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 43
    .local v4, "reuseCount":I
    const/4 v3, 0x0

    .line 44
    .local v3, "index":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 46
    .local v5, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/miui/gallery/share/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v3, v5, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 47
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, p0, Lcom/miui/gallery/share/GridPreference;->mColumnWidth:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    invoke-virtual {p0}, Lcom/miui/gallery/share/GridPreference;->getTagInfo()I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 50
    :cond_2
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "convert view must be reused!"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 54
    .end local v5    # "v":Landroid/view/View;
    :cond_3
    :goto_2
    if-ge v3, v0, :cond_4

    .line 55
    iget-object v6, p0, Lcom/miui/gallery/share/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 56
    .restart local v5    # "v":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 57
    iget-object v6, p0, Lcom/miui/gallery/share/GridPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/share/GridPreference;->getTagInfo()I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 59
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, p0, Lcom/miui/gallery/share/GridPreference;->mColumnWidth:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 62
    .end local v5    # "v":Landroid/view/View;
    :cond_4
    if-ge v3, v1, :cond_5

    .line 63
    sub-int v6, v1, v3

    invoke-virtual {v2, v3, v6}, Landroid/widget/GridLayout;->removeViews(II)V

    .line 66
    :cond_5
    invoke-virtual {v2}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, p0, Lcom/miui/gallery/share/GridPreference;->mColumnWidth:I

    iget v8, p0, Lcom/miui/gallery/share/GridPreference;->mColumnCount:I

    mul-int/2addr v7, v8

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    invoke-virtual {v2}, Landroid/widget/GridLayout;->requestLayout()V

    goto :goto_0
.end method
