.class public Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SimpleRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlankDivider"
.end annotation


# instance fields
.field private mBottom:I

.field private mEnd:I

.field private mHorizonalInterval:I

.field private mStart:I

.field private mTop:I

.field private mVerticalInterval:I


# direct methods
.method public constructor <init>(II)V
    .locals 7
    .param p1, "hInterval"    # I
    .param p2, "vInterval"    # I

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p1

    move v4, p2

    move v5, p2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;-><init>(IIIIII)V

    .line 102
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "hInterval"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "vInterval"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 105
    iput p1, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mStart:I

    .line 106
    iput p2, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mEnd:I

    .line 107
    iput p3, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mHorizonalInterval:I

    .line 108
    iput p4, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mTop:I

    .line 109
    iput p5, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mBottom:I

    .line 110
    iput p6, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mVerticalInterval:I

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "horizontalId"    # I
    .param p3, "verticalId"    # I

    .prologue
    const/4 v0, 0x0

    .line 96
    if-nez p2, :cond_0

    move v1, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;-><init>(II)V

    .line 98
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 7
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 116
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 119
    .local v0, "adapterPos":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 120
    const-string v5, "SimpleRecyclerView"

    const-string v6, "no adapter bound"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_1

    .line 123
    iget v3, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mStart:I

    .line 124
    .local v3, "start":I
    iget v2, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mHorizonalInterval:I

    .line 125
    .local v2, "end":I
    iget v4, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mTop:I

    .line 126
    .local v4, "top":I
    iget v1, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mVerticalInterval:I

    .line 139
    .local v1, "bottom":I
    :goto_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 140
    invoke-virtual {p1, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 127
    .end local v1    # "bottom":I
    .end local v2    # "end":I
    .end local v3    # "start":I
    .end local v4    # "top":I
    :cond_1
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_2

    .line 128
    const/4 v3, 0x0

    .line 129
    .restart local v3    # "start":I
    iget v2, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mEnd:I

    .line 130
    .restart local v2    # "end":I
    const/4 v4, 0x0

    .line 131
    .restart local v4    # "top":I
    iget v1, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mBottom:I

    .restart local v1    # "bottom":I
    goto :goto_1

    .line 133
    .end local v1    # "bottom":I
    .end local v2    # "end":I
    .end local v3    # "start":I
    .end local v4    # "top":I
    :cond_2
    const/4 v3, 0x0

    .line 134
    .restart local v3    # "start":I
    iget v2, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mHorizonalInterval:I

    .line 135
    .restart local v2    # "end":I
    const/4 v4, 0x0

    .line 136
    .restart local v4    # "top":I
    iget v1, p0, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;->mVerticalInterval:I

    .restart local v1    # "bottom":I
    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {p1, v3, v4, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
