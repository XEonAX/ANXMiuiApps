.class public Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SectionedDividerItemDecoration.java"


# instance fields
.field private mDividerTypeProvider:Lcom/miui/gallery/widget/DividerTypeProvider;

.field private mItemDivider:Landroid/graphics/drawable/Drawable;

.field private mItemDividerHeight:I

.field private mItemDividerPadding:Landroid/graphics/Rect;

.field private mSectionDivider:Landroid/graphics/drawable/Drawable;

.field private mSectionDividerHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/miui/gallery/widget/DividerTypeProvider;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sectionDividerRes"    # I
    .param p3, "itemDividerRes"    # I
    .param p4, "dividerTypeProvider"    # Lcom/miui/gallery/widget/DividerTypeProvider;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mSectionDivider:Landroid/graphics/drawable/Drawable;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDivider:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mSectionDividerHeight:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerHeight:I

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    .line 34
    iput-object p4, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mDividerTypeProvider:Lcom/miui/gallery/widget/DividerTypeProvider;

    .line 35
    return-void
.end method

.method private drawBottomDivider(Landroid/graphics/Canvas;Landroid/view/View;III)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dividerType"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 128
    .local v1, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v2, v3, v4

    .line 130
    .local v2, "top":I
    packed-switch p3, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mSectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mSectionDividerHeight:I

    if-lez v3, :cond_0

    .line 135
    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mSectionDividerHeight:I

    add-int v0, v2, v3

    .line 136
    .local v0, "bottom":I
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mSectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p4, v2, p5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mSectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 140
    .end local v0    # "bottom":I
    :pswitch_1
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerHeight:I

    if-lez v3, :cond_0

    .line 143
    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerHeight:I

    add-int v0, v2, v3

    .line 144
    .restart local v0    # "bottom":I
    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 145
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDivider:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, p4

    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v6, p5, v6

    iget-object v7, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDivider:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p4

    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v6, p5, v6

    iget-object v7, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 154
    .end local v0    # "bottom":I
    :pswitch_2
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerHeight:I

    if-lez v3, :cond_0

    .line 157
    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerHeight:I

    add-int v0, v2, v3

    .line 158
    .restart local v0    # "bottom":I
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDivider:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v0, v5

    invoke-virtual {v3, p4, v4, p5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private drawTopDivider(Landroid/graphics/Canvas;Landroid/view/View;III)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dividerType"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 108
    .local v1, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v2, v3, v4

    .line 110
    .local v2, "top":I
    packed-switch p3, :pswitch_data_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerHeight:I

    if-lez v3, :cond_0

    .line 115
    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerHeight:I

    add-int v0, v2, v3

    .line 116
    .local v0, "bottom":I
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDivider:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v0, v5

    invoke-virtual {v3, p4, v4, p5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private getBottomDividerType(I)I
    .locals 1
    .param p1, "adapterPosition"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mDividerTypeProvider:Lcom/miui/gallery/widget/DividerTypeProvider;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mDividerTypeProvider:Lcom/miui/gallery/widget/DividerTypeProvider;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/DividerTypeProvider;->getBottomDividerType(I)I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTopDividerType(I)I
    .locals 1
    .param p1, "adapterPosition"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mDividerTypeProvider:Lcom/miui/gallery/widget/DividerTypeProvider;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mDividerTypeProvider:Lcom/miui/gallery/widget/DividerTypeProvider;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/DividerTypeProvider;->getTopDividerType(I)I

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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

    .line 169
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 170
    .local v0, "adapterPosition":I
    const/4 v2, 0x0

    .line 171
    .local v2, "top":I
    const/4 v1, 0x0

    .line 172
    .local v1, "bottom":I
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->getTopDividerType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 181
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->getBottomDividerType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 193
    :goto_1
    :pswitch_0
    invoke-virtual {p1, v4, v2, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 194
    return-void

    .line 174
    :pswitch_1
    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerHeight:I

    .line 175
    goto :goto_0

    .line 183
    :pswitch_2
    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerHeight:I

    .line 184
    goto :goto_1

    .line 186
    :pswitch_3
    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mSectionDividerHeight:I

    .line 187
    goto :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch

    .line 181
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v7

    .line 94
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 95
    invoke-virtual {p2, v8}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 96
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 97
    .local v9, "tx":I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int v4, v0, v9

    .line 98
    .local v4, "left":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    add-int v5, v0, v9

    .line 99
    .local v5, "right":I
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 100
    .local v6, "adapterPosition":I
    invoke-direct {p0, v6}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->getTopDividerType(I)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->drawTopDivider(Landroid/graphics/Canvas;Landroid/view/View;III)V

    .line 101
    invoke-direct {p0, v6}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->getBottomDividerType(I)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->drawBottomDivider(Landroid/graphics/Canvas;Landroid/view/View;III)V

    .line 94
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "adapterPosition":I
    .end local v9    # "tx":I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 104
    return-void
.end method

.method public setItemDividerPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "itemDividerPadding"    # Landroid/graphics/Rect;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->mItemDividerPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method
