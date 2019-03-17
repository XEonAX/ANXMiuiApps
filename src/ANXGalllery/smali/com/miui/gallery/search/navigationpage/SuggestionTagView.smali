.class public Lcom/miui/gallery/search/navigationpage/SuggestionTagView;
.super Landroid/widget/LinearLayout;
.source "SuggestionTagView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

.field private mAdapterObserver:Landroid/database/DataSetObserver;

.field private mHorizontalMargin:I

.field private mInvalid:Z

.field private mItemLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field private mMaxLines:I

.field private mRowLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field private mVerticalMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mInvalid:Z

    .line 27
    new-instance v0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView$1;-><init>(Lcom/miui/gallery/search/navigationpage/SuggestionTagView;)V

    iput-object v0, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapterObserver:Landroid/database/DataSetObserver;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/navigationpage/SuggestionTagView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/navigationpage/SuggestionTagView;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->onAdapterChanged()V

    return-void
.end method

.method private changeToNewLine()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "rowLayout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mRowLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-object v0
.end method

.method private getFillWidth(I)I
    .locals 2
    .param p1, "viewWidth"    # I

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getItemMeasuredWidth(Landroid/view/View;)I
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mHorizontalMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 53
    invoke-virtual {p0, v5}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->setOrientation(I)V

    .line 55
    sget-object v1, Lcom/miui/gallery/R$styleable;->SuggestionTagView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "typeArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mHorizontalMargin:I

    .line 59
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mVerticalMargin:I

    .line 61
    const/4 v1, 0x2

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mMaxLines:I

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mRowLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mRowLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mVerticalMargin:I

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 67
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mItemLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mItemLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mHorizontalMargin:I

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    return-void
.end method

.method private layoutTags(I)V
    .locals 12
    .param p1, "width"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->removeAllViews()V

    .line 121
    iput-boolean v4, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mInvalid:Z

    .line 123
    iget v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mMaxLines:I

    if-lez v11, :cond_0

    iget-object v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapter:Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

    if-nez v11, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapter:Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

    invoke-interface {v11}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;->isFixedMoreItem()Z

    move-result v0

    .line 127
    .local v0, "fixedMoreItem":Z
    const/4 v8, 0x0

    .local v8, "size":I
    const/4 v6, 0x0

    .local v6, "rowIndex":I
    iget-object v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapter:Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

    invoke-interface {v11}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;->getCount()I

    move-result v5

    .line 128
    .local v5, "length":I
    const/4 v7, 0x0

    .line 129
    .local v7, "rowLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapter:Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

    invoke-interface {v11}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;->hasMoreItem()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapter:Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

    invoke-interface {v11, v10, p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;->getMoreItemView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 130
    .local v3, "lastTagItem":Landroid/view/View;
    :goto_1
    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->getItemMeasuredWidth(Landroid/view/View;)I

    move-result v4

    .line 132
    .local v4, "lastTagWidth":I
    :cond_2
    iget v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mMaxLines:I

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_3

    if-eqz v3, :cond_3

    .line 134
    move v8, v4

    .line 138
    :cond_3
    const/4 v1, 0x0

    .line 139
    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_4

    .line 140
    iget-object v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapter:Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

    invoke-interface {v11, v1, v10, p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 141
    .local v9, "tagItemView":Landroid/view/View;
    invoke-direct {p0, v9}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->getItemMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 142
    .local v2, "itemWidth":I
    add-int/2addr v8, v2

    .line 143
    if-le v8, p1, :cond_e

    .line 145
    add-int/lit8 v6, v6, 0x1

    .line 146
    iget v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mMaxLines:I

    if-lt v6, v11, :cond_a

    .line 148
    if-eqz v3, :cond_9

    add-int/lit8 v10, v5, -0x1

    if-ne v1, v10, :cond_9

    if-nez v0, :cond_9

    sub-int v10, v8, v4

    if-gt v10, p1, :cond_9

    .line 150
    iget-object v10, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mItemLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    const/4 v3, 0x0

    .line 188
    .end local v2    # "itemWidth":I
    .end local v9    # "tagItemView":Landroid/view/View;
    :cond_4
    :goto_3
    if-eqz v3, :cond_0

    .line 190
    if-eqz v0, :cond_6

    if-eqz v7, :cond_5

    iget v10, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mMaxLines:I

    add-int/lit8 v10, v10, -0x1

    if-ge v6, v10, :cond_6

    add-int v10, v8, v4

    if-le v10, p1, :cond_6

    .line 191
    :cond_5
    invoke-direct {p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->changeToNewLine()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 195
    :cond_6
    if-nez v0, :cond_7

    add-int/lit8 v10, v5, -0x1

    if-ge v1, v10, :cond_0

    .line 196
    :cond_7
    iget-object v10, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mItemLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "lastTagItem":Landroid/view/View;
    .end local v4    # "lastTagWidth":I
    :cond_8
    move-object v3, v10

    .line 129
    goto :goto_1

    .line 153
    .restart local v1    # "i":I
    .restart local v2    # "itemWidth":I
    .restart local v3    # "lastTagItem":Landroid/view/View;
    .restart local v4    # "lastTagWidth":I
    .restart local v9    # "tagItemView":Landroid/view/View;
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 155
    goto :goto_3

    .line 157
    :cond_a
    invoke-direct {p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->changeToNewLine()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 158
    iget v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mMaxLines:I

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_d

    if-eqz v3, :cond_d

    .line 160
    move v8, v4

    .line 161
    add-int v11, v8, v2

    if-gt v11, p1, :cond_b

    .line 163
    add-int/2addr v8, v2

    .line 164
    iget-object v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mItemLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 165
    :cond_b
    add-int/lit8 v10, v5, -0x1

    if-ne v1, v10, :cond_c

    if-nez v0, :cond_c

    .line 168
    iget-object v10, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mItemLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    const/4 v3, 0x0

    .line 170
    goto :goto_3

    .line 172
    :cond_c
    add-int/lit8 v1, v1, -0x1

    .line 173
    goto :goto_3

    .line 176
    :cond_d
    move v8, v2

    .line 177
    iget-object v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mItemLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 181
    :cond_e
    if-nez v7, :cond_f

    .line 182
    invoke-direct {p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->changeToNewLine()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 184
    :cond_f
    iget-object v11, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mItemLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method private onAdapterChanged()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mInvalid:Z

    .line 88
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->requestLayout()V

    .line 89
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapter:Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->getFillWidth(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->layoutTags(I)V

    .line 105
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 106
    return-void
.end method

.method public setAdapter(Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapter:Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

    if-eq v0, p1, :cond_1

    .line 74
    iput-object p1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapter:Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapter:Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapter:Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;

    iget-object v1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mAdapterObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView$SuggestionTagViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->onAdapterChanged()V

    .line 80
    :cond_1
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxLines"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mMaxLines:I

    if-eq p1, v0, :cond_0

    .line 93
    iput p1, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mMaxLines:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->mInvalid:Z

    .line 95
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/SuggestionTagView;->requestLayout()V

    .line 97
    :cond_0
    return-void
.end method
