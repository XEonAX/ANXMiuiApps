.class Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "ExtendedRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;
    .param p2, "x1"    # Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$1;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;-><init>(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;)V

    return-void
.end method

.method private update()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->access$100(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->access$200(Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;)V

    goto :goto_0
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 276
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;->update()V

    .line 277
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 251
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 252
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;->update()V

    .line 253
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 257
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 258
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;->update()V

    .line 259
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 269
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 270
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;->update()V

    .line 271
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 264
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView$RecyclerViewDataObserver;->update()V

    .line 265
    return-void
.end method
