.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EditableListViewWrapper.java"

# interfaces
.implements Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

.field final synthetic this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 1138
    iput-object p2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 1139
    return-void
.end method

.method private bindCheckState(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1147
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1148
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1149
    check-cast v0, Lcom/miui/gallery/ui/Checkable;

    .line 1150
    .local v0, "checkable":Lcom/miui/gallery/ui/Checkable;
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->isInChoiceMode()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 1151
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCheckState(I)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 1152
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$500(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    move-result-object v2

    invoke-virtual {v2, v1, v1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->resetViewPropertyIfNeed(Landroid/view/View;Landroid/view/View;I)V

    .line 1154
    .end local v0    # "checkable":Lcom/miui/gallery/ui/Checkable;
    :cond_0
    return-void
.end method

.method private getListHeadersCount()I
    .locals 2

    .prologue
    .line 1255
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v1, v1, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    if-eqz v1, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    .line 1257
    .local v0, "adapter":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
    invoke-virtual {v0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v1

    .line 1259
    .end local v0    # "adapter":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getSourceEncryptPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1239
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->getListHeadersCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getSourceItemCount()I
    .locals 2

    .prologue
    .line 1225
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v1, v1, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    if-eqz v1, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    .line 1227
    .local v0, "adapter":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
    invoke-virtual {v0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 1229
    .end local v0    # "adapter":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_0
.end method

.method public getSourceItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isHeaderOrFooterPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1247
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v2, v2, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    if-eqz v2, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    .line 1249
    .local v0, "adapter":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isHeaderPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1251
    .end local v0    # "adapter":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
    :cond_1
    return v1
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1211
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1159
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->bindCheckState(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1160
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .param p3, "payloads"    # Ljava/util/List;

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 1165
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->bindCheckState(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 1166
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1216
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1191
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1196
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1181
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 1201
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 1206
    return-void
.end method
