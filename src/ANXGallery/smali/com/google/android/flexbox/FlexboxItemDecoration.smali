.class public Lcom/google/android/flexbox/FlexboxItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FlexboxItemDecoration.java"


# static fields
.field private static final LIST_DIVIDER_ATTRS:[I


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/flexbox/FlexboxItemDecoration;->LIST_DIVIDER_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 57
    sget-object v1, Lcom/google/android/flexbox/FlexboxItemDecoration;->LIST_DIVIDER_ATTRS:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setOrientation(I)V

    .line 61
    return-void
.end method

.method private drawHorizontalDecorations(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    move-result v13

    if-nez v13, :cond_1

    .line 265
    :cond_0
    return-void

    .line 229
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 230
    .local v6, "layoutManager":Lcom/google/android/flexbox/FlexboxLayoutManager;
    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexDirection()I

    move-result v4

    .line 231
    .local v4, "flexDirection":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getLeft()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v14

    sub-int v9, v13, v14

    .line 232
    .local v9, "parentLeft":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v14

    add-int v10, v13, v14

    .line 233
    .local v10, "parentRight":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 234
    .local v3, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 235
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 236
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 239
    .local v8, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    const/4 v13, 0x3

    if-ne v4, v13, :cond_2

    .line 240
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v12, v13, v14

    .line 241
    .local v12, "top":I
    iget-object v13, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    add-int v1, v12, v13

    .line 248
    .local v1, "bottom":I
    :goto_1
    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 249
    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 250
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    iget-object v14, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int v11, v13, v14

    .line 251
    .local v11, "right":I
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 252
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v7, v13, v14

    .line 262
    .local v7, "left":I
    :goto_2
    iget-object v13, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v7, v12, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    iget-object v13, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "bottom":I
    .end local v7    # "left":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v1, v13, v14

    .line 244
    .restart local v1    # "bottom":I
    iget-object v13, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    sub-int v12, v1, v13

    .restart local v12    # "top":I
    goto :goto_1

    .line 254
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v13, v14

    iget-object v14, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int v7, v13, v14

    .line 255
    .restart local v7    # "left":I
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 256
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v11, v13, v14

    .restart local v11    # "right":I
    goto :goto_2

    .line 259
    .end local v7    # "left":I
    .end local v11    # "right":I
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v7, v13, v14

    .line 260
    .restart local v7    # "left":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v11, v13, v14

    .restart local v11    # "right":I
    goto :goto_2
.end method

.method private drawVerticalDecorations(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    move-result v13

    if-nez v13, :cond_1

    .line 223
    :cond_0
    return-void

    .line 185
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 186
    .local v6, "layoutManager":Lcom/google/android/flexbox/FlexboxLayoutManager;
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getTop()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v14

    sub-int v10, v13, v14

    .line 187
    .local v10, "parentTop":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v14

    add-int v9, v13, v14

    .line 188
    .local v9, "parentBottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 189
    .local v3, "childCount":I
    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexDirection()I

    move-result v4

    .line 190
    .local v4, "flexDirection":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 191
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 193
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 196
    .local v8, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v7, v13, v14

    .line 198
    .local v7, "left":I
    iget-object v13, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int v11, v7, v13

    .line 205
    .local v11, "right":I
    :goto_1
    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 206
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v12, v13, v14

    .line 207
    .local v12, "top":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v1, v13, v14

    .line 220
    .local v1, "bottom":I
    :goto_2
    iget-object v13, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v7, v12, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    iget-object v13, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 190
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "bottom":I
    .end local v7    # "left":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v11, v13, v14

    .line 201
    .restart local v11    # "right":I
    iget-object v13, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    sub-int v7, v11, v13

    .restart local v7    # "left":I
    goto :goto_1

    .line 209
    :cond_3
    const/4 v13, 0x3

    if-ne v4, v13, :cond_4

    .line 210
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    iget-object v14, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    add-int v1, v13, v14

    .line 211
    .restart local v1    # "bottom":I
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 212
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v12, v13, v14

    .restart local v12    # "top":I
    goto :goto_2

    .line 214
    .end local v1    # "bottom":I
    .end local v12    # "top":I
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v13, v14

    iget-object v14, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sub-int v12, v13, v14

    .line 215
    .restart local v12    # "top":I
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 216
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v13

    iget v14, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v1, v13, v14

    .restart local v1    # "bottom":I
    goto :goto_2
.end method

.method private isFirstItemInLine(ILjava/util/List;Lcom/google/android/flexbox/FlexboxLayoutManager;)Z
    .locals 6
    .param p1, "position"    # I
    .param p3, "layoutManager"    # Lcom/google/android/flexbox/FlexboxLayoutManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;",
            "Lcom/google/android/flexbox/FlexboxLayoutManager;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 280
    invoke-virtual {p3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPositionToFlexLineIndex(I)I

    move-result v0

    .line 281
    .local v0, "flexLineIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 282
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 283
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    iget v2, v2, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    if-ne v2, p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v3

    .line 286
    :cond_1
    if-eqz p1, :cond_0

    .line 289
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    move v3, v4

    .line 290
    goto :goto_0

    .line 295
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexLine;

    .line 296
    .local v1, "lastLine":Lcom/google/android/flexbox/FlexLine;
    iget v2, v1, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    add-int/lit8 v5, p1, -0x1

    if-ne v2, v5, :cond_3

    move v2, v3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method private needsHorizontalDecoration()Z
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mOrientation:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needsVerticalDecoration()Z
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mOrientation:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOffsetAlongCrossAxis(Landroid/graphics/Rect;ILcom/google/android/flexbox/FlexboxLayoutManager;Ljava/util/List;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "position"    # I
    .param p3, "layoutManager"    # Lcom/google/android/flexbox/FlexboxLayoutManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Lcom/google/android/flexbox/FlexboxLayoutManager;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v2, 0x0

    .line 114
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPositionToFlexLineIndex(I)I

    move-result v0

    .line 118
    .local v0, "flexLineIndex":I
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 125
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 129
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 131
    :cond_3
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 136
    iput v2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 138
    :cond_4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 139
    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private setOffsetAlongMainAxis(Landroid/graphics/Rect;ILcom/google/android/flexbox/FlexboxLayoutManager;Ljava/util/List;I)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "position"    # I
    .param p3, "layoutManager"    # Lcom/google/android/flexbox/FlexboxLayoutManager;
    .param p5, "flexDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Lcom/google/android/flexbox/FlexboxLayoutManager;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p4, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p2, p4, p3}, Lcom/google/android/flexbox/FlexboxItemDecoration;->isFirstItemInLine(ILjava/util/List;Lcom/google/android/flexbox/FlexboxLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 154
    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 159
    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 162
    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 165
    :cond_3
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    move-result v0

    if-nez v0, :cond_4

    .line 166
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 167
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 170
    :cond_4
    const/4 v0, 0x3

    if-ne p5, v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 172
    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 175
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 98
    .local v2, "position":I
    if-nez v2, :cond_0

    .line 110
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 106
    .local v3, "layoutManager":Lcom/google/android/flexbox/FlexboxLayoutManager;
    invoke-virtual {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexLines()Ljava/util/List;

    move-result-object v4

    .line 107
    .local v4, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    invoke-virtual {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexDirection()I

    move-result v5

    .local v5, "flexDirection":I
    move-object v0, p0

    move-object v1, p1

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setOffsetAlongMainAxis(Landroid/graphics/Rect;ILcom/google/android/flexbox/FlexboxLayoutManager;Ljava/util/List;I)V

    .line 109
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setOffsetAlongCrossAxis(Landroid/graphics/Rect;ILcom/google/android/flexbox/FlexboxLayoutManager;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxItemDecoration;->drawHorizontalDecorations(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxItemDecoration;->drawVerticalDecorations(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 92
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mOrientation:I

    .line 86
    return-void
.end method
