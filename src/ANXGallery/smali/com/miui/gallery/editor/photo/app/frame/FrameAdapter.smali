.class Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;
.super Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;
.source "FrameAdapter.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;",
        ">;",
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

.field private mFrameDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FrameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FrameData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "frameDataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/FrameData;>;"
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->mFrameDataList:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->mContext:Landroid/content/Context;

    .line 21
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    .line 22
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->mFrameDataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->mFrameDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->getSelection()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 55
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->onBindViewHolder(Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;
    .param p2, "position"    # I

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->mFrameDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/FrameData;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;->setFrameData(Lcom/miui/gallery/editor/photo/core/common/model/FrameData;)V

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 34
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 26
    new-instance v0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 61
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->setSelection(I)V

    .line 44
    return-void
.end method
