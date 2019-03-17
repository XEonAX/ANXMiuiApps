.class public Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SectionedSuggestionItemDecoration.java"


# instance fields
.field mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

.field private mBottomLineDividerColor:I

.field mContext:Landroid/content/Context;

.field private mDrawBottomLine:Z

.field private mDrawLineBetweenSectionItems:Z

.field private mLineDividerHeight:I

.field mPaint:Landroid/graphics/Paint;

.field private mSectionDividerColor:I

.field private mSectionDividerHeight:I

.field private mSectionInnerDividerStartMargin:I

.field private mTopLineDividerColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;ZIZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;
    .param p3, "drawLineBetweenSectionItems"    # Z
    .param p4, "sectionInnerDividerStartMargin"    # I
    .param p5, "drawBottomLine"    # Z

    .prologue
    const v2, 0x7f1000ca

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mDrawLineBetweenSectionItems:Z

    .line 23
    iput-boolean v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mDrawBottomLine:Z

    .line 45
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0b02e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mSectionDividerHeight:I

    .line 51
    const v1, 0x7f0b02d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mLineDividerHeight:I

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mBottomLineDividerColor:I

    .line 53
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mTopLineDividerColor:I

    .line 54
    const v1, 0x7f1000c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mSectionDividerColor:I

    .line 56
    iput-boolean p3, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mDrawLineBetweenSectionItems:Z

    .line 57
    iput p4, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mSectionInnerDividerStartMargin:I

    .line 58
    iput-boolean p5, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mDrawBottomLine:Z

    .line 59
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;Landroid/view/View;III)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dividerType"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I

    .prologue
    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 115
    .local v7, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v9, v0, v1

    .line 116
    .local v9, "topBottom":I
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 117
    iget v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mSectionDividerHeight:I

    sub-int v8, v9, v0

    .line 118
    .local v8, "top":I
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mSectionDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    int-to-float v1, p4

    int-to-float v2, v8

    int-to-float v3, p5

    int-to-float v4, v9

    iget-object v5, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mLineDividerHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mBottomLineDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    int-to-float v1, p4

    iget v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mLineDividerHeight:I

    sub-int v0, v8, v0

    int-to-float v2, v0

    int-to-float v3, p5

    iget v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mLineDividerHeight:I

    sub-int v0, v8, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mTopLineDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    int-to-float v1, p4

    int-to-float v2, v9

    int-to-float v3, p5

    int-to-float v4, v9

    iget-object v5, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    .end local v8    # "top":I
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mBottomLineDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mSectionInnerDividerStartMargin:I

    int-to-float v1, v0

    iget v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mLineDividerHeight:I

    add-int/2addr v0, v9

    int-to-float v2, v0

    int-to-float v3, p5

    iget v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mLineDividerHeight:I

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 138
    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v6, v0, v1

    .line 140
    .local v6, "bottomTop":I
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mBottomLineDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    const/4 v1, 0x0

    iget v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mLineDividerHeight:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    int-to-float v3, p5

    iget v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mLineDividerHeight:I

    sub-int v0, v6, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 145
    .end local v6    # "bottomTop":I
    :cond_2
    return-void
.end method

.method private isSectionHeader([I)Z
    .locals 4
    .param p1, "indexes"    # [I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    aget v2, p1, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    aget v2, p1, v1

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-object v2, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getInnerItemPosition(I)I

    move-result v0

    .line 93
    .local v0, "adapterPosition":I
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getInnerItemViewCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getIndexes(I)[I

    move-result-object v1

    .line 95
    .local v1, "indexes":[I
    invoke-direct {p0, v1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->isSectionHeader([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget v2, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mSectionDividerHeight:I

    invoke-virtual {p1, v4, v2, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    .end local v1    # "indexes":[I
    :goto_0
    return-void

    .line 100
    .restart local v1    # "indexes":[I
    :cond_0
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 103
    .end local v1    # "indexes":[I
    :cond_1
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    .line 64
    .local v4, "left":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    .line 65
    .local v5, "right":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v7

    .line 66
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 67
    invoke-virtual {p2, v8}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, "child":Landroid/view/View;
    const/4 v3, 0x0

    .line 69
    .local v3, "dividerType":I
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getInnerItemPosition(I)I

    move-result v6

    .line 71
    .local v6, "adapterPosition":I
    if-ltz v6, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getInnerItemViewCount()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    invoke-virtual {v0, v6}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getIndexes(I)[I

    move-result-object v9

    .line 73
    .local v9, "indexes":[I
    invoke-direct {p0, v9}, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->isSectionHeader([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    or-int/lit8 v3, v3, 0x1

    .line 80
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mDrawBottomLine:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mAdapter:Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/display/SectionedSuggestionAdapter;->getInnerItemViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_1

    .line 82
    or-int/lit8 v3, v3, 0x4

    :cond_1
    move-object v0, p0

    move-object v1, p1

    .line 85
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->drawDivider(Landroid/graphics/Canvas;Landroid/view/View;III)V

    .line 66
    .end local v9    # "indexes":[I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 76
    .restart local v9    # "indexes":[I
    :cond_3
    if-eqz v6, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/search/core/display/SectionedSuggestionItemDecoration;->mDrawLineBetweenSectionItems:Z

    if-eqz v0, :cond_0

    .line 77
    or-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 88
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerType":I
    .end local v6    # "adapterPosition":I
    .end local v9    # "indexes":[I
    :cond_4
    return-void
.end method
