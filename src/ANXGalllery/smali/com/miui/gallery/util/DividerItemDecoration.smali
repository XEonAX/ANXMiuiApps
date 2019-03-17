.class public Lcom/miui/gallery/util/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I


# instance fields
.field private mBottomKeepCount:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mTopKeepCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/miui/gallery/util/DividerItemDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "topKeepCount"    # I
    .param p3, "bottomKeepCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 46
    iput v0, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mTopKeepCount:I

    .line 47
    iput v0, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mBottomKeepCount:I

    .line 64
    iput-object p1, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/DividerItemDecoration;->setOrientation(I)V

    .line 66
    iput p2, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mTopKeepCount:I

    .line 67
    iput p3, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mBottomKeepCount:I

    .line 68
    return-void
.end method

.method private getAdapterCount(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 97
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 125
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    .line 126
    .local v7, "top":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 128
    .local v0, "bottom":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 129
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 130
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 133
    .local v5, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    .line 134
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int v4, v8, v9

    .line 135
    .local v4, "left":I
    iget-object v8, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int v6, v4, v8

    .line 136
    .local v6, "right":I
    iget-object v8, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    iget-object v8, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "left":I
    .end local v5    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v6    # "right":I
    :cond_0
    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    .line 102
    .local v5, "left":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v10

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v11

    sub-int v8, v10, v11

    .line 104
    .local v8, "right":I
    invoke-direct {p0, p2}, Lcom/miui/gallery/util/DividerItemDecoration;->getAdapterCount(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 105
    .local v0, "adapterCount":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 106
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 107
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 109
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 111
    .local v6, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v7

    .line 112
    .local v7, "position":I
    iget v10, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mTopKeepCount:I

    if-lt v7, v10, :cond_0

    iget v10, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mBottomKeepCount:I

    sub-int v10, v0, v10

    if-lt v7, v10, :cond_1

    .line 106
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v10

    iget v11, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    .line 117
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int v9, v10, v11

    .line 118
    .local v9, "top":I
    iget-object v10, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int v1, v9, v10

    .line 119
    .local v1, "bottom":I
    iget-object v10, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v5, v9, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    iget-object v10, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 122
    .end local v1    # "bottom":I
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v7    # "position":I
    .end local v9    # "top":I
    :cond_2
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    .line 143
    iget v2, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 145
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 146
    .local v0, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    .line 147
    .local v1, "position":I
    iget v2, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mTopKeepCount:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0, p3}, Lcom/miui/gallery/util/DividerItemDecoration;->getAdapterCount(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    iget v3, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mBottomKeepCount:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_1

    .line 155
    .end local v0    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v1    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v0    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .restart local v1    # "position":I
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v4, v4, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 153
    .end local v0    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v1    # "position":I
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1, v4, v4, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 86
    iget v0, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/util/DividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/util/DividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 78
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput p1, p0, Lcom/miui/gallery/util/DividerItemDecoration;->mOrientation:I

    .line 82
    return-void
.end method
