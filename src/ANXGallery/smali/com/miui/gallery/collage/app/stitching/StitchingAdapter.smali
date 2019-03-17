.class Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;
.super Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;
.source "StitchingAdapter.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/collage/app/stitching/StitchingHolder;",
        ">;",
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

.field private mStitchingModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/stitching/StitchingModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "selector"    # Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/stitching/StitchingModel;",
            ">;",
            "Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "longLayoutList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/stitching/StitchingModel;>;"
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->mStitchingModelList:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->mContext:Landroid/content/Context;

    .line 21
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;-><init>(ILcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    .line 22
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->mStitchingModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

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
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 55
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/miui/gallery/collage/app/stitching/StitchingHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->onBindViewHolder(Lcom/miui/gallery/collage/app/stitching/StitchingHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/collage/app/stitching/StitchingHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/miui/gallery/collage/app/stitching/StitchingHolder;
    .param p2, "position"    # I

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->mStitchingModelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/core/stitching/StitchingModel;

    invoke-virtual {p1, v1, v0, p2}, Lcom/miui/gallery/collage/app/stitching/StitchingHolder;->setStitchingModel(Landroid/content/res/Resources;Lcom/miui/gallery/collage/core/stitching/StitchingModel;I)V

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 34
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/collage/app/stitching/StitchingHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/collage/app/stitching/StitchingHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 26
    new-instance v0, Lcom/miui/gallery/collage/app/stitching/StitchingHolder;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/collage/app/stitching/StitchingHolder;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 61
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->setSelection(I)V

    .line 44
    return-void
.end method
