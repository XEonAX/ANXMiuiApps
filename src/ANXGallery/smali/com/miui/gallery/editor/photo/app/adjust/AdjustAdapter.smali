.class Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;
.super Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;
.source "AdjustAdapter.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter$AdjustAdapterItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter$AdjustAdapterItemHolder;",
        ">;",
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

.field private mItemWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "selector"    # Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;",
            ">;",
            "Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;>;"
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->mDataList:Ljava/util/List;

    .line 24
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;-><init>(ILcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    .line 25
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->getItemCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->mItemWidth:I

    .line 26
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->getSelection()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 62
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter$AdjustAdapterItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->onBindViewHolder(Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter$AdjustAdapterItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter$AdjustAdapterItemHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter$AdjustAdapterItemHolder;
    .param p2, "position"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter$AdjustAdapterItemHolder;->bind(Lcom/miui/gallery/editor/photo/core/common/model/AdjustData;)V

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 41
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter$AdjustAdapterItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter$AdjustAdapterItemHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 32
    .local v0, "lps":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->mItemWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    new-instance v2, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter$AdjustAdapterItemHolder;

    invoke-direct {v2, v1}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter$AdjustAdapterItemHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 68
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->setSelection(I)V

    .line 51
    return-void
.end method
