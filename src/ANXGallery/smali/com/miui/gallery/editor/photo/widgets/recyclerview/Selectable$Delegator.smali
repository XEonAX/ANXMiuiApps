.class public final Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;
.super Ljava/lang/Object;
.source "Selectable.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Delegator"
.end annotation


# instance fields
.field private mParent:Landroid/support/v7/widget/RecyclerView;

.field private mSelection:I

.field private mSelector:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;-><init>(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "defaultSelection"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;-><init>(ILcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    .line 34
    return-void
.end method

.method public constructor <init>(ILcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V
    .locals 0
    .param p1, "defaultSelection"    # I
    .param p2, "selector"    # Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelection:I

    .line 38
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    .line 40
    if-eqz p2, :cond_0

    .line 41
    iput-object p0, p2, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;->mAdapter:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable;

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public getSelection()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelection:I

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attach to a recycler view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    iget-boolean v0, v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;->mRequireLayer:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayerType()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 107
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    .line 108
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelection:I

    if-ne p2, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setActivated(Z)V

    .line 92
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelection:I

    if-ne p2, v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 91
    goto :goto_1

    :cond_2
    move v1, v2

    .line 92
    goto :goto_2
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string v0, "Selectable.Delegator"

    const-string v1, "not the attached parent view ."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 46
    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelection:I

    if-ne v3, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 51
    .local v1, "needNotify":Z
    const/4 v2, 0x1

    .line 53
    .local v2, "notifyPosition":I
    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelection:I

    if-eq v3, v5, :cond_2

    .line 54
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    iget v4, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelection:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 55
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_5

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 56
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setActivated(Z)V

    .line 57
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    .line 64
    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_1
    iput p1, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelection:I

    .line 66
    if-eq p1, v5, :cond_3

    .line 67
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 68
    .restart local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 69
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setActivated(Z)V

    .line 70
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setSelected(Z)V

    .line 74
    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelector:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    if-eqz v3, :cond_4

    .line 75
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 77
    :cond_4
    if-eqz v1, :cond_0

    if-eq v2, v5, :cond_0

    .line 78
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mParent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 59
    .restart local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_5
    const/4 v1, 0x1

    .line 60
    iget v2, p0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->mSelection:I

    goto :goto_1
.end method
