.class public abstract Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SingleChoiceRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SingleChoiceViewHolder"
.end annotation


# instance fields
.field private itemPosition:I

.field protected mItemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 92
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;->mItemView:Landroid/view/View;

    .line 93
    const v0, 0x7f120037

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 94
    return-void
.end method


# virtual methods
.method public getItemPosition()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;->itemPosition:I

    return v0
.end method

.method public setItemPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;->itemPosition:I

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f120032

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method public setItemViewOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method public setMarginLeft(I)V
    .locals 2
    .param p1, "margin"    # I

    .prologue
    .line 97
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 98
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public abstract setSelect(Z)V
.end method
