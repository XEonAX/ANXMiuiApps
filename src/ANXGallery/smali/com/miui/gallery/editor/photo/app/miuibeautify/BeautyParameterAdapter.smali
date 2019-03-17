.class Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;
.super Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;
.source "BeautyParameterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mIcons:[I

.field private mParameterData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;[I)V
    .locals 0
    .param p2, "icons"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;>;"
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;->mParameterData:Ljava/util/List;

    .line 16
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;->mIcons:[I

    .line 17
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;->mParameterData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;->onBindViewHolder(Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;->mIcons:[I

    aget v1, v0, p2

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;->mParameterData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;

    invoke-virtual {p1, v1, v0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;->bind(ILcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;)V

    .line 28
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
