.class public Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "BaseAgreementDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/agreement/BaseAgreementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseDividerDecoration"
.end annotation


# instance fields
.field protected mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDividerHeight:I

.field protected mPaddingStart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mPaddingStart:I

    .line 112
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mDividerHeight:I

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mPaddingStart:I

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawBottom(Landroid/graphics/Canvas;Landroid/view/View;II)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 142
    .local v1, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 143
    .local v2, "top":I
    iget v3, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mDividerHeight:I

    add-int v0, v2, v3

    .line 144
    .local v0, "bottom":I
    iget-object v3, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p3, v2, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    iget-object v3, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 146
    return-void
.end method

.method protected drawTop(Landroid/graphics/Canvas;Landroid/view/View;II)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 134
    .local v1, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mDividerHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v2, v3

    .line 135
    .local v2, "top":I
    iget v3, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mDividerHeight:I

    add-int v0, v2, v3

    .line 136
    .local v0, "bottom":I
    iget-object v3, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p3, v2, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    iget-object v3, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v5, 0x0

    .line 158
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 159
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 161
    .local v2, "position":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 162
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->init(Landroid/content/Context;)V

    .line 163
    iget v3, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mDividerHeight:I

    .line 164
    .local v3, "top":I
    const/4 v1, 0x0

    .line 165
    .local v1, "bottom":I
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_0

    .line 166
    iget v1, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mDividerHeight:I

    .line 168
    :cond_0
    invoke-virtual {p1, v5, v3, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    .end local v1    # "bottom":I
    .end local v2    # "position":I
    .end local v3    # "top":I
    :cond_1
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 117
    .local v1, "childCount":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingStart()I

    move-result v4

    .line 118
    .local v4, "parentLeft":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingEnd()I

    move-result v8

    sub-int v5, v7, v8

    .line 119
    .local v5, "parentRight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 120
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 122
    .local v6, "position":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 123
    if-nez v6, :cond_1

    move v3, v4

    .line 124
    .local v3, "left":I
    :goto_1
    invoke-virtual {p0, p1, v0, v3, v5}, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->drawTop(Landroid/graphics/Canvas;Landroid/view/View;II)V

    .line 125
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_0

    .line 126
    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->drawBottom(Landroid/graphics/Canvas;Landroid/view/View;II)V

    .line 119
    .end local v3    # "left":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    iget v7, p0, Lcom/miui/gallery/agreement/BaseAgreementDialog$BaseDividerDecoration;->mPaddingStart:I

    add-int v3, v4, v7

    goto :goto_1

    .line 130
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "position":I
    :cond_2
    return-void
.end method
